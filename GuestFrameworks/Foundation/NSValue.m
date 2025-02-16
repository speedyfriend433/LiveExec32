// Generated file
#if __has_include(<Foundation/Foundation+LC32.h>)
#import <Foundation/Foundation+LC32.h>
#else
#import <Foundation/Foundation.h>
#endif
#import <LC32/LC32.h>
#import <CoreGraphics/CoreGraphics+LC32.h>
#import <UIKit/UIKit+LC32.h>
@implementation NSValue
#if 0 // FIXME: has unhandled types
+ (id)valueWithPointer:(const void *)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type const void * */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type const void * */);
  /* postCall: unhandled type const void * */ 
  return LC32HostToGuestObject(host_ret);
}
#endif

- (unsigned int)hash {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (unsigned int)host_ret;
}

- (char)isEqualToValue:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return (char)host_ret;
}

#if 0 // FIXME: has unhandled types
+ (id)valueWithUIKBHandwritingPoint:(anonymous struct)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type anonymous struct */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type anonymous struct */);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
#endif

#if 0 // FIXME: has unhandled types
+ (id)valueWithCMTime:(anonymous struct)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type anonymous struct */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type anonymous struct */);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
#endif

+ (char)supportsSecureCoding {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (char)host_ret;
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

#if 0 // FIXME: has unhandled types
+ (id)valueWithUIOffset:(UIOffset)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type UIOffset */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type UIOffset */);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
#endif

#if 0 // FIXME: has unhandled types
+ (id)valueWithSCNVector4:(SCNVector4)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type SCNVector4 */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type SCNVector4 */);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
#endif

#if 0 // FIXME: has unhandled types
- (_NSRange)rangeValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  _NSRange_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type _NSRange */
}
#endif

- (void)encodeWithCoder:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

#if 0 // FIXME: has unhandled types
- (CLLocationCoordinate2D)MKCoordinateValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CLLocationCoordinate2D_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type CLLocationCoordinate2D */
}
#endif

- (id)initWithCoder:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  self.host_self = host_ret; return self;
}

#if 0 // FIXME: has unhandled types
+ (id)valueWithCoordinate:(anonymous struct)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type anonymous struct */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type anonymous struct */);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
#endif

#if 0 // FIXME: has unhandled types
+ (id)valueWithCMTimeRange:(anonymous struct)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type anonymous struct */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type anonymous struct */);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
#endif

#if 0 // FIXME: has unhandled types
- (UIOffset)UIOffsetValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  UIOffset_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type UIOffset */
}
#endif

+ (id)valueWithNonretainedObject:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

- (CGAffineTransform)CGAffineTransformValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CGAffineTransform_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  return LC32GuestCGAffineTransform(host_ret);
}

+ (id)valueWithCGRect:(CGRect)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  CGRect_64 host_arg0 = LC32HostCGRect(guest_arg0); 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

#if 0 // FIXME: has unhandled types
- (anonymous struct)CMTimeValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  anonymous struct_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type anonymous struct */
}
#endif

#if 0 // FIXME: has unhandled types
+ (id)valueWithCAColorMatrix:(CAColorMatrix)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type CAColorMatrix */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type CAColorMatrix */);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
#endif

#if 0 // FIXME: has unhandled types
- (anonymous struct)UIKBHandwritingPointValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  anonymous struct_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type anonymous struct */
}
#endif

#if 0 // FIXME: has unhandled types
- (anonymous struct)ML3NameOrderValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  anonymous struct_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type anonymous struct */
}
#endif

- (id)weakObjectValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

#if 0 // FIXME: has unhandled types
- (anonymous struct)MKCoordinateSpanValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  anonymous struct_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type anonymous struct */
}
#endif

+ (id)valueWithWeakObject:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

#if 0 // FIXME: has unhandled types
+ (id)valueWithCATransform3D:(CATransform3D)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type CATransform3D */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type CATransform3D */);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
#endif

