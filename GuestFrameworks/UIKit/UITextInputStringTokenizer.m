// Generated file
#if __has_include(<UIKit/UIKit+LC32.h>)
#import <UIKit/UIKit+LC32.h>
#else
#import <UIKit/UIKit.h>
#endif
#import <LC32/LC32.h>
#import <CoreGraphics/CoreGraphics+LC32.h>
#import <UIKit/UIKit+LC32.h>
@implementation UITextInputStringTokenizer
- (id)positionFromPosition:(id)guest_arg0 toBoundary:(int)guest_arg1 inDirection:(int)guest_arg2 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2 = (uint64_t)guest_arg2; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  return LC32HostToGuestObject(host_ret);
}

- (char)isPosition:(id)guest_arg0 atBoundary:(int)guest_arg1 inDirection:(int)guest_arg2 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2 = (uint64_t)guest_arg2; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  return (char)host_ret;
}

- (id)rangeEnclosingPosition:(id)guest_arg0 withGranularity:(int)guest_arg1 inDirection:(int)guest_arg2 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2 = (uint64_t)guest_arg2; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  return LC32HostToGuestObject(host_ret);
}

- (char)isPosition:(id)guest_arg0 withinTextUnit:(int)guest_arg1 inDirection:(int)guest_arg2 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2 = (uint64_t)guest_arg2; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  return (char)host_ret;
}

- (id)initWithTextInput:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  self.host_self = host_ret; return self;
}
@end