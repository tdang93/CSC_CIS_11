/// #include <cstdio>
.global main

// all of the string literals placed in .rodata (read-only data) section
// this is an ideal section for constant, read only data
.section .rodata

prompt:		.asciz "Enter an integer value: "
scan_pattern:	.asciz "%d"
even_output:	.asciz "%d is an even number!\n"
odd_output:	.asciz "%d is an odd number!\n"

// non-constant, readable/writeable data placed in .data section
.section .data

value: .word

.section .text

/// int main()
main:
/// {
	push {lr}	/* save link register on to stack */
///	int value;

///	// prompt for an integer value
///	printf("Enter an integer value: ");
	ldr r0, =prompt	/* r0 contains address to prompt string literal */
	bl printf

///	// read in from the keyboard the integer value
///	scanf("%d", &value);
	ldr r0, =scan_pattern	/* r0 contains address to scan pattern */
	ldr r1, =value		/* r1 contains address to value where scan result is stored */
	bl scanf

///	// do a logical AND 1 against value, if 0, value is even, else value is odd 
	ldr r0, =value          /* r0 contains address to value */
        ldr r0, [r0]            /* r0 contains data stored at deref'ed r0 */
        and r0, #1              /* perform bitwise AND to test for even or odd value */
///	if ( (value & 1)==0 )
	cmp r0, #0		/* compare r0 with immediate value 0 */
	bne else_label_1
///	{
///		printf("%d is an even number!\n", value);
///	}
	ldr r0, =even_output
	ldr r1, =value
	ldr r1, [r1]
	bl printf
	bal end_if_else_1
///	else
else_label_1:
///	{
///		printf("%d is an odd number!\n", value);
///	} // end if/else block
	ldr r0, =odd_output
	ldr r1, =value
	ldr r1, [r1]
	bl printf
end_if_else_1:
///	return 0;
	mov r0, #0
///}
	pop {pc}
