// Generated file
#if __has_include(<CoreImage/CoreImage+LC32.h>)
#import <CoreImage/CoreImage+LC32.h>
#else
#import <CoreImage/CoreImage.h>
#endif
#import <LC32/LC32.h>
#import <CoreGraphics/CoreGraphics+LC32.h>
#import <UIKit/UIKit+LC32.h>
@implementation CIWarpKernel
#if 0 // FIXME: has unhandled types
- (id)generateGeneralKernelFromWarpKernel:(WarpKernel *)guest_arg0 args:(SerialObjectPtrArray *)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type WarpKernel * */ 
  /* declaration: unhandled type SerialObjectPtrArray * */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type WarpKernel * */, /* parameterToBePassed: unhandled type SerialObjectPtrArray * */);
  /* postCall: unhandled type WarpKernel * */ 
  /* postCall: unhandled type SerialObjectPtrArray * */ 
  return LC32HostToGuestObject(host_ret);
}
#endif

#if 0 // FIXME: has unhandled types
- (CGRect)autogenerateROI:(WarpKernel *)guest_arg0 args:(SerialObjectPtrArray *)guest_arg1 arguments:(id)guest_arg2 extent:(CGRect)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  /* declaration: unhandled type WarpKernel * */ 
  /* declaration: unhandled type SerialObjectPtrArray * */ 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  CGRect_64 host_arg3 = LC32HostCGRect(guest_arg3); 
  CGRect_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret), /* parameterToBePassed: unhandled type WarpKernel * */, /* parameterToBePassed: unhandled type SerialObjectPtrArray * */, host_arg2, host_arg3);
  /* postCall: unhandled type WarpKernel * */ 
  /* postCall: unhandled type SerialObjectPtrArray * */ 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  return LC32GuestCGRect(host_ret);
}
#endif

#if 0 // FIXME: has unhandled types
- (id)generateMainFromWarpKernel:(WarpKernel *)guest_arg0 args:(SerialObjectPtrArray *)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type WarpKernel * */ 
  /* declaration: unhandled type SerialObjectPtrArray * */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type WarpKernel * */, /* parameterToBePassed: unhandled type SerialObjectPtrArray * */);
  /* postCall: unhandled type WarpKernel * */ 
  /* postCall: unhandled type SerialObjectPtrArray * */ 
  return LC32HostToGuestObject(host_ret);
}
#endif

- (id)applyWithExtent:(CGRect)guest_arg0 roiCallback:(id)guest_arg1 arguments:(id)guest_arg2 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  CGRect_64 host_arg0 = LC32HostCGRect(guest_arg0); 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  return LC32HostToGuestObject(host_ret);
}

- (id)applyWithExtent:(CGRect)guest_arg0 roiCallback:(id)guest_arg1 inputImage:(id)guest_arg2 arguments:(id)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  CGRect_64 host_arg0 = LC32HostCGRect(guest_arg0); 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_arg3 = [guest_arg3 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  return LC32HostToGuestObject(host_ret);
}

- (id)applyWithExtent:(CGRect)guest_arg0 roiCallback:(id)guest_arg1 inputImage:(id)guest_arg2 arguments:(id)guest_arg3 options:(id)guest_arg4 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  CGRect_64 host_arg0 = LC32HostCGRect(guest_arg0); 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_arg3 = [guest_arg3 host_self]; 
  uint64_t host_arg4 = [guest_arg4 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3, host_arg4);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // No post-process for guest_arg4 
  return LC32HostToGuestObject(host_ret);
}

- (id)makeGridImage:(CGRect)guest_arg0 nx:(int)guest_arg1 ny:(int)guest_arg2 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  CGRect_64 host_arg0 = LC32HostCGRect(guest_arg0); 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2 = (uint64_t)guest_arg2; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  return LC32HostToGuestObject(host_ret);
}

- (id)applyWithExtent:(CGRect)guest_arg0 roiCallback:(id)guest_arg1 arguments:(id)guest_arg2 options:(id)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  CGRect_64 host_arg0 = LC32HostCGRect(guest_arg0); 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_arg3 = [guest_arg3 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  return LC32HostToGuestObject(host_ret);
}

+ (id)kernelWithString:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
@end