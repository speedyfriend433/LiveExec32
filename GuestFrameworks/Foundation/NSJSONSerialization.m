// Generated file
#if __has_include(<Foundation/Foundation+LC32.h>)
#import <Foundation/Foundation+LC32.h>
#else
#import <Foundation/Foundation.h>
#endif
#import <LC32/LC32.h>
#import <CoreGraphics/CoreGraphics+LC32.h>
#import <UIKit/UIKit+LC32.h>
@implementation NSJSONSerialization
+ (id)JSONObjectWithStream:(id)guest_arg0 options:(unsigned int)guest_arg1 error:(id *)guest_arg2 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2; // id * 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, &host_arg2);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  *guest_arg2 = LC32HostToGuestObject(host_arg2); 
  return LC32HostToGuestObject(host_ret);
}

+ (int)writeJSONObject:(id)guest_arg0 toStream:(id)guest_arg1 options:(unsigned int)guest_arg2 error:(id *)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = (uint64_t)guest_arg2; 
  uint64_t host_arg3; // id * 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, &host_arg3);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  *guest_arg3 = LC32HostToGuestObject(host_arg3); 
  return (int)host_ret;
}

+ (id)JSONObjectWithData:(id)guest_arg0 options:(unsigned int)guest_arg1 error:(id *)guest_arg2 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2; // id * 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, &host_arg2);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  *guest_arg2 = LC32HostToGuestObject(host_arg2); 
  return LC32HostToGuestObject(host_ret);
}

+ (id)dataWithJSONObject:(id)guest_arg0 options:(unsigned int)guest_arg1 error:(id *)guest_arg2 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2; // id * 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, &host_arg2);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  *guest_arg2 = LC32HostToGuestObject(host_arg2); 
  return LC32HostToGuestObject(host_ret);
}

- (id)init {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  self.host_self = host_ret; return self;
}

+ (char)isValidJSONObject:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return (char)host_ret;
}
@end