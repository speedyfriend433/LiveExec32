#import "bridge.h"

@interface LC32ObjCMethodResolver : NSObject
+ (void)registerClass:(Class)cls;
@end

#pragma mark Guest -> Host functions

u32 LC32HostToGuestCopyClassName(u32 guest_output, size_t length, u64 host_object) {
    const char *input = class_getName([(id)host_object class]);
    length = MIN(strlen(input), length);
    // write null terminator aswell
    Dynarmic_mem_1write(guest_output, length+1, (char *)input);
    return length;
}

u64 LC32Dlsym(u32 guest_name, bool isFunction) {
    DynarmicHostString host_name(guest_name);
    
    u64 r = (u64)dlsym(RTLD_DEFAULT, host_name.hostPtr);
    if(r && !isFunction) r = *(u64*)r;
    printf("LC32: dlsym %s = 0x%llx\n", host_name.hostPtr, r);
    return r;
}

inline id LC32GetHostConstString(u32 guest_self) {
    // Construct a __NSCFConstantString { isa, flags, buffer, length }
    u64 *constStr = (u64 *)malloc(sizeof(u64[4]));
    constStr[0] = (u64)__CFConstantStringClassReference;
    constStr[1] = (u64)sharedHandle.ucb->MemoryRead32(guest_self + sizeof(u32[1]));
    u64 length = (u64)sharedHandle.ucb->MemoryRead32(guest_self + sizeof(u32[3]));
    DynarmicHostString host_str(sharedHandle.ucb->MemoryRead32(guest_self + sizeof(u32[2])), length);
    constStr[2] = (u64)host_str.hostPtrForGuest();
    constStr[3] = length;
    return (id)constStr;
}

u64 LC32GetHostObject(u32 guest_self, u32 guest_className, bool returnClass) {
    if (returnClass) {
        Class cls = [[LC32ProxyManager sharedManager] getHostClassForGuestClass:guest_className];
        if (!cls) {
            DynarmicHostString host_className(guest_className);
            cls = objc_getClass(host_className.hostPtr);
            [[LC32ProxyManager sharedManager] registerGuestClass:guest_className withHostClass:cls];
        }
        return (u64)cls;
    }

    id proxy = [[LC32ProxyManager sharedManager] createHostProxyForGuestObject:guest_self];
    return (u64)proxy;
}

u64 LC32GetHostSelector(u32 guest_selector) {
    DynarmicHostString host_selector(guest_selector);
    return (u64)sel_registerName(host_selector.hostPtr);
}

// guest to host call of objc_msgSend*
u64 LC32InvokeHostSelector(u64 host_self, u64 host_cmd, u64 va_args) {
   
    u32 structPtr = 0, structLen;
    if(host_cmd & SEL_RETURN_STRUCT) {
        host_cmd &= ~SEL_RETURN_STRUCT;
        structPtr = sharedHandle.ucb->MemoryRead32(va_args);
        structLen = sharedHandle.ucb->MemoryRead32(va_args += sizeof(u32));
        va_args += sizeof(u32);
    }


    NSMutableArray *convertedArgs = [NSMutableArray array];
    va_list args;
    va_start(args, va_args);
    
    Method method = class_getInstanceMethod(object_getClass((id)host_self), (SEL)host_cmd);
    const char *types = method_getTypeEncoding(method);
    
    types = NSGetSizeAndAlignment(types, NULL, NULL);
    types = NSGetSizeAndAlignment(types, NULL, NULL);
    
    while (*types) {
        char *next = NULL;
        NSUInteger size;
        NSGetSizeAndAlignment(types, &size, NULL);
        
        switch (*types) {
            case '@': {
                u32 guestObj = va_arg(args, u32);
                id hostObj = [[LC32ProxyManager sharedManager] createHostProxyForGuestObject:guestObj];
                [convertedArgs addObject:hostObj ?: [NSNull null]];
                break;
            }
            case '#': {
                u32 guestClass = va_arg(args, u32);
                Class hostClass = [[LC32ProxyManager sharedManager] getHostClassForGuestClass:guestClass];
                [convertedArgs addObject:hostClass ?: [NSNull null]];
                break;
            }
            default: {
                u64 value = va_arg(args, u64);
                [convertedArgs addObject:@(value)];
                break;
            }
        }
        
        types = NSGetSizeAndAlignment(types, NULL, NULL);
    }
    va_end(args);

    NSMethodSignature *sig = [NSMethodSignature signatureWithObjCTypes:types];
    NSInvocation *inv = [NSInvocation invocationWithMethodSignature:sig];
    [inv setTarget:(id)host_self];
    [inv setSelector:(SEL)host_cmd];
    
    for (NSUInteger i = 0; i < convertedArgs.count; i++) {
        id arg = convertedArgs[i];
        [inv setArgument:&arg atIndex:i + 2];
    }
    
    [inv invoke];
    
    if (sig.methodReturnLength > 0) {
        void *buffer = alloca(sig.methodReturnLength);
        [inv getReturnValue:buffer];
        
        if (*sig.methodReturnType == '@') {
            id returnObj = *(id *)buffer;
            return (u64)[[LC32ProxyManager sharedManager] createGuestProxyForHostObject:returnObj];
        }
        
        return *(u64 *)buffer;
    }
    
    return 0;
}

