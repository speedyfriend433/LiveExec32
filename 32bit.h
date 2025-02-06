#include <sys/signal.h>
#include <sys/stat.h>

//#define __darwin_time_t int
//#define long int

struct objc_method_32 {
    uint32_t method_name;
    uint32_t method_types;
    uint32_t method_imp;
};

struct sigaction_32 {
#if 0
  union {
    void    (*__sa_handler)(int);
    void    (*__sa_sigaction)(int, struct __siginfo *, void *);
  } __sigaction_u;                /* signal handler */
#endif
  uint32_t _sa_handler;
  int     sa_flags;               /* see signal options below */
  sigset_t sa_mask;               /* signal mask to apply */
};

struct timespec_32 {
	int tv_sec;
	int tv_nsec;
};

struct __attribute__((__packed__)) stat_32 {
	dev_t		st_dev;                 /* [XSI] ID of device containing file */
	mode_t		st_mode;                /* [XSI] Mode of file (see below) */
	nlink_t		st_nlink;               /* [XSI] Number of hard links */
	__darwin_ino64_t st_ino;                /* [XSI] File serial number */
	uid_t		st_uid;                 /* [XSI] User ID of the file */
	gid_t		st_gid;                 /* [XSI] Group ID of the file */
	dev_t		st_rdev;                /* [XSI] Device ID */
	struct timespec_32 st_atimespec;           /* time of last access */
	struct timespec_32 st_mtimespec;           /* time of last data modification */
	struct timespec_32 st_ctimespec;           /* time of last status change */
	struct timespec_32 st_birthtimespec;       /* time of file creation(birth) */
	//__DARWIN_STRUCT_STAT64_TIMES
	off_t		st_size;                /* [XSI] file size, in bytes */
	blkcnt_t	st_blocks;              /* [XSI] blocks allocated for file */
	blksize_t	st_blksize;             /* [XSI] optimal blocksize for I/O */
	__uint32_t	st_flags;               /* user defined flags for file */
	__uint32_t	st_gen;                 /* file generation number */
	__int32_t	st_lspare;              /* RESERVED: DO NOT USE! */
	__int64_t	st_qspare[2];           /* RESERVED: DO NOT USE! */
};
