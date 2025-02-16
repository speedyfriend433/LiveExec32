// Generated file
#if __has_include(<CoreImage/CoreImage+LC32.h>)
#import <CoreImage/CoreImage+LC32.h>
#else
#import <CoreImage/CoreImage.h>
#endif
#import <LC32/LC32.h>
#import <CoreGraphics/CoreGraphics+LC32.h>
#import <UIKit/UIKit+LC32.h>
@implementation CIQRCodeFeature
- (CGRect)bounds {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CGRect_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  return LC32GuestCGRect(host_ret);
}

- (CGPoint)topRight {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CGPoint_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  return LC32GuestCGPoint(host_ret);
}

- (CGPoint)bottomLeft {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CGPoint_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  return LC32GuestCGPoint(host_ret);
}

- (CGPoint)topLeft {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CGPoint_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  return LC32GuestCGPoint(host_ret);
}

- (CGPoint)bottomRight {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CGPoint_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  return LC32GuestCGPoint(host_ret);
}

- (id)initWithBounds:(CGRect)guest_arg0 topLeft:(CGPoint)guest_arg1 topRight:(CGPoint)guest_arg2 bottomLeft:(CGPoint)guest_arg3 bottomRight:(CGPoint)guest_arg4 messageString:(id)guest_arg5 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  CGRect_64 host_arg0 = LC32HostCGRect(guest_arg0); 
  CGPoint_64 host_arg1 = LC32HostCGPoint(guest_arg1); 
  CGPoint_64 host_arg2 = LC32HostCGPoint(guest_arg2); 
  CGPoint_64 host_arg3 = LC32HostCGPoint(guest_arg3); 
  CGPoint_64 host_arg4 = LC32HostCGPoint(guest_arg4); 
  uint64_t host_arg5 = [guest_arg5 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3, host_arg4, host_arg5);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // No post-process for guest_arg4 
  // No post-process for guest_arg5 
  self.host_self = host_ret; return self;
}

- (id)messageString {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)type {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}
@end