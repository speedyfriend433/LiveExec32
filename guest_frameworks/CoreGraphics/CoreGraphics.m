@import Darwin;
#import <LC32/LC32.h>
#import <CoreFoundation/CoreFoundation+LC32.h>
#import "CoreGraphics+LC32.h"

#pragma mark CGColor TODO

CGColorRef CGColorCreate(CGColorSpaceRef space, const CGFloat *components) {
    return nil; // TODO
}
void CGColorRelease(CGColorRef color) {
    
}
CGColorSpaceRef CGColorSpaceCreateDeviceRGB() {
    return nil;
}
void CGColorSpaceRelease(CGColorSpaceRef color) {
    
}
CGDataProviderRef CGDataProviderCreateWithURL(CFURLRef url) {
    return nil;
}
void CGDataProviderRelease(CGDataProviderRef provider) {
    
}
CGImageRef CGImageCreateWithJPEGDataProvider(CGDataProviderRef source, const CGFloat *decode, bool shouldInterpolate, CGColorRenderingIntent intent) {
    return nil;
}
void CGImageRelease(CGImageRef image) {
    
}

#pragma mark CGPath

CGMutablePathRef CGPathCreateMutable() {
    static uint64_t hostPtr = 0;
    if(!hostPtr) hostPtr = LC32Dlsym("LC32_CoreGraphics_CGPathCreateMutable", YES);
    return (CGMutablePathRef)LC32InvokeHostCRet32(hostPtr);
}

void CGPathAddLineToPoint(CGMutablePathRef path, const CGAffineTransform *m, CGFloat x, CGFloat y) {
    static uint64_t hostPtr = 0;
    if(!hostPtr) hostPtr = LC32Dlsym("LC32_CoreGraphics_CGPathAddLineToPoint", YES);
    CGAffineTransform_64 host_m = LC32HostCGAffineTransform(*m);
    LC32InvokeHostCRet32(hostPtr, [(id)path host_self], (uint64_t)&host_m, (double)x, (double)y);
}

bool CGPathContainsPoint(CGPathRef path, const CGAffineTransform *m, CGPoint point, bool eoFill) {
    static uint64_t hostPtr = 0;
    if(!hostPtr) hostPtr = LC32Dlsym("LC32_CoreGraphics_CGPathContainsPoint", YES);
    CGAffineTransform_64 host_m = LC32HostCGAffineTransform(*m);
    CGPoint_64 host_point = {point.x, point.y};
    return (bool)LC32InvokeHostCRet32(hostPtr, [(id)path host_self], (uint64_t)&host_m, host_point, (uint64_t)eoFill);
}

void CGPathMoveToPoint(CGMutablePathRef path, const CGAffineTransform *m, CGFloat x, CGFloat y) {
    static uint64_t hostPtr = 0;
    if(!hostPtr) hostPtr = LC32Dlsym("LC32_CoreGraphics_CGPathMoveToPoint", YES);
    CGAffineTransform_64 host_m = LC32HostCGAffineTransform(*m);
    LC32InvokeHostCRet32(hostPtr, [(id)path host_self], (uint64_t)&host_m, (double)x, (double)y);
}

void CGPathCloseSubpath(CGMutablePathRef path) {
    if(!path) return;
    static uint64_t hostPtr = 0;
    if(!hostPtr) hostPtr = LC32Dlsym("CGPathCloseSubpath", YES);
    LC32InvokeHostCRet32(hostPtr, [(id)path host_self]);
}

void CGPathRelease(CGPathRef cg_nullable path) {
    if(!path) return;
    static uint64_t hostPtr = 0;
    if(!hostPtr) hostPtr = LC32Dlsym("CGPathRelease", YES);
    LC32InvokeHostCRet32(hostPtr, [(id)path host_self]);
    // FIXME: does this cause double-free in host?
    [(id)path release];
}

const CGPoint CGPointZero = {0,0};
const CGRect CGRectInfinite = {{INFINITY,INFINITY},{INFINITY,INFINITY}};
const CGRect CGRectNull = {{NAN,NAN},{NAN,NAN}};
const CGRect CGRectZero = {{0,0},{0,0}};
const CGSize CGSizeZero = {0,0};

// We don't call host functions if possible to avoid performance cost.
// CGRect* from darling-cocotron
CGFloat CGRectGetMinX(CGRect rect) {
    return rect.origin.x;
}

CGFloat CGRectGetMaxX(CGRect rect) {
    return rect.origin.x + rect.size.width;
}

CGFloat CGRectGetMidX(CGRect rect) {
    return CGRectGetMinX(rect) +
           ((CGRectGetMaxX(rect) - CGRectGetMinX(rect)) / 2.f);
}

CGFloat CGRectGetMinY(CGRect rect) {
    return rect.origin.y;
}

CGFloat CGRectGetMaxY(CGRect rect) {
    return rect.origin.y + rect.size.height;
}

CGFloat CGRectGetMidY(CGRect rect) {
    return CGRectGetMinY(rect) +
           ((CGRectGetMaxY(rect) - CGRectGetMinY(rect)) / 2.f);
}

CGFloat CGRectGetWidth(CGRect rect) {
    return rect.size.width;
}

CGFloat CGRectGetHeight(CGRect rect) {
    return rect.size.height;
}

bool CGRectContainsPoint(CGRect rect, CGPoint point) {
    return (point.x >= CGRectGetMinX(rect) && point.x <= CGRectGetMaxX(rect)) &&
           (point.y >= CGRectGetMinY(rect) && point.y <= CGRectGetMaxY(rect));
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy) {
    rect.origin.x += dx;
    rect.origin.y += dy;
    rect.size.width -= dx * 2;
    rect.size.height -= dy * 2;
    return rect;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy) {
    rect.origin.x += dx;
    rect.origin.y += dy;
    return rect;
}

bool CGRectIsEmpty(CGRect rect) {
    return ((rect.size.width == 0) && (rect.size.height == 0));
}

bool CGRectIntersectsRect(CGRect a, CGRect b) {
    if (b.origin.x > a.origin.x + a.size.width)
        return false;
    if (b.origin.y > a.origin.y + a.size.height)
        return false;
    if (a.origin.x > b.origin.x + b.size.width)
        return false;
    if (a.origin.y > b.origin.y + b.size.height)
        return false;
    return true;
}

bool CGRectEqualToRect(CGRect a, CGRect b) {
    return CGPointEqualToPoint(a.origin, b.origin) &&
           CGSizeEqualToSize(a.size, b.size);
}

bool CGRectIsInfinite(CGRect rect) {
    return (isinf(rect.origin.x) || isinf(rect.origin.y) ||
            isinf(rect.size.width) || isinf(rect.size.height));
}

bool CGRectIsNull(CGRect rect) {
    return CGRectEqualToRect(rect, CGRectNull);
}

bool CGRectContainsRect(CGRect a, CGRect b) {
    return (CGRectGetMinX(b) >= CGRectGetMinX(a) &&
            CGRectGetMaxX(b) <= CGRectGetMaxX(a) &&
            CGRectGetMinY(b) >= CGRectGetMinY(a) &&
            CGRectGetMaxY(b) <= CGRectGetMaxY(a));
}

