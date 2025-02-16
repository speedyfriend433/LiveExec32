set -e
cd `dirname $0`
clang -arch armv7s -fmodules main.m -I../GuestFrameworks
# .theos/obj/LC32.framework/LC32
#clang -arch armv7s -fmodules main.m $(fish -c 'echo ../GuestFrameworks/**.m') -I../GuestFrameworks -c
#clang *.o -arch armv7s -L../../iOS10RAMDisk/usr/lib -lobjc.A -fno-autolink
