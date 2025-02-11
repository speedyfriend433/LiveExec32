#import <CoreText/CoreText.h>
#import <Foundation/Foundation+LC32.h>

LC32_CONST_STR_DECL(CFStringRef const kCTFontAttributeName)
￼LC32_CONST_STR_DECL(CFStringRef const kCTForegroundColorAttributeName)

__attribute__((constructor)) void QuartzCoreInit() {
    LC32_CONST_STR_INIT(kCTFontAttributeName);
    LC32_CONST_STR_INIT(kCTForegroundColorAttributeName);
}
