#import <objc/runtime.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "LC32.h"

#include <dlfcn.h>

// Framework: LC32

// Test function
void LC32TestHostToGuestCall(uint32_t r0, uint32_t r1, uint32_t r2, uint32_t r3, uint32_t r4, uint32_t r5, uint32_t r6, uint32_t r7) {
    printf("We made the call from host to guest! args passed: 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x 0x%x\n", r0, r1, r2, r3, r4, r5, r6, r7);
    __asm__("bkpt");
}

// Query a symbol on the host dyld
uint64_t LC32Dlsym(const char *name);
__asm__(" \
.arm \n \
.balign 4 \n \
.global _LC32Dlsym \n \
_LC32Dlsym: \n \
    movw r12, #1001 \n \
    svc #0x80 \n \
    bx lr \n \
");

// Invoke a host C function. Due to the difference in pointer size, the host must provide a wrapped implementation. Most of the case only ObjC pointers are converted beforehand
uint32_t LC32InvokeHostCRet32(uint64_t hostPtr, ...);
__asm__(" \
.arm \n \
.balign 4 \n \
.global _LC32InvokeHostCRet32 \n \
_LC32InvokeHostCRet32: \n \
    movw r12, #1002 \n \
    svc #0x80 \n \
    bx lr \n \
");

// Returns an address pointing to either direct memory mapped to the guest, or copied in case its boundary is more than one guest page
// uint64_t LC32GuestToHostCString(const char *string);
__asm__(" \
.arm \n \
.balign 4 \n \
.global _LC32GuestToHostCString \n \
_LC32GuestToHostCString: \n \
    movw r12, #1003 \n \
    svc #0x80 \n \
    bx lr \n \
");

// Free the C string if it was copied 
// void LC32GuestToHostCStringFree(uint64_t string);
__asm__(" \
.arm \n \
.balign 4 \n \
.global _LC32GuestToHostCStringFree \n \
_LC32GuestToHostCStringFree: \n \
    movw r12, #1004 \n \
    svc #0x80 \n \
    bx lr \n \
");

// Returns host SEL address
// uint64_t LC32GetHostSelector(SEL selector);
__asm__(" \
.arm \n \
.balign 4 \n \
.global _LC32GetHostSelector \n \
_LC32GetHostSelector: \n \
    movw r12, #1005 \n \
    svc #0x80 \n \
    bx lr \n \
");

// Invoke host objc_performSelector. All arguments must be 64-bit aligned
uint64_t LC32InvokeHostSelector(uint64_t object, uint64_t selector, ...);
__asm__(" \
.arm \n \
.balign 4 \n \
.global _LC32InvokeHostSelector \n \
_LC32InvokeHostSelector: \n \
    movw r12, #1006 \n \
    svc #0x80 \n \
    bx lr \n \
");

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

// Used in host_self, this function returns a host class or host object initialized
uint64_t LC32GetHostObject(id self, const char *name, bool returnClass);
__asm__(" \
.arm \n \
.balign 4 \n \
.global _LC32GetHostObject \n \
_LC32GetHostObject: \n \
    movw r12, #1007 \n \
    svc #0x80 \n \
    bx lr \n \
");

// uint32_t LC32HostToGuestCopyClassName(char *output, size_t length, uint64_t host_input);
__asm__(" \
.arm \n \
.balign 4 \n \
.global _LC32HostToGuestCopyClassName \n \
_LC32HostToGuestCopyClassName: \n \
    movw r12, #1008 \n \
    svc #0x80 \n \
    bx lr \n \
");

// Used to make guest call from host. r12 is guest function pointer. It then issues svc 1009 to halt itself to return execution back to the host
uint64_t LC32InvokeGuestC();
__asm__(" \
.arm \n \
.balign 4 \n \
.global _LC32InvokeGuestC \n \
_LC32InvokeGuestC: \n \
    blx r12 \n \
    movw r12, #1009 \n \
    svc #0x80 \n \
    bkpt \n \
");

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
- (instancetype)initWithHostSelf:(uint64_t)host_self {
    // [NSObject init] does nothing, we don't need to call it, consequently it also calls up to the overridden init function of the subclass causing recursive call
    //self = [super init];
    self.host_self = host_self;
    return self;
}

static const void *kHostSelf = &kHostSelf;
- (void)setHost_self:(uint64_t)ptr {
    objc_setAssociatedObject(self, kHostSelf, [LC32HostObjectPointer pointerWithValue:ptr], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (uint64_t)host_self {
    printf("Calling from %s:0x%08x:0x%08x, isClass? = %d\n", class_getName(self.class), self, object_isClass(self));
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
    LC32InvokeHostCRet32(LC32Dlsym("LC32SetInvokeGuestFuncPtr"), &dlsym, &LC32InvokeGuestC);
}
