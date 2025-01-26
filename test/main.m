#import <Foundation/Foundation.h>
#include <stdio.h>
#include <stdlib.h>
#include <dlfcn.h>

// NSLog doesn't work yet
#define printObjC(...) printf("%s\n", [NSString stringWithFormat:__VA_ARGS__].UTF8String)

int main() {
  printf("Hello world from 32bit!\n");

  NSProcessInfo *info = NSProcessInfo.processInfo;
  printObjC(@"NSProcessInfo=%@", info);
  printObjC(@"arguments=%@", info.arguments);
  printObjC(@"environment=%@", info.environment);
  printObjC(@"operatingSystemVersionString=%@", info.operatingSystemVersionString);
  printObjC(@"processName=%@", info.processName);
  printObjC(@"physicalMemory=0x%x", info.physicalMemory);
  // crash here
  printObjC(@"hostName=%@", info.hostName);

  return 0;
}
