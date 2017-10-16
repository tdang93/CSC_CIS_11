#include <cstdio>

const char *prompt = "Enter two integer value: ";
const char *scan_pattern = "%d %d";
const char *output_message_1 = "%d and %d are the same!\n";
const char *output_message_2 = "%d is less than %d!\n";
const char *output_message_3 = "%d is greater than %d!\n";

int main()
{
	int v1, v2;

	// prompt for an integer values
	printf(prompt);

	// read in from the keyboard the integer values
	scanf(scan_pattern, &v1, &v2);

	// check to see if v1 == v2 
	if ( v1==v2 )
	{
		printf(output_message_1, v1, v2);
	}
	// check to see if v1 < v2
	else if ( v1 < v2 )
	{
		printf(output_message_2, v1, v2);
	}
	else // else block only executes when v1 > v2
	{
		printf(output_message_3, v1, v2);
	} // end if/else if/elseblock

	return 0;
}
