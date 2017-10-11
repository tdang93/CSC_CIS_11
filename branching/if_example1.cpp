#include <cstdio>

int main()
{
	int value;

	// prompt for an integer value
	printf("Enter an integer value: ");

	// read in from the keyboard the integer value
	scanf("%d", &value);

	// do a logical AND 1 against value, if 0, value is even, else value is odd 
	if ( (value & 1)==0 )
	{
		printf("%d is an even number!\n", value);
	}
	else
	{
		printf("%d is an odd number!\n", value);
	} // end if/else block

	return 0;
}
