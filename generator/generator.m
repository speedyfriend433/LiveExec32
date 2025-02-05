@import Darwin;
@import QuartzCore;
@import Foundation;
@import ObjectiveC;

#define CLS(name) objc_getClass(#name)
#define printNS(...) printf("%s\n", [NSString stringWithFormat:__VA_ARGS__].UTF8String)

@interface FLEXMethod : NSObject
@property(nonatomic, assign, readonly) SEL selector;
@property(nonatomic, assign, readonly) NSMethodSignature *signature;
@property(nonatomic, assign, readonly) NSUInteger numberOfArguments;
@property(nonatomic, assign, readonly) NSString *selectorString;
@property(nonatomic, assign, readonly) BOOL isInstanceMethod;
@property(nonatomic, assign, readonly) NSString *imagePath;
+ (id)method:(Method)method isInstanceMethod:(BOOL)isInstanceMethod;
- (NSArray<NSString *>*)prettyArgumentComponents;
@end

@interface FLEXRuntimeUtility : NSObject
+ (NSString *)readableTypeForEncoding:(NSString *)encodingString;
@end

@interface MethodParameter : NSObject
@property(nonatomic, retain) NSString *name;
@property(nonatomic, retain) NSString *type;
// index from 0
@property(nonatomic) int index;
@end
@implementation MethodParameter
- (instancetype)initWithIndex:(int)index name:(NSString *)name type:(NSString *)type {
    self = [super init];
    self.index = index;
    self.name = name;
    self.type = type;
    return self;
}

- (NSString *)declarationInMethod {
    if ([self.type isEqualToString:@"_NSZone *"]) {
        return [NSString stringWithFormat:@"%@:(struct %@)guest_arg%d", self.name, self.type, self.index];
    }
    return [NSString stringWithFormat:@"%@:(%@)guest_arg%d", self.name, self.type, self.index];
}

- (NSString *)declaration {
    if ([self.type isEqualToString:@"_NSZone *"]) {
        return [NSString stringWithFormat:@"uint64_t host_arg%d = 0;", self.index];
    } else if ([self.type isEqualToString:@"id"]) {
        return [NSString stringWithFormat:@"uint64_t host_arg%1$d = [guest_arg%1$d host_self];", self.index];
    } else if ([self.type isEqualToString:@"id *"] || [self.type isEqualToString:@"NSUInteger *"] || [self.type isEqualToString:@"BOOL *"]) {
        return [NSString stringWithFormat:@"uint64_t host_arg%d; // %@", self.index, self.type];
    } else if ([self.type isEqualToString:@"const char *"]) {
        return [NSString stringWithFormat:@"uint64_t host_arg%1$d = LC32GuestToHostCString(guest_arg%1$d);", self.index];
    } else if ([self.type isEqualToString:@"const void *"]) {
        return [NSString stringWithFormat:@"uint64_t host_arg%1$d = 0; // FIXME: LC32GuestToHostCBuffer(guest_arg%1$d, length?);", self.index]; // FIXME
    } else if ([self.type isEqualToString:@"BOOL"] || [self.type isEqualToString:@"CGFloat"] || [self.type isEqualToString:@"NSInteger"] || [self.type isEqualToString:@"NSUInteger"]) {
        return [NSString stringWithFormat:@"uint64_t host_arg%1$d = (uint64_t)guest_arg%1$d;", self.index];
    }
    return [NSString stringWithFormat:@"/* %s: unhandled type %@ */", sel_getName(_cmd), self.type];
}

- (NSString *)parameterToBePassed {
    if ([self.type isEqualToString:@"_NSZone *"] || [self.type isEqualToString:@"id"] || [self.type isEqualToString:@"BOOL"] || [self.type isEqualToString:@"CGFloat"] || [self.type isEqualToString:@"NSInteger"] || [self.type isEqualToString:@"NSUInteger"] || [self.type isEqualToString:@"const char *"] || [self.type isEqualToString:@"const void *"]) {
        return [NSString stringWithFormat:@"host_arg%d", self.index];
    } else if ([self.type isEqualToString:@"id *"] || [self.type isEqualToString:@"NSUInteger *"] || [self.type isEqualToString:@"BOOL *"]) {
        return [NSString stringWithFormat:@"&host_arg%d", self.index];
    }
    return [NSString stringWithFormat:@"/* %s: unhandled type %@ */", sel_getName(_cmd), self.type];
}

