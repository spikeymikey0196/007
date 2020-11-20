# Goldeneye 007 (U) disassembly and split file
# generated by n64split v0.4a - N64 ROM splitter

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"


.section .text, "ax" 
.section .text
glabel osContStartReadData
/* 015970 70014D70 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 015974 70014D74 AFBF0014 */  sw    $ra, 0x14($sp)
/* 015978 70014D78 AFA40020 */  sw    $a0, 0x20($sp)
/* 01597C 70014D7C 0C005798 */  jal   __osSiGetAccess
/* 015980 70014D80 AFA0001C */   sw    $zero, 0x1c($sp)
/* 015984 70014D84 3C0E8006 */  lui   $t6, %hi(__osContLastCmd) 
/* 015988 70014D88 91CE7CE0 */  lbu   $t6, %lo(__osContLastCmd)($t6)
/* 01598C 70014D8C 24010001 */  li    $at, 1
/* 015990 70014D90 11C1000C */  beq   $t6, $at, .L70014DC4
/* 015994 70014D94 00000000 */   nop   
/* 015998 70014D98 0C0053B7 */  jal   osContReadData_sub
/* 01599C 70014D9C 00000000 */   nop   
/* 0159A0 70014DA0 3C058006 */  lui   $a1, %hi(__osContPifRam)
/* 0159A4 70014DA4 24A57CA0 */  addiu $a1, %lo(__osContPifRam) # addiu $a1, $a1, 0x7ca0
/* 0159A8 70014DA8 0C0057B4 */  jal   __osSiRawStartDma
/* 0159AC 70014DAC 24040001 */   li    $a0, 1
/* 0159B0 70014DB0 AFA2001C */  sw    $v0, 0x1c($sp)
/* 0159B4 70014DB4 8FA40020 */  lw    $a0, 0x20($sp)
/* 0159B8 70014DB8 00002825 */  move  $a1, $zero
/* 0159BC 70014DBC 0C003774 */  jal   osRecvMesg
/* 0159C0 70014DC0 24060001 */   li    $a2, 1
.L70014DC4:
/* 0159C4 70014DC4 AFA00018 */  sw    $zero, 0x18($sp)
.L70014DC8:
/* 0159C8 70014DC8 8FB80018 */  lw    $t8, 0x18($sp)
/* 0159CC 70014DCC 8FA80018 */  lw    $t0, 0x18($sp)
/* 0159D0 70014DD0 3C018006 */  lui   $at, %hi(__osContPifRam)
/* 0159D4 70014DD4 0018C880 */  sll   $t9, $t8, 2
/* 0159D8 70014DD8 00390821 */  addu  $at, $at, $t9
/* 0159DC 70014DDC 240F00FF */  li    $t7, 255
/* 0159E0 70014DE0 AC2F7CA0 */  sw    $t7, %lo(__osContPifRam)($at)
/* 0159E4 70014DE4 25090001 */  addiu $t1, $t0, 1
/* 0159E8 70014DE8 29210010 */  slti  $at, $t1, 0x10
/* 0159EC 70014DEC 1420FFF6 */  bnez  $at, .L70014DC8
/* 0159F0 70014DF0 AFA90018 */   sw    $t1, 0x18($sp)
/* 0159F4 70014DF4 3C018006 */  lui   $at, %hi(__osContPifRam+0x3c)
/* 0159F8 70014DF8 3C058006 */  lui   $a1, %hi(__osContPifRam)
/* 0159FC 70014DFC AC207CDC */  sw    $zero, %lo(__osContPifRam+0x3c)($at)
/* 015A00 70014E00 24A57CA0 */  addiu $a1, %lo(__osContPifRam) # addiu $a1, $a1, 0x7ca0
/* 015A04 70014E04 0C0057B4 */  jal   __osSiRawStartDma
/* 015A08 70014E08 00002025 */   move  $a0, $zero
/* 015A0C 70014E0C 240A0001 */  li    $t2, 1
/* 015A10 70014E10 3C018006 */  lui   $at, %hi(__osContLastCmd)
/* 015A14 70014E14 AFA2001C */  sw    $v0, 0x1c($sp)
/* 015A18 70014E18 0C0057A9 */  jal   __osSiRelAccess
/* 015A1C 70014E1C A02A7CE0 */   sb    $t2, %lo(__osContLastCmd)($at)
/* 015A20 70014E20 8FBF0014 */  lw    $ra, 0x14($sp)
/* 015A24 70014E24 8FA2001C */  lw    $v0, 0x1c($sp)
/* 015A28 70014E28 27BD0020 */  addiu $sp, $sp, 0x20
/* 015A2C 70014E2C 03E00008 */  jr    $ra
/* 015A30 70014E30 00000000 */   nop   

