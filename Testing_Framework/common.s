# A common file framework for RISC-V ASM

#-------------------start of common file-----------------------------------------------

.data
#noFileStr:	.asciz "Couldn't open specified file.\n"

.align 2

.text 

main:
# Add if you need to read to a file
#lw	a0, 0(a1)	# Put the filename pointer into a0
#li	a1, 0		# Flag: Read Only
#li	a7, 1024	# Service: Open File
#ecall			# File descriptor gets saved in a0 unless an error happens
#
#bltz	a0, main_err    # Negative means open failed
#
#la	a1, packet	# write into my binary space
#li	a2, 2048        # read a file of at max 2kb
#li	a7, 63          # Read File Syscall
#ecall
#j end_load_file
#
#main_err:
#la	a0, noFileStr   # print error message in the event of an error when trying to read a file
#li	a7, 4           # the number of a system call is specified in a7
#ecall             	# Print string whose address is in a0
#j	main_done	# goto main_done
#end_load_file:

# YOUR CODE HERE
jal	your_funct	# Jump to your code

j	main_done	# goto main_done
    
main_done:
li	a0, 0xA		# a0 <- '\n'
li	a7, 11		# a7 <- 11
ecall 			# printChar('\n')

   
li      a7, 10          # ecall 10 exits the program with code 0
ecall

#-------------------end of common file-------------------------------------------------
