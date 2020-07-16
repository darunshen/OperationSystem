# todo

1. arch/x86/kernel/vmlinux.lds.S 修改了：
   1. `jiffies_64 = jiffies;`
   2. `INIT_PER_CPU(gdt_page);`
   3. `INIT_PER_CPU(irq_stack_union);`
