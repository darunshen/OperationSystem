	.file	"bounds.c"
# GNU C89 (Ubuntu 7.5.0-3ubuntu1~18.04) version 7.5.0 (x86_64-linux-gnu)
#	compiled by GNU C version 7.5.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version isl-0.19-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -nostdinc -I ./arch/x86/include
# -I arch/x86/include/generated/uapi -I arch/x86/include/generated
# -I include -I ./arch/x86/include/uapi -I arch/x86/include/generated/uapi
# -I ./include/uapi -I include/generated/uapi -imultiarch x86_64-linux-gnu
# -D __KERNEL__ -D CONFIG_AS_CFI=1 -D CONFIG_AS_CFI_SIGNAL_FRAME=1
# -D CONFIG_AS_CFI_SECTIONS=1 -D CONFIG_AS_FXSAVEQ=1 -D CONFIG_AS_SSSE3=1
# -D CONFIG_AS_CRC32=1 -D CONFIG_AS_AVX=1 -D CONFIG_AS_AVX2=1
# -D CONFIG_AS_SHA1_NI=1 -D CONFIG_AS_SHA256_NI=1 -D CC_HAVE_ASM_GOTO
# -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(bounds)
# -D KBUILD_MODNAME=KBUILD_STR(bounds)
# -isystem /usr/lib/gcc/x86_64-linux-gnu/7/include
# -include ./include/linux/kconfig.h -MD kernel/.bounds.s.d kernel/bounds.c
# -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -m64 -mno-80387
# -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup
# -mno-red-zone -mcmodel=kernel -maccumulate-outgoing-args -mtune=generic
# -march=x86-64 -auxbase-strip kernel/bounds.s -g -O2 -Wall -Wundef
# -Wstrict-prototypes -Wno-trigraphs -Werror=implicit-function-declaration
# -Wno-format-security -Wno-sign-compare -Wno-maybe-uninitialized
# -Wno-frame-address -Wformat-truncation=0 -Wformat-overflow=0
# -Wno-int-in-bool-context -Wno-unused-but-set-variable
# -Wunused-const-variable=0 -Wdeclaration-after-statement -Wno-pointer-sign
# -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time
# -std=gnu90 -fno-strict-aliasing -fno-common -fno-PIE -falign-jumps=1
# -falign-loops=1 -funit-at-a-time -fno-asynchronous-unwind-tables
# -fno-delete-null-pointer-checks -fno-stack-protector -fomit-frame-pointer
# -fno-var-tracking-assignments -fno-strict-overflow
# -fno-merge-all-constants -fmerge-constants -fstack-check=no
# -fconserve-stack -fverbose-asm --param allow-store-data-races=0
# options enabled:  -faggressive-loop-optimizations -falign-labels
# -fauto-inc-dec -fbranch-count-reg -fcaller-saves
# -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write
# -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize
# -fchkp-store-bounds -fchkp-use-static-bounds
# -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcode-hoisting
# -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
# -fcrossjumping -fcse-follow-jumps -fdefer-pop -fdevirtualize
# -fdevirtualize-speculatively -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse
# -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability
# -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
# -findirect-inlining -finline -finline-atomics
# -finline-functions-called-once -finline-small-functions -fipa-bit-cp
# -fipa-cp -fipa-icf -fipa-icf-functions -fipa-icf-variables -fipa-profile
# -fipa-pure-const -fipa-ra -fipa-reference -fipa-sra -fipa-vrp
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
# -fmath-errno -fmerge-constants -fmerge-debug-strings
# -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
# -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2 -fplt
# -fprefetch-loop-arrays -free -freg-struct-return -freorder-blocks
# -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns2
# -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstdarg-opt
# -fstore-merging -fstrict-volatile-bitfields -fsync-libcalls
# -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
# -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
# -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
# -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
# -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
# -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
# -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
# -ftree-switch-conversion -ftree-tail-merge -ftree-ter -ftree-vrp
# -funit-at-a-time -fvar-tracking -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -maccumulate-outgoing-args -malign-stringops
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mno-fancy-math-387 -mno-red-zone
# -mno-sse4 -mpush-args -mskip-rax-setup -mtls-direct-seg-refs -mvzeroupper

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB182:
	.file 1 "kernel/bounds.c"
	.loc 1 16 0
	.cfi_startproc