glabel osContGetReadData
/* 015A34 70014E34 3C0F8006 */  lui   $t7, %hi(__osMaxControllers) 
/* 015A38 70014E38 91EF7CE1 */  lbu   $t7, %lo(__osMaxControllers)($t7)
/* 015A3C 70014E3C 3C0E8006 */  lui   $t6, %hi(__osContPifRam) 
/* 015A40 70014E40 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 015A44 70014E44 25CE7CA0 */  addiu $t6, %lo(__osContPifRam) # addiu $t6, $t6, 0x7ca0
/* 015A48 70014E48 AFAE000C */  sw    $t6, 0xc($sp)
/* 015A4C 70014E4C 19E00021 */  blez  $t7, .L70014ED4
/* 015A50 70014E50 AFA00000 */   sw    $zero, ($sp)
.L70014E54:
/* 015A54 70014E54 8FB9000C */  lw    $t9, 0xc($sp)
/* 015A58 70014E58 27B80004 */  addiu $t8, $sp, 4
/* 015A5C 70014E5C 8B210000 */  lwl   $at, ($t9)
/* 015A60 70014E60 9B210003 */  lwr   $at, 3($t9)
/* 015A64 70014E64 AF010000 */  sw    $at, ($t8)
/* 015A68 70014E68 8B290004 */  lwl   $t1, 4($t9)
/* 015A6C 70014E6C 9B290007 */  lwr   $t1, 7($t9)
/* 015A70 70014E70 AF090004 */  sw    $t1, 4($t8)
/* 015A74 70014E74 93AA0006 */  lbu   $t2, 6($sp)
/* 015A78 70014E78 314B00C0 */  andi  $t3, $t2, 0xc0
/* 015A7C 70014E7C 000B6103 */  sra   $t4, $t3, 4
/* 015A80 70014E80 A08C0004 */  sb    $t4, 4($a0)
/* 015A84 70014E84 908D0004 */  lbu   $t5, 4($a0)
/* 015A88 70014E88 15A00007 */  bnez  $t5, .L70014EA8
/* 015A8C 70014E8C 00000000 */   nop   
/* 015A90 70014E90 97AE0008 */  lhu   $t6, 8($sp)
/* 015A94 70014E94 A48E0000 */  sh    $t6, ($a0)
/* 015A98 70014E98 83AF000A */  lb    $t7, 0xa($sp)
/* 015A9C 70014E9C A08F0002 */  sb    $t7, 2($a0)
/* 015AA0 70014EA0 83A8000B */  lb    $t0, 0xb($sp)
/* 015AA4 70014EA4 A0880003 */  sb    $t0, 3($a0)
.L70014EA8:
/* 015AA8 70014EA8 8FB80000 */  lw    $t8, ($sp)
/* 015AAC 70014EAC 3C0B8006 */  lui   $t3, %hi(__osMaxControllers) 
/* 015AB0 70014EB0 916B7CE1 */  lbu   $t3, %lo(__osMaxControllers)($t3)
/* 015AB4 70014EB4 8FA9000C */  lw    $t1, 0xc($sp)
/* 015AB8 70014EB8 27190001 */  addiu $t9, $t8, 1
/* 015ABC 70014EBC 032B082A */  slt   $at, $t9, $t3
/* 015AC0 70014EC0 252A0008 */  addiu $t2, $t1, 8
/* 015AC4 70014EC4 AFAA000C */  sw    $t2, 0xc($sp)
/* 015AC8 70014EC8 AFB90000 */  sw    $t9, ($sp)
/* 015ACC 70014ECC 1420FFE1 */  bnez  $at, .L70014E54
/* 015AD0 70014ED0 24840006 */   addiu $a0, $a0, 6
.L70014ED4:
/* 015AD4 70014ED4 03E00008 */  jr    $ra
/* 015AD8 70014ED8 27BD0010 */   addiu $sp, $sp, 0x10

