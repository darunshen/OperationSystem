cmd_arch/x86/boot/bioscall.o := gcc -Wp,-MD,arch/x86/boot/.bioscall.o.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/7/include -I./arch/x86/include -Iarch/x86/include/generated/uapi -Iarch/x86/include/generated  -Iinclude -I./arch/x86/include/uapi -Iarch/x86/include/generated/uapi -I./include/uapi -Iinclude/generated/uapi -include ./include/linux/kconfig.h -D__KERNEL__     -m16 -g -Os -D__KERNEL__ -DDISABLE_BRANCH_PROFILING -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse  -ffreestanding  -fno-stack-protector  -Wno-address-of-packed-member  -mpreferred-stack-boundary=2 -D_SETUP -D__ASSEMBLY__        -c -o arch/x86/boot/bioscall.o arch/x86/boot/bioscall.S

source_arch/x86/boot/bioscall.o := arch/x86/boot/bioscall.S

deps_arch/x86/boot/bioscall.o := \

arch/x86/boot/bioscall.o: $(deps_arch/x86/boot/bioscall.o)

$(deps_arch/x86/boot/bioscall.o):
