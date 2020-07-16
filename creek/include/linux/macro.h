/*
 * @Author: tianrun
 * @Date: 2020-07-05 21:42:04
 * @Last Modified time: 2020-07-05 21:42:04
 */
#ifndef LINUX_MACRO_H_
#define LINUX_MACRO_H_

#include <asm/page_64_types.h>
#include <asm/page_types.h>
#include <asm/segment.h>
#include <asm/desc_defs.h>
#include <linux/percpu-defs.h>
#include <asm-generic/percpu.h>

#ifdef __ASSEMBLY__
#define _AC(X,Y)	X
#define _AT(T,X)	X
#else
#define __AC(X,Y)	(X##Y)
#define _AC(X,Y)	__AC(X,Y)
#define _AT(T,X)	((T)(X))
#endif

/*
 * Allow for constants defined here to be used from assembly code
 * by prepending the UL suffix only with actual C code compilation.
 */
#define UL(x) _AC(x, UL)

#ifdef CONFIG_X86_32
# ifdef CONFIG_X86_PAE
#  define SECTION_SIZE_BITS	29
#  define MAX_PHYSADDR_BITS	36
#  define MAX_PHYSMEM_BITS	36
# else
#  define SECTION_SIZE_BITS	26
#  define MAX_PHYSADDR_BITS	32
#  define MAX_PHYSMEM_BITS	32
# endif
#else /* CONFIG_X86_32 */
# define SECTION_SIZE_BITS	27 /* matt - 128 is convenient right now */
# define MAX_PHYSADDR_BITS	44
# define MAX_PHYSMEM_BITS	46
#endif

#define __init __section(.init.text) __cold notrace
#define __section(S) __attribute__((__section__(#S)))
#define __head __section(.head.text)
#define __HEAD		.section	".head.text","ax"
#define PMD_SHIFT	21
#define PMD_PAGE_SIZE		(_AC(1, UL) << PMD_SHIFT)
#define PMD_PAGE_MASK		(~(PMD_PAGE_SIZE-1))
#define MAXMEM		 _AC(__AC(1, UL) << MAX_PHYSMEM_BITS, UL)

/*
 * PGDIR_SHIFT determines what a top-level page table entry can map
 */
#define PGDIR_SHIFT	39
#define PTRS_PER_PGD	512

/*
 * the pgd page can be thought of an array like this: pgd_t[PTRS_PER_PGD]
 *
 * this macro returns the index of the entry in the pgd page which would
 * control the given virtual address
 */
#define pgd_index(address) (((address) >> PGDIR_SHIFT) & (PTRS_PER_PGD - 1))

#define ENTRY(name)				\
	.globl name;				\
	name:

#define ENDPROC(name)

// extern unsigned long initial_code;

#define GDT_ENTRY_KERNEL_CS		2
#define __KERNEL_CS			(GDT_ENTRY_KERNEL_CS*8)

#define GLOBAL(name)	\
	.globl name;	\
	name:

#endif  // LINUX_MACRO_H_
