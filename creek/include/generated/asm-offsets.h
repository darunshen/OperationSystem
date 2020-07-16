#ifndef __ASM_OFFSETS_H__
#define __ASM_OFFSETS_H__

#define BP_scratch 484 /* offsetof(struct boot_params, scratch) */
#define BP_loadflags 529 /* offsetof(struct boot_params, hdr.loadflags) */
#define BP_hardware_subarch 572 /* offsetof(struct boot_params, hdr.hardware_subarch) */
#define BP_version 518 /* offsetof(struct boot_params, hdr.version) */
#define BP_kernel_alignment 560 /* offsetof(struct boot_params, hdr.kernel_alignment) */
#define BP_pref_address 600 /* offsetof(struct boot_params, hdr.pref_address) */
#define BP_code32_start 532 /* offsetof(struct boot_params, hdr.code32_start) */

#endif