void LC32SetInvokeGuestFuncPtr(u32 dlsymFunc, u32 invokeFunc) {
    sharedHandle.guest_dlsym = dlsymFunc;
    sharedHandle.guest_LC32InvokeGuestC = invokeFunc;
}

#pragma mark Host -> Guest functions

u64 LC32InvokeGuestC(u32 pc, bool ret64, int argc, u32 *args) {
    std::array<std::uint32_t, 16> &regs = threadHandle.jit->Regs();
    struct context32 ctx;
    Dynarmic_context_1save(&ctx);

    // TODO: optimize this
    // first 4 arguments go to r0-r3
    for(int i = 0; i < MIN(argc, 4); i++) {
        regs[i] = args[i];
    }
    // subsequent arguments go to stack pointer
    for(int i = argc-1; i >= 4; i--) {
        sharedHandle.ucb->MemoryWrite32(regs[Reg::SP] -= sizeof(u32), args[i]);
    }
    regs[12] = pc;
    Dynarmic_emu_1start(sharedHandle.guest_LC32InvokeGuestC);
    u64 result = (u64)regs[0];
    if(ret64) result |= (u64)regs[1] << 32;

    Dynarmic_context_1restore(&ctx);
    return result;
}

u32 LC32HostToGuestArgument(char *type, u64 value) {
    switch(*type) {
        case 'B': // bool
        case 'I':
        case 'Q':
        case 'c':
        case 'i':
        case 'q':
            return (u32)value;
        case 'd':
            return (float)(CGFloat)value;
        case '@': // id
            return [(id)value guest_self];
        default:
            printf("LC32HostToGuestArgument: unhandled type %s\n", type);
            abort();
    }
}

u64 LC32GuestToHostReturnType(char *type, u32 value) {
    switch(*type) {
        case 'B': // bool
        case 'I':
        case 'Q':
        case 'c':
        case 'i':
        case 'q':
        case 'v':
            return (u64)value;
        case 'd':
            return (CGFloat)value;
        case '@': {// id
            // don't call LC32GetHostObject here! the guest stores host pointer
            static u32 guestPtr = 0;
            if(!guestPtr) guestPtr = guest_sel_registerName("host_self");
            u32 args[] = {value, guestPtr};
            return guest_objc_msgSend(sizeof(args)/sizeof(*args), args);
        }
        default:
            printf("LC32GuestToHostReturnType: unhandled type %s\n", type);
            abort();
    }
}

// can't use va_list at the beginning since arguments are passed to registers first
u64 LC32InvokeGuestSelector(id self, SEL _cmd, u64 arg2, u64 arg3, u64 arg4, u64 arg5, u64 arg6, u64 arg7, ...) {
    // FIXME: fast path to get guest selector? cache to hash map?
    u32 guest_cmd = guest_sel_registerName(sel_getName(_cmd));
    Method method = object_isClass(self) ? class_getClassMethod(self, _cmd) : class_getInstanceMethod((Class)[self class], _cmd);

    // now the most complicated part is parsing and dynamically converting arguments, perhaps we can make a JIT compiler to make this faster, or idk...
    u64 host_args[] = {arg2, arg3, arg4, arg5, arg6, arg7};
    u32 guest_argc = 0;
    u32 guest_args[20];
    guest_args[guest_argc++] = (u32)(u64)[self guest_self];
    guest_args[guest_argc++] = guest_cmd;

    int nargs = method_getNumberOfArguments(method);
    // TODO: we don't parse va_arg yet
    assert(nargs <= 8);
    for(int i = 2; i < nargs; i++) {
        char *argType = method_copyArgumentType(method, i);
        guest_args[guest_argc++] = LC32HostToGuestArgument(argType, host_args[i-2]);
        free(argType);
    }

    u32 guest_result = guest_objc_msgSend(guest_argc, guest_args);

    char *returnType = method_copyReturnType(method);
    u64 host_result = LC32GuestToHostReturnType(returnType, guest_result);
    free(returnType);
    return host_result;
}

