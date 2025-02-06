@import Foundation;
@import ObjectiveC;
@import UIKit;

@interface UILayoutContainerView : UIView
@end
@interface UIDynamicColor : UIColor
@end
@interface UIDynamicSystemColor : UIDynamicColor
@end

@interface NSObject(LC32)
- (instancetype)initWithHostSelf:(uint64_t)host_self;
- (uint64_t)host_self;
- (void)setHost_self:(uint64_t)ptr;
@end

extern uint64_t LC32Dlsym(const char *name);
uint32_t LC32InvokeHostCRet32(uint64_t hostPtr, ...);

// Returns an address pointing to either direct memory mapped to the guest, or copied in case its boundary is more than one guest page
uint64_t LC32GuestToHostCString(const char *string);

// Free the C string if it was copied 
void LC32GuestToHostCStringFree(uint64_t string);

// Vice versa: copy string from host to guest
uint32_t LC32HostToGuestCopyClassName(char *output, size_t length, uint64_t host_input);

// Converts host class to guest class
Class LC32HostToGuestClass(uint64_t address);

// Get the guest object pointer from host
id LC32HostToGuestObject(uint64_t host_object);

// Returns host SEL address
uint64_t LC32GetHostSelector(SEL selector);

// Call objc_performSelector
uint64_t LC32InvokeHostSelector(uint64_t object, uint64_t selector, ...);

// Get the host class pointer. If returnClass is false, it returns [clsss alloc]
uint64_t LC32GetHostObject(id self, const char *name, bool returnClass);
