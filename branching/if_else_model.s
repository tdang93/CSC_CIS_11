/* This file has the Assembly Language code fragment that
   models the following C/C++ style if/else block:

	if (Expr)
	{
		// "then" block
		S1;
	}
	else
	{
		// "else" block
		S2;
	}

   Where Expr is the expression to evaluate (it may be a good idea from 
   the low-level sense of things to perhaps have the evaluation of the expression
   stored in a flag variable?)

   S1 - the statement or statements executed when Expr is true
   S2 - the statement or statements executed when Expr is false */

if_label:
	cmp ... 	// do the comparison that best fits Expr
	bXX else_label  // XX is the condition code that matches the negation of
			// Expr's relation.
	...		// this is the code to execute when Expr is true
	bal end_if	// branch always to the end_if label when done
else_label:
	...		// the code to execute when Expr is false
end_if:			// code that continues after the if/else is done (note: the
			// code that is executed in the else_label will fall through
			// to this end_if label so no branching out is necessary)