- (NSString *)postCall {
    if ([self.type isEqualToString:@"BOOL *"]) {
        return [NSString stringWithFormat:@"*guest_arg%1$d = (BOOL)host_arg%1$d;", self.index];
    } else if ([self.type isEqualToString:@"id *"]) {
        return [NSString stringWithFormat:@"*guest_arg%1$d = [[LC32HostToGuestClass(host_arg%1$d) alloc] initWithHostSelf:host_arg%1$d];", self.index];
    } else if ([self.type isEqualToString:@"const char *"]) {
        // the string might have been copied, in this case invoke back to the host to free them just in case
        return [NSString stringWithFormat:@"LC32GuestToHostCStringFree(host_arg%1$d);", self.index];
    }
    return [NSString stringWithFormat:@"// No post-process for guest_arg%d", self.index];
}

- (NSString *)description {
    return self.declarationInMethod;
}
@end

@interface MethodBuilder : NSObject
@property(nonatomic, retain) FLEXMethod *method;
@property(nonatomic, retain) NSString *returnType;
@property(nonatomic, retain) NSMutableArray<MethodParameter *> *parameters;
@property(nonatomic, retain) NSMutableArray<NSString *> *lines;
@property(nonatomic) BOOL skip;
@end
@implementation MethodBuilder

- (instancetype)initWithMethod:(FLEXMethod *)method {
    self = [super init];
    self.lines = [NSMutableArray new];
    self.parameters = [NSMutableArray new];
    self.method = method;
    self.returnType = [CLS(FLEXRuntimeUtility) readableTypeForEncoding:@(self.method.signature.methodReturnType ?: "")];

    SEL selector = method.selector;
    NSArray<NSString *> *selectorParameters = [@(sel_getName(selector)) componentsSeparatedByString:@":"];
    for(int i = 2; i < self.method.numberOfArguments; i++) {
        const char *argType = [self.method.signature getArgumentTypeAtIndex:i] ?: "?";
        NSString *arg = [CLS(FLEXRuntimeUtility) readableTypeForEncoding:@(argType)];
        [self.parameters addObject:[[MethodParameter alloc] initWithIndex:i-2 name:selectorParameters[i-2] type:arg]];
    }

    // declare method
    //[self.lines addObject:[NSString stringWithFormat:@"// %@", self.method.description]];
    [self.lines addObject:[NSString stringWithFormat:@"%@ {", self.prettyName]];

    // debug: log calls
    [self.lines addObject:@"  printf(\"DBG: call [%s %s]\\n\", class_getName(self.class), sel_getName(_cmd));"];

    // pull host selector
    [self.lines addObject:[NSString stringWithFormat:@"  static uint64_t _host_cmd;"]];
    [self.lines addObject:[NSString stringWithFormat:@"  if(!_host_cmd) _host_cmd = LC32GetHostSelector(_cmd);"]];

    // pull host objects
    NSMutableString *methodDeclaration = [NSMutableString new];
    for(MethodParameter *param in self.parameters) {
        [self.lines addObject:[NSString stringWithFormat:@"  %@ ", param.declaration]];
    }

    // perform selector
    NSMutableString *call = [NSMutableString new];
    [call appendString:@"  uint64_t host_ret = LC32InvokeHostSelector(self.host_self, _host_cmd"];
    for(MethodParameter *param in self.parameters) {
        [call appendFormat:@", (uint64_t)%@", param.parameterToBePassed];
    }
    [call appendString:@");"];
    [self.lines addObject:call];

    // post-call: eg set NSError pointer
    for(MethodParameter *param in self.parameters) {
        [self.lines addObject:[NSString stringWithFormat:@"  %@ ", param.postCall]];
    }

    // Return value
    [self.lines addObject:[NSString stringWithFormat:@"  %@", self.returnLine]];

    // End
    [self.lines addObject:@"}"];

    if([self.description containsString:@"unhandled type"]) {
        [self.lines insertObject:@"#if 0 // FIXME: has unhandled types" atIndex:0];
        [self.lines addObject:@"#endif"];
    }
    return self;
}

- (NSString *)prettyName {
    NSString *methodTypeString = self.method.isInstanceMethod ? @"-" : @"+";
    NSString *prettyName = [NSString stringWithFormat:@"%@ (%@)", methodTypeString, self.returnType];

    if (self.method.numberOfArguments > 2) {
        return [prettyName stringByAppendingString:[self.parameters componentsJoinedByString:@" "]];
    } else {
        return [prettyName stringByAppendingString:self.method.selectorString];
    }
}

- (NSString *)returnLine {
    if ([self.returnType isEqualToString:@"void"]) {
        return [NSString stringWithFormat:@"return;"];
    } else if ([self.returnType isEqualToString:@"id"]) {
        if([self.method.selectorString hasPrefix:@"init"]) {// init, initWith*
            return @"self.host_self = host_ret; return self;";
        } else {
            return @"return [[LC32HostToGuestClass(host_ret) alloc] initWithHostSelf:host_ret];";
        }
    } else if ([self.returnType isEqualToString:@"BOOL"] || [self.returnType isEqualToString:@"NSInteger"] || [self.returnType isEqualToString:@"NSUInteger"]) {
        return [NSString stringWithFormat:@"return (%@)host_ret;", self.returnType];
    }
    return [NSString stringWithFormat:@"/* %s: unhandled type %@ */", sel_getName(_cmd), self.returnType];
}

