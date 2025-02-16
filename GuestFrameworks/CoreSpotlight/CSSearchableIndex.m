// Generated file
#if __has_include(<CoreSpotlight/CoreSpotlight+LC32.h>)
#import <CoreSpotlight/CoreSpotlight+LC32.h>
#else
#import <CoreSpotlight/CoreSpotlight.h>
#endif
#import <LC32/LC32.h>
#import <CoreGraphics/CoreGraphics+LC32.h>
#import <UIKit/UIKit+LC32.h>
@implementation CSSearchableIndex
- (void)deleteInteractionsWithIdentifiers:(id)guest_arg0 bundleID:(id)guest_arg1 protectionClass:(id)guest_arg2 completionHandler:(id)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_arg3 = [guest_arg3 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // return void
}

- (void)indexSearchableItems:(id)guest_arg0 returningItemsSanitizedForSpotlightTo:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // return void
}

- (id)testProxy {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)description {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)init {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  self.host_self = host_ret; return self;
}

- (void)deleteSearchableItemsSinceDate:(id)guest_arg0 protectionClass:(id)guest_arg1 forBundleID:(id)guest_arg2 options:(int)guest_arg3 completionHandler:(id)guest_arg4 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_arg3 = (uint64_t)guest_arg3; 
  uint64_t host_arg4 = [guest_arg4 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3, host_arg4);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // No post-process for guest_arg4 
  // return void
}

- (void)setBatchedItemsToIndex:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)fetchLastClientStateWithCompletionHandler:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

+ (char)activityShouldBeIndexed:(id)guest_arg0 bundleID:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  return (char)host_ret;
}

+ (char)isIndexingAvailable {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (char)host_ret;
}

- (void)addInteraction:(id)guest_arg0 bundleID:(id)guest_arg1 protectionClass:(id)guest_arg2 completionHandler:(id)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_arg3 = [guest_arg3 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // return void
}

- (void)indexSearchableItems:(id)guest_arg0 deleteSearchableItemsWithIdentifiers:(id)guest_arg1 clientState:(id)guest_arg2 completionHandler:(id)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_arg3 = [guest_arg3 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // return void
}

- (id)name {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (void)deleteInteractionsWithGroupIdentifiers:(id)guest_arg0 bundleID:(id)guest_arg1 protectionClass:(id)guest_arg2 completionHandler:(id)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_arg3 = [guest_arg3 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // return void
}

- (id)bundleIdentifier {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (void)deleteSearchableItemsSinceDate:(id)guest_arg0 completionHandler:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // return void
}

- (id)activityQueue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (void)setBatchOpen:(char)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)indexSearchableItems:(id)guest_arg0 deleteSearchableItemsWithIdentifiers:(id)guest_arg1 clientState:(id)guest_arg2 protectionClass:(id)guest_arg3 forBundleID:(id)guest_arg4 options:(int)guest_arg5 completionHandler:(id)guest_arg6 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_arg3 = [guest_arg3 host_self]; 
  uint64_t host_arg4 = [guest_arg4 host_self]; 
  uint64_t host_arg5 = (uint64_t)guest_arg5; 
  uint64_t host_arg6 = [guest_arg6 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3, host_arg4, host_arg5, host_arg6);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // No post-process for guest_arg4 
  // No post-process for guest_arg5 
  // No post-process for guest_arg6 
  // return void
}

- (id)initWithTestingStub:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  self.host_self = host_ret; return self;
}

- (id)remoteProxyWithErrorHandler:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

- (void)performDataMigrationWithTimeout:(double)guest_arg0 completionHandler:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  double host_arg0 = (double)guest_arg0; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // return void
}

- (int)options {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (int)host_ret;
}

- (void)setDelegateQueue:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)deleteAllInteractionsWithCompletionHandler:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)deleteAllSearchableItemsForBundleID:(id)guest_arg0 completionHandler:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // return void
}

- (void)performIndexJob:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)fetchLastClientStateWithProtectionClass:(id)guest_arg0 forBundleID:(id)guest_arg1 clientStateName:(id)guest_arg2 options:(int)guest_arg3 completionHandler:(id)guest_arg4 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_arg3 = (uint64_t)guest_arg3; 
  uint64_t host_arg4 = [guest_arg4 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3, host_arg4);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // No post-process for guest_arg4 
  // return void
}

+ (void)initialize {
}

- (void)unthrottle {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  // return void
}

- (void)setName:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)performIndexJob:(id)guest_arg0 acknowledgementHandler:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // return void
}

- (id)initWithName:(id)guest_arg0 bundleIdentifier:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  self.host_self = host_ret; return self;
}

- (id)initWithName:(id)guest_arg0 protectionClass:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  self.host_self = host_ret; return self;
}

- (void)indexSearchableItems:(id)guest_arg0 deleteSearchableItemsWithIdentifiers:(id)guest_arg1 clientState:(id)guest_arg2 clientStateName:(id)guest_arg3 protectionClass:(id)guest_arg4 forBundleID:(id)guest_arg5 options:(int)guest_arg6 completionHandler:(id)guest_arg7 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_arg3 = [guest_arg3 host_self]; 
  uint64_t host_arg4 = [guest_arg4 host_self]; 
  uint64_t host_arg5 = [guest_arg5 host_self]; 
  uint64_t host_arg6 = (uint64_t)guest_arg6; 
  uint64_t host_arg7 = [guest_arg7 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3, host_arg4, host_arg5, host_arg6, host_arg7);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // No post-process for guest_arg4 
  // No post-process for guest_arg5 
  // No post-process for guest_arg6 
  // No post-process for guest_arg7 
  // return void
}

- (void)setAwakeNotifyToken:(int)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)deleteSearchableItemsWithIdentifiers:(id)guest_arg0 completionHandler:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // return void
}

- (id)batchedItemIdentifiersToDelete {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (void)setIndexDelegate:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (id)throttleQueue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (void)beginIndexBatch {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  // return void
}

- (void)setBundleIdentifier:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)addInteraction:(id)guest_arg0 completionHandler:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // return void
}

- (void)indexUserActivity:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (id)requestQueue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (void)changeStateOfSearchableItemsWithUIDs:(id)guest_arg0 toState:(int)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // return void
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)guest_arg0 completionHandler:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // return void
}

- (void)deleteAllSearchableItemsWithProtectionClass:(id)guest_arg0 forBundleID:(id)guest_arg1 options:(int)guest_arg2 completionHandler:(id)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = (uint64_t)guest_arg2; 
  uint64_t host_arg3 = [guest_arg3 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // return void
}

- (void)endIndexBatchWithClientState:(id)guest_arg0 completionHandler:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // return void
}

+ (double)lastUpdateTime {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (double)host_ret;
}

- (void)throttle {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  // return void
}

- (void)setConnection:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)deleteInteractionsWithGroupIdentifiers:(id)guest_arg0 completionHandler:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // return void
}

+ (id)mainBundleLocalizedString {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

+ (id)mainBundleID {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)guest_arg0 protectionClass:(id)guest_arg1 forBundleID:(id)guest_arg2 options:(int)guest_arg3 completionHandler:(id)guest_arg4 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_arg3 = (uint64_t)guest_arg3; 
  uint64_t host_arg4 = [guest_arg4 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3, host_arg4);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // No post-process for guest_arg4 
  // return void
}

- (id)delegateQueue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

+ (id)defaultSearchableIndex {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)initWithName:(id)guest_arg0 options:(int)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  self.host_self = host_ret; return self;
}

- (char)batchOpen {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (char)host_ret;
}

- (id)connection {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (void)deleteAllInteractionsWithBundleID:(id)guest_arg0 protectionClass:(id)guest_arg1 completionHandler:(id)guest_arg2 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // return void
}

- (void)flushUserActivities {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  // return void
}

- (id)indexDelegate {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (void)setBatchedItemIdentifiersToDelete:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (id)initWithName:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  self.host_self = host_ret; return self;
}

- (void)willModifySearchableItemsWithIdentifiers:(id)guest_arg0 protectionClass:(id)guest_arg1 forBundleID:(id)guest_arg2 options:(int)guest_arg3 completionHandler:(id)guest_arg4 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_arg3 = (uint64_t)guest_arg3; 
  uint64_t host_arg4 = [guest_arg4 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3, host_arg4);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // No post-process for guest_arg4 
  // return void
}

- (void)deleteInteractionsWithIdentifiers:(id)guest_arg0 completionHandler:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // return void
}

- (id)protectionClass {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (void)indexSearchableItems:(id)guest_arg0 completionHandler:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // return void
}

- (void)setTestProxy:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (id)batchedItemsToIndex {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)initWithName:(id)guest_arg0 protectionClass:(id)guest_arg1 bundleIdentifier:(id)guest_arg2 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  self.host_self = host_ret; return self;
}

- (void)setOptions:(int)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (int)awakeNotifyToken {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (int)host_ret;
}

- (void)deleteAllSearchableItemsWithCompletionHandler:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

+ (void)notifyIndexDelegates {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  // return void
}

- (void)willModifySearchableItemsWithIdentifiers:(id)guest_arg0 completionHandler:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // return void
}

- (void)setProtectionClass:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}
@end