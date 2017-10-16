/* This code fragment demonstrates how to do a pre-test while loop
   in Assembly Language. It mimics the following C/C++ style while loop:

   while(Expr)
   {
   	S1;
   }

   Expr - the expression to evaluate
   S1 - statements to execute while Expr is true

*/

while_condition:
	... 			// place here the cmp instruction doing the evaluation of Expr
	bXX end_while		// XX is condition code for when Expr is false

	...			// Assembly code for statements inside loop body
	bal while_condition
end_while:
