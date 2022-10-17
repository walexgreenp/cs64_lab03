# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:
	# TODO: Write your code here
	# Getting user input
	li $v0 5
	syscall
	move $t0 $v0
	li $v0 5
	syscall
	move $t1 $v0

	# Subtraction
	sub $t0 $t0 $t1

	# Bit shift left (multiply by 16)
	sll $t0 $t0 4

	# Addition 8
	li $t1 8
	add $t0 $t0 $t1

	# Print
	li $v0 1
	move $a0 $t0
	syscall


exit:
	# Exit SPIM: Write your code here!
	li $v0 10
	syscall

