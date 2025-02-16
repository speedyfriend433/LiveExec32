// This may be to buggy to generate, so I have put pre-generated files in templates folder. Please use it instead
// This code should run inside of this emulator, with full iOS 10 filesystem, or if you have an iPhone running iOS 10
// The purpose of this is to obtain the correct method signatures. Mainly because of NSInteger and CGFloat having different bit length

@import Darwin;
@import ObjectiveC;
@import MachO;
// @import DaemonUtils;
@import MapKit;
// @import VideoToolbox;
@import LocalAuthentication;
// @import IntentsUI;
@import GLKit;
@import AVFoundation;
// @import GSS;
@import CoreBluetooth;
@import AddressBookUI;
@import CloudKit;
@import Speech;
// @import UserNotificationsUI;
// @import MediaToolbox;
@import CallKit;
@import UIKit;
// @import MediaAccessibility;
@import AVFAudio;
// @import ModuleBase;
// @import MobileCoreServices;
// @import vImage;
@import AudioToolbox;
@import CoreTelephony;
// @import AudioUnit;
@import GameKit;
// @import SharedUtils;
// @import IOKit;
@import CoreData;
// @import CoreMedia;
@import GameController;
@import HealthKit;
// @import AddressBook;
@import Social;
@import WatchConnectivity;
@import CoreMotion;
@import UserNotifications;
@import OpenGLES;
@import GameplayKit;
@import JavaScriptCore;
@import NotificationCenter;
@import CoreAudioKit;
@import MessageUI;
// @import Accelerate;
// @import CoreAudio;
@import PhotosUI;
@import SceneKit;
@import Foundation;
@import AdSupport;
@import MetalPerformanceShaders;
@import MediaPlayer;
@import iAd;
// @import SystemConfiguration;
@import Metal;
// @import NewsstandKit;
@import HomeKit;
@import NetworkExtension;
@import SpriteKit;
@import PushKit;
@import PassKit;
// @import WatchKit;
// @import OpenAL;
@import WebKit;
@import Contacts;
// @import CoreText;
@import VideoSubscriberAccount;
@import Photos;
// @import Security;
@import AVKit;
@import ContactsUI;
@import CoreMIDI;
@import CoreSpotlight;
@import StoreKit;
@import MetalKit;
@import ModelIO;
@import ExternalAccessory;
@import ReplayKit;
@import Messages;
@import Twitter;
@import EventKit;
@import Accounts;
@import QuartzCore;
@import SafariServices;
@import Intents;
// @import MechanismBase;
// @import AssetsLibrary;
@import CoreImage;
// @import CFNetwork;
@import QuickLook;
// @import CoreVideo;
@import CoreLocation;
@import MultipeerConnectivity;
// @import vecLib;
// @import CoreGraphics;
// @import CoreFoundation;
// @import ImageIO;
@import HealthKitUI;
@import EventKitUI;

@interface NSObject(private)
- (NSString *)_methodDescription;
@end

// workaround to skip libdispatch init
@implementation NSUserDefaults(workaround)
+ (instancetype)standardUserDefaults {
    return nil;
}
@end
@implementation NSThread(workaround)
- (void)start {}
@end
@implementation NSNotificationCenter(workaround)
+ (instancetype)defaultCenter {
    return nil;
}
@end

void dumpMethodList(Class cls) {
    BOOL isClass = object_getClass(cls) == cls;
    printf("Dumping %s methods of %s\n", isClass ? "class" : "instance", class_getName(cls));
    unsigned int mc;
    Method *mlist = class_copyMethodList(cls, &mc);
    for(int m = 0; m < mc; m++) {
        const char *name = sel_getName(method_getName(mlist[m]));
        const char *signature = method_getTypeEncoding(mlist[m]);
        if(strchr(name, '_')) {
            printf("Skipped private method: %s %s\n", name, signature);
            continue;
        }

        // Replace < and > with &lt; and &gt;
        // Can't use NSString because of buggy ARC
        char signatureFmt[0x1000] = {0};
        assert(strlen(signature) < 0x1000);
        strncpy(signatureFmt, signature, strlen(signature));
        int i = 0;
        do {
            for(; i < strlen(signatureFmt); i++) {
                if(signatureFmt[i] != '<' && signatureFmt[i] != '>') continue;
                char c = signatureFmt[i] == '<' ? 'l' : 'g';
                memmove(&signatureFmt[i] + 3, &signatureFmt[i], (signatureFmt + strlen(signatureFmt)) - &signatureFmt[i]);
                signatureFmt[i+0] = '&';
                signatureFmt[i+1] = c;
                signatureFmt[i+2] = 't';
                signatureFmt[i+3] = ';';
                i += 4; // skip over &?t;
                break;
            }
        } while(i + 1 < strlen(signatureFmt));

        printf("<!--.--> <key>%s</key><string>%s</string>\n", name, signatureFmt);
    }
    free(mlist);
}

