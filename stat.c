#include <sys/stat.h>
#include "_syscall.h"

int mkdir(char *path, uint16_t mode) {
    return -1; //__syscall2(14, (size_t) path, mode);   // my syscall
}