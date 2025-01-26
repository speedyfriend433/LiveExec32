#pragma once

#include <vector>

#ifdef DYNARMIC_MASTER
#include <dynarmic/interface/A32/a32.h>
#include <dynarmic/interface/A32/config.h>

#include <dynarmic/interface/exclusive_monitor.h>
#else
#include <dynarmic/A32/a32.h>
#include <dynarmic/A32/config.h>

#include <dynarmic/exclusive_monitor.h>
#endif

#include "khash.h"
#include "filesystem.h"

// TSB (thread local variables)
#define ARM_REG_C13_C0_3 113

#define PAGE_TABLE_ADDRESS_SPACE_BITS 36
#define DYN_PAGE_BITS 12 // 4k
#define DYN_PAGE_SIZE (1ULL << DYN_PAGE_BITS)
#define DYN_PAGE_MASK (DYN_PAGE_SIZE-1)
#define UC_PROT_WRITE 2

#define ALIGN_DYN_SIZE(len) (((DYN_PAGE_SIZE-1)&len) ? ((len+DYN_PAGE_SIZE) & ~(DYN_PAGE_SIZE-1)):len)
#define ALIGN_SIZE(len) (((PAGE_SIZE-1)&len) ? ((len+PAGE_SIZE) & ~(PAGE_SIZE-1)):len)

// cpsr flags
#define A32_BIT 4
#define THUMB_BIT 5
#define NEGATIVE_BIT 31
#define ZERO_BIT 30
#define CARRY_BIT 29
#define OVERFLOW_BIT 28
#define MODE_MASK 0x1f

#define PRE_CALLBACK_SYSCALL_NUMBER 0x8866
#define POST_CALLBACK_SYSCALL_NUMBER 0x8888
#define DARWIN_SWI_SYSCALL 0x80

struct guest_file_mapping {
    const char *name;
    uint64_t hostAddr;
    uint32_t start;
    uint32_t end;
};
extern int guestMappingLen;
extern guest_file_mapping guestMappings[100];

typedef struct memory_page {
  void *addr;
  int perms;
} *t_memory_page;

KHASH_MAP_INIT_INT64(memory, t_memory_page)

using Vector = std::array<std::uint64_t, 2>;

typedef struct context32 {
  std::array<std::uint32_t, 16> regs;
  std::array<std::uint32_t, 64> extRegs;
  std::uint32_t cpsr;
  std::uint32_t fpscr;
  std::uint32_t uro;
} *t_context32;


#include "arm_dynarmic_cp15.h"

class DynarmicCpsr {
public:
    DynarmicCpsr(Dynarmic::A32::Jit *cpu)
        : cpu{cpu} {}

    bool hasBit(int offset) {
        return ((cpu->Cpsr() >> offset) & 1) == 1;
    }

    void setBit(int offset) {
        int mask = 1 << offset;
        cpu->SetCpsr(cpu->Cpsr() | mask);
    }

    void clearBit(int offset) {
        int mask = ~(1 << offset);
        cpu->SetCpsr(cpu->Cpsr() & mask);
    }

    bool isA32() {
        return hasBit(A32_BIT);
    }

    bool isThumb() {
        return hasBit(THUMB_BIT);
    }

    bool isNegative() {
        return hasBit(NEGATIVE_BIT);
    }

    void setNegative(bool on) {
        if (on) {
            setBit(NEGATIVE_BIT);
        } else {
            clearBit(NEGATIVE_BIT);
        }
    }

    bool isZero() {
        return hasBit(ZERO_BIT);
    }

    void setZero(bool on) {
        if (on) {
            setBit(ZERO_BIT);
        } else {
            clearBit(ZERO_BIT);
        }
    }

    bool hasCarry() {
        return hasBit(CARRY_BIT);
    }

    void setCarry(bool on) {
        if (on) {
            setBit(CARRY_BIT);
        } else {
            clearBit(CARRY_BIT);
        }
    }

    bool isOverflow() {
        return hasBit(OVERFLOW_BIT);
    }

    void setOverflow(bool on) {
        if (on) {
            setBit(OVERFLOW_BIT);
        } else {
            clearBit(OVERFLOW_BIT);
        }
    }

    int getMode() {
        return cpu->Cpsr() & MODE_MASK;
    }

    int getEL() {
        return (cpu->Cpsr() >> 2) & 3;
    }

    Dynarmic::A32::Jit *cpu;
};

class DynarmicCallbacks32;
typedef struct dynarmic {
  khash_t(memory) *memory;
  size_t num_page_table_entries;
  void **page_table;
  union {
    DynarmicCallbacks32 *cb32;
    Dynarmic::A32::UserCallbacks *ucb;
  };
  Dynarmic::A32::Jit *jit32;
  Dynarmic::ExclusiveMonitor *monitor;
  DynarmicCpsr *cpsr;
  LC32Filesystem *fs;
} *t_dynarmic;

extern "C" {
extern t_dynarmic handle;

char *get_memory_page(khash_t(memory) *memory, u64 vaddr, size_t num_page_table_entries, void **page_table);
inline void *get_memory(khash_t(memory) *memory, u64 vaddr, size_t num_page_table_entries, void **page_table);

t_dynarmic Dynarmic_nativeInitialize();
void Dynarmic_nativeDestroy(t_dynarmic dynarmic);
int Dynarmic_munmap(t_dynarmic dynarmic, u64 address, u64 size);
u32 Dynarmic_direct_mmap(t_dynarmic dynarmic, u32 address, u32 size, int protection, int flags, void *src, u64 off);
u32 Dynarmic_mmap(t_dynarmic dynarmic, u32 address, u32 size, int protection, int flags, int fildes, u64 off, u64 mask = DYN_PAGE_MASK);
int Dynarmic_mprotect(t_dynarmic dynarmic, u64 address, u64 size, int perms);
int Dynarmic_mem_1write(t_dynarmic dynarmic, u64 address, u64 size, char* src);
int Dynarmic_mem_1read(t_dynarmic dynarmic, u64 address, u64 size, char* dest);
int Dynarmic_reg_1write(t_dynarmic dynarmic, int index, u32 value);
u32 Dynarmic_reg_1read(t_dynarmic dynarmic, int index);
int Dynarmic_reg_1read_1cpsr(t_dynarmic dynarmic);
int Dynarmic_reg_1write_1cpsr(t_dynarmic dynarmic, int value);
int Dynarmic_reg_1write_1c13_1c0_13(t_dynarmic dynarmic, int value);
int Dynarmic_emu_1start(t_dynarmic dynarmic, u32 pc);
int Dynarmic_emu_1stop(t_dynarmic dynarmic);
void* Dynarmic_context_1alloc(t_dynarmic dynarmic);
void Dynarmic_context_1restore(t_dynarmic dynarmic, t_context32 ctx);
void Dynarmic_context_1save(t_dynarmic dynarmic, t_context32 ctx);
void Dynarmic_free(void *ctx);

void HandleSEGVAddressTranslation(int signum, siginfo_t* siginfo, void* context);
}
