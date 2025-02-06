#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#include <dlfcn.h>
#include "32bit.h"
#include "dynarmic.h"

__BEGIN_DECLS

// arguments are spit into registers then stack pointer, while va_arg only saves to stack pointer, so confusing...
id _objc_msgSend(u64 self, SEL _cmd, u64 arg2, u64 arg3, u64 arg4, u64 arg5, u64 arg6, u64 arg7, ...);

u32 LC32HostToGuestCopyClassName(u32 guest_output, size_t length, u64 host_object);
u64 LC32Dlsym(u32 guest_name);
u64 LC32GetHostObject(u32 guest_self, u32 guest_class, bool returnClass);
u64 LC32GetHostSelector(u32 guest_selector);
u64 LC32InvokeHostSelector(u64 host_self, u64 host_cmd, u64 va_args);
void LC32SetInvokeGuestFuncPtr(u32 dlsymFunc, u32 invokeFunc);
u64 LC32InvokeGuestC(u32 pc, bool ret64, int argc, u32 *args);
u32 LC32HostToGuestArgument(char *type, u64 value);
u64 LC32GuestToHostReturnType(char *type, u32 value);
u64 LC32InvokeGuestSelector(id self, SEL _cmd, u64 arg2, u64 arg3, u64 arg4, u64 arg5, u64 arg6, u64 arg7, ...);
u32 guest_dlsym(const char *host_name);
u32 guest_free(u32 guest_ptr);
u32 guest_class_createInstance(u32 guest_cls, u32 extraBytes);
u32 guest_class_getClassMethod(u32 guest_cls, u32 guest_sel);
u32 guest_class_getInstanceMethod(u32 guest_cls, u32 guest_sel);
u32 guest_class_getName(u32 guest_cls);
u32 guest_class_getSuperclass(u32 guest_cls);
u32 guest_object_getClass(u32 guest_obj);
u32 guest_sel_registerName(const char *host_name);
u32 guest_objc_getClass(const char *name);
Class guest_objc_getClass_retHostClass(const char *name);
u64 guest_objc_msgSend(int argc, u32 *args);
BOOL host_hook_getClass(const char *name, Class *outClass);

__END_DECLS
