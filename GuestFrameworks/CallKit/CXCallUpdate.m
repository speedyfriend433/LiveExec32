// Generated file
#if __has_include(<CallKit/CallKit+LC32.h>)
#import <CallKit/CallKit+LC32.h>
#else
#import <CallKit/CallKit.h>
#endif
#import <LC32/LC32.h>
#import <CoreGraphics/CoreGraphics+LC32.h>
#import <UIKit/UIKit+LC32.h>
@implementation CXCallUpdate
- (char)supportsHolding {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (char)host_ret;
}

#if 0 // FIXME: has unhandled types
- (?)hasSet {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  /* returnLine: unhandled type ? */
}
#endif

- (id)handoffContext {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (void)setHandoffContext:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (char)supportsUngrouping {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (char)host_ret;
}

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

+ (id)callUpdateWithDefaultValuesSet {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (void)updateCopy:(id)guest_arg0 withZone:(struct _NSZone *)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = 0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // return void
}

- (void)setAudioInterruptionProvider:(int)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)encodeWithCoder:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (id)initWithCoder:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  self.host_self = host_ret; return self;
}

- (void)setSupportsDTMF:(char)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (id)callerNameFromNetwork {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)remoteHandle {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (char)requiresInCallSounds {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (char)host_ret;
}

- (void)setBlocked:(char)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)setUUID:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (int)videoStreamToken {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (int)host_ret;
}

- (id)sanitizedCopyWithZone:(struct _NSZone *)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = 0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

- (char)supportsSendingToVoicemail {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (char)host_ret;
}

- (void)setSupportsSendingToVoicemail:(char)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (char)mayRequireBreakBeforeMake {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (char)host_ret;
}

- (id)sanitizedCopy {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (void)setHasVideo:(char)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (int)inCallSoundRegion {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (int)host_ret;
}

- (void)setSupportsHolding:(char)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (int)ttyType {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (int)host_ret;
}

- (char)supportsUnambiguousMultiPartyState {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (char)host_ret;
}

- (void)setSupportsGrouping:(char)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)updateWithUpdate:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)setContext:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)setCrossDeviceIdentifier:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)setUsingBaseband:(char)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)setRemoteHandle:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)setMayRequireBreakBeforeMake:(char)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
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

- (void)setInCallSoundRegion:(int)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (int)audioInterruptionOperationMode {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (int)host_ret;
}

- (void)setSupportsAddCall:(char)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (char)isUsingBaseband {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (char)host_ret;
}

- (id)UUID {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (void)setAudioInterruptionOperationMode:(int)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)setAudioMode:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)setEmergency:(char)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)setSupportsUnambiguousMultiPartyState:(char)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (char)isEmergency {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (char)host_ret;
}

- (id)crossDeviceIdentifier {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (char)supportsAddCall {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (char)host_ret;
}

- (void)setCallerNameFromNetwork:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)updateSanitizedCopy:(id)guest_arg0 withZone:(struct _NSZone *)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = 0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // return void
}

- (int)audioInterruptionProvider {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (int)host_ret;
}

- (char)supportsDTMF {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (char)host_ret;
}

- (char)isBlocked {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (char)host_ret;
}

- (void)setTTYType:(int)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (id)audioMode {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (void)setVideoStreamToken:(int)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)setRequiresInCallSounds:(char)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (char)supportsGrouping {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (char)host_ret;
}

- (void)setLocalizedCallerName:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (id)audioCategory {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)localizedCallerName {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)context {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (char)hasVideo {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (char)host_ret;
}

#if 0 // FIXME: has unhandled types
- (?)setHasSet:(?)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type ? */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type ? */);
  // No post-process for guest_arg0 
  /* returnLine: unhandled type ? */
}
#endif

- (void)setSupportsUngrouping:(char)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (void)setAudioCategory:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}
@end