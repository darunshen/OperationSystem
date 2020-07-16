
#include <linux/macro.h>
#include <asm/pgtable_types.h>
#include <linux/linkage.h>
// #include <linux/jiffies.h>
// SPDX-License-Identifier: GPL-2.0

extern int jiffies = 0;
struct gdt_page_test {
  int test[5];
};
union irq_stack_union_test {
	char irq_stack[IRQ_STACK_SIZE];
	/*
	 * GCC hardcodes the stack canary as %gs:40.  Since the
	 * irq_stack is the object at %gs:0, we reserve the bottom
	 * 48 bytes of the irq stack for the canary.
	 */
	struct {
		char gs_base[40];
		unsigned long stack_canary;
	};
};
union thread_union {
	int test[5];
};
extern struct gdt_page_test gdt_page={};
extern union irq_stack_union_test irq_stack_union={};
extern union thread_union init_thread_union={};

pmdval_t early_pmd_flags = __PAGE_KERNEL_LARGE & ~(_PAGE_GLOBAL | _PAGE_NX);
/* Code in __startup_64() can be relocated during execution, but the compiler
 * doesn't have to generate PC-relative relocations when accessing globals from
 * that function. Clang actually does not generate them, which leads to
 * boot-time crashes. To work around this problem, every global pointer must
 * be adjusted using fixup_pointer().
 */
unsigned long __head __startup_64(unsigned long physaddr,
                                  void *bp) {
  return 0;
}

unsigned long __startup_secondary_64(void) {
  /*
   * Return the SME encryption mask (if SME is active) to be used as a
   * modifier for the initial pgdir entry programmed into CR3.
   */
  return 0;
}

asmlinkage __visible void __init x86_64_start_kernel(char *real_mode_data) {
  /*
   * Build-time sanity checks on the kernel image and module
   * area mappings. (these are purely build-time and produce no code)
   */
}

void __init x86_64_start_reservations(char *real_mode_data) {
  /* version is always not zero if it is copied */
}
