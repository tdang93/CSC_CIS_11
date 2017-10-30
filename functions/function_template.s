// Use line below if you want your function to be visible outside of the source file
.global function_name	// replace function_name with your function's name

.section .text
//
// function_name:	{insert short description of function here}
//
// parameter regs:	{list each parameter register here with description of its use}
//
// return reg(s):	{register(s) used as return value and description of its use}
//
// registers changed:	{register(s) that your function changes during the function execution}
//
function_name:		// replace function_name with your function's name
		push { /* place registers you want to save in order from r0 to r13, lr */ }

		// your function's code here

		// note: in pop below, pop lr from the above push, into pc for the return
		pop { /* place registers here you want to restore from the above push, pc */}

