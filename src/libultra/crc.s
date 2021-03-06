# Goldeneye 007 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"


.section .text, "ax" 
.section .text
glabel __osContAddressCrc
/* 016B80 70015F80 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 016B84 70015F84 3084FFFF */  andi  $a0, $a0, 0xffff
/* 016B88 70015F88 A3A0000F */  sb    $zero, 0xf($sp)
/* 016B8C 70015F8C AFA00008 */  sw    $zero, 8($sp)
.L70015F90:
/* 016B90 70015F90 93AE000F */  lbu   $t6, 0xf($sp)
/* 016B94 70015F94 31CF0010 */  andi  $t7, $t6, 0x10
/* 016B98 70015F98 11E00004 */  beqz  $t7, .L70015FAC
/* 016B9C 70015F9C 00000000 */   nop   
/* 016BA0 70015FA0 24180015 */  li    $t8, 21
/* 016BA4 70015FA4 10000002 */  b     .L70015FB0
/* 016BA8 70015FA8 A3B8000E */   sb    $t8, 0xe($sp)
.L70015FAC:
/* 016BAC 70015FAC A3A0000E */  sb    $zero, 0xe($sp)
.L70015FB0:
/* 016BB0 70015FB0 93B9000F */  lbu   $t9, 0xf($sp)
/* 016BB4 70015FB4 30890400 */  andi  $t1, $a0, 0x400
/* 016BB8 70015FB8 00194040 */  sll   $t0, $t9, 1
/* 016BBC 70015FBC 11200003 */  beqz  $t1, .L70015FCC
/* 016BC0 70015FC0 A3A8000F */   sb    $t0, 0xf($sp)
/* 016BC4 70015FC4 10000002 */  b     .L70015FD0
/* 016BC8 70015FC8 24050001 */   li    $a1, 1
.L70015FCC:
/* 016BCC 70015FCC 00002825 */  move  $a1, $zero
.L70015FD0:
/* 016BD0 70015FD0 93AA000F */  lbu   $t2, 0xf($sp)
/* 016BD4 70015FD4 8FA80008 */  lw    $t0, 8($sp)
/* 016BD8 70015FD8 93AF000E */  lbu   $t7, 0xe($sp)
/* 016BDC 70015FDC 30AB00FF */  andi  $t3, $a1, 0xff
/* 016BE0 70015FE0 00046840 */  sll   $t5, $a0, 1
/* 016BE4 70015FE4 014B6025 */  or    $t4, $t2, $t3
/* 016BE8 70015FE8 01A02025 */  move  $a0, $t5
/* 016BEC 70015FEC 319800FF */  andi  $t8, $t4, 0xff
/* 016BF0 70015FF0 25090001 */  addiu $t1, $t0, 1
/* 016BF4 70015FF4 29210010 */  slti  $at, $t1, 0x10
/* 016BF8 70015FF8 A3AC000F */  sb    $t4, 0xf($sp)
/* 016BFC 70015FFC 308EFFFF */  andi  $t6, $a0, 0xffff
/* 016C00 70016000 030FC826 */  xor   $t9, $t8, $t7
/* 016C04 70016004 AFA90008 */  sw    $t1, 8($sp)
/* 016C08 70016008 01C02025 */  move  $a0, $t6
/* 016C0C 7001600C 1420FFE0 */  bnez  $at, .L70015F90
/* 016C10 70016010 A3B9000F */   sb    $t9, 0xf($sp)
/* 016C14 70016014 93A2000F */  lbu   $v0, 0xf($sp)
/* 016C18 70016018 27BD0010 */  addiu $sp, $sp, 0x10
/* 016C1C 7001601C 304A001F */  andi  $t2, $v0, 0x1f
/* 016C20 70016020 01401025 */  move  $v0, $t2
/* 016C24 70016024 304B00FF */  andi  $t3, $v0, 0xff
/* 016C28 70016028 03E00008 */  jr    $ra
/* 016C2C 7001602C 01601025 */   move  $v0, $t3

