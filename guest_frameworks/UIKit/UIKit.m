@import UIKit;
#import <LC32/LC32.h>

int UIApplicationMain(int argc, char * argv[], NSString *
principalClassName, NSString *delegateClassName) {
    static uint64_t hostPtr = 0;
    if(!hostPtr) hostPtr = LC32Dlsym("lc32_UIKit_UIApplicationMain");
    return LC32InvokeHostCRet32(hostPtr, argc, argv, principalClassName.host_self, delegateClassName.host_self);
}
