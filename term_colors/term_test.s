// compile as: g++ term_test.s term_colors.s -o term_test

.section .rodata

message:	.asciz	"Hello there, this is in BOLDCYAN!!!!\n"

.text
.global main
main:
	push {lr}
	ldr r0, =BOLDCYAN
	bl printf

	ldr r0, =message
	bl printf

	ldr r0, =RESET
	bl printf

	pop {pc}
