.global main
.data

x: .word 0xA0000005, 0xA0000008

.text
main:
	push {lr}

	pop {pc}

