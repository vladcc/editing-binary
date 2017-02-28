/* supersecret.c -- example for binary editing */
/* compile line: gcc supersecret.c -o supersecret.exe -m32 -s -Wall */
#include <stdio.h>
#include <string.h>

#define LEN 16

int main(void)
{
	char pwd[] = "swordfish";
	char input[LEN];
	
	puts("Enter the super secret password:");
	fgets(input, LEN, stdin);
	
	input[strlen(input) - 1] = '\0';
	
	if (strcmp(pwd, input) == 0)
		puts("Access granted.\nHello, Batman!");
	else
		puts("Error: the CSI guys are now after you.");
	
	return 0;
}