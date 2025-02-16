// Generated file
#if __has_include(<ModelIO/ModelIO+LC32.h>)
#import <ModelIO/ModelIO+LC32.h>
#else
#import <ModelIO/ModelIO.h>
#endif
#import <LC32/LC32.h>
#import <CoreGraphics/CoreGraphics+LC32.h>
#import <UIKit/UIKit+LC32.h>
@implementation MDLMeshBufferMap
#if 0 // FIXME: has unhandled types
- (void *)bytes {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  /* returnLine: unhandled type void * */
}
#endif

#if 0 // FIXME: has unhandled types
- (id)initWithBytes:(void *)guest_arg0 deallocator:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type void * */ 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type void * */, host_arg1);
  /* postCall: unhandled type void * */ 
  // No post-process for guest_arg1 
  self.host_self = host_ret; return self;
}
#endif
@end