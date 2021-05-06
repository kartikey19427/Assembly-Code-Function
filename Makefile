AssemblyProg:
	nasm -felf64 _start.asm
	ld _start.o
	./a.out

Cprog:
	nasm -felf64 _start.asm
	gcc checkfile.c _start.o
	./a.out