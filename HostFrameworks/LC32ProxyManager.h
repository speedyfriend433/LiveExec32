#import <Foundation/Foundation.h>

@interface LC32ProxyManager : NSObject

+ (instancetype)sharedManager;

- (void)registerGuestClass:(uint32_t)guestClass withHostClass:(Class)hostClass;
- (Class)getHostClassForGuestClass:(uint32_t)guestClass;
- (uint32_t)getGuestClassForHostClass:(Class)hostClass;

- (id)createHostProxyForGuestObject:(uint32_t)guestPtr;
- (uint32_t)createGuestProxyForHostObject:(id)hostObject;

- (SEL)mapGuestSelector:(uint32_t)guestSel toHost:(BOOL)toHost;
- (uint32_t)mapHostSelector:(SEL)hostSel toGuest:(BOOL)toGuest;

@end