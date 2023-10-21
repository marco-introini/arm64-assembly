.section .text
.global _start

_start:
	adr	x0, SHELL
	mov	x1, #0
	mov	x2, #0
	mov	x8, #221
	svc	#0

SHELL:
    .ascii "/bin/sh\0"