void LC32SetGuestScalarIvar(id self, SEL _cmd, u64 value) {
    const char *name = sel_getName(_cmd);
    char ivarName[0x50];
    snprintf(ivarName, sizeof(ivarName)-1, "%c%s", tolower(name[3]), &name[4]);
    guest_object_setInstanceVariable([self guest_self], name, (u32)value);
}

void LC32SetGuestNSObjectIvar(id self, SEL _cmd, id value) {
    LC32SetGuestScalarIvar(self, _cmd, (u64)[value guest_self]);
}

u32 guest_dlsym(const char *host_name) {
    DynarmicGuestStackString guest_name(host_name);
    u32 args[] = {(u32)(u64)RTLD_DEFAULT, guest_name.guestPtr};
    return LC32InvokeGuestC(sharedHandle.guest_dlsym, false, sizeof(args)/sizeof(*args), args);
}

u32 guest_free(u32 guest_ptr) {
    static u32 guestPtr = 0;
    if(!guestPtr) guestPtr = guest_dlsym("free");
    u32 args[] = {guest_ptr};
    return LC32InvokeGuestC(guestPtr, false, sizeof(args)/sizeof(*args), args);
}

// These class_copy*List shims are pretty much the same
u32 guest_class_copyIvarList(u32 guest_cls, unsigned int *outCount) {
    if(!threadHandle.jit) return false;
    static u32 guestPtr = 0;
    if(!guestPtr) guestPtr = guest_dlsym("class_copyIvarList");
    u32 guest_outCount = threadHandle.jit->Regs()[Reg::SP] -= sizeof(u32);
    u32 args[] = {guest_cls, guest_outCount};
    u32 result = LC32InvokeGuestC(guestPtr, false, sizeof(args)/sizeof(*args), args);
    *outCount = sharedHandle.ucb->MemoryRead32(guest_outCount);
    threadHandle.jit->Regs()[Reg::SP] += sizeof(u32);
    return result;
}
u32 guest_class_copyMethodList(u32 guest_cls, unsigned int *outCount) {
    if(!threadHandle.jit) return false;
    static u32 guestPtr = 0;
    if(!guestPtr) guestPtr = guest_dlsym("class_copyMethodList");
    u32 guest_outCount = threadHandle.jit->Regs()[Reg::SP] -= sizeof(u32);
    u32 args[] = {guest_cls, guest_outCount};
    u32 result = LC32InvokeGuestC(guestPtr, false, sizeof(args)/sizeof(*args), args);
    *outCount = sharedHandle.ucb->MemoryRead32(guest_outCount);
    threadHandle.jit->Regs()[Reg::SP] += sizeof(u32);
    return result;
}
u32 guest_class_copyProtocolList(u32 guest_cls, unsigned int *outCount) {
    if(!threadHandle.jit) return false;
    static u32 guestPtr = 0;
    if(!guestPtr) guestPtr = guest_dlsym("class_copyProtocolList");
    u32 guest_outCount = threadHandle.jit->Regs()[Reg::SP] -= sizeof(u32);
    u32 args[] = {guest_cls, guest_outCount};
    u32 result = LC32InvokeGuestC(guestPtr, false, sizeof(args)/sizeof(*args), args);
    *outCount = sharedHandle.ucb->MemoryRead32(guest_outCount);
    threadHandle.jit->Regs()[Reg::SP] += sizeof(u32);
    return result;
}

u32 guest_class_createInstance(u32 guest_cls, u32 extraBytes) {
    if(!threadHandle.jit) return false;
    static u32 guestPtr = 0;
    if(!guestPtr) guestPtr = guest_dlsym("class_createInstance");
    u32 args[] = {guest_cls, extraBytes};
    return LC32InvokeGuestC(guestPtr, false, sizeof(args)/sizeof(*args), args);
}

u32 guest_class_getClassMethod(u32 guest_cls, u32 guest_sel) {
    if(!threadHandle.jit) return false;
    static u32 guestPtr = 0;
    if(!guestPtr) guestPtr = guest_dlsym("class_getClassMethod");
    u32 args[] = {guest_cls, guest_sel};
    return LC32InvokeGuestC(guestPtr, false, sizeof(args)/sizeof(*args), args);
}

