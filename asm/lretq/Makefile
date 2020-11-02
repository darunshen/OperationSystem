lretq: $(patsubst %,%.o,$(wildcard *.c *.S))
	ld -O0 $^ -o $@
%.S.o: %.S
	gcc -g -c $<  -o $<.o
%.c.o: %.c
	gcc -g -c $<  -o $<.o

.PHONY: clean
clean: 
	rm *.o lretq