set -e
cd `dirname $0`
clang main.m -fmodules -framework QuartzCore -g -Wno-deprecated-declarations
ldid -S../../entitlements.plist a.out
