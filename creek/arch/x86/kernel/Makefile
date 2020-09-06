#
# Makefile for the linux kernel.
#

# extra-y := head_$(BITS).o head$(BITS).o head.o vmlinux.lds
extra-y := head_$(BITS).o head$(BITS).o vmlinux.lds

CPPFLAGS_vmlinux.lds += -U$(UTS_MACHINE)
KBUILD_CFLAGS += -fno-builtin-memcpy
obj-y			:= setup.o