void toggleConstructorExecution(BOOL enable) {
    uintptr_t ptr = 0x1000ceda;
    *(uint16_t*)ptr = 0xbebe;
    //enable ? 0x47c0 : 0xbf00;
    __clear_cache((void *)(ptr), (void *)(ptr + 2));
}

int main() {
    printf("Hello from 32bit!\n");

/*
libobjc.A.dylib[0x2247e] <+58>:  ldr    r6, [r2]; r6 = _objc_inform
libobjc.A.dylib[0x22480] <+60>:  cmp    r4, #0x0; die == 0
libobjc.A.dylib[0x22482] <+62>:  it     ne; cmp == false
libobjc.A.dylib[0x22484] <+64>:  ldrne  r6, [r1]; r6 == _objc_fatal
*/
/*
    int i;
    const char *objc = "/usr/lib/libobjc.A.dylib";
    for(i = 0; i < _dyld_image_count(); i++) {
        const char* name = _dyld_get_image_name(i);
        if(!strncmp(name, objc, strlen(objc))) break;
    }
    uintptr_t header = (uintptr_t)_dyld_get_image_header(i);
    //assert((*(uint16_t*)(header + 0x22484)) == 0x680e);
    (*(uint32_t*)(header + 0x8ca2)) = 0;
    // 0x4770: bx lr
    // 0xbf00 : nop
    // 0xE7FFDEFE, 0xBEBE: bkpt
    // invalidate cache
    //__clear_cache((void *)(header + 0x8ca2), (void *)(header + 0x8ca6));
*/
@autoreleasepool {
    NSString *path = @"/private/var/tmp/classes.plist";
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] initWithContentsOfFile:path];
    printf("<!--.--> <?xml version=\"1.0\" encoding=\"UTF-8\"?>\n");
    printf("<!--.--> <!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">\n");
    printf("<!--.--> <plist version=\"1.0\">\n");
    printf("<!--.--> <dict>\n");
    char frameworkPath[PATH_MAX];
    for(NSString *framework in dict) {
        NSMutableDictionary *classes = dict[framework];
        if(classes.count == 0 || [classes[@"_resolved"] boolValue]) continue;
        printf("Dumping framework %s\n", framework.UTF8String);
        sprintf(frameworkPath, "/System/Library/Frameworks/%1$s.framework/%1$s", framework.UTF8String);
        void *handle = dlopen(frameworkPath, 0);
        if(!handle) {
            printf("%s\n", dlerror());
            abort();
        }

        printf("<!--.--> <key>%s</key>\n", framework.UTF8String);
        printf("<!--.--> <dict>\n");
        for(NSString *className in classes) {
            printf("Dumping class %s\n", className.UTF8String);
            Class cls = NSClassFromString(className);
            NSMutableDictionary *methods = classes[className];

            printf("<!--.--> <key>%s</key>\n", className.UTF8String);
            printf("<!--.--> <dict>\n");
            printf("<!--.--> <key>+</key>\n");
            printf("<!--.--> <dict>\n");
            dumpMethodList(object_getClass(cls));
            printf("<!--.--> </dict>\n");

            printf("<!--.--> <key>-</key>\n");
            printf("<!--.--> <dict>\n");
            dumpMethodList(cls);
            printf("<!--.--> </dict>\n");
            printf("<!--.--> </dict>\n");
            
        }
        printf("<!--.--> </dict>\n");
        //classes[@"_resolved"] = @(YES);
        //[dict writeToFile:path atomically:NO];
    }
    printf("<!--.--> </dict>\n");
    printf("<!--.--> </plist>\n");
    //[dict writeToFile:path atomically:NO];
    printf("Done!\n");
    exit(0);
}
}