#if 0 // FIXME: has unhandled types
- (id)initWithBytes:(const void *)guest_arg0 objCType:(const char *)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type const void * */ 
  uint64_t host_arg1 = LC32GuestToHostCString(guest_arg1, 0); 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type const void * */, host_arg1);
  /* postCall: unhandled type const void * */ 
  LC32GuestToHostCStringFree(host_arg1); 
  self.host_self = host_ret; return self;
}
#endif

+ (void)initialize {
}

#if 0 // FIXME: has unhandled types
+ (id)value:(const void *)guest_arg0 withObjCType:(const char *)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type const void * */ 
  uint64_t host_arg1 = LC32GuestToHostCString(guest_arg1, 0); 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type const void * */, host_arg1);
  /* postCall: unhandled type const void * */ 
  LC32GuestToHostCStringFree(host_arg1); 
  return LC32HostToGuestObject(host_ret);
}
#endif

- (id)CAMLType {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

#if 0 // FIXME: has unhandled types
- (anonymous struct)MKMapRectValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  anonymous struct_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type anonymous struct */
}
#endif

#if 0 // FIXME: has unhandled types
- (void *)pointerValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  /* returnLine: unhandled type void * */
}
#endif

#if 0 // FIXME: has unhandled types
+ (id)valueWithBytes:(const void *)guest_arg0 objCType:(const char *)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type const void * */ 
  uint64_t host_arg1 = LC32GuestToHostCString(guest_arg1, 0); 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type const void * */, host_arg1);
  /* postCall: unhandled type const void * */ 
  LC32GuestToHostCStringFree(host_arg1); 
  return LC32HostToGuestObject(host_ret);
}
#endif

- (id)initWithCPLArchiver:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  self.host_self = host_ret; return self;
}

#if 0 // FIXME: has unhandled types
- (CADoubleRect)CADoubleRectValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CADoubleRect_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type CADoubleRect */
}
#endif

- (id)replacementObjectForPortCoder:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

#if 0 // FIXME: has unhandled types
- (NSEdgeInsets)edgeInsetsValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  NSEdgeInsets_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type NSEdgeInsets */
}
#endif

- (CGRect)CGRectValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CGRect_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  return LC32GuestCGRect(host_ret);
}

- (id)cplFullDescription {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

#if 0 // FIXME: has unhandled types
+ (id)valueWithCMTimeMapping:(anonymous struct)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type anonymous struct */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type anonymous struct */);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
#endif

#if 0 // FIXME: has unhandled types
+ (id)valueWithRange:(_NSRange)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type _NSRange */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type _NSRange */);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
#endif

#if 0 // FIXME: has unhandled types
- (void)getValue:(void *)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type void * */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type void * */);
  /* postCall: unhandled type void * */ 
  // return void
}
#endif

#if 0 // FIXME: has unhandled types
+ (id)valueWithCAPoint3D:(CAPoint3D)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type CAPoint3D */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type CAPoint3D */);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
#endif

#if 0 // FIXME: has unhandled types
+ (id)valueWithEdgeInsets:(NSEdgeInsets)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type NSEdgeInsets */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type NSEdgeInsets */);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
#endif

- (CGPoint)pointValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CGPoint_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  return LC32GuestCGPoint(host_ret);
}

+ (id)valueWithPoint:(CGPoint)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  CGPoint_64 host_arg0 = LC32HostCGPoint(guest_arg0); 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

+ (id)valueWithUIEdgeInsets:(UIEdgeInsets)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  UIEdgeInsets_64 host_arg0 = LC32HostUIEdgeInsets(guest_arg0); 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

- (id)nonretainedObjectValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (Class)classForCoder {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

#if 0 // FIXME: has unhandled types
- (CADoublePoint)CADoublePointValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CADoublePoint_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type CADoublePoint */
}
#endif

- (CGPoint)CGPointValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CGPoint_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  return LC32GuestCGPoint(host_ret);
}

+ (id)valueWithSize:(CGSize)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  CGSize_64 host_arg0 = LC32HostCGSize(guest_arg0); 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

