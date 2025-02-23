#import "LC32ProxyManager.h"
#import "bridge.h"

@implementation LC32ProxyManager {
    NSMutableDictionary<NSNumber *, Class> *_guestToHostClasses;
    NSMutableDictionary<NSString *, NSNumber *> *_hostToGuestClasses;
    NSMutableDictionary<NSNumber *, id> *_guestToHostObjects;
    NSMutableDictionary<NSValue *, NSNumber *> *_hostToGuestObjects;
}

+ (instancetype)sharedManager {
    static LC32ProxyManager *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init {
    if ((self = [super init])) {
        _guestToHostClasses = [NSMutableDictionary new];
        _hostToGuestClasses = [NSMutableDictionary new];
        _guestToHostObjects = [NSMutableDictionary new];
        _hostToGuestObjects = [NSMutableDictionary new];
    }
    return self;
}

- (void)registerGuestClass:(uint32_t)guestClass withHostClass:(Class)hostClass {
    @synchronized (self) {
        _guestToHostClasses[@(guestClass)] = hostClass;
        _hostToGuestClasses[NSStringFromClass(hostClass)] = @(guestClass);
    }
}

- (Class)getHostClassForGuestClass:(uint32_t)guestClass {
    @synchronized (self) {
        return _guestToHostClasses[@(guestClass)];
    }
}

- (uint32_t)getGuestClassForHostClass:(Class)hostClass {
    @synchronized (self) {
        return [_hostToGuestClasses[NSStringFromClass(hostClass)] unsignedIntValue];
    }
}

- (id)createHostProxyForGuestObject:(uint32_t)guestPtr {
    @synchronized (self) {
        id existingProxy = _guestToHostObjects[@(guestPtr)];
        if (existingProxy) return existingProxy;
        
        // Create new proxy object
        uint32_t guestClass = guest_object_getClass(guestPtr);
        Class hostClass = [self getHostClassForGuestClass:guestClass];
        
        id proxy = [hostClass alloc];
        [proxy setGuest_self:guestPtr];
        [proxy setGuestClass:YES];
        
        _guestToHostObjects[@(guestPtr)] = proxy;
        return proxy;
    }
}

- (uint32_t)createGuestProxyForHostObject:(id)hostObject {
    @synchronized (self) {
        NSValue *key = [NSValue valueWithNonretainedObject:hostObject];
        NSNumber *existingProxy = _hostToGuestObjects[key];
        if (existingProxy) return existingProxy.unsignedIntValue;
        
        // Create new proxy object
        Class hostClass = [hostObject class];
        uint32_t guestClass = [self getGuestClassForHostClass:hostClass];
        uint32_t guestPtr = guest_class_createInstance(guestClass, 0);
        
        _hostToGuestObjects[key] = @(guestPtr);
        return guestPtr;
    }
}

- (SEL)mapGuestSelector:(uint32_t)guestSel toHost:(BOOL)toHost {
    // Convert guest selector to host selector
    DynarmicHostString selectorStr(guestSel);
    return sel_registerName(selectorStr.hostPtr);
}

- (uint32_t)mapHostSelector:(SEL)hostSel toGuest:(BOOL)toGuest {
    // Convert host selector to guest selector
    const char *selName = sel_getName(hostSel);
    return guest_sel_registerName(selName);
}

@end