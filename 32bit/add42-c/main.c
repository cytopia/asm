#include <stdio.h>
#include "add42/add42.h"

int main() {
	int result;
	result = add42(5); // Defined in "add42/add42.(asm|h)"
	printf("Result: %i\n", result);
	return 0;
}
