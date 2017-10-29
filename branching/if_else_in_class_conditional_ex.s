// in class if else example we discussed
// on 10/16/2017
// this time with conditional execution instead....

.text

.global main
main:
	mov r0, #0	// load integer literal 0 into r0
	cmp r0, #0	// compare r0 to zero
	// don't need the branch inst
	//ble else	// branch less than/equal to else label

	// block if r0 > 0 is true
	movgt r1, #1	// load integer literal 1 into r1
	//bal end_if	// branch always to end_if label when done
else:	// don't really need the labels
	movle r1, #8	// load integer literal 8 into r1
end_if: // don't really need the labels
	mov pc, lr	// make PC the value of LR to exit
