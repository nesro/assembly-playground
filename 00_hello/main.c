#include <unistd.h> /* for _exit syscall */

int main() {
	/*
	 * write two strings to stdout with a write syscall
	 */
	write(1, "Hello World!\n", 13);
	write(1, "How are you today?\n", 19);
	/*
	 * exit the program with an exit syscall
	 */
	_exit(0);
}
