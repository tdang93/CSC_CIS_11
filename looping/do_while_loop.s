/* This code fragment demonstrates how to do a post-test while loop
   in Assembly Language. It mimics the following C/C++ style while loop:

   do
   {
   	S1;
   } while(Expr);

   Expr - the expression to evaluate
   S1 - statements to execute while Expr is true

*/

do_label:
	...			// Assembly code for statements inside loop body

	... 			// place here the cmp instruction doing the evaluation of Expr
	bXX do_label		// XX is condition code for when Expr is true
end_while:
