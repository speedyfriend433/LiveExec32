// Generated file
#if __has_include(<Foundation/Foundation+LC32.h>)
#import <Foundation/Foundation+LC32.h>
#else
#import <Foundation/Foundation.h>
#endif
#import <LC32/LC32.h>
#import <CoreGraphics/CoreGraphics+LC32.h>
#import <UIKit/UIKit+LC32.h>
@implementation NSCalendar
- (unsigned int)hash {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (unsigned int)host_ret;
}

- (void)setLocale:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

#if 0 // FIXME: has unhandled types
- (char)rangeOfUnit:(unsigned int)guest_arg0 startDate:(id *)guest_arg1 interval:(double *)guest_arg2 forDate:(id)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_arg1; // id * 
  /* declaration: unhandled type double * */ 
  uint64_t host_arg3 = [guest_arg3 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, &host_arg1, /* parameterToBePassed: unhandled type double * */, host_arg3);
  // No post-process for guest_arg0 
  *guest_arg1 = LC32HostToGuestObject(host_arg1); 
  /* postCall: unhandled type double * */ 
  // No post-process for guest_arg3 
  return (char)host_ret;
}
#endif

- (id)shortStandaloneWeekdaySymbols {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)dateByAddingComponents:(id)guest_arg0 toDate:(id)guest_arg1 options:(unsigned int)guest_arg2 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = (uint64_t)guest_arg2; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  return LC32HostToGuestObject(host_ret);
}

- (id)shortStandaloneMonthSymbols {
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

+ (char)supportsSecureCoding {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (char)host_ret;
}

- (char)isDateInYesterday:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return (char)host_ret;
}

- (id)standaloneQuarterSymbols {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
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

- (id)longEraSymbols {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
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

- (void)enumerateDatesStartingAfterDate:(id)guest_arg0 matchingComponents:(id)guest_arg1 options:(unsigned int)guest_arg2 usingBlock:(id)guest_arg3 {
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

- (id)nextDateAfterDate:(id)guest_arg0 matchingUnit:(unsigned int)guest_arg1 value:(int)guest_arg2 options:(unsigned int)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2 = (uint64_t)guest_arg2; 
  uint64_t host_arg3 = (uint64_t)guest_arg3; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  return LC32HostToGuestObject(host_ret);
}

- (id)veryShortStandaloneWeekdaySymbols {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)shortMonthSymbols {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)shortWeekdaySymbols {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)gregorianStartDate {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

+ (id)autoupdatingCurrentCalendar {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)calendarIdentifier {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

#if 0 // FIXME: has unhandled types
- (?)getEra:(?)guest_arg0 year:(?)guest_arg1 month:(?)guest_arg2 day:(?)guest_arg3 fromDate:(?)guest_arg4 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type ? */ 
  /* declaration: unhandled type ? */ 
  /* declaration: unhandled type ? */ 
  /* declaration: unhandled type ? */ 
  /* declaration: unhandled type ? */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type ? */, /* parameterToBePassed: unhandled type ? */, /* parameterToBePassed: unhandled type ? */, /* parameterToBePassed: unhandled type ? */, /* parameterToBePassed: unhandled type ? */);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // No post-process for guest_arg4 
  /* returnLine: unhandled type ? */
}
#endif

- (void)setTimeZone:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (id)shortStandaloneQuarterSymbols {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

+ (id)calendarWithIdentifier:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

- (id)veryShortMonthSymbols {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

#if 0 // FIXME: has unhandled types
- (_NSRange)minimumRangeOfUnit:(unsigned int)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  _NSRange_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret), host_arg0);
  // No post-process for guest_arg0 
  /* returnLine: unhandled type _NSRange */
}
#endif

#if 0 // FIXME: has unhandled types
- (?)getHour:(?)guest_arg0 minute:(?)guest_arg1 second:(?)guest_arg2 nanosecond:(?)guest_arg3 fromDate:(?)guest_arg4 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type ? */ 
  /* declaration: unhandled type ? */ 
  /* declaration: unhandled type ? */ 
  /* declaration: unhandled type ? */ 
  /* declaration: unhandled type ? */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type ? */, /* parameterToBePassed: unhandled type ? */, /* parameterToBePassed: unhandled type ? */, /* parameterToBePassed: unhandled type ? */, /* parameterToBePassed: unhandled type ? */);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // No post-process for guest_arg4 
  /* returnLine: unhandled type ? */
}
#endif

