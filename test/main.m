#import <objc/runtime.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <LC32/LC32.h>

@implementation UIResponder
@end
@implementation UIView
@end
/*
@implementation UIWindow
@end
*/

// My app code
@interface AppDelegate : UIResponder <UIApplicationDelegate>
//@property (strong, nonatomic) UIWindow *window;
@end
@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}
- (void)applicationWillResignActive:(UIApplication *)application {}
- (void)applicationDidEnterBackground:(UIApplication *)application {}
- (void)applicationWillEnterForeground:(UIApplication *)application {}
- (void)applicationDidBecomeActive:(UIApplication *)application {}
- (void)applicationWillTerminate:(UIApplication *)application {}
@end

// NSLog doesn't work yet
#define printObjC(...) printf("%s\n", [NSString stringWithFormat:__VA_ARGS__].UTF8String)

int main(int argc, char **argv) {
  printf("Hello world from 32bit!\n");

  NSString *literal = @"literal string";
/*
  printObjC(@"ClassName of literal string %@", literal.class);
*/
  NSString *cls =  NSStringFromClass(AppDelegate.class);
  //printObjC(@"ClassName of constant %@", cls.class);
  return UIApplicationMain(argc, argv, nil, cls);
}
