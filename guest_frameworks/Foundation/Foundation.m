#import "Foundation+LC32.h"

@implementation NSPlaceholderString : NSString
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
