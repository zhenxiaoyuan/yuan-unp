#include "yuan_unp.h"

int
Fcntl(int fd, int cmd, int arg)
{
    int n;

    if ((n = fcntl(fd, cmd, arg)) == -1)
        err_sys("fcntl error");
    return(n);
}

pid_t
Fork(void)
{
	pid_t	pid;

	if ((pid = fork()) == -1)
		err_sys("fork error");
	return pid;
}

void
Close(int fd)
{
	if (close(fd) == -1)
		err_sys("close error");
}

ssize_t
Read(int fd, void *ptr, size_t nbytes)
{
    ssize_t n;

    if ((n = read(fd, ptr, nbytes)) == -1)
        err_sys("read error");
    return(n);
}

void
Write(int fd, void *ptr, size_t nbytes)
{
    if (write(fd, ptr, nbytes) != nbytes)
        err_sys("write error");
}

void *
Malloc(size_t size)
{
    void    *ptr;

    if ((ptr = malloc(size)) == NULL)
        err_sys("malloc error");
    return(ptr);
}
