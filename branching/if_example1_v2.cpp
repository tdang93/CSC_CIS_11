#include <cstdio>

const char *prompt = "Enter an integer value: ";
const char *scan_pattern = "%d";
const char *even_output = "%d is an even number!\n";
const char *odd_output = "%d is an odd number!\n";

int main()
{
	int value;

	// prompt for an integer value
	printf(prompt);

	// read in from the keyboard the integer value
	scanf(scan_pattern, &value);

	// do a logical AND 1 against value, if 0, value is even, else value is odd 
	if ( (value & 1)==0 )
	{
		printf(even_output, value);
	}
	else
	{
		printf(odd_output, value);
	} // end if/else block

	return 0;
}
