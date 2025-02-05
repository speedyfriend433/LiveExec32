#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#include <dlfcn.h>
#include "dynarmic.h"

__BEGIN_DECLS

#pragma mark Guest -> Host functions

// objc_msgSend is declared differently in the header file
id _objc_msgSend(u64 self, SEL _cmd, u64 arg2, u64 arg3, u64 arg4, u64 arg5, u64 arg6, u64 arg7, ...);
__asm__(" \
.global __objc_msgSend \n \
__objc_msgSend: \n \
b _objc_msgSend \n \
");

u32 LC32HostToGuestCopyClassName(u32 guest_output, size_t length, u64 host_object) {
    const char *input = class_getName([(id)host_object class]);
    length = MIN(strlen(input), length);
    // write null terminator aswell
    Dynarmic_mem_1write(guest_output, length+1, (char *)input);
    return length;
}

u64 LC32Dlsym(u32 guest_name) {
    DynarmicHostString host_name(guest_name);
    
    u64 r = (u64)dlsym(RTLD_DEFAULT, host_name.hostPtr);
    printf("LC32: dlsym %s = 0x%llx\n", host_name.hostPtr, r);
    return r;
}

u64 LC32GetHostObject(u32 guest_class, bool returnClass) {
    DynarmicHostString host_class(guest_class);
    Class cls = objc_getClass(host_class.hostPtr);
    return (u64)(returnClass ? cls : [cls alloc]);
}

u64 LC32GetHostSelector(u32 guest_selector) {
    DynarmicHostString host_selector(guest_selector);
    return (u64)sel_registerName(host_selector.hostPtr);
}

u64 LC32InvokeHostSelector(u64 host_self, u64 host_cmd, u64 va_args) {
    // ARMv7 stores parameters in r0-r3 and stack pointer. r0-r3 is already reserved for self and cmd, so we read the rest from stack pointer
    // FIXME: how to read number of args for variadic methods and translate its values?
    u64 arg2 = sharedHandle.ucb->MemoryRead64(va_args);
    u64 arg3 = sharedHandle.ucb->MemoryRead64(va_args += 8);
    u64 arg4 = sharedHandle.ucb->MemoryRead64(va_args += 8);
    u64 arg5 = sharedHandle.ucb->MemoryRead64(va_args += 8);
    u64 arg6 = sharedHandle.ucb->MemoryRead64(va_args += 8);
    u64 arg7 = sharedHandle.ucb->MemoryRead64(va_args += 8);
    u64 arg8 = sharedHandle.ucb->MemoryRead64(va_args += 8);
    u64 arg9 = sharedHandle.ucb->MemoryRead64(va_args += 8);
    u64 arg10 = sharedHandle.ucb->MemoryRead64(va_args += 8);
    return (u64)_objc_msgSend(host_self, (SEL)host_cmd, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10);
}

void LC32SetInvokeGuestFuncPtr(u32 dlsymFunc, u32 invokeFunc) {
    sharedHandle.guest_dlsym = dlsymFunc;
    sharedHandle.guest_LC32InvokeGuestC = invokeFunc;
}

#pragma mark Host -> Guest functions

u32 LC32InvokeGuestC(u32 pc, int argc, u32 *args) {
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
        sharedHandle.ucb->MemoryWrite32(regs[ARM_REG_SP] -= 4, args[i]);
    }
    regs[12] = pc;
    Dynarmic_emu_1start(sharedHandle.guest_LC32InvokeGuestC);
    u32 result = regs[0];

    Dynarmic_context_1restore(&ctx);
    return result;
}

u32 guest_dlsym(const char *host_name) {
    DynarmicGuestStackString guest_name(host_name);
    u32 args[] = {(u32)(u64)RTLD_DEFAULT, guest_name.guestPtr};
    return LC32InvokeGuestC(sharedHandle.guest_dlsym, sizeof(args)/sizeof(*args), args);
}

u32 guest_class_getName(u32 guest_cls) {
    if(!threadHandle.jit) return false;
    static u32 guestPtr = 0;
    if(!guestPtr) guestPtr = guest_dlsym("class_getName");
    u32 args[] = {guest_cls};
    return LC32InvokeGuestC(guestPtr, sizeof(args)/sizeof(*args), args);
}

u32 guest_class_getSuperclass(u32 guest_cls) {
    if(!threadHandle.jit) return false;
    static u32 guestPtr = 0;
    if(!guestPtr) guestPtr = guest_dlsym("class_getSuperclass");
    u32 args[] = {guest_cls};
    return LC32InvokeGuestC(guestPtr, sizeof(args)/sizeof(*args), args);
}

//if(!guestPtr) guestPtr = guest_dlsym("LC32TestHostToGuestCall");
//u32 args[] = {0x40404040, 0x41414141, 0x42424242, 0x43434343, 0x44444444, 0x45454545, 0x46464646, 0x47474747};
Class guest_objc_getClass(const char *name) {
    if(!threadHandle.jit) return nil;
    static u32 guestPtr = 0;
    if(!guestPtr) guestPtr = guest_dlsym("objc_getClass");
    u32 guest_outClass;

    // First, get the guest class pointer
    DynarmicGuestStackString guest_name(name);
    u32 args[] = {guest_name.guestPtr};
    guest_outClass = LC32InvokeGuestC(guestPtr, sizeof(args)/sizeof(*args), args);
    if(!guest_outClass) return nil;

    // Now that we will be recursively resolving subclass
    Class subclass;
    u32 guest_superclass = guest_class_getSuperclass(guest_outClass);
    DynarmicHostString superclassName(guest_class_getName(guest_superclass));
    subclass = objc_getClass(superclassName.hostPtr);
    if(!subclass) return nil;

    // Now we can construct the class
    Class outClass = objc_allocateClassPair(subclass, name, 0);
/* TODO!!!!
    // add all of the protocols untill we hit null
    while (protos && *protos != NULL)
    {
        class_addProtocol(newClass, *protos);
        protos++;
    }

    // add all the impls till we hit null
    while (impls && impls->aSEL)
    {
        class_addMethod(newClass, impls->aSEL, imp_implementationWithBlock(impls->aBlock), "@@:*");
        impls++;
    }
*/
    objc_registerClassPair(outClass);
    return outClass;
}

objc_hook_getClass host_getClass;
BOOL host_hook_getClass(const char *name, Class *outClass) {
    if(host_getClass && host_getClass(name, outClass)) {
        return true;
    }

    printf("host_hook_getClass: %s\n", name);
    *outClass = guest_objc_getClass(name);
    return *outClass != nil;
}

__attribute__((constructor)) void LC32InstallGetClassHook() {
    objc_setHook_getClass(host_hook_getClass, &host_getClass);
}

__END_DECLS
