# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	# TODO: Write your string definitions here
	enter_text: .asciiz "Enter an integer: "

#Text Area (i.e. instructions)
.text
main:
	# TODO: Write your code here
	# Print string
	li $v0 4
	la $a0 enter_text
	syscall

	# Getting user input
	li $v0 5
	syscall
	move $t0 $v0

	li $t1 1
	and $t2 $t0 $t1

	bne $t2 $0 odd

even:
	add $t2 $t0 $t0
	add $t0 $t2 $t0
	j print

odd:
	add $t0 $t0 $t0
	j print

print:
	li $v0 1
	move $a0 $t0
	syscall

exit:
	# Exit SPIM: Write your code here!
	li $v0 10
	syscall

