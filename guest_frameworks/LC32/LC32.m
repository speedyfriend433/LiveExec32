#import <objc/runtime.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "LC32.h"

#include <dlfcn.h>

// Framework: LC32

// Converts host class to guest class
Class LC32HostToGuestClass(uint64_t address) {
    char name[100];
    LC32HostToGuestCopyClassName(name, sizeof(name)-1, address);
    printf("DBG: LC32HostToGuestClass %s\n", name);
    return objc_getClass(name);
}

// Get the guest object pointer from host. The host may call back to guest with initWithHostSelf: and return it.
id LC32HostToGuestObject(uint64_t host_object) {
    static uint64_t hostPtr = 0;
    if(!hostPtr) hostPtr = LC32GetHostSelector(@selector(guest_self));
    return (id)LC32InvokeHostSelector(host_object, hostPtr);
}

// We cannot use NSValue or NSInteger here since they're proxied aswell
@interface LC32HostObjectPointer : NSObject
@property(nonatomic) uint64_t value;
@end
@implementation LC32HostObjectPointer
+ (instancetype)pointerWithValue:(uint64_t)value {
    LC32HostObjectPointer *pointer = [LC32HostObjectPointer new];
    pointer.value = value;
    return pointer;
}
@end

@implementation NSObject(LC32)
static const void *kHostSelf = &kHostSelf;

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-designated-initializers"
- (instancetype)initWithHostSelf:(uint64_t)host_self {
    // [NSObject init] does nothing, we don't need to call it, consequently it also calls up to the overridden init function of the subclass causing recursive call
    //self = [super init];
    self.host_self = host_self;
    return self;
}
#pragma clang diagnostic pop

// Set the equivalent host pointer
// Called from guest's initializer shim methods (eg initWithFrame:) -> LC32HostToGuestObject -> host's guest_self -> initWithHostSelf if the object has not been known by guest before
// Only call this if host's guest_self has already been set
- (void)setHost_self:(uint64_t)ptr {
    objc_setAssociatedObject(self, kHostSelf, [LC32HostObjectPointer pointerWithValue:ptr], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

// Set the equivalent host pointer for statically-initialized object (eg NSString constants)
- (void)bindHostSelf:(uint64_t)ptr {
    self.host_self = ptr;
    // make a trip to host to set guest_self
    static uint64_t hostPtr = 0;
    if(!hostPtr) hostPtr = LC32GetHostSelector(@selector(setGuest_self:));
    LC32InvokeHostSelector(ptr, hostPtr, (uint64_t)self);
}

- (uint64_t)host_self {
    printf("Calling from %s:0x%08x:0x%08x, isClass? = %d\n", class_getName(self.class), (uint32_t)self.class, (uint32_t)self, object_isClass(self));
    uint64_t ptr = ((LC32HostObjectPointer *)objc_getAssociatedObject(self, kHostSelf)).value;
    if(!ptr) {
        self.host_self = ptr = LC32GetHostObject(self, class_getName(self.class), object_isClass(self));
    }
    assert(ptr != 0);
    return ptr;
}
@end

__attribute__((constructor)) void LC32FrameworkInit() {
    // Send dlsym and LC32InvokeGuestC pointers to the host
    LC32InvokeHostCRet32(LC32Dlsym("LC32SetInvokeGuestFuncPtr", YES), &dlsym, &LC32InvokeGuestC);
}
