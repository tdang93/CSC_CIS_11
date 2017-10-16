///#include <cstdio>
.global main

/* all of the string literals placed in .rodata (read-only data) section */
/* this is an ideal section for constant, read only data */
.section .rodata

prompt: .asciz "Enter two integer value: "
scan_pattern: .asciz "%d %d"
output_message_1: .asciz "%d and %d are the same!\n"
output_message_2: .asciz "%d is less than %d!\n"
output_message_3: .asciz "%d is greater than %d!\n"

.section .data

v1: .word	0
v2: .word	0

.section .text
///int main()
main:
///{
        push {lr}
///        int v1, v2; /* moved up into .section .data */

///        // prompt for an integer values
///        printf(prompt);
        ldr r0, =prompt
        bl printf

///        // read in from the keyboard the integer values
///        scanf(scan_pattern, &v1, &v2);
        ldr r0, =scan_pattern
        ldr r1, =v1
        ldr r2, =v2
        bl scanf

        /* load v1 into r0, and v2 into r1 */
        ldr r0, =v1
        ldr r0, [r0]
        ldr r1, =v2
        ldr r1, [r1]

///        // check to see if v1 == v2
///        if ( v1==v2 )
        cmp r0, r1
        bne else_if_v1_lt_v2
///        {
///                printf(output_message_1, v1, v2);
        ldr r0, =output_message_1
        ldr r1, =v1
        ldr r1, [r1]
        ldr r2, =v2
        ldr r2, [r2]
        bl printf
///        }
        bal end_if_block
///        // check to see if v1 < v2
///        else if ( v1 < v2 )
else_if_v1_lt_v2:
        bge else_v1_gt_v2
///        {
///                printf(output_message_2, v1, v2);
        ldr r0, =output_message_2
        ldr r1, =v1
        ldr r1, [r1]
        ldr r2, =v2
        ldr r2, [r2]
        bl printf
///        }
        bal end_if_block
else_v1_gt_v2:
///        else // else block only executes when v1 > v2
///        {
///                printf(output_message_3, v1, v2);
        ldr r0, =output_message_3
        ldr r1, =v1
        ldr r1, [r1]
        ldr r2, =v2
        ldr r2, [r2]
        bl printf
///        } // end if/else if/elseblock
end_if_block:
///        return 0;
        mov r0, #0
///}
        pop {pc}
