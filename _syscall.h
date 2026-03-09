#pragma once

#include <stdint.h>

int __sys_open(const char* path, uint16_t mode);
int64_t __sys_read(int fd, char* buffer, size_t size);
int64_t __sys_write(int fd, const char* buffer, size_t size);
int __sys_close(int fd);

int __sys_exit(int status);
void* __sys_sbrk(intptr_t size);
int __sys_getpid();
int __sys_execve(const char *path, char *const argv[]);