u32 guest_class_getInstanceMethod(u32 guest_cls, u32 guest_sel) {
    if(!threadHandle.jit) return false;
    static u32 guestPtr = 0;
    if(!guestPtr) guestPtr = guest_dlsym("class_getInstanceMethod");
    u32 args[] = {guest_cls, guest_sel};
    return LC32InvokeGuestC(guestPtr, false, sizeof(args)/sizeof(*args), args);
}

u32 guest_class_getName(u32 guest_cls) {
    if(!threadHandle.jit) return false;
    static u32 guestPtr = 0;
    if(!guestPtr) guestPtr = guest_dlsym("class_getName");
    u32 args[] = {guest_cls};
    return LC32InvokeGuestC(guestPtr, false, sizeof(args)/sizeof(*args), args);
}

u32 guest_class_getSuperclass(u32 guest_cls) {
    if(!guest_cls) return 0;
    return sharedHandle.ucb->MemoryRead32(guest_cls + 4);
}

u32 guest_ivar_getName(u32 guest_ivar) {
    return sharedHandle.ucb->MemoryRead32(guest_ivar + sizeof(u32[1]));
}

u32 guest_ivar_getTypeEncoding(u32 guest_ivar) {
    return sharedHandle.ucb->MemoryRead32(guest_ivar + sizeof(u32[2]));
}

u32 guest_object_getClass(u32 guest_obj) {
    if(!guest_obj) return 0;
    return sharedHandle.ucb->MemoryRead32(guest_obj);
}

u32 guest_object_setInstanceVariable(u32 guest_obj, const char *host_name, u32 newValue) {
    static u32 guestPtr = 0;
    if(!guestPtr) guestPtr = guest_dlsym("object_setInstanceVariable");
    DynarmicGuestStackString guest_name(host_name);
    u32 args[] = {guest_obj, guest_name.guestPtr, newValue};
    return LC32InvokeGuestC(guestPtr, false, sizeof(args)/sizeof(*args), args);
}

u32 guest_protocol_getName(u32 guest_protocol) {
    return sharedHandle.ucb->MemoryRead32(guest_protocol + sizeof(u32[1]));
}

u32 guest_sel_registerName(const char *host_name) {
    static u32 guestPtr = 0;
    if(!guestPtr) guestPtr = guest_dlsym("sel_registerName");
    DynarmicGuestStackString guest_name(host_name);
    u32 args[] = {guest_name.guestPtr};
    return LC32InvokeGuestC(guestPtr, false, sizeof(args)/sizeof(*args), args);
}

//if(!guestPtr) guestPtr = guest_dlsym("LC32TestHostToGuestCall");
//u32 args[] = {0x40404040, 0x41414141, 0x42424242, 0x43434343, 0x44444444, 0x45454545, 0x46464646, 0x47474747};
u32 guest_objc_getClass(const char *name) {
    if(!threadHandle.jit) return 0;
    static u32 guestPtr = 0;
    if(!guestPtr) guestPtr = guest_dlsym("objc_getClass");

    DynarmicGuestStackString guest_name(name);
    u32 args[] = {guest_name.guestPtr};
    return LC32InvokeGuestC(guestPtr, false, sizeof(args)/sizeof(*args), args);
}

Class guest_objc_getClass_retHostClass(const char *name) {
    // Get the guest class pointer
    u32 guest_outClass = guest_objc_getClass(name);
    if(!guest_outClass) return nil;

    // Now that we will be recursively resolving subclass
    Class subclass;
    u32 guest_superclass = guest_class_getSuperclass(guest_outClass);
    DynarmicHostString superclassName(guest_class_getName(guest_superclass));
    subclass = objc_getClass(superclassName.hostPtr);
    if(!subclass) return nil;

    // Now we can construct the class
    Class outClass = objc_allocateClassPair(subclass, name, 0);
    // set class to class
    [(id)outClass setGuest_self:guest_outClass];
    // set metaclass to metaclass
    [(id)object_getClass(outClass) setGuest_self:guest_object_getClass(guest_outClass)];
    // resolve methods and register a dynamic resolver
    [LC32ObjCMethodResolver registerClass:outClass];
    // register to objc
    objc_registerClassPair(outClass);
    [outClass setGuestClass:YES];
    return outClass;
}

