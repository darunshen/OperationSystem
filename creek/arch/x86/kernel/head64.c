
#include <linux/macro.h>
// SPDX-License-Identifier: GPL-2.0


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