# kernel/bounds.c:18: 	DEFINE(NR_PAGEFLAGS, __NR_PAGEFLAGS);
	.loc 1 18 0
#APP
# 18 "kernel/bounds.c" 1
	
.ascii "->NR_PAGEFLAGS $20 __NR_PAGEFLAGS"	#
# 0 "" 2
# kernel/bounds.c:19: 	DEFINE(MAX_NR_ZONES, __MAX_NR_ZONES);
	.loc 1 19 0
# 19 "kernel/bounds.c" 1
	
.ascii "->MAX_NR_ZONES $2 __MAX_NR_ZONES"	#
# 0 "" 2
# kernel/bounds.c:23: 	DEFINE(SPINLOCK_SIZE, sizeof(spinlock_t));
	.loc 1 23 0
# 23 "kernel/bounds.c" 1
	
.ascii "->SPINLOCK_SIZE $0 sizeof(spinlock_t)"	#
# 0 "" 2
# kernel/bounds.c:27: }
	.loc 1 27 0
#NO_APP
	xorl	%eax, %eax	#
	ret
	.cfi_endproc
.LFE182:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "./arch/x86/include/asm/segment.h"
	.file 3 "./arch/x86/include/asm/page_types.h"
	.file 4 "./arch/x86/include/asm/alternative.h"
	.file 5 "./arch/x86/include/asm/nops.h"
	.file 6 "include/linux/types.h"
	.file 7 "include/linux/init.h"
	.file 8 "include/linux/printk.h"
	.file 9 "include/linux/kernel.h"
	.file 10 "include/linux/page-flags.h"
	.file 11 "include/linux/mmzone.h"
	.file 12 "include/linux/lockdep.h"
	.file 13 "./arch/x86/include/asm/asm.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3f4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF88
	.byte	0x1
	.long	.LASF89
	.long	.LASF90
	.long	.Ldebug_ranges0+0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.long	0x30
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x3
	.long	0x6d
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x5
	.byte	0x8
	.long	0x6d
	.uleb128 0x6
	.long	.LASF16
	.byte	0x6
	.byte	0x1d
	.long	0x91
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF10
	.uleb128 0x7
	.long	.LASF91
	.byte	0xd
	.byte	0xb1
	.long	0x66
	.uleb128 0x8
	.long	0x74
	.long	0xb9
	.uleb128 0x9
	.long	0x66
	.byte	0x1f
	.uleb128 0x9
	.long	0x66
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	0xa3
	.uleb128 0xa
	.long	.LASF11
	.byte	0x2
	.byte	0xf6
	.long	0xb9
	.uleb128 0xa
	.long	.LASF12
	.byte	0x3
	.byte	0x3a
	.long	0x66
	.uleb128 0xa
	.long	.LASF13
	.byte	0x3
	.byte	0x3b
	.long	0x66
	.uleb128 0xa
	.long	.LASF14
	.byte	0x4
	.byte	0x3d
	.long	0x4a
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x8e
	.long	0xf5
	.uleb128 0x5
	.byte	0x8
	.long	0x101
	.uleb128 0x5
	.byte	0x8
	.long	0x37
	.uleb128 0x3
	.long	0xfb
	.uleb128 0x6
	.long	.LASF17
	.byte	0x7
	.byte	0x83
	.long	0x111
	.uleb128 0x5
	.byte	0x8
	.long	0x117
	.uleb128 0xb
	.long	0x4a
	.uleb128 0x5
	.byte	0x8
	.long	0x122
	.uleb128 0xc
	.uleb128 0x8
	.long	0x106
	.long	0x12e
	.uleb128 0xd
	.byte	0
	.uleb128 0xa
	.long	.LASF18
	.byte	0x7
	.byte	0x86
	.long	0x123
	.uleb128 0xa
	.long	.LASF19
	.byte	0x7
	.byte	0x86
	.long	0x123
	.uleb128 0xa
	.long	.LASF20
	.byte	0x7
	.byte	0x87
	.long	0x123
	.uleb128 0xa
	.long	.LASF21
	.byte	0x7
	.byte	0x87
	.long	0x123
	.uleb128 0x8
	.long	0x6d
	.long	0x165
	.uleb128 0xd
	.byte	0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x7
	.byte	0x8e
	.long	0x15a
	.uleb128 0xa
	.long	.LASF23
	.byte	0x7
	.byte	0x8f
	.long	0x80
	.uleb128 0xa
	.long	.LASF24
	.byte	0x7
	.byte	0x90
	.long	0x51
	.uleb128 0xa
	.long	.LASF25
	.byte	0x7
	.byte	0x98
	.long	0x11c
	.uleb128 0xa
	.long	.LASF26
	.byte	0x7
	.byte	0x9a
	.long	0x86
	.uleb128 0x8
	.long	0x74
	.long	0x1a7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.long	0x19c
	.uleb128 0xa
	.long	.LASF27
	.byte	0x8
	.byte	0xa
	.long	0x1a7
	.uleb128 0xa
	.long	.LASF28
	.byte	0x8
	.byte	0xb
	.long	0x1a7
	.uleb128 0x8
	.long	0x4a
	.long	0x1cd
	.uleb128 0xd
	.byte	0
	.uleb128 0xa
	.long	.LASF29
	.byte	0x8
	.byte	0x2e
	.long	0x1c2
	.uleb128 0xe
	.long	.LASF31
	.uleb128 0x3
	.long	0x1d8
	.uleb128 0xf
	.long	.LASF30
	.byte	0x8
	.value	0x1a4
	.long	0x1dd
	.uleb128 0xe
	.long	.LASF32
	.uleb128 0xa
	.long	.LASF33
	.byte	0x9
	.byte	0xfd
	.long	0x1ee
	.uleb128 0x10
	.long	0x79
	.long	0x20d
	.uleb128 0x11
	.long	0x4a
	.byte	0
	.uleb128 0xa
	.long	.LASF34
	.byte	0x9
	.byte	0xfe
	.long	0x218
	.uleb128 0x5
	.byte	0x8
	.long	0x1fe
	.uleb128 0xf
	.long	.LASF35
	.byte	0x9
	.value	0x1b8
	.long	0x4a
	.uleb128 0xf
	.long	.LASF36
	.byte	0x9
	.value	0x1b9
	.long	0x4a
	.uleb128 0xf
	.long	.LASF37
	.byte	0x9
	.value	0x1ba
	.long	0x4a
	.uleb128 0xf
	.long	.LASF38
	.byte	0x9
	.value	0x1bb
	.long	0x4a
	.uleb128 0xf
	.long	.LASF39
	.byte	0x9
	.value	0x1bc
	.long	0x4a
	.uleb128 0xf
	.long	.LASF40
	.byte	0x9
	.value	0x1bd
	.long	0x4a
	.uleb128 0xf
	.long	.LASF41
	.byte	0x9
	.value	0x1be
	.long	0x4a
	.uleb128 0xf
	.long	.LASF42
	.byte	0x9
	.value	0x1c0
	.long	0x86
	.uleb128 0xf
	.long	.LASF43
	.byte	0x9
	.value	0x1d3
	.long	0x4a
	.uleb128 0xf
	.long	.LASF44
	.byte	0x9
	.value	0x1d5
	.long	0x86
	.uleb128 0x12
	.long	.LASF53
	.byte	0x7
	.byte	0x4
	.long	0x51
	.byte	0x9
	.value	0x1d8
	.long	0x2c7
	.uleb128 0x13
	.long	.LASF45
	.byte	0
	.uleb128 0x13
	.long	.LASF46
	.byte	0x1
	.uleb128 0x13
	.long	.LASF47
	.byte	0x2
	.uleb128 0x13
	.long	.LASF48
	.byte	0x3
	.uleb128 0x13
	.long	.LASF49
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.long	.LASF50
	.byte	0x9
	.value	0x1de
	.long	0x296
	.uleb128 0xf
	.long	.LASF51
	.byte	0x9
	.value	0x1f1
	.long	0x1a7
	.uleb128 0xf
	.long	.LASF52
	.byte	0x9
	.value	0x1fc
	.long	0x1a7
	.uleb128 0x14
	.long	.LASF54
	.byte	0x7
	.byte	0x4
	.long	0x51
	.byte	0xa
	.byte	0x4a
	.long	0x39f
	.uleb128 0x13
	.long	.LASF55
	.byte	0
	.uleb128 0x13
	.long	.LASF56
	.byte	0x1
	.uleb128 0x13
	.long	.LASF57
	.byte	0x2
	.uleb128 0x13
	.long	.LASF58
	.byte	0x3
	.uleb128 0x13
	.long	.LASF59
	.byte	0x4
	.uleb128 0x13
	.long	.LASF60
	.byte	0x5
	.uleb128 0x13
	.long	.LASF61
	.byte	0x6
	.uleb128 0x13
	.long	.LASF62
	.byte	0x7
	.uleb128 0x13
	.long	.LASF63
	.byte	0x8
	.uleb128 0x13
	.long	.LASF64
	.byte	0x9
	.uleb128 0x13
	.long	.LASF65
	.byte	0xa
	.uleb128 0x13
	.long	.LASF66
	.byte	0xb
	.uleb128 0x13
	.long	.LASF67
	.byte	0xc
	.uleb128 0x13
	.long	.LASF68
	.byte	0xd
	.uleb128 0x13
	.long	.LASF69
	.byte	0xe
	.uleb128 0x13
	.long	.LASF70
	.byte	0xf
	.uleb128 0x13
	.long	.LASF71
	.byte	0x10
	.uleb128 0x13
	.long	.LASF72
	.byte	0x11
	.uleb128 0x13
	.long	.LASF73
	.byte	0x12
	.uleb128 0x13
	.long	.LASF74
	.byte	0x13
	.uleb128 0x13
	.long	.LASF75
	.byte	0x14
	.uleb128 0x13
	.long	.LASF76
	.byte	0x8
	.uleb128 0x13
	.long	.LASF77
	.byte	0xc
	.uleb128 0x13
	.long	.LASF78
	.byte	0x8
	.uleb128 0x13
	.long	.LASF79
	.byte	0x4
	.uleb128 0x13
	.long	.LASF80
	.byte	0x8
	.uleb128 0x13
	.long	.LASF81
	.byte	0xb
	.byte	0
	.uleb128 0x12
	.long	.LASF82
	.byte	0x7
	.byte	0x4
	.long	0x51
	.byte	0xb
	.value	0x113
	.long	0x3c4
	.uleb128 0x13
	.long	.LASF83
	.byte	0
	.uleb128 0x13
	.long	.LASF84
	.byte	0x1
	.uleb128 0x13
	.long	.LASF85
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.long	.LASF86
	.byte	0xc
	.byte	0x10
	.long	0x4a
	.uleb128 0xa
	.long	.LASF87
	.byte	0xc
	.byte	0x11
	.long	0x4a
	.uleb128 0x15
	.long	.LASF92
	.byte	0x1
	.byte	0xf
	.long	0x4a
	.quad	.LFB182
	.quad	.LFE182-.LFB182
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB182
	.quad	.LFE182-.LFB182
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LFB182
	.quad	.LFE182
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF90:
	.string	"/home/bigrain/Documents/code/OperationSystem/creek"
