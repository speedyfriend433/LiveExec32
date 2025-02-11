#import <LC32/LC32.h>
#import <UIKit/UIKit+LC32.h>

const NSString *UIApplicationStatusBarHeightChangedNotification = @"UIApplicationStatusBarHeightChangedNotification";

int UIApplicationMain(int argc, char * argv[], NSString *
principalClassName, NSString *delegateClassName) {
    static uint64_t hostPtr = 0;
    if(!hostPtr) hostPtr = LC32Dlsym("LC32_UIKit_UIApplicationMain", YES);
    return LC32InvokeHostCRet32(hostPtr, argc, argv, principalClassName.host_self, delegateClassName.host_self);
}
