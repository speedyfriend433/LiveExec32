set -e
cd `dirname $0`
clang generator.m -fmodules -framework QuartzCore
ldid -S../entitlements.plist a.out