.LASF76:
	.string	"PG_checked"
.LASF26:
	.string	"initcall_debug"
.LASF82:
	.string	"zone_type"
.LASF30:
	.string	"kmsg_fops"
.LASF52:
	.string	"hex_asc_upper"
.LASF27:
	.string	"linux_banner"
.LASF38:
	.string	"panic_on_unrecovered_nmi"
.LASF11:
	.string	"early_idt_handler_array"
.LASF6:
	.string	"long long unsigned int"
.LASF49:
	.string	"SYSTEM_RESTART"
.LASF34:
	.string	"panic_blink"
.LASF47:
	.string	"SYSTEM_HALT"
.LASF75:
	.string	"__NR_PAGEFLAGS"
.LASF5:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF21:
	.string	"__security_initcall_end"
.LASF23:
	.string	"saved_command_line"
.LASF67:
	.string	"PG_private_2"
.LASF45:
	.string	"SYSTEM_BOOTING"
.LASF54:
	.string	"pageflags"
.LASF89:
	.string	"kernel/bounds.c"
.LASF14:
	.string	"alternatives_patched"
.LASF9:
	.string	"long int"
.LASF40:
	.string	"panic_on_warn"
.LASF64:
	.string	"PG_arch_1"
.LASF28:
	.string	"linux_proc_banner"