- (NSString *)description {
    return [self.lines componentsJoinedByString:@"\n"];
}
@end

@interface ClassBuilder : NSObject
@property(nonatomic, retain) NSMutableDictionary<NSString *, MethodBuilder *> *methods;
@property(nonatomic) Class cls;
@property(nonatomic, retain) NSString *imagePath;
@end
@implementation ClassBuilder
- (instancetype)initWithClass:(Class)class {
    self = [super init];
    self.cls = class;
    self.methods = [NSMutableDictionary new];

    unsigned int mc = 0;
    Method *mlist;

    mlist = class_copyMethodList(object_getClass(class), &mc);
    for(int m = 0; m < mc; m++) {
        [self validateAndAddMethod:mlist[m] isInstanceMethod:NO];
    }

    mlist = class_copyMethodList(class, &mc);
    for(int m = 0; m < mc; m++) {
        [self validateAndAddMethod:mlist[m] isInstanceMethod:YES];
    }

    return self;
}

- (void)validateAndAddMethod:(Method)objcMethod isInstanceMethod:(BOOL)isInstanceMethod {
    SEL selector = method_getName(objcMethod);
    const char *selectorName = sel_getName(selector);
    if(strchr(selectorName, '_') != NULL) {
        // this is a private API, skip
        printNS(@"// Skipped private method: %s", selectorName);
        return;
    } else if(!strncmp(selectorName, "allocWithZone:", 14)) {
        // skip alloc
        printNS(@"// Skipped alloc method: %s", selectorName);
        return;
    }

    FLEXMethod *method = [CLS(FLEXMethod) method:objcMethod isInstanceMethod:isInstanceMethod];
    if(sel_getName(@selector(initialize)) == selectorName) {
        // For +(void)initialize, we must first obtain the host class pointer
        NSMutableString *string = [NSMutableString new];
        [string appendFormat:@"%@ {\n", method.description];
        //[string appendString:@"  self.host_self = LC32GetHostClass(class_getName(self.class));\n"];
        [string appendFormat:@"}"];
        self.methods[method.description] = (id)string;
        return;
    }

    if(!self.imagePath && [method.imagePath isEqualToString:[NSBundle bundleForClass:self.cls].executablePath]) {
        self.imagePath = method.imagePath;
    }
/*
    if(method.imagePath != self.imagePath) {
        // this is a category method, skip
        printNS(@"// Skipped category method: %s", selectorName);
        return;
    }
*/
    self.methods[method.description] = [[MethodBuilder alloc] initWithMethod:method];
}

- (NSString *)description {
    NSMutableString *string = [NSMutableString new];
    [string appendFormat:@"@import %@;\n", self.imagePath.lastPathComponent];
    [string appendFormat:@"#import <LC32/LC32.h>\n"];
    [string appendFormat:@"@implementation %@\n", self.cls.description];
    [string appendString:[self.methods.allValues componentsJoinedByString:@"\n\n"]];
    [string appendString:@"\n"];
    [string appendString:@"@end"];
    return string;
}
@end

int main(int argc, char **argv) {
/*
    if(argc != 2) {
        printf("Usage: %s ClassName\n", argv[0]);
        return 1;
    }
    Class cls = objc_getClass(argv[1]);
    if(!cls) {
        printf("Class %s not found\n", argv[1]);
        return 1;
    }
*/
    dlopen("/var/jb/usr/lib/TweakInject/libFLEX.dylib", RTLD_GLOBAL);

    NSArray<Class> *classes = @[CABasicAnimation.class, CAKeyframeAnimation.class, CAPropertyAnimation.class, CAAnimation.class, CALayer.class, CAMediaTimingFunction.class, NSArray.class, NSMutableArray.class, NSAssertionHandler.class, NSAutoreleasePool.class, NSBundle.class, NSDate.class, NSDictionary.class, NSMutableDictionary.class, NSNull.class, NSNumber.class, NSString.class, NSThread.class, NSTimer.class, NSURL.class, NSUserDefaults.class, NSValue.class];
    for(Class cls in classes) {
        printf("Generating for %s\n", class_getName(cls));
        ClassBuilder *classContent = [[ClassBuilder alloc] initWithClass:cls];
        [classContent.description writeToFile:[NSString stringWithFormat:@"/var/mobile/Documents/TrollExperiments/CProjects/dynarmic/LiveExec32/guest_frameworks/%@/%@.m", classContent.imagePath.lastPathComponent, NSStringFromClass(cls)] atomically:YES];
    }

    return 0;
}
