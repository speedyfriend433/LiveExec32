set -e
cd `dirname $0`
clang -arch armv7s -fmodules main.m -I../guest_frameworks
# .theos/obj/LC32.framework/LC32
#clang -arch armv7s -fmodules main.m $(fish -c 'echo ../guest_frameworks/**.m') -I../guest_frameworks -c
#clang *.o -arch armv7s -L../../iOS10RAMDisk/usr/lib -lobjc.A -fno-autolink
