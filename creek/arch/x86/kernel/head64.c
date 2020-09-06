
#include <linux/init.h>
#include <linux/bug.h>
#include <asm/io.h>
#include <asm/pgtable_types.h>
#include <linux/linkage.h>
// #include <linux/macro.h>
#include <linux/kernel.h>
#include <asm/setup.h>
#include <asm/bootparam_utils.h>

#include <linux/string.h>

// #include <linux/jiffies.h>
// SPDX-License-Identifier: GPL-2.0
#define __va(x) ((void *)((unsigned long)(x) + PAGE_OFFSET))
#define __head	__section(.head.text)
char __initdata boot_command_line[COMMAND_LINE_SIZE];
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
extern struct gdt_page_test gdt_page = {};
extern union irq_stack_union_test irq_stack_union = {};
extern union thread_union init_thread_union = {};

pmdval_t early_pmd_flags = __PAGE_KERNEL_LARGE & ~(_PAGE_GLOBAL | _PAGE_NX);
/* Code in __startup_64() can be relocated during execution, but the compiler
 * doesn't have to generate PC-relative relocations when accessing globals from
 * that function. Clang actually does not generate them, which leads to
 * boot-time crashes. To work around this problem, every global pointer must
 * be adjusted using fixup_pointer().
 */

struct gdt_ptr {
  u16 len;
  u32 ptr;
} __attribute__((packed));

/*
 * Set up the IDT
 */
static void setup_idt(void) {
  // while(1){}
  static const struct gdt_ptr null_idt = {0, 0};
  if (sizeof(struct gdt_ptr) != 6) {
    // while(1){}
  }
  asm volatile("lidt %0" : : "m"(null_idt));
  //   while (1) {
  //   }
  // int i =1;
  // while(i<1000000000000){
  // 	if (!i%100000)puts("!");
  // 	i++;
  // }
}

unsigned long __head __startup_64(unsigned long physaddr, void *bp) {
  return 0;
}

unsigned long __startup_secondary_64(void) {
  /*
   * Return the SME encryption mask (if SME is active) to be used as a
   * modifier for the initial pgdir entry programmed into CR3.
   */
  return 0;
}

void __init x86_64_start_reservations(char *real_mode_data) {
  /* version is always not zero if it is copied */
}
static unsigned long get_cmd_line_ptr(void)
{
	unsigned long cmd_line_ptr = boot_params.hdr.cmd_line_ptr;

	cmd_line_ptr |= (u64)boot_params.ext_cmd_line_ptr << 32;

	return cmd_line_ptr;
}
static void __init copy_bootdata(char *real_mode_data)
{
	char * command_line;
	unsigned long cmd_line_ptr;

	memcpy(&boot_params, real_mode_data, sizeof boot_params);
	sanitize_boot_params(&boot_params);
	cmd_line_ptr = get_cmd_line_ptr();
	if (cmd_line_ptr) {
		command_line = __va(cmd_line_ptr);
		memcpy(boot_command_line, command_line, COMMAND_LINE_SIZE);
	}
}

#define VGABASE (__ISA_IO_base + 0xb8000)
static int max_ypos = 25, max_xpos = 80;
static int current_ypos = 25, current_xpos;
static int __init setup_early_printk_vga(void) {
  max_xpos = boot_params.screen_info.orig_video_cols;
  max_ypos = boot_params.screen_info.orig_video_lines;
  current_ypos = boot_params.screen_info.orig_y;
  return 0;
}
static void early_vga_write(const char *str, unsigned n) {
  char c;
  int i, k, j;

  while ((c = *str++) != '\0' && n-- > 0) {
    if (current_ypos >= max_ypos) {
      /* scroll 1 line up */
      for (k = 1, j = 0; k < max_ypos; k++, j++) {
        for (i = 0; i < max_xpos; i++) {
          writew(readw(VGABASE + 2 * (max_xpos * k + i)),
                 VGABASE + 2 * (max_xpos * j + i));
        }
      }
      for (i = 0; i < max_xpos; i++)
        writew(0x720, VGABASE + 2 * (max_xpos * j + i));
      current_ypos = max_ypos - 1;
    }
#ifdef CONFIG_KGDB_KDB
    if (c == '\b') {
      if (current_xpos > 0) current_xpos--;
    } else if (c == '\r') {
      current_xpos = 0;
    } else
#endif
        if (c == '\n') {
      current_xpos = 0;
      current_ypos++;
    } else if (c != '\r') {
      writew(((0x7 << 8) | (unsigned short)c),
             VGABASE + 2 * (max_xpos * current_ypos + current_xpos++));
      if (current_xpos >= max_xpos) {
        current_xpos = 0;
        current_ypos++;
      }
    }
  }
}

asmlinkage __visible void __init x86_64_start_kernel(char *real_mode_data) {
  /*
   * Build-time sanity checks on the kernel image and module
   * area mappings. (these are purely build-time and produce no code)
   */
  //   while(1){}
  setup_idt();
  copy_bootdata(__va(real_mode_data));
  early_vga_write("wo cao\n", 7);
  while (1) {
  }
}