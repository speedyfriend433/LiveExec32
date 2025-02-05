set -e
cd `dirname $0`
clang -arch armv7s -fmodules main.m $(fish -c 'echo ../guest_{frameworks,libraries}/**.m') -I../guest_frameworks -fno-autolink -lobjc.A
#clang -arch armv7s -fmodules main.m $(fish -c 'echo ../guest_frameworks/**.m') -I../guest_frameworks -c
#clang *.o -arch armv7s -L../../iOS10RAMDisk/usr/lib -lobjc.A -fno-autolink
