#include "yuan_unp.h"

void
str_echo(int sockfd)
{
	ssize_t		n;
	char		buf[MAXLINE];

again:
	//n = read(sockfd, buf, MAXLINE);
//	printf(n);
	//while (n > 0)
	while ((n = read(sockfd, buf, MAXLINE)) > 0)
	{
		printf("hello, your insert is: %s", buf);
		Writen(sockfd, buf, n);
	}

	if (n < 0 && errno == EINTR)
		goto again;
	else if (n < 0)
		err_sys("str_echo: read error");

	/* function return when read return 0 */
}
