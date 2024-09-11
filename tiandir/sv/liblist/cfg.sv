// Use for same module name with 2 rtl design
// need xrun options: -vcfg_no_default_bind
config cfg;
    design top;
    instance top.dut liblist lx61204_cnxvip_lib;
    instance top.dut.u_DTOP.u_CPU.u_cm3.u_cm3i.uCORTEXM3.u_cm3_dpu use worklib.cm3_dpu
    instance top.dut1 liblist lx61204_cnxvip_vipdut_lib;
    instance top.dut1.u_DTOP.u_CPU.u_cm3.u_cm3i.uCORTEXM3.u_cm3_dpu use worklib.cm3_dpu
endconfig
