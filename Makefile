prgrep: prgrep.o
	#./prgrep "Hello" "He"

bm: BoyerMoore.java
	javac $<
	java BoyerMoore "jhjhjahshelllskHellolosjsme" "Hello"

test: test.c
	gcc -g -m32 -o test test.c
	objdump -d --disassembler-options=intel test &> test.asm	

hello: helloworld.o
	./hello

read: fileRead.o
	./read hello.txt

%.o:
	nasm -f elf -F dwarf -g $*.asm
	ld -m elf_i386 -o $* $@

clean: 
	rm -f prgrep
	rm -f hello
	rm -f read
	rm -f test
	rm -rf *.o
	rm -rf *.class
	rm -rf core.*
