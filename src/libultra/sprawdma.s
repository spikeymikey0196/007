# Goldeneye 007 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"


.section .text, "ax" 
.section .text
glabel __osSpRawStartDma
/* 019B30 70018F30 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 019B34 70018F34 AFBF0014 */  sw    $ra, 0x14($sp)
/* 019B38 70018F38 AFA40018 */  sw    $a0, 0x18($sp)
/* 019B3C 70018F3C AFA5001C */  sw    $a1, 0x1c($sp)
/* 019B40 70018F40 AFA60020 */  sw    $a2, 0x20($sp)
/* 019B44 70018F44 0C0063F0 */  jal   __osSpDeviceBusy
/* 019B48 70018F48 AFA70024 */   sw    $a3, 0x24($sp)
/* 019B4C 70018F4C 10400003 */  beqz  $v0, .L70018F5C
/* 019B50 70018F50 00000000 */   nop   
/* 019B54 70018F54 10000015 */  b     .L70018FAC
/* 019B58 70018F58 2402FFFF */   li    $v0, -1
.L70018F5C:
/* 019B5C 70018F5C 8FAE001C */  lw    $t6, 0x1c($sp)
/* 019B60 70018F60 3C0FA404 */  lui   $t7, 0xa404
/* 019B64 70018F64 ADEE0000 */  sw    $t6, ($t7)
/* 019B68 70018F68 0C003A2C */  jal   osVirtualToPhysical
/* 019B6C 70018F6C 8FA40020 */   lw    $a0, 0x20($sp)
/* 019B70 70018F70 3C18A404 */  lui   $t8, %hi(SP_DRAM_ADDR_REG) # $t8, 0xa404
/* 019B74 70018F74 AF020004 */  sw    $v0, %lo(SP_DRAM_ADDR_REG)($t8)
/* 019B78 70018F78 8FB90018 */  lw    $t9, 0x18($sp)
/* 019B7C 70018F7C 17200006 */  bnez  $t9, .L70018F98
/* 019B80 70018F80 00000000 */   nop   
/* 019B84 70018F84 8FA80024 */  lw    $t0, 0x24($sp)
/* 019B88 70018F88 3C0AA404 */  lui   $t2, %hi(SP_WR_LEN_REG) # $t2, 0xa404
/* 019B8C 70018F8C 2509FFFF */  addiu $t1, $t0, -1
/* 019B90 70018F90 10000005 */  b     .L70018FA8
/* 019B94 70018F94 AD49000C */   sw    $t1, %lo(SP_WR_LEN_REG)($t2)
.L70018F98:
/* 019B98 70018F98 8FAB0024 */  lw    $t3, 0x24($sp)
/* 019B9C 70018F9C 3C0DA404 */  lui   $t5, %hi(SP_RD_LEN_REG) # $t5, 0xa404
/* 019BA0 70018FA0 256CFFFF */  addiu $t4, $t3, -1
/* 019BA4 70018FA4 ADAC0008 */  sw    $t4, %lo(SP_RD_LEN_REG)($t5)
.L70018FA8:
/* 019BA8 70018FA8 00001025 */  move  $v0, $zero
.L70018FAC:
/* 019BAC 70018FAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 019BB0 70018FB0 27BD0018 */  addiu $sp, $sp, 0x18
/* 019BB4 70018FB4 03E00008 */  jr    $ra
/* 019BB8 70018FB8 00000000 */   nop   