.LASF42:
	.string	"crash_kexec_post_notifiers"
.LASF55:
	.string	"PG_locked"
.LASF60:
	.string	"PG_lru"
.LASF57:
	.string	"PG_referenced"
.LASF17:
	.string	"initcall_t"
.LASF31:
	.string	"file_operations"
.LASF4:
	.string	"unsigned int"
.LASF66:
	.string	"PG_private"
.LASF43:
	.string	"root_mountflags"
.LASF7:
	.string	"long unsigned int"
.LASF32:
	.string	"atomic_notifier_head"
.LASF29:
	.string	"console_printk"
.LASF46:
	.string	"SYSTEM_RUNNING"
.LASF3:
	.string	"short unsigned int"
.LASF16:
	.string	"bool"
.LASF79:
	.string	"PG_savepinned"
.LASF19:
	.string	"__con_initcall_end"
.LASF86:
	.string	"prove_locking"
.LASF72:
	.string	"PG_reclaim"
.LASF56:
	.string	"PG_error"
.LASF88:
	.ascii	"GNU C89 7.5.0 -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-av"
	.ascii	"x -m64 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-bound"
	.ascii	"ary=3 -mskip-rax-setup -mno-red-zone -mcmodel=kernel -maccum"
	.ascii	"ulate-outgoing-args -mtune=generic -march=x86-64 -g -O2 -std"
	.ascii	"=gnu90 -fno-strict-aliasing -fno-common -fno-PIE -falign-jum"
	.ascii	"ps=1 -falign-loops=1 -funit-at-a-time -fno-async"
	.string	"hronous-unwind-tables -fno-delete-null-pointer-checks -fno-stack-protector -fomit-frame-pointer -fno-var-tracking-assignments -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fstack-check=no -fconserve-stack --param allow-store-data-races=0"