#if 0 // FIXME: has unhandled types
- (_NSRange)rangeOfUnit:(unsigned int)guest_arg0 inUnit:(unsigned int)guest_arg1 forDate:(id)guest_arg2 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  _NSRange_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret), host_arg0, host_arg1, host_arg2);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  /* returnLine: unhandled type _NSRange */
}
#endif

- (id)dateBySettingUnit:(unsigned int)guest_arg0 value:(int)guest_arg1 toDate:(id)guest_arg2 options:(unsigned int)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_arg3 = (uint64_t)guest_arg3; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  return LC32HostToGuestObject(host_ret);
}

- (int)compareDate:(id)guest_arg0 toDate:(id)guest_arg1 toUnitGranularity:(unsigned int)guest_arg2 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = (uint64_t)guest_arg2; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  return (int)host_ret;
}

+ (void)initialize {
}

- (char)isDateInTomorrow:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return (char)host_ret;
}

- (id)shortQuarterSymbols {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (void)setFirstWeekday:(unsigned int)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (char)date:(id)guest_arg0 isSameDayAsDate:(id)guest_arg1 {
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

- (char)isDate:(id)guest_arg0 equalToDate:(id)guest_arg1 toUnitGranularity:(unsigned int)guest_arg2 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = (uint64_t)guest_arg2; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  return (char)host_ret;
}

- (char)date:(id)guest_arg0 matchesComponents:(id)guest_arg1 {
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

- (id)AMSymbol {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)veryShortStandaloneMonthSymbols {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)nextDateAfterDate:(id)guest_arg0 matchingComponents:(id)guest_arg1 options:(unsigned int)guest_arg2 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = (uint64_t)guest_arg2; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  return LC32HostToGuestObject(host_ret);
}

- (id)dateBySettingHour:(int)guest_arg0 minute:(int)guest_arg1 second:(int)guest_arg2 toDate:(id)guest_arg3 options:(unsigned int)guest_arg4 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2 = (uint64_t)guest_arg2; 
  uint64_t host_arg3 = [guest_arg3 host_self]; 
  uint64_t host_arg4 = (uint64_t)guest_arg4; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3, host_arg4);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // No post-process for guest_arg4 
  return LC32HostToGuestObject(host_ret);
}

- (unsigned int)ordinalityOfUnit:(unsigned int)guest_arg0 inUnit:(unsigned int)guest_arg1 forDate:(id)guest_arg2 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  return (unsigned int)host_ret;
}

- (id)components:(unsigned int)guest_arg0 fromDate:(id)guest_arg1 toDate:(id)guest_arg2 options:(unsigned int)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_arg3 = (uint64_t)guest_arg3; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  return LC32HostToGuestObject(host_ret);
}

- (id)weekdaySymbols {
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

- (id)dateWithEra:(int)guest_arg0 year:(int)guest_arg1 month:(int)guest_arg2 day:(int)guest_arg3 hour:(int)guest_arg4 minute:(int)guest_arg5 second:(int)guest_arg6 nanosecond:(int)guest_arg7 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2 = (uint64_t)guest_arg2; 
  uint64_t host_arg3 = (uint64_t)guest_arg3; 
  uint64_t host_arg4 = (uint64_t)guest_arg4; 
  uint64_t host_arg5 = (uint64_t)guest_arg5; 
  uint64_t host_arg6 = (uint64_t)guest_arg6; 
  uint64_t host_arg7 = (uint64_t)guest_arg7; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3, host_arg4, host_arg5, host_arg6, host_arg7);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // No post-process for guest_arg4 
  // No post-process for guest_arg5 
  // No post-process for guest_arg6 
  // No post-process for guest_arg7 
  return LC32HostToGuestObject(host_ret);
}

