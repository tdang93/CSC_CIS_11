// Compile instructions: g++ getIntegerTestAsmMain.s getInteger.s -o getIntegerTestAsm

.global main
.section .rodata

output:	.asciz	"Entered value = %d\n"

.section .text
main:
	push {lr}

	mov r0, #1		// r0 = 1
	mov r1, #10		// r1 = 10
	bl getIntegerInRange	// get an integer between 1 and 10 (r0 and r1)

	// output the result
	mov r1, r0		// r0 holds the integer received from user in getIntegerInRange
				// move the value to r1
	ldr r0, =output		// r0 now holds pointer to output format string
	bl printf		// call printf

	pop {pc}

