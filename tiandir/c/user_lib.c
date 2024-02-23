#include "user_lib.h"
#include "common.h"
#include "tube.h"

void Delay_Us(uint32 Us)
{
    uint32 CntUs = Us;

    /* System Clock 35MHz Optimize Level 2 */
    do
    {
        __NOP(); __NOP(); __NOP(); __NOP(); __NOP();
        __NOP(); __NOP(); __NOP(); __NOP(); __NOP();
        __NOP(); __NOP(); __NOP(); __NOP(); __NOP();
        __NOP(); __NOP(); __NOP(); __NOP(); __NOP();
        __NOP(); __NOP(); __NOP(); __NOP(); __NOP();
        __NOP(); __NOP(); __NOP(); __NOP(); __NOP();
        __NOP(); __NOP(); __NOP();

        CntUs--;
    } while (CntUs != 0U);
}

void Delay_Ms(uint32 Ms)
{
    Delay_Us(Ms * 1000U);
}

void write32(uint32_t addr, uint32_t data){
    *((uint32*) addr) = data;
}

void write16(uint32_t addr, uint16_t data){
    *((uint32_t*) addr) = data;
}

void write8(uint32_t addr, uint8_t data){
    *((uint32_t*) addr) = data;
}

uint32_t read32(uint32_t addr){
    return *((uint32_t*) addr);
}

uint16_t read16(uint32_t addr){
    return *((uint32_t*) addr);
}

uint8_t read8(uint32_t addr){
    return *((uint32_t*) addr);
}

void tube_sim_end(void) {
    *(unsigned int*)(TUBE)=TUBE_END_SIM;
}

void tube_init_end(void) {
    *(unsigned int*)(TUBE)=TUBE_END_INIT;
}

void tube_sync(void) {
    *(unsigned int*)(TUBE)=TUBE_SYNC;
}

#define set_bit0(REG) REG |= BIT0_SET