- (id)dateByAddingUnit:(unsigned int)guest_arg0 value:(int)guest_arg1 toDate:(id)guest_arg2 options:(unsigned int)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_arg3 = (uint64_t)guest_arg3; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  return LC32HostToGuestObject(host_ret);
}

- (id)monthSymbols {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
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

- (id)standaloneMonthSymbols {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (char)date:(id)guest_arg0 isSameYearAsDate:(id)guest_arg1 {
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

- (id)dateBySettingUnit:(unsigned int)guest_arg0 value:(int)guest_arg1 ofDate:(id)guest_arg2 options:(unsigned int)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_arg3 = (uint64_t)guest_arg3; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  return LC32HostToGuestObject(host_ret);
}

- (char)isDateInToday:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return (char)host_ret;
}

#if 0 // FIXME: has unhandled types
- (?)nextWeekendStartDate:(?)guest_arg0 interval:(?)guest_arg1 options:(?)guest_arg2 afterDate:(?)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type ? */ 
  /* declaration: unhandled type ? */ 
  /* declaration: unhandled type ? */ 
  /* declaration: unhandled type ? */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type ? */, /* parameterToBePassed: unhandled type ? */, /* parameterToBePassed: unhandled type ? */, /* parameterToBePassed: unhandled type ? */);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  /* returnLine: unhandled type ? */
}
#endif

#if 0 // FIXME: has unhandled types
- (?)getEra:(?)guest_arg0 yearForWeekOfYear:(?)guest_arg1 weekOfYear:(?)guest_arg2 weekday:(?)guest_arg3 fromDate:(?)guest_arg4 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type ? */ 
  /* declaration: unhandled type ? */ 
  /* declaration: unhandled type ? */ 
  /* declaration: unhandled type ? */ 
  /* declaration: unhandled type ? */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type ? */, /* parameterToBePassed: unhandled type ? */, /* parameterToBePassed: unhandled type ? */, /* parameterToBePassed: unhandled type ? */, /* parameterToBePassed: unhandled type ? */);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // No post-process for guest_arg4 
  /* returnLine: unhandled type ? */
}
#endif

- (id)components:(unsigned int)guest_arg0 fromDate:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  return LC32HostToGuestObject(host_ret);
}

+ (id)currentCalendar {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)eraSymbols {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (int)component:(unsigned int)guest_arg0 fromDate:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  return (int)host_ret;
}

- (id)standaloneWeekdaySymbols {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)timeZone {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)locale {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)veryShortWeekdaySymbols {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (id)startOfDayForDate:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

- (id)dateWithEra:(int)guest_arg0 yearForWeekOfYear:(int)guest_arg1 weekOfYear:(int)guest_arg2 weekday:(int)guest_arg3 hour:(int)guest_arg4 minute:(int)guest_arg5 second:(int)guest_arg6 nanosecond:(int)guest_arg7 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2 = (uint64_t)guest_arg2; 
  uint64_t host_arg3 = (uint64_t)guest_arg3; 
  uint64_t host_arg4 = (uint64_t)guest_arg4; 
  uint64_t host_arg5 = (uint64_t)guest_arg5; 
  uint64_t host_arg6 = (uint64_t)guest_arg6; 
  uint64_t host_arg7 = (uint64_t)guest_arg7; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3, host_arg4, host_arg5, host_arg6, host_arg7);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // No post-process for guest_arg4 
  // No post-process for guest_arg5 
  // No post-process for guest_arg6 
  // No post-process for guest_arg7 
  return LC32HostToGuestObject(host_ret);
}

