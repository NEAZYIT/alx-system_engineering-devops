#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

/**
 * infinite_while - Infinite loop to keep the program running.
 *
 * Return: Always 0.
 */

int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - Creates 5 zombie processes and runs an infinite loop.
 *
 * Return: Always 0.
 */

int main(void)
{
	pid_t child_pid;
	int i;

	for (i = 0; i < 5; i++)
	{
		child_pid = fork();
		if (child_pid == 0)
		{
			/* Child process */
			exit(0);
		}
		else
		{
			/* Parent process */
			printf("Zombie process created, PID: %d\n", child_pid);
		}
	}

	infinite_while();

	return (0);
}