glabel __osContDataCrc
/* 016C30 70016030 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 016C34 70016034 A3A0000F */  sb    $zero, 0xf($sp)
/* 016C38 70016038 AFA00008 */  sw    $zero, 8($sp)
.L7001603C:
/* 016C3C 7001603C 240E0007 */  li    $t6, 7
/* 016C40 70016040 AFAE0004 */  sw    $t6, 4($sp)
.L70016044:
/* 016C44 70016044 93AF000F */  lbu   $t7, 0xf($sp)
/* 016C48 70016048 31F80080 */  andi  $t8, $t7, 0x80
/* 016C4C 7001604C 13000004 */  beqz  $t8, .L70016060
/* 016C50 70016050 00000000 */   nop   
/* 016C54 70016054 24190085 */  li    $t9, 133
/* 016C58 70016058 10000002 */  b     .L70016064
/* 016C5C 7001605C A3B9000E */   sb    $t9, 0xe($sp)
.L70016060:
/* 016C60 70016060 A3A0000E */  sb    $zero, 0xe($sp)
.L70016064:
/* 016C64 70016064 93A8000F */  lbu   $t0, 0xf($sp)
/* 016C68 70016068 8FAA0008 */  lw    $t2, 8($sp)
/* 016C6C 7001606C 24010020 */  li    $at, 32
/* 016C70 70016070 00084840 */  sll   $t1, $t0, 1
/* 016C74 70016074 15410004 */  bne   $t2, $at, .L70016088
/* 016C78 70016078 A3A9000F */   sb    $t1, 0xf($sp)
/* 016C7C 7001607C 312B00FF */  andi  $t3, $t1, 0xff
/* 016C80 70016080 1000000E */  b     .L700160BC
/* 016C84 70016084 A3AB000F */   sb    $t3, 0xf($sp)
.L70016088:
/* 016C88 70016088 8FAD0004 */  lw    $t5, 4($sp)
/* 016C8C 7001608C 908C0000 */  lbu   $t4, ($a0)
/* 016C90 70016090 240E0001 */  li    $t6, 1
/* 016C94 70016094 01AE7804 */  sllv  $t7, $t6, $t5
/* 016C98 70016098 018FC024 */  and   $t8, $t4, $t7
/* 016C9C 7001609C 13000003 */  beqz  $t8, .L700160AC
/* 016CA0 700160A0 00000000 */   nop   
/* 016CA4 700160A4 10000002 */  b     .L700160B0
/* 016CA8 700160A8 24050001 */   li    $a1, 1
.L700160AC:
/* 016CAC 700160AC 00002825 */  move  $a1, $zero
.L700160B0:
/* 016CB0 700160B0 93B9000F */  lbu   $t9, 0xf($sp)
/* 016CB4 700160B4 03254025 */  or    $t0, $t9, $a1
/* 016CB8 700160B8 A3A8000F */  sb    $t0, 0xf($sp)
.L700160BC:
/* 016CBC 700160BC 8FAE0004 */  lw    $t6, 4($sp)
/* 016CC0 700160C0 93AA000F */  lbu   $t2, 0xf($sp)
/* 016CC4 700160C4 93A9000E */  lbu   $t1, 0xe($sp)
/* 016CC8 700160C8 25CDFFFF */  addiu $t5, $t6, -1
/* 016CCC 700160CC AFAD0004 */  sw    $t5, 4($sp)
/* 016CD0 700160D0 01495826 */  xor   $t3, $t2, $t1
/* 016CD4 700160D4 05A1FFDB */  bgez  $t5, .L70016044
/* 016CD8 700160D8 A3AB000F */   sb    $t3, 0xf($sp)
/* 016CDC 700160DC 8FAC0008 */  lw    $t4, 8($sp)
/* 016CE0 700160E0 24840001 */  addiu $a0, $a0, 1
/* 016CE4 700160E4 258F0001 */  addiu $t7, $t4, 1
/* 016CE8 700160E8 29E10021 */  slti  $at, $t7, 0x21
/* 016CEC 700160EC 1420FFD3 */  bnez  $at, .L7001603C
/* 016CF0 700160F0 AFAF0008 */   sw    $t7, 8($sp)
/* 016CF4 700160F4 93A2000F */  lbu   $v0, 0xf($sp)
/* 016CF8 700160F8 03E00008 */  jr    $ra
/* 016CFC 700160FC 27BD0010 */   addiu $sp, $sp, 0x10
