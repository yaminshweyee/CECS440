.data 
array1:	.word 1,2,3
.text
li	x10, 0
la	x22, array1

#put your code here

lw	x4, 0(x22) #array[0]
lw	x1, 4(x22) #array[1] with 4 bytes
slli	x1, x1,1   #shiftleft since * 2

add	x11, x4, x1 #add x0 and x1

lw	x2, 8(x22)  #array[2] with 8 bytes

add	x12, x2, x11 #add x2 and x11

addi	x2, x12, 45 #add immediate 45 after all the addition of a0, a1, a2

sw	x2, 8(x22) #store 



ecall 