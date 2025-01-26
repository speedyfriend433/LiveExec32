#include <unistd.h>
#include "dynarmic.h"
#include "filesystem.h"

using namespace std;

// Create a class which is a wrapper to access guest string depending on its boundary
class DynarmicString {
public:
    ~DynarmicString() {
        if(!direct) {
            if(dirty) {
                Dynarmic_mem_1write(handle, guestPtr, totalLen, hostPtr);
            }
            free(hostPtr);
        }
    }

    // Initialize the wrapper with a given guest string pointer
    DynarmicString(u32 guestPtr) : dirty{false}, guestPtr{guestPtr} {
         char *dest = (char *)get_memory(handle->memory, guestPtr, handle->num_page_table_entries, handle->page_table);
         if(!dest) {
             abort();
         }

         totalLen = strlen(dest);
         u32 pageOff = guestPtr & DYN_PAGE_MASK;
         direct = pageOff + totalLen < DYN_PAGE_SIZE;
         if(direct) {
             hostPtr = dest;
         } else {
             totalLen = DYN_PAGE_SIZE - pageOff; // avoid page overflow
             for(u64 vaddr = (guestPtr - pageOff) + DYN_PAGE_SIZE;; vaddr += DYN_PAGE_SIZE) {
                 char *page = get_memory_page(handle->memory, vaddr, handle->num_page_table_entries, handle->page_table);
                 if(!page) {
                     abort();
                 }
                 size_t len = strlen(page);
                 totalLen += len;
                 if(len < DYN_PAGE_SIZE) {
                     break;
                 }
             }
             hostPtr = (char *)malloc(totalLen + 1);
             hostPtr[totalLen] = '\0';
             Dynarmic_mem_1read(handle, guestPtr, totalLen, hostPtr);
        }
    }

    char *hostPtrForWriting() {
        dirty = true;
        return hostPtr;
    }

    bool direct, dirty;
    size_t totalLen;
    u32 guestPtr;
    char *hostPtr;
};

// Returns true if a target path starts with base
bool LC32Filesystem::isSubpath(const string& target, const string& base) {
    size_t baseSize = base.size();
    const char *lastChar = &target[baseSize];
    return target.rfind(base, 0) == 0 && (*lastChar == 0 || *lastChar == '/');
}

void LC32Filesystem::addMountpoint(string guest, string host) {
    char realHostPath[PATH_MAX];
    realpath(host.c_str(), realHostPath);
    guestmpVec.push_back(guest);
    hostmpVec.push_back(realHostPath);
}

// Translate path between emulated mount point paths
bool LC32Filesystem::pathLeftToRight(vector<string> leftVec, vector<string> rightVec, char *input, char *output) {
    if(input[0] != '/') {
        // guest->host will catch this beforehand, and host->guest should never reach this
        abort();
    }

    string rightRootfsPath;
    vector<string>::iterator rmp, lmp;
    for(rmp = rightVec.begin(), lmp = leftVec.begin(); rmp < rightVec.end(); rmp++, lmp++) {
        if(*lmp == "/") {
          // make sure we don't append / twice
          rightRootfsPath = *rmp;
        } else if(isSubpath(input, *lmp)) {
            size_t leftmpLen = lmp->size();
            input += leftmpLen;
            // make sure we don't append / twice
            snprintf(output, PATH_MAX, "%s%s", (*rmp == "/" && input[0] != 0) ? "" : rmp->c_str(), input);
            return true;
        }
    }

    snprintf(output, PATH_MAX, "%s%s", rightRootfsPath.c_str(), input);
    return true;
}

bool LC32Filesystem::pathGuestToHost(char *input, char *output) {
    if(input[0] != '/') {
        // relative path is more complex as we have to prepend cwd then translate the path back and forth
        char guestCWD[PATH_MAX];
        char guestPath[PATH_MAX];
        getcwd(guestCWD, PATH_MAX);
        pathHostToGuest(guestCWD, guestPath);
        strcat(guestPath, "/");
        strcat(guestPath, input);
        ap_getparents(guestPath);
        return pathLeftToRight(guestmpVec, hostmpVec, guestPath, output);
    }
    return pathLeftToRight(guestmpVec, hostmpVec, input, output);
}

bool LC32Filesystem::pathGuestToHost(u32 inputAddr, char *output) {
    DynarmicString input(inputAddr);
    return pathGuestToHost(input.hostPtr, output);
}

bool LC32Filesystem::pathHostToGuest(char *input, char *output) {
    return pathLeftToRight(hostmpVec, guestmpVec, input, output);
}

bool LC32Filesystem::pathHostToGuest(char *input, u32 outputAddr) {
    DynarmicString output(outputAddr);
    return pathLeftToRight(hostmpVec, guestmpVec, input, output.hostPtrForWriting());
}

#if 0
void test() {
  LC32Filesystem fs;
  fs.addMountpoint("/var/mobile", "/var/tmp");
  fs.addMountpoint("/rootfs", "/");
  fs.addMountpoint("/", "/var/mobile/rootfs");
  char buffer[PATH_MAX];

  // host to guest rootfs
  bzero(buffer, PATH_MAX);
  fs.pathHostToGuest("/var/mobile/rootfs/var/mobile/hello.txt", buffer);
  printf("path=%s\n", buffer);

  // host to guest unmounted
  bzero(buffer, PATH_MAX);
  fs.pathHostToGuest("/var/unmounted/tmp/mobile/fake/hello.txt", buffer);
  printf("path=%s\n", buffer);

  // host to guest mounted
  bzero(buffer, PATH_MAX);
  fs.pathHostToGuest("/var/tmp/test/fake/hello.txt", buffer);
  printf("path=%s\n", buffer);

  // guest to host rootfs
  bzero(buffer, PATH_MAX);
  fs.pathGuestToHost("/rootfs", buffer);
  printf("GTHpath=%s\n", buffer);

  // guest to host rootfs
  bzero(buffer, PATH_MAX);
  fs.pathGuestToHost("/rootfs/var/mobile/test.txt", buffer);
  printf("GTHpath=%s\n", buffer);

  // guest mounted to host
  bzero(buffer, PATH_MAX);
  fs.pathGuestToHost("/var/mobile/test.txt", buffer);
  printf("GTHpath=%s\n", buffer);

  // guest to host rootfs
  bzero(buffer, PATH_MAX);
  fs.pathGuestToHost("/System/Library/test.txt", buffer);
  printf("GTHpath=%s\n", buffer);
}
#endif
