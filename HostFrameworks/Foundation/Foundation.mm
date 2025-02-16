@import Foundation;
#import "bridge.h"

__BEGIN_DECLS

u32 LC32_Foundation_NSTemporaryDirectory() {
    return NSTemporaryDirectory().guest_self;
}

__END_DECLS
