#include <unistd.h> /* for _exit and read syscall */

int main() {
	char buffer[50];
	int return_code;

	write(1, "Write a string (up to 50 characters): ", 38);
	return_code = read(1, buffer, sizeof(buffer));
	
	if (return_code == -1) {
		write(2, "Read error.\n", 12);
		_exit(1);
	}
	
	write(1, buffer, return_code);
	_exit(0);
}
