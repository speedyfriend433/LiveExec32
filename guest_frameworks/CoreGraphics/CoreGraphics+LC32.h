#import <CoreGraphics/CoreGraphics.h>

typedef double CGFloat_64;

typedef struct CGAffineTransform_64 {
    CGFloat_64 a, b, c, d;
    CGFloat_64 tx, ty;
} CGAffineTransform_64;

typedef struct CGPoint_64 {
    CGFloat_64 x, y;
} CGPoint_64;

typedef struct CGSize_64 {
    CGFloat_64 width, height;
} CGSize_64;

typedef struct CGRect_64 {
    CGPoint_64 origin;
    CGSize_64 size;
} CGRect_64;

static inline CGAffineTransform LC32GuestCGAffineTransform(const CGAffineTransform_64 guest) {
    CGAffineTransform result = {(CGFloat)guest.a, (CGFloat)guest.b, (CGFloat)guest.c, (CGFloat)guest.d, (CGFloat)guest.tx, (CGFloat)guest.ty};
    return result;
}

static inline CGPoint LC32GuestCGPoint(const CGPoint_64 host) {
    CGPoint result = {(double)host.x, (double)host.y};
    return result;
}

static inline CGSize LC32GuestCGSize(const CGSize_64 host) {
    CGSize result = {(double)host.width, (double)host.height};
    return result;
}

static inline CGRect LC32GuestCGRect(const CGRect_64 host) {
    CGRect result = {LC32GuestCGPoint(host.origin), LC32GuestCGSize(host.size)};
    return result;
}

static inline CGAffineTransform_64 LC32HostCGAffineTransform(const CGAffineTransform guest) {
    CGAffineTransform_64 result = {(double)guest.a, (double)guest.b, (double)guest.c, (double)guest.d, (double)guest.tx, (double)guest.ty};
    return result;
}

static inline CGPoint_64 LC32HostCGPoint(const CGPoint guest) {
    CGPoint_64 result = {(CGFloat)guest.x, (CGFloat)guest.y};
    return result;
}

static inline CGSize_64 LC32HostCGSize(const CGSize guest) {
    CGSize_64 result = {(CGFloat)guest.width, (CGFloat)guest.height};
    return result;
}

static inline CGRect_64 LC32HostCGRect(const CGRect guest) {
    CGRect_64 result = {LC32HostCGPoint(guest.origin), LC32HostCGSize(guest.size)};
    return result;
}
