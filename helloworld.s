.section .text
.global _start

_start:
	mov	x0, #1		// stdout
	adr	x1, STRING
	mov	x2, #11		// bytes to be written
	mov	x8, #64		// write syscall
	svc	#0
	mov	x8, #93		// exit syscall
	svc	#0

STRING:
	.ascii	"HELLOWORLD\n"