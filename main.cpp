#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <fcntl.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <time.h>
#include <assert.h>
#include <signal.h>
#include <libgen.h>

#include <dlfcn.h>
#include <sys/mman.h>
#include <mach-o/loader.h>
#include <mach-o/nlist.h>
#include <mach-o/reloc.h>
#include <mach-o/dyld.h>
#include <mach-o/dyld_images.h>
#include <sys/syscall.h>

#include <string.h>
#include "dynarmic.h"
#include "arm_dynarmic_cp15.h"

#define SEG_DATA_CONST  "__DATA_CONST"

// /var/mobile/Documents/TrollExperiments/CProjects/dynarmic
#define DEFAULT_ROOT_PATH "/private/var/mobile/Documents/TrollExperiments/CProjects/dynarmic/iOS10RAMDisk"
#define DEFAULT_DYLD_PATH DEFAULT_ROOT_PATH "/usr/lib/dyld"

extern "C" {

u32 Dynarmic_map_file(bool isDyld, u32 target, const char *path) {
  int fd = open(path, O_RDONLY);
  assert (fd != -1);

  struct stat file_info;
  fstat(fd, &file_info);
  size_t len = ALIGN_SIZE(file_info.st_size);
  uintptr_t map = (uintptr_t)mmap(NULL, len, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0);
  close(fd);
  guestMappings[guestMappingLen].hostAddr = map;

  // Map mach_header first
  //u32 addr = Dynarmic_direct_mmap(target, 0x1000, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, map, 0);

  guestMappings[guestMappingLen].name = strdup(basename((char *)path));

  struct mach_header *header = (struct mach_header *)map;
  uintptr_t cur = (uintptr_t)header + sizeof(mach_header);
  load_command *lc;
  int firstIndex = 0;
  for (uint i = 0; i < header->ncmds; i++, cur += lc->cmdsize) {
    lc = (load_command *)cur;
    if (lc->cmd == LC_SEGMENT) {
      segment_command *seg = (segment_command *)lc;
      if(!strncmp(seg->segname, "__PAGEZERO", 10)) {
        firstIndex = 1;
        continue;
      }
      u32 filesize = ALIGN_DYN_SIZE(seg->filesize);
      if(seg->vmsize > seg->filesize) {
        // round up the page
        printf("vmsize 0x%x != filesize 0x%x\n", seg->vmsize, filesize);
        //abort();
      }
      if (i == firstIndex && seg->vmaddr >= 0x10000000) {
        target = 0;
      }
      printf("Mapping 0x%lx-0x%lx to 0x%x\n", map + seg->fileoff, map + seg->fileoff + seg->vmsize, target + seg->vmaddr);
      u32 mappedAddr = 0;
      if(filesize > 0) {
        mappedAddr = Dynarmic_direct_mmap(target + seg->vmaddr, filesize, PROT_READ | PROT_WRITE, MAP_FIXED | MAP_PRIVATE | MAP_ANONYMOUS, (void *)(map + seg->fileoff), 0);
        assert(mappedAddr != -1);
      }

      u32 vmMappedAddr = Dynarmic_mmap(target + seg->vmaddr + filesize, seg->vmsize - filesize, PROT_READ | PROT_WRITE, MAP_FIXED | MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
      if(filesize == 0) {
        mappedAddr = vmMappedAddr;
      }

      if (i == firstIndex) {
        guestMappings[guestMappingLen].start = mappedAddr;
        guestMappings[guestMappingLen].end = mappedAddr + seg->vmsize;
      }
    } else if (lc->cmd == LC_UNIXTHREAD) {
      thread_command *tc = (thread_command *)lc;
      arm_thread_state_t *state = (arm_thread_state_t *)((uint64_t)tc + sizeof(uint32_t)*4);
      state->__pc += target;
      for (int i = 0; i < 13; i++) {
        threadHandle.jit->Regs()[i] = state->__r[i];
      }
      threadHandle.jit->Regs()[13] = state->__sp;
      threadHandle.jit->Regs()[14] = state->__lr;
      threadHandle.jit->Regs()[15] = state->__pc;
      threadHandle.jit->SetCpsr(state->__cpsr);
    }
  }
  u32 addr = guestMappings[guestMappingLen].start;

  guestMappingLen++;
  return addr;
}

u32 prependString(u32& address, const char* fmt, ...) {
  char buffer[1000];
  va_list args;
  va_start(args, fmt);
  u32 len = vsprintf(buffer, fmt, args);
  va_end(args);

  address -= len + 1;
  Dynarmic_mem_1write(address, len, buffer);
  return address;
}

int main(int argc, char* argv[], char* envp[]) {
  const char *execPath;
  if (argc == 1) {
    printf("Usage: %s <path> argv...\n", argv[0]);
    execPath = "/var/mobile/Documents/TrollExperiments/CProjects/dynarmic/LiveExec32/test/a.out";
    //return 1;
  } else {
    execPath = argv[1];
  }

  Dynarmic_nativeInitialize();
  u32 execAddr = Dynarmic_map_file(false, 0x20000000, execPath);

  setenv("DYLD_PATH", DEFAULT_DYLD_PATH, 0);
  const char *dyldPath = getenv("DYLD_PATH");
  printf("Loading dyld at DYLD_PATH %s\n", dyldPath);
  Dynarmic_map_file(true, 0x10000000, dyldPath);
  printf("entry point: 0x%x\n", threadHandle.jit->Regs()[15]);

  setenv("ROOT_PATH", DEFAULT_ROOT_PATH, 0);
  const char *rootPath = getenv("ROOT_PATH");
  chdir(rootPath);
  if (getuid() == 0) {
    chroot(rootPath);
    chdir("/");
  } else {
    //sharedHandle.fs->addMountpoint("/rootfs", rootPath);
    sharedHandle.fs->addMountpoint("/", rootPath);
    sharedHandle.fs->addMountpoint("/dev", "/dev");
  }

  // commpage 0xffff4000+0x1000
  u32 commpage = Dynarmic_mmap(0xffff4000, 0x1000, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED, -1, 0);
  sharedHandle.ucb->MemoryWrite16(commpage + 0x1E, 3); // version
  sharedHandle.ucb->MemoryWrite32(commpage + 0x20, 0x9000);
  sharedHandle.ucb->MemoryWrite8(commpage + 0x22, 1); // number of CPUs
  sharedHandle.ucb->MemoryWrite8(commpage + 0x24, DYN_PAGE_BITS); // 32-bit page shift
  sharedHandle.ucb->MemoryWrite16(commpage + 0x26, 128); // cache line size, 32? 64?
  //sharedHandle.ucb->MemoryWrite32(commpage + 0x28, 128); // sched count
  sharedHandle.ucb->MemoryWrite8(commpage + 0x34, 1); // active CPU
  sharedHandle.ucb->MemoryWrite8(commpage + 0x35, 1); // physical CPU
  sharedHandle.ucb->MemoryWrite8(commpage + 0x36, 1); // logical CPU
  sharedHandle.ucb->MemoryWrite8(commpage + 0x37, DYN_PAGE_BITS); // kernel page shift
  sharedHandle.ucb->MemoryWrite32(commpage + 0x38, 0x40000000u); // max memory size, 1GB
  // TODO: mach time stuff
  //sharedHandle.ucb->MemoryWrite64(commpage + 0x40, 0x4141414141414141); // FIXME
  //sharedHandle.ucb->MemoryWrite64(commpage + 0x80, 0x41414141); // FIXME
  sharedHandle.ucb->MemoryWrite64(commpage + 0x84, 1); // dev firmware
  
  // allocate stack guards and stack buffer for dyld
  u32 dyldStackGuardStart = Dynarmic_mmap(0x80000000, 0x1000, PROT_NONE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
  u32 dyldStack = Dynarmic_mmap(0x80000000, 0xff000, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
  Dynarmic_mmap(0x80000000, 0x1000, PROT_NONE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);

  u32 dyldStackPtr = dyldStack - 0x1000 + 0x100000;

  // write strings to the stack
  u32 guest_apple[] = {
    0, // separator
    // apple
    // comment out these if you want ASLR
    prependString(dyldStackPtr, "malloc_entropy=0xf0ef08e3de46c995,0xd5adb183cbc1fed0"),
    prependString(dyldStackPtr, "stack_guard=0xff39f7772c708a80"),

    prependString(dyldStackPtr, "pfz=0xffffffff"),
    prependString(dyldStackPtr, "main_stack=0x%x,0xff000,0x%x,0x100000", dyldStackGuardStart + 0x100000, dyldStackGuardStart),
    prependString(dyldStackPtr, "%s", execPath),
  };
  u32 guest_envp[] = {
    0, // separator
    // envp
    //prependString(dyldStackPtr, "OBJC_PRINT_LOAD_METHODS=1"),
    //prependString(dyldStackPtr, "OBJC_PRINT_RESOLVED_METHODS=1"),
    //prependString(dyldStackPtr, "OBJC_PRINT_CLASS_SETUP=1"),
    //prependString(dyldStackPtr, "DYLD_LIBRARY_PATH=%1$s/usr/lib:%1$s/usr/lib/system", rootPath),
    //prependString(dyldStackPtr, "DYLD_FRAMEWORK_PATH=%1$s/System/Library/Frameworks:%1$s/System/Library/PrivateFrameworks", rootPath),
    prependString(dyldStackPtr, "DYLD_PRINT_OPTS=1"),
    prependString(dyldStackPtr, "DYLD_PRINT_ENV=1"),
    prependString(dyldStackPtr, "DYLD_PRINT_SEGMENTS=1"),
    prependString(dyldStackPtr, "DYLD_PRINT_INITIALIZERS=1"),
    //prependString(dyldStackPtr, "MallocTracing=YES"),
    //prependString(dyldStackPtr, "MallocStackLogging=YES"),
    //prependString(dyldStackPtr, "MallocScribble=YES"),
    //prependString(dyldStackPtr, "MallocLogFile=/tmp/a.malloc.log")
  };
  u32 guest_argv[1000] = {0};
  guest_argv[0] = argc - 1;
  // CAUTION: write backwards!!
  for (int i = argc-1; i >= 1; i--) {
    guest_argv[i] = prependString(dyldStackPtr, "%s", argv[i]);
  }

  // align
  dyldStackPtr &= ~(sizeof(u32)-1);
  dyldStackPtr -= 0x1000;

  // calculate for alignment...
  int toBeWritten = sizeof(guest_apple) + sizeof(guest_envp) + sizeof(guest_argv) + sizeof(u32) * 2;
  dyldStackPtr -= (dyldStackPtr - toBeWritten) & 0xF;

  // write apple
  for (int i = 0; i < sizeof(guest_apple)/sizeof(u32); i++) {
    sharedHandle.ucb->MemoryWrite32(dyldStackPtr -= sizeof(u32), guest_apple[i]);
  }

  // write envp
  for (int i = 0; i < sizeof(guest_envp)/sizeof(u32); i++) {
    sharedHandle.ucb->MemoryWrite32(dyldStackPtr -= sizeof(u32), guest_envp[i]);
  }

  // write argv and argc
  for (int i = argc; i >= 0; i--) {
    sharedHandle.ucb->MemoryWrite32(dyldStackPtr -= sizeof(u32), guest_argv[i]);
  }

  // write main executable base
  sharedHandle.ucb->MemoryWrite32(dyldStackPtr -= sizeof(u32), execAddr);

  printf("stack ptr now 0x%x\n", dyldStackPtr);

  Dynarmic_reg_1write(13, dyldStackPtr);
  Dynarmic_emu_1start(threadHandle.jit->Regs()[15]);
}

}
