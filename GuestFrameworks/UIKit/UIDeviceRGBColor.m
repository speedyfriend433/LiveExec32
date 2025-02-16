// Generated file
#if __has_include(<UIKit/UIKit+LC32.h>)
#import <UIKit/UIKit+LC32.h>
#else
#import <UIKit/UIKit.h>
#endif
#import <LC32/LC32.h>
#import <CoreGraphics/CoreGraphics+LC32.h>
#import <UIKit/UIKit+LC32.h>
@implementation UIDeviceRGBColor
#if 0 // FIXME: has unhandled types
- (id)initWithCGColor:(CGColor *)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type CGColor * */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type CGColor * */);
  /* postCall: unhandled type CGColor * */ 
  self.host_self = host_ret; return self;
}
#endif

- (double)alphaComponent {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (double)host_ret;
}

#if 0 // FIXME: has unhandled types
- (BOOL)getWhite:(double *)guest_arg0 alpha:(double *)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type double * */ 
  /* declaration: unhandled type double * */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type double * */, /* parameterToBePassed: unhandled type double * */);
  /* postCall: unhandled type double * */ 
  /* postCall: unhandled type double * */ 
  return (BOOL)host_ret;
}
#endif

- (id)colorSpaceName {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (void)setFill {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  // return void
}

- (id)colorWithAlphaComponent:(double)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  double host_arg0 = (double)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

- (id)initWithRed:(double)guest_arg0 green:(double)guest_arg1 blue:(double)guest_arg2 alpha:(double)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  double host_arg0 = (double)guest_arg0; 
  double host_arg1 = (double)guest_arg1; 
  double host_arg2 = (double)guest_arg2; 
  double host_arg3 = (double)guest_arg3; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  self.host_self = host_ret; return self;
}

- (id)initWithHue:(double)guest_arg0 saturation:(double)guest_arg1 brightness:(double)guest_arg2 alpha:(double)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  double host_arg0 = (double)guest_arg0; 
  double host_arg1 = (double)guest_arg1; 
  double host_arg2 = (double)guest_arg2; 
  double host_arg3 = (double)guest_arg3; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  self.host_self = host_ret; return self;
}

- (id)description {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

#if 0 // FIXME: has unhandled types
- (CGColor *)CGColor {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  /* returnLine: unhandled type CGColor * */
}
#endif

- (void)set {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  // return void
}

- (void)setStroke {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  // return void
}

- (id)copyWithZone:(struct _NSZone *)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = 0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

#if 0 // FIXME: has unhandled types
- (BOOL)getRed:(double *)guest_arg0 green:(double *)guest_arg1 blue:(double *)guest_arg2 alpha:(double *)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type double * */ 
  /* declaration: unhandled type double * */ 
  /* declaration: unhandled type double * */ 
  /* declaration: unhandled type double * */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type double * */, /* parameterToBePassed: unhandled type double * */, /* parameterToBePassed: unhandled type double * */, /* parameterToBePassed: unhandled type double * */);
  /* postCall: unhandled type double * */ 
  /* postCall: unhandled type double * */ 
  /* postCall: unhandled type double * */ 
  /* postCall: unhandled type double * */ 
  return (BOOL)host_ret;
}
#endif

- (uint64_t)hash {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (uint64_t)host_ret;
}

#if 0 // FIXME: has unhandled types
- (BOOL)getHue:(double *)guest_arg0 saturation:(double *)guest_arg1 brightness:(double *)guest_arg2 alpha:(double *)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type double * */ 
  /* declaration: unhandled type double * */ 
  /* declaration: unhandled type double * */ 
  /* declaration: unhandled type double * */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type double * */, /* parameterToBePassed: unhandled type double * */, /* parameterToBePassed: unhandled type double * */, /* parameterToBePassed: unhandled type double * */);
  /* postCall: unhandled type double * */ 
  /* postCall: unhandled type double * */ 
  /* postCall: unhandled type double * */ 
  /* postCall: unhandled type double * */ 
  return (BOOL)host_ret;
}
#endif

- (BOOL)isEqual:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return (BOOL)host_ret;
}
@end