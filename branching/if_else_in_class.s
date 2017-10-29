// in class if else example we discussed
// on 10/16/2017

.text

.global main
main:
	mov r0, #5	// load integer literal 5 into r0
	cmp r0, #0	// compare r0 to zero
	ble else	// branch less than/equal to else label

	// block if r0 > 0 is true
	mov r1, #1	// load integer literal 1 into r1
	bal end_if	// branch always to end_if label when done
else:
	mov r1, #8	// load integer literal 8 into r1
end_if:
	mov pc, lr	// make PC the value of LR to exit
