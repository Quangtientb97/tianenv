#include "common.h"
#include "lx61102.h"
#include "system_lx61102.h"
#include "tprintf.h"

#define BIT0_SET  0x00000001
#define BIT1_SET  0x00000002
#define BIT2_SET  0x00000004
#define BIT3_SET  0x00000008
#define BIT4_SET  0x00000010
#define BIT5_SET  0x00000020
#define BIT6_SET  0x00000040
#define BIT7_SET  0x00000080
#define BIT8_SET  0x00000100
#define BIT9_SET  0x00000200
#define BIT10_SET 0x00000400
#define BIT11_SET 0x00000800
#define BIT12_SET 0x00001000
#define BIT13_SET 0x00002000
#define BIT14_SET 0x00004000
#define BIT15_SET 0x00008000
#define BIT16_SET 0x00010000
#define BIT17_SET 0x00020000
#define BIT18_SET 0x00040000
#define BIT19_SET 0x00080000
#define BIT20_SET 0x00100000
#define BIT21_SET 0x00200000
#define BIT22_SET 0x00400000
#define BIT23_SET 0x00800000
#define BIT24_SET 0x01000000
#define BIT25_SET 0x02000000
#define BIT26_SET 0x04000000
#define BIT27_SET 0x08000000
#define BIT28_SET 0x10000000
#define BIT29_SET 0x20000000
#define BIT30_SET 0x40000000
#define BIT31_SET 0x80000000

#define BIT0_CLR  0xfffffffe
#define BIT1_CLR  0xfffffffd
#define BIT2_CLR  0xfffffffb
#define BIT3_CLR  0xfffffff7
#define BIT4_CLR  0xffffffef
#define BIT5_CLR  0xffffffdf
#define BIT6_CLR  0xffffffbf
#define BIT7_CLR  0xffffff7f
#define BIT8_CLR  0xfffffeff
#define BIT9_CLR  0xfffffdff
#define BIT10_CLR 0xfffffbff
#define BIT11_CLR 0xfffff7ff
#define BIT12_CLR 0xffffefff
#define BIT13_CLR 0xffffdfff
#define BIT14_CLR 0xffffbfff
#define BIT15_CLR 0xffff7fff
#define BIT16_CLR 0xfffeffff
#define BIT17_CLR 0xfffdffff
#define BIT18_CLR 0xfffbffff
#define BIT19_CLR 0xfff7ffff
#define BIT20_CLR 0xffefffff
#define BIT21_CLR 0xffdfffff
#define BIT22_CLR 0xffbfffff
#define BIT23_CLR 0xff7fffff
#define BIT24_CLR 0xfeffffff
#define BIT25_CLR 0xfdffffff
#define BIT26_CLR 0xfbffffff
#define BIT27_CLR 0xf7ffffff
#define BIT28_CLR 0xefffffff
#define BIT29_CLR 0xdfffffff
#define BIT30_CLR 0xbfffffff
#define BIT31_CLR 0x7fffffff

#define set_bit0(REG)  REG |= BIT0_SET
#define set_bit1(REG)  REG |= BIT1_SET
#define set_bit2(REG)  REG |= BIT2_SET
#define set_bit3(REG)  REG |= BIT3_SET
#define set_bit4(REG)  REG |= BIT4_SET
#define set_bit5(REG)  REG |= BIT5_SET
#define set_bit6(REG)  REG |= BIT6_SET
#define set_bit7(REG)  REG |= BIT7_SET
#define set_bit8(REG)  REG |= BIT8_SET
#define set_bit9(REG)  REG |= BIT9_SET
#define set_bit10(REG) REG |= BIT10_SET
#define set_bit11(REG) REG |= BIT11_SET
#define set_bit12(REG) REG |= BIT12_SET
#define set_bit13(REG) REG |= BIT13_SET
#define set_bit14(REG) REG |= BIT14_SET
#define set_bit15(REG) REG |= BIT15_SET
#define set_bit16(REG) REG |= BIT16_SET
#define set_bit17(REG) REG |= BIT17_SET
#define set_bit18(REG) REG |= BIT18_SET
#define set_bit19(REG) REG |= BIT19_SET
#define set_bit20(REG) REG |= BIT20_SET
#define set_bit21(REG) REG |= BIT21_SET
#define set_bit22(REG) REG |= BIT22_SET
#define set_bit23(REG) REG |= BIT23_SET
#define set_bit24(REG) REG |= BIT24_SET
#define set_bit25(REG) REG |= BIT25_SET
#define set_bit26(REG) REG |= BIT26_SET
#define set_bit27(REG) REG |= BIT27_SET
#define set_bit28(REG) REG |= BIT28_SET
#define set_bit29(REG) REG |= BIT29_SET
#define set_bit30(REG) REG |= BIT30_SET
#define set_bit31(REG) REG |= BIT31_SET

#define clr_bit0(REG)  REG &= BIT0_CLR
#define clr_bit1(REG)  REG &= BIT1_CLR
#define clr_bit2(REG)  REG &= BIT2_CLR
#define clr_bit3(REG)  REG &= BIT3_CLR
#define clr_bit4(REG)  REG &= BIT4_CLR
#define clr_bit5(REG)  REG &= BIT5_CLR
#define clr_bit6(REG)  REG &= BIT6_CLR
#define clr_bit7(REG)  REG &= BIT7_CLR
#define clr_bit8(REG)  REG &= BIT8_CLR
#define clr_bit9(REG)  REG &= BIT9_CLR
#define clr_bit10(REG) REG &= BIT10_CLR
#define clr_bit11(REG) REG &= BIT11_CLR
#define clr_bit12(REG) REG &= BIT12_CLR
#define clr_bit13(REG) REG &= BIT13_CLR
#define clr_bit14(REG) REG &= BIT14_CLR
#define clr_bit15(REG) REG &= BIT15_CLR
#define clr_bit16(REG) REG &= BIT16_CLR
#define clr_bit17(REG) REG &= BIT17_CLR
#define clr_bit18(REG) REG &= BIT18_CLR
#define clr_bit19(REG) REG &= BIT19_CLR
#define clr_bit20(REG) REG &= BIT20_CLR
#define clr_bit21(REG) REG &= BIT21_CLR
#define clr_bit22(REG) REG &= BIT22_CLR
#define clr_bit23(REG) REG &= BIT23_CLR
#define clr_bit24(REG) REG &= BIT24_CLR
#define clr_bit25(REG) REG &= BIT25_CLR
#define clr_bit26(REG) REG &= BIT26_CLR
#define clr_bit27(REG) REG &= BIT27_CLR
#define clr_bit28(REG) REG &= BIT28_CLR
#define clr_bit29(REG) REG &= BIT29_CLR
#define clr_bit30(REG) REG &= BIT30_CLR
#define clr_bit31(REG) REG &= BIT31_CLR

void        Delay_Us(uint32 Us);
void        Delay_Ms(uint32 Ms);
void        write32(uint32_t addr, uint32_t data);
void        write16(uint32_t addr, uint16_t data);
void        write8(uint32_t addr, uint8_t data);
uint32_t    read32(uint32_t addr);
uint16_t    read16(uint32_t addr);
uint8_t     read8(uint32_t addr);

void tube_sim_end(void);
void tube_init_end(void);
void tube_sync(void);
