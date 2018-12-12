/* include unph */
/* Our own header.  Tabs are set for 4 spaces, not 8 */

#ifndef	__unp_h
#define	__unp_h

#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>

#include	<errno.h>
#include	<stdio.h>
#include	<stdlib.h>
#include	<string.h>
/* Following could be derived from SOMAXCONN in <sys/socket.h>, but many
   kernels still #define it as 5, while actually supporting many more */
#define	LISTENQ		1024	/* 2nd argument to listen() */

/* Miscellaneous constants */
#define	MAXLINE		4096	/* max text line length */
#define	BUFFSIZE	8192	/* buffer size for reads and writes */

/* Define some port number that can be used for our examples */
#define	SERV_PORT		9877		/* TCP and UDP */
#define	SERV_PORT_STR	"9877"		/* TCP and UDP */

#define	SA	struct sockaddr

int		Socket(int, int, int);

void	Bind(int, const SA *, socklen_t);
void	Listen(int, int);
int		Accept(int, SA *, socklen_t *);

pid_t	Fork(void);
void	Close(int);

void	Writen(int, void *, size_t);

void daemon_inetd(const char *, int);

#endif	/* __unp_h */
