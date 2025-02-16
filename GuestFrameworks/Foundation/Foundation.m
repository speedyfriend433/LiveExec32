#import <Foundation/Foundation+LC32.h>

@implementation NSPlaceholderString : NSString
@end

@implementation NSTaggedPointerString : NSString
@end

void NSLog(NSString *format, ...) {
    printf("FIXME: NSLog called but unimplemented!\n");
}

/*
Class NSClassFromString(NSString *aClassName) {
    return objc_getClass(aClassName.UTF8String);
}
*/

NSString *NSStringFromClass(Class aClass) {
    return @(class_getName(aClass));
}

NSString *NSTemporaryDirectory() {
    static uint64_t hostPtr = 0;
    if(!hostPtr) hostPtr = LC32Dlsym("LC32_Foundation_NSTemporaryDirectory", YES);
    return (NSString *)LC32InvokeHostCRet32(hostPtr);
}