glabel osContReadData_sub
/* 015ADC 70014EDC 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 015AE0 70014EE0 3C0E8006 */  lui   $t6, %hi(__osContPifRam) 
/* 015AE4 70014EE4 25CE7CA0 */  addiu $t6, %lo(__osContPifRam) # addiu $t6, $t6, 0x7ca0
/* 015AE8 70014EE8 AFAE000C */  sw    $t6, 0xc($sp)
/* 015AEC 70014EEC AFA00000 */  sw    $zero, ($sp)
.L70014EF0:
/* 015AF0 70014EF0 8FAF0000 */  lw    $t7, ($sp)
/* 015AF4 70014EF4 8FB90000 */  lw    $t9, ($sp)
/* 015AF8 70014EF8 3C018006 */  lui   $at, %hi(__osContPifRam)
/* 015AFC 70014EFC 000FC080 */  sll   $t8, $t7, 2
/* 015B00 70014F00 00380821 */  addu  $at, $at, $t8
/* 015B04 70014F04 AC207CA0 */  sw    $zero, %lo(__osContPifRam)($at)
/* 015B08 70014F08 27280001 */  addiu $t0, $t9, 1
/* 015B0C 70014F0C 29010010 */  slti  $at, $t0, 0x10
/* 015B10 70014F10 1420FFF7 */  bnez  $at, .L70014EF0
/* 015B14 70014F14 AFA80000 */   sw    $t0, ($sp)
/* 015B18 70014F18 3C198006 */  lui   $t9, %hi(__osMaxControllers) 
/* 015B1C 70014F1C 93397CE1 */  lbu   $t9, %lo(__osMaxControllers)($t9)
/* 015B20 70014F20 24090001 */  li    $t1, 1
/* 015B24 70014F24 3C018006 */  lui   $at, %hi(__osContPifRam+0x3c)
/* 015B28 70014F28 240A00FF */  li    $t2, 255
/* 015B2C 70014F2C 240B0001 */  li    $t3, 1
/* 015B30 70014F30 240C0004 */  li    $t4, 4
/* 015B34 70014F34 240D0001 */  li    $t5, 1
/* 015B38 70014F38 340EFFFF */  li    $t6, 65535
/* 015B3C 70014F3C 240FFFFF */  li    $t7, -1
/* 015B40 70014F40 2418FFFF */  li    $t8, -1
/* 015B44 70014F44 AC297CDC */  sw    $t1, %lo(__osContPifRam+0x3c)($at)
/* 015B48 70014F48 A3AA0004 */  sb    $t2, 4($sp)
/* 015B4C 70014F4C A3AB0005 */  sb    $t3, 5($sp)
/* 015B50 70014F50 A3AC0006 */  sb    $t4, 6($sp)
/* 015B54 70014F54 A3AD0007 */  sb    $t5, 7($sp)
/* 015B58 70014F58 A7AE0008 */  sh    $t6, 8($sp)
/* 015B5C 70014F5C A3AF000A */  sb    $t7, 0xa($sp)
/* 015B60 70014F60 A3B8000B */  sb    $t8, 0xb($sp)
/* 015B64 70014F64 1B200013 */  blez  $t9, .L70014FB4
/* 015B68 70014F68 AFA00000 */   sw    $zero, ($sp)
.L70014F6C:
/* 015B6C 70014F6C 27A90004 */  addiu $t1, $sp, 4
/* 015B70 70014F70 8D210000 */  lw    $at, ($t1)
/* 015B74 70014F74 8FA8000C */  lw    $t0, 0xc($sp)
/* 015B78 70014F78 3C188006 */  lui   $t8, %hi(__osMaxControllers) 
/* 015B7C 70014F7C A9010000 */  swl   $at, ($t0)
/* 015B80 70014F80 B9010003 */  swr   $at, 3($t0)
/* 015B84 70014F84 8D2B0004 */  lw    $t3, 4($t1)
/* 015B88 70014F88 A90B0004 */  swl   $t3, 4($t0)
/* 015B8C 70014F8C B90B0007 */  swr   $t3, 7($t0)
/* 015B90 70014F90 8FAE0000 */  lw    $t6, ($sp)
/* 015B94 70014F94 93187CE1 */  lbu   $t8, %lo(__osMaxControllers)($t8)
/* 015B98 70014F98 8FAC000C */  lw    $t4, 0xc($sp)
/* 015B9C 70014F9C 25CF0001 */  addiu $t7, $t6, 1
/* 015BA0 70014FA0 01F8082A */  slt   $at, $t7, $t8
/* 015BA4 70014FA4 258D0008 */  addiu $t5, $t4, 8
/* 015BA8 70014FA8 AFAF0000 */  sw    $t7, ($sp)
/* 015BAC 70014FAC 1420FFEF */  bnez  $at, .L70014F6C
/* 015BB0 70014FB0 AFAD000C */   sw    $t5, 0xc($sp)
.L70014FB4:
/* 015BB4 70014FB4 8FAA000C */  lw    $t2, 0xc($sp)
/* 015BB8 70014FB8 241900FE */  li    $t9, 254
/* 015BBC 70014FBC 27BD0010 */  addiu $sp, $sp, 0x10
/* 015BC0 70014FC0 03E00008 */  jr    $ra
/* 015BC4 70014FC4 A1590000 */   sb    $t9, ($t2)