- (id)nextDateAfterDate:(id)guest_arg0 matchingHour:(int)guest_arg1 minute:(int)guest_arg2 second:(int)guest_arg3 options:(unsigned int)guest_arg4 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2 = (uint64_t)guest_arg2; 
  uint64_t host_arg3 = (uint64_t)guest_arg3; 
  uint64_t host_arg4 = (uint64_t)guest_arg4; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3, host_arg4);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // No post-process for guest_arg4 
  return LC32HostToGuestObject(host_ret);
}

- (id)dateFromComponents:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return LC32HostToGuestObject(host_ret);
}

- (id)PMSymbol {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (char)isDateInWeekend:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return (char)host_ret;
}

- (char)isDate:(id)guest_arg0 inSameDayAsDate:(id)guest_arg1 {
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

- (void)setGregorianStartDate:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (char)isEqual:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  return (char)host_ret;
}

- (id)initWithCalendarIdentifier:(id)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  self.host_self = host_ret; return self;
}

- (id)componentsInTimeZone:(id)guest_arg0 fromDate:(id)guest_arg1 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = [guest_arg0 host_self]; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  return LC32HostToGuestObject(host_ret);
}

#if 0 // FIXME: has unhandled types
- (_NSRange)maximumRangeOfUnit:(unsigned int)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)1 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  _NSRange_64 host_ret; LC32InvokeHostSelector(self.host_self, _host_cmd, &host_ret, sizeof(host_ret), host_arg0);
  // No post-process for guest_arg0 
  /* returnLine: unhandled type _NSRange */
}
#endif

- (unsigned int)minimumDaysInFirstWeek {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (unsigned int)host_ret;
}

- (void)setMinimumDaysInFirstWeek:(unsigned int)guest_arg0 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0);
  // No post-process for guest_arg0 
  // return void
}

- (id)components:(unsigned int)guest_arg0 fromDateComponents:(id)guest_arg1 toDateComponents:(id)guest_arg2 options:(unsigned int)guest_arg3 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_arg1 = [guest_arg1 host_self]; 
  uint64_t host_arg2 = [guest_arg2 host_self]; 
  uint64_t host_arg3 = (uint64_t)guest_arg3; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  return LC32HostToGuestObject(host_ret);
}

- (id)quarterSymbols {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return LC32HostToGuestObject(host_ret);
}

- (unsigned int)firstWeekday {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd);
  return (unsigned int)host_ret;
}

- (id)dateBySettingHour:(int)guest_arg0 minute:(int)guest_arg1 second:(int)guest_arg2 ofDate:(id)guest_arg3 options:(unsigned int)guest_arg4 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  uint64_t host_arg0 = (uint64_t)guest_arg0; 
  uint64_t host_arg1 = (uint64_t)guest_arg1; 
  uint64_t host_arg2 = (uint64_t)guest_arg2; 
  uint64_t host_arg3 = [guest_arg3 host_self]; 
  uint64_t host_arg4 = (uint64_t)guest_arg4; 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, host_arg0, host_arg1, host_arg2, host_arg3, host_arg4);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  // No post-process for guest_arg3 
  // No post-process for guest_arg4 
  return LC32HostToGuestObject(host_ret);
}

#if 0 // FIXME: has unhandled types
- (?)rangeOfWeekendStartDate:(?)guest_arg0 interval:(?)guest_arg1 containingDate:(?)guest_arg2 {
  printf("DBG: call [%s %s]\n", class_getName(self.class), sel_getName(_cmd));
  static uint64_t _host_cmd;
  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd) | (uint64_t)0 << 63;
  /* declaration: unhandled type ? */ 
  /* declaration: unhandled type ? */ 
  /* declaration: unhandled type ? */ 
  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd, /* parameterToBePassed: unhandled type ? */, /* parameterToBePassed: unhandled type ? */, /* parameterToBePassed: unhandled type ? */);
  // No post-process for guest_arg0 
  // No post-process for guest_arg1 
  // No post-process for guest_arg2 
  /* returnLine: unhandled type ? */
}
#endif
@end