u64 guest_objc_msgSend(int argc, u32 *args) {
    static u32 guestPtr = 0;
    if(!guestPtr) guestPtr = guest_dlsym("objc_msgSend");
    return LC32InvokeGuestC(guestPtr, true, argc, args);
}

objc_hook_getClass host_getClass;
BOOL host_hook_getClass(const char *name, Class *outClass) {
    if(host_getClass && host_getClass(name, outClass)) {
        return true;
    }

    printf("host_hook_getClass: %s\n", name);
    *outClass = guest_objc_getClass_retHostClass(name);
    return *outClass != nil;
}

@implementation NSObject(LC32)
static const void *kGuestClass = &kGuestClass;
static const void *kGuestSelf = &kGuestSelf;
- (void)setGuestClass:(BOOL)value {
    return objc_setAssociatedObject(self, kGuestClass, @(value), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (BOOL)isGuestClass {
    return ((NSNumber *)objc_getAssociatedObject(self, kGuestClass)).boolValue;
}

// Set the equivalent guest object pointer.
// Called from guest_self if the object has not been known by guest before (eg passing UIApplication object to guest)
// Called from guest's setHost_self if the object is created by guest code (eg creating AppDelegate, UIWindow, etc)
- (void)setGuest_self:(u32)ptr {
    //assert(!self.guest_selfOrNull);
    objc_setAssociatedObject(self, kGuestSelf, @(ptr), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (u32)guest_selfOrNull {
    return ((NSNumber *)objc_getAssociatedObject(self, kGuestSelf)).unsignedLongValue;
}

- (u32)guest_self {
    u32 ptr = self.guest_selfOrNull;
    if(ptr) return ptr;

    const char *className = class_getName(self.class);
    ptr = guest_objc_getClass(className);
    if(!ptr) {
        printf("LC32: Error: Host required missing guest class %s\n", className);
        return 0;
    }
    if(object_isClass(self)) return self.guest_self = ptr;

    static u32 guest_setHost_self;
    if(!guest_setHost_self) guest_setHost_self = guest_sel_registerName("initWithHostSelf:");
    ptr = guest_class_createInstance(ptr, 0);

    //guest_objc_performSelector(ptr, guest_setHost_self, (u32)(u64)self, (u32)((u64)self >> 32));
    {
        u32 args[] = {ptr, guest_setHost_self, (u32)(u64)self, (u32)((u64)self >> 32)};
        ptr = guest_objc_msgSend(sizeof(args)/sizeof(*args), args);
    }

    return self.guest_self = ptr;
}
@end

@implementation LC32ObjCMethodResolver
+ (void)addMethod:(Method)method toClass:(Class)cls {
    class_addMethod(cls, method_getName(method), method_getImplementation(method), method_getTypeEncoding(method));
}

+ (void)addGuestIvar:(u32)guest_ivar toClass:(Class)cls {
    DynarmicHostString name(guest_ivar_getName(guest_ivar));
    DynarmicHostString typeEncoding(guest_ivar_getTypeEncoding(guest_ivar));

    // According to https://github.com/Quotation/LongestCocoa#longest-objective-c-property-names, the longest public property has 56 characters
    // still, we need to add an assert
    char setterName[0x50];
    assert(strlen(name.hostPtr) + 4 < sizeof(setterName));
    if(name.hostPtr[0] == '_') {
        snprintf(setterName, sizeof(setterName)-1, "_set%c%s:", toupper(name.hostPtr[1]), &name.hostPtr[2]);
    } else {
        snprintf(setterName, sizeof(setterName)-1, "set%c%s:", toupper(name.hostPtr[0]), &name.hostPtr[1]);
    }

    char setterTypeEncoding[10];
    snprintf(setterTypeEncoding, sizeof(setterTypeEncoding)-1, "v@:%c", typeEncoding.hostPtr[0]);

    switch(typeEncoding.hostPtr[0]) {
        case '@':
        case '#':
            class_addMethod(cls, sel_registerName(setterName), (IMP)&LC32SetGuestNSObjectIvar, (const char *)setterTypeEncoding);
            break;
        case 'B':
        case 'C':
        case 'I':
        case 'L':
        case 'Q':
        case 'S':
        case 'b':
        case 'c':
        case 'i':
        case 'l':
        case 'q':
        case 's':
            class_addMethod(cls, sel_registerName(setterName), (IMP)&LC32SetGuestScalarIvar, (const char *)setterTypeEncoding);
            break;
        default:
            printf("LC32: skipping ivar %s with unhandled type %s\n", name.hostPtr, typeEncoding.hostPtr);
            break;
    }

    // We currently don't bind setter, just leaving here for future references
    // for getter booleans, we have to register total 3 variants: name, hasName and isName, since we don't want to run a LLM here to predict which is best ¯\_(ツ)_/¯
}

+ (void)addGuestMethod:(u32)guest_method selector:(SEL)sel toClass:(Class)cls {
    objc_method_32 host_method_32;
    Dynarmic_mem_1read(guest_method, sizeof(host_method_32), (char *)&host_method_32);
    DynarmicHostString host_method_types(host_method_32.method_types);
    if(!sel) {
        DynarmicHostString host_sel(host_method_32.method_name);
        sel = sel_registerName(host_sel.hostPtr);
    }
    class_addMethod(cls, sel, (IMP)&LC32InvokeGuestSelector, host_method_types.hostPtr);
}


+ (void)addGuestProtocol:(u32)guest_protocol toClass:(Class)cls {
    DynarmicHostString host_protocolName(guest_protocol_getName(guest_protocol));
    Protocol *protocol = objc_getProtocol(host_protocolName.hostPtr);
    if(protocol) {
        class_addProtocol(cls, protocol);
    } else {
        printf("LC32: skipping nonexistent protocol %s\n", host_protocolName.hostPtr);
    }
}

+ (void)registerClass:(Class)clsObject {
    u32 count;
    u32 list;

    Class cls = object_getClass(clsObject);
    [self addMethod:class_getClassMethod(self, @selector(resolveClassMethod:)) toClass:cls];
    [self addMethod:class_getClassMethod(self, @selector(resolveInstanceMethod:)) toClass:cls];
    [cls resolveInstanceMethod:@selector(init)];
    [cls setGuestClass:YES];

    // FIXME: can't call free on copied lists
    // Register protocols
    list = guest_class_copyProtocolList([clsObject guest_self], &count);
    for(int i = 0; i < count; i++, list += sizeof(u32)) {
        [self addGuestProtocol:sharedHandle.ucb->MemoryRead32(list) toClass:cls];
    }
    //if(list) guest_free(list);

    // Register instance variables by wrapping to getter/setter. Required for loading storyboard
    list = guest_class_copyIvarList([clsObject guest_self], &count);
    for(int i = 0; i < count; i++, list += sizeof(u32)) {
        [self addGuestIvar:sharedHandle.ucb->MemoryRead32(list) toClass:clsObject];
    }
    //if(list) guest_free(list);

    // Register class methods. Pass metaclass (cls) here!
    list = guest_class_copyMethodList([cls guest_self], &count);
    for(int i = 0; i < count; i++, list += sizeof(u32)) {
        [self addGuestMethod:sharedHandle.ucb->MemoryRead32(list) selector:nil toClass:cls];
    }
    //if(list) guest_free(list);

    // Register instance methods
    list = guest_class_copyMethodList([clsObject guest_self], &count);
    for(int i = 0; i < count; i++, list += sizeof(u32)) {
        [self addGuestMethod:sharedHandle.ucb->MemoryRead32(list) selector:nil toClass:clsObject];
    }
    //if(list) guest_free(list);
}

// FIXME: currently using class_get*Method which may return superclass's method, but I guess this shouldn't affect anything
+ (BOOL)resolveClassMethod:(SEL)sel {
    printf("resolveClassMethod %s\n", sel_getName(sel));
    u32 guest_sel = guest_sel_registerName(sel_getName(sel));
    u32 guest_method = guest_class_getClassMethod(self.guest_self, guest_sel);
    if(guest_method) {
        [LC32ObjCMethodResolver addGuestMethod:guest_method selector:sel toClass:self.class];
    }
    return [super resolveClassMethod:sel];
}

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    printf("resolveInstanceMethod %s\n", sel_getName(sel));
    u32 guest_sel = guest_sel_registerName(sel_getName(sel));
    u32 guest_method = guest_class_getInstanceMethod(self.guest_self, guest_sel);
    if(guest_method) {
        [LC32ObjCMethodResolver addGuestMethod:guest_method selector:sel toClass:self];
    }
    return [super resolveInstanceMethod:sel];
}
@end

__attribute__((constructor)) void LC32InstallGetClassHook() {
    objc_setHook_getClass(host_hook_getClass, &host_getClass);
}