.LASF78:
	.string	"PG_pinned"
.LASF41:
	.string	"sysctl_panic_on_stackoverflow"
.LASF24:
	.string	"reset_devices"
.LASF50:
	.string	"system_state"
.LASF68:
	.string	"PG_writeback"
.LASF87:
	.string	"lock_stat"
.LASF36:
	.string	"panic_timeout"
.LASF84:
	.string	"ZONE_MOVABLE"
.LASF20:
	.string	"__security_initcall_start"
.LASF33:
	.string	"panic_notifier_list"
.LASF71:
	.string	"PG_mappedtodisk"
.LASF83:
	.string	"ZONE_NORMAL"
.LASF58:
	.string	"PG_uptodate"
.LASF10:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF53:
	.string	"system_states"
.LASF70:
	.string	"PG_swapcache"
.LASF91:
	.string	"current_stack_pointer"
.LASF2:
	.string	"short int"
.LASF62:
	.string	"PG_slab"
.LASF12:
	.string	"max_low_pfn_mapped"
.LASF85:
	.string	"__MAX_NR_ZONES"
.LASF59:
	.string	"PG_dirty"
.LASF13:
	.string	"max_pfn_mapped"
.LASF48:
	.string	"SYSTEM_POWER_OFF"
.LASF35:
	.string	"oops_in_progress"
.LASF8:
	.string	"char"
.LASF69:
	.string	"PG_head"
.LASF81:
	.string	"PG_slob_free"
.LASF37:
	.string	"panic_on_oops"
.LASF22:
	.string	"boot_command_line"
.LASF63:
	.string	"PG_owner_priv_1"
.LASF44:
	.string	"early_boot_irqs_disabled"
.LASF39:
	.string	"panic_on_io_nmi"
.LASF65:
	.string	"PG_reserved"
.LASF15:
	.string	"ideal_nops"
.LASF61:
	.string	"PG_active"
.LASF51:
	.string	"hex_asc"
.LASF77:
	.string	"PG_fscache"
.LASF80:
	.string	"PG_foreign"
.LASF18:
	.string	"__con_initcall_start"
.LASF25:
	.string	"late_time_init"
.LASF73:
	.string	"PG_swapbacked"
.LASF92:
	.string	"main"
.LASF74:
	.string	"PG_unevictable"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