- (id)plistArchiveWithCPLArchiver:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

#if 0 // FIXME: has unhandled types
+ (id)valueWithML3NameOrder:(anonymous struct)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type anonymous struct */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type anonymous struct */);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
#endif

#if 0 // FIXME: has unhandled types
- (anonymous struct)CMTimeRangeValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  anonymous struct_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type anonymous struct */
}
#endif

- (CGSize)sizeValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CGSize_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  return LC32GuestCGSize(host_ret);
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
+ (id)valueWithSCNMatrix4:(SCNMatrix4)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type SCNMatrix4 */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type SCNMatrix4 */);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
#endif

+ (id)valueWithCGPoint:(CGPoint)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  CGPoint_64 host_arg0 = LC32HostCGPoint(guest_arg0); 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

#if 0 // FIXME: has unhandled types
+ (id)valueWithSCNVector3:(SCNVector3)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type SCNVector3 */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type SCNVector3 */);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
#endif

#if 0 // FIXME: has unhandled types
+ (id)valueWithCGVector:(CGVector)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type CGVector */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type CGVector */);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
#endif

#if 0 // FIXME: has unhandled types
- (anonymous struct)coordinateValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  anonymous struct_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type anonymous struct */
}
#endif

+ (id)valueWithRect:(CGRect)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  CGRect_64 host_arg0 = LC32HostCGRect(guest_arg0); 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

- (CGRect)rectValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CGRect_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  return LC32GuestCGRect(host_ret);
}

#if 0 // FIXME: has unhandled types
+ (id)valueWithMKCoordinate:(CLLocationCoordinate2D)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type CLLocationCoordinate2D */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type CLLocationCoordinate2D */);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
#endif

- (void)encodeWithCAMLWriter:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

+ (id)valueWithCGSize:(CGSize)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  CGSize_64 host_arg0 = LC32HostCGSize(guest_arg0); 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

- (UIEdgeInsets)UIEdgeInsetsValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  UIEdgeInsets_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  return LC32GuestUIEdgeInsets(host_ret);
}

#if 0 // FIXME: has unhandled types
- (SCNMatrix4)SCNMatrix4Value {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  SCNMatrix4_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type SCNMatrix4 */
}
#endif

#if 0 // FIXME: has unhandled types
- (SCNVector3)SCNVector3Value {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  SCNVector3_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type SCNVector3 */
}
#endif

#if 0 // FIXME: has unhandled types
+ (id)valueWithMKCoordinateSpan:(anonymous struct)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type anonymous struct */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type anonymous struct */);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}
#endif

#if 0 // FIXME: has unhandled types
- (const char *)objCType {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  /* returnLine: unhandled type const char * */
}
#endif

#if 0 // FIXME: has unhandled types
- (SCNVector4)SCNVector4Value {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  SCNVector4_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type SCNVector4 */
}
#endif

- (char)isEqual:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return (char)host_ret;
}

#if 0 // FIXME: has unhandled types
- (CGVector)CGVectorValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CGVector_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type CGVector */
}
#endif

#if 0 // FIXME: has unhandled types
- (CAColorMatrix)CAColorMatrixValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CAColorMatrix_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type CAColorMatrix */
}
#endif

#if 0 // FIXME: has unhandled types
- (CATransform3D)CATransform3DValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CATransform3D_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type CATransform3D */
}
#endif

- (CGSize)CGSizeValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CGSize_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  return LC32GuestCGSize(host_ret);
}

#if 0 // FIXME: has unhandled types
- (anonymous struct)CMTimeMappingValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  anonymous struct_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type anonymous struct */
}
#endif

+ (id)valueWithCGAffineTransform:(CGAffineTransform)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  CGAffineTransform_64 host_arg0 = LC32HostCGAffineTransform(guest_arg0); 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

#if 0 // FIXME: has unhandled types
- (CAPoint3D)CAPoint3DValue {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  CAPoint3D_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret));
  /* returnLine: unhandled type CAPoint3D */
}
#endif
@end