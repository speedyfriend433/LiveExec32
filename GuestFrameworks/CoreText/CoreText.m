#import <CoreText/CoreText.h>
#import <Foundation/Foundation+LC32.h>

LC32_CONST_STR_DECL(const CFStringRef kCTFontAttributeName)
LC32_CONST_STR_DECL(const CFStringRef kCTForegroundColorAttributeName)

__attribute__((constructor)) void QuartzCoreInit() {
    LC32_CONST_STR_INIT(kCTFontAttributeName);
    LC32_CONST_STR_INIT(kCTForegroundColorAttributeName);
}
