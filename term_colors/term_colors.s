.section .rodata

.global RESET, BLACK//:          .asciz  "\033[30m"              /* Black */
.global RED, GREEN//:          .asciz  "\033[32m"              /* Green */
.global YELLOW//:         .asciz  "\033[33m"              /* Yellow */
.global BLUE//:           .asciz  "\033[34m"              /* Blue */
.global MAGENTA//:        .asciz  "\033[35m"              /* Magenta */
.global CYAN//        .asciz  "\033[36m"              /* Cyan */
.global WHITE//:          .asciz  "\033[37m"              /* White */

.global BOLDBLACK//:      .asciz  "\033[1m\033[30m"       /* Bold Black */
.global BOLDRED//:        .asciz  "\033[1m\033[31m"       /* Bold Red */
.global BOLDGREEN//:      .asciz  "\033[1m\033[32m"       /* Bold Green */
.global BOLDYELLOW//:     .asciz  "\033[1m\033[33m"       /* Bold Yellow */
.global BOLDBLUE//:       .asciz  "\033[1m\033[34m"       /* Bold Blue */
.global BOLDMAGENTA//:    .asciz  "\033[1m\033[35m"       /* Bold Magenta */
.global BOLDCYAN, BOLDWHITE//:      .asciz  "\033[1m\033[37m"       /* Bold White */

.global CLEAR

RESET: 		.asciz 	"\033[0m"		/* Reset to default text color */
BLACK:		.asciz  "\033[30m"      	/* Black */
RED:		.asciz  "\033[31m"      	/* Red */
GREEN:   	.asciz	"\033[32m"      	/* Green */
YELLOW:  	.asciz	"\033[33m"      	/* Yellow */
BLUE:    	.asciz	"\033[34m"      	/* Blue */
MAGENTA: 	.asciz	"\033[35m"      	/* Magenta */
CYAN:    	.asciz	"\033[36m"      	/* Cyan */
WHITE:   	.asciz	"\033[37m"      	/* White */

BOLDBLACK:   	.asciz	"\033[1m\033[30m"      	/* Bold Black */
BOLDRED:     	.asciz	"\033[1m\033[31m"      	/* Bold Red */
BOLDGREEN:   	.asciz	"\033[1m\033[32m"      	/* Bold Green */
BOLDYELLOW:  	.asciz	"\033[1m\033[33m"      	/* Bold Yellow */
BOLDBLUE:    	.asciz	"\033[1m\033[34m"      	/* Bold Blue */
BOLDMAGENTA:	.asciz	"\033[1m\033[35m"      	/* Bold Magenta */
BOLDCYAN:    	.asciz	"\033[1m\033[36m"      	/* Bold Cyan */
BOLDWHITE:   	.asciz	"\033[1m\033[37m"      	/* Bold White */

CLEAR:	 	.asciz	"\033[2J" 		// clear screen escape code
