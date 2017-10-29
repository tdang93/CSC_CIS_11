.section .rodata

greeting: .asciz "Welcome! I am going to use a while loop to sum up all integers from 1 to 3!\n"
output: .asciz "Sum of %d to %d is %d\n"

.section .text
.global main
main:
	push {lr}

	ldr r0, =greeting	// output greeting message
	bl printf

	mov r0, #1		// r0 is going to be our counter
	mov r4, #0		// r4 is going to hold our sum

while_r0_le_3:			// while ( r0 less than or equal to 3 )
	cmp r0, #3		// compare r0 to #3 ( update flags based on r0-#3 result)
	bgt end_while		// greater than is the opposite of less than/equal
	add r4, r4, r0		// r4 = r4 + r0
	add r0, #1		// increment r0 by 1, like the  ++ operator in C++
	bal while_r0_le_3
end_while:

	ldr r0, =output		// output result to screen
	mov r1, #1		// r1 contains 1 for output in first format spec
	mov r2, #3		// r2 contains 3 for output in second format spec
	mov r3, r4		// r4 contains sum from our while loop above
	bl printf

	mov r0, #0		// return errorcode zero
	pop {pc}		// end of main
