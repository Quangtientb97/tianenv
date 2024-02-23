sidCmdLineBehaviorAnalysisOpt -incr -clockSkew 0 -loopUnroll 0 -bboxEmptyModule 0  -cellModel 0 -bboxIgnoreProtected 0 
debImport "-top" "work.top work.soc_tb"
wvCreateWindow
wvSetPosition -win $_nWave2 {("G1" 0)}
wvOpenFile -win $_nWave2 \
           {/mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_tientq_ws_9/testdbscp-lx61102-cpu_test_c-lxs_fw+testcase00-vseq+cpu_receive_data_uart_vseq_c-time+35000000000-fsdb_all-use_env_uart0/all.fsdb}
wvSetCursor -win $_nWave2 262338792.512527
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_tb"
wvGetSignalSetScope -win $_nWave2 "/top/dut/u_DTOP/u_PERI/u_uart0"
wvGetSignalSetScope -win $_nWave2 "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart"
wvGetSignalSetSignalFilter -win $_nWave2 "*tx*"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetPosition -win $_nWave2 {("G1" 1)}
wvGetSignalSetSignalFilter -win $_nWave2 "*rx*"
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSetPosition -win $_nWave2 {("G1" 2)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 295821506.820047 -snap {("G1" 2)}
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 2345117730.598821 -snap {("G2" 0)}
wvZoomAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetCursor -win $_nWave2 1262349409.038554 -snap {("G3" 0)}
wvZoomAll -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 2065182506.000313 -snap {("G3" 0)}
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 5620659015.032181 -snap {("G3" 0)}
wvZoomAll -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 3970557285.848421 -snap {("G3" 0)}
wvZoomAll -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 6432089047.898219 6652933307.053523
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 57650485209.626854 63185254987.986267
wvZoom -win $_nWave2 59619185853.744377 61094911052.022972
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 53933705504.451195 -snap {("G3" 0)}
wvSetCursor -win $_nWave2 50701723152.124527 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 50459324475.700027 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 50095726461.063278 -snap {("G2" 1)}
wvZoomAll -win $_nWave2
wvZoom -win $_nWave2 49651328887.618362 52721712122.328690
wvSetCursor -win $_nWave2 50462876104.650269 -snap {("G3" 0)}
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 15917513085.208817 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 15796313746.996567 -snap {("G3" 0)}
wvZoomAll -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvGetSignalSetScope -win $_nWave2 "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart"
wvGetSignalSetSignalFilter -win $_nWave2 "*tx*"
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSetPosition -win $_nWave2 {("G2" 3)}
wvZoom -win $_nWave2 58148432835.414322 67068931054.483566
wvSetCursor -win $_nWave2 61352382745.208733 -snap {("G2" 3)}
wvSetCursor -win $_nWave2 61729014538.148033 -snap {("G3" 0)}
wvSetCursor -win $_nWave2 61682580481.484283 -snap {("G2" 3)}
wvCreateWindow
wvSetPosition -win $_nWave3 {("G1" 0)}
wvOpenFile -win $_nWave3 \
           {/mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_tientq_ws_9/testdbscp-lx61102-cpu_test_c-lxs_fw+testcase00-vseq+cpu_receive_data_uart_vseq_c-time+35000000000-fsdb_all-use_env_uart0__bk/all.fsdb}
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 2 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 2 3 )} 
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 3)}
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
wvAddSignal -win $_nWave3 "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD" \
           "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD" \
           "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]"
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetCursor -win $_nWave3 1164620600.822929 -snap {("G2" 0)}
wvZoomAll -win $_nWave3
wvZoom -win $_nWave3 54638051591.799110 66242958997.162338
wvZoom -win $_nWave3 60376742066.969620 63350122044.167946
wvSetCursor -win $_nWave3 61021633617.827187 -snap {("G1" 3)}
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 61438663487.397141 -snap {("G1" 3)}
wvSetCursor -win $_nWave3 63536710666.218399 -snap {("G1" 3)}
wvZoomOut -win $_nWave3
wvSetCursor -win $_nWave3 58221084576.268761 -snap {("G2" 0)}
wvSetCursor -win $_nWave3 56826343362.944496 -snap {("G2" 0)}
wvZoomAll -win $_nWave3
wvGetSignalOpen -win $_nWave3
wvGetSignalSetScope -win $_nWave3 "/soc_tb"
srcSetScope -win $_nTrace1 "soc_tb" -delim "."
srcHBSelect "top.dut" -win $_nTrace1
srcHBSelect "top.dut.u_DTOP" -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM" -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_PERI" -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM" -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_CPU" -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM" -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP" -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP" -win $_nTrace1
srcHBDrag -win $_nTrace1
wvGetSignalSetScope -win $_nWave3 "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP"
wvGetSignalSetOptions -win $_nWave3 -output on
wvGetSignalSetSignalFilter -win $_nWave3 "*"
wvGetSignalSetSignalFilter -win $_nWave3 "*sum*"
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/o_fctrl2icu_chksum_done} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetCursor -win $_nWave3 28740503071.577793 -snap {("G1" 4)}
wvZoomAll -win $_nWave3
wvZoom -win $_nWave3 23388823189.283997 28145871973.545151
wvZoom -win $_nWave3 24220729014.147320 24663091635.306927
wvZoom -win $_nWave3 24299930649.295570 24362248214.941235
wvZoomAll -win $_nWave3
srcTraceConnectivity "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.o_fctrl2icu_chksum_done" \
           -win $_nTrace1
verdiDockWidgetSetCurTab -dock windowDock_nWave_2
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvReloadFile -win $_nWave3
wvSetCursor -win $_nWave3 4856153967.266593 -snap {("G1" 2)}
wvZoomAll -win $_nWave3
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_apb_mux" -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top" -win $_nTrace1
srcHierTreeSort -win $_nTrace1 -hierAscending
srcHBSelect "top.dut.u_DTOP.u_MEM.bootrom2tm" -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top" -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_apb_mux" -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top" -win $_nTrace1
srcHBDrag -win $_nTrace1
srcSetScope -win $_nTrace1 "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top" \
           -delim "."
srcCopyFilePath -win $_nTrace1
wvGetSignalOpen -win $_nWave3
wvGetSignalSetOptions -win $_nWave3 -all on
wvGetSignalSetSignalFilter -win $_nWave3 "*sum*"
wvGetSignalSetScope -win $_nWave3 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_apb_mux"
wvGetSignalSetScope -win $_nWave3 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top"
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/o_fctrl2icu_chksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_result\[15:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetCursor -win $_nWave3 28244977156.550591 -snap {("G2" 0)}
wvZoomAll -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/o_fctrl2icu_chksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_start} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/o_fctrl2icu_chksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_start_clr} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/o_fctrl2icu_chksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_start_clr} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_start_addr\[31:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 8 )} 
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/o_fctrl2icu_chksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_start_clr} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_start_addr\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_data_length\[16:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_result\[15:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G2" \
}
wvSelectSignal -win $_nWave3 {( "G1" 9 10 11 )} 
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSelectSignal -win $_nWave3 {( "G1" 10 )} 
srcTraceConnectivity \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.w_checksum_result\[15:0\]" \
           -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_checksum_result" -line 588 -pos 1 -win $_nTrace1
srcAction -pos 587 12 10 -win $_nTrace1 -name "i_checksum_result" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_sum_16" -line 263 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave2
wvTpfCloseForm -win $_nWave2
wvGetSignalClose -win $_nWave2
wvCloseWindow -win $_nWave2
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_sum_16" -line 263 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_sum_16" -line 263 -pos 1 -win $_nTrace1
srcAction -pos 262 7 4 -win $_nTrace1 -name "r_sum_16" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "w_cal_valid" -line 258 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_sum_16" -line 258 -pos 2 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "w_sum_byte" -line 258 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
wvZoom -win $_nWave3 44498227169.442856 50940064064.796501
wvZoom -win $_nWave3 45906401091.741455 46988236295.541306
wvZoom -win $_nWave3 46166161661.146484 46341087131.295944
wvZoom -win $_nWave3 46205613970.507507 46237054426.280380
wvZoom -win $_nWave3 46213708633.297874 46217657781.455330
wvZoom -win $_nWave3 46215103578.752975 46215802421.764877
wvZoomAll -win $_nWave3
wvZoom -win $_nWave3 47669593025.616959 55944875806.571259
wvZoom -win $_nWave3 49530239535.692719 51683765589.029190
wvZoomAll -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 13 )} 
wvSelectSignal -win $_nWave3 {( "G1" 12 )} 
wvZoom -win $_nWave3 644183689.535364 5302127290.791076
wvZoom -win $_nWave3 1316530857.516694 2774360534.245580
wvZoomAll -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_cs\[S_READY_1\]" -line 256 -pos 1 -partailSelPos 10 -win \
          $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_cs\[S_IDLE_1\]" -line 256 -pos 1 -partailSelPos 9 -win \
          $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst_n" -line 255 -pos 1 -win $_nTrace1
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvScrollUp -win $_nWave3 3
wvSelectGroup -win $_nWave3 {G1}
wvSetPosition -win $_nWave3 {("G1" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "rst_n" -line 255 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 12)}
wvSetPosition -win $_nWave3 {("G1" 13)}
wvSetPosition -win $_nWave3 {("G1" 14)}
wvSetPosition -win $_nWave3 {("G1" 15)}
wvSetPosition -win $_nWave3 {("G2" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G2" 1)}
wvSetPosition -win $_nWave3 {("G2" 1)}
wvScrollUp -win $_nWave3 5
wvSelectGroup -win $_nWave3 {G1}
wvGetSignalOpen -win $_nWave3
wvSetPosition -win $_nWave3 {("G2" 2)}
wvSetPosition -win $_nWave3 {("G2" 2)}
wvAddSignal -win $_nWave3 -clear
wvAddSignal -win $_nWave3 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/o_fctrl2icu_chksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_start_clr} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_start_addr\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_data_length\[16:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/r_sum_16\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_cal_valid} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_sum_byte\[9:0\]} \
}
wvCollapseGroup -win $_nWave3 "G1"
wvAddSignal -win $_nWave3 -group {"G2" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/rst_n} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_result\[15:0\]} \
}
wvAddSignal -win $_nWave3 -group {"G3" \
}
wvSelectSignal -win $_nWave3 {( "G2" 2 )} 
wvSetPosition -win $_nWave3 {("G2" 2)}
wvSelectSignal -win $_nWave3 {( "G2" 2 )} 
wvSetPosition -win $_nWave3 {("G3" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G3" 1)}
wvSetPosition -win $_nWave3 {("G3" 1)}
wvSetPosition -win $_nWave3 {("G4" 0)}
wvAddSignal -win $_nWave3 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_data_length\[16:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_done" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_result\[15:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_start" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_start_addr\[31:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/w_checksum_start_clr"
wvSetPosition -win $_nWave3 {("G4" 0)}
wvSetPosition -win $_nWave3 {("G4" 6)}
wvSetPosition -win $_nWave3 {("G4" 6)}
wvZoom -win $_nWave3 34835471826.412392 35182339966.931435
wvZoom -win $_nWave3 34977252072.604118 34981344201.950974
wvZoomAll -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G4" 1 )} 
wvSelectSignal -win $_nWave3 {( "G4" 2 )} 
wvSelectSignal -win $_nWave3 {( "G4" 4 )} 
wvSelectSignal -win $_nWave3 {( "G4" 5 )} 
wvSelectSignal -win $_nWave3 {( "G4" 6 )} 
wvSelectSignal -win $_nWave3 {( "G4" 1 )} 
wvSelectSignal -win $_nWave3 {( "G4" 1 2 )} 
wvSelectSignal -win $_nWave3 {( "G4" 1 2 3 )} 
wvSelectSignal -win $_nWave3 {( "G4" 1 2 3 4 )} 
wvSelectSignal -win $_nWave3 {( "G4" 1 2 3 4 5 )} 
wvSelectSignal -win $_nWave3 {( "G4" 1 2 3 4 5 6 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G4" 0)}
wvSelectSignal -win $_nWave3 {( "G3" 1 )} 
wvSetCursor -win $_nWave3 14766672267.810659 -snap {("G3" 0)}
wvZoomAll -win $_nWave3
wvSetCursor -win $_nWave3 21456272120.677906 -snap {("G3" 1)}
wvZoomAll -win $_nWave3
wvSetPosition -win $_nWave3 {("G3" 1)}
wvSetPosition -win $_nWave3 {("G4" 0)}
wvGetSignalSetScope -win $_nWave3 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top"
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_sum_16" -line 255 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_cs\[S_READY_1\]" -line 256 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_cs\[S_IDLE_1\]" -line 256 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
wvSetCursor -win $_nWave3 24379875019.338406 -snap {("G4" 2)}
wvZoomAll -win $_nWave3
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "w_sum_byte" -line 258 -pos 1 -win $_nTrace1
wvSelectSignal -win $_nWave3 {( "G4" 1 )} 
wvSetOptions -win $_nWave3 -hierName on
wvSelectSignal -win $_nWave3 {( "G4" 1 )} 
wvZoomAll -win $_nWave3
wvSetCursor -win $_nWave3 19493430743.912880 -snap {("G5" 0)}
wvSetCursor -win $_nWave3 18363376787.744019 -snap {("G3" 0)}
wvSetCursor -win $_nWave3 24084274940.848885 -snap {("G4" 2)}
wvSelectSignal -win $_nWave3 {( "G4" 2 )} 
wvSelectSignal -win $_nWave3 {( "G4" 1 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "o_checksum_result" -line 263 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave3 {("G3" 1)}
wvSetPosition -win $_nWave3 {("G4" 0)}
wvSetPosition -win $_nWave3 {("G4" 1)}
wvSetPosition -win $_nWave3 {("G4" 0)}
wvAddSignal -win $_nWave3 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]"
wvSetPosition -win $_nWave3 {("G4" 0)}
wvSetPosition -win $_nWave3 {("G4" 1)}
wvZoom -win $_nWave3 1483195817.471632 8334147926.745361
wvZoomAll -win $_nWave3
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "w_sum_byte" -line 258 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "w_sum_byte" -line 258 -pos 1 -win $_nTrace1
srcAction -pos 257 14 5 -win $_nTrace1 -name "w_sum_byte" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "data01" -line 252 -pos 1 -win $_nTrace1
srcSelect -signal "data23" -line 252 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
wvSetPosition -win $_nWave3 {("G4" 2)}
wvSetPosition -win $_nWave3 {("G4" 4)}
wvSetPosition -win $_nWave3 {("G5" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G5" 2)}
wvSetPosition -win $_nWave3 {("G5" 2)}
wvScrollDown -win $_nWave3 15
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_cs\[S_READY_1\]" -line 256 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_cs\[S_READY_1\]" -line 256 -pos 1 -win $_nTrace1
srcAction -pos 255 5 2 -win $_nTrace1 -name "r_cs\[S_READY_1\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_ns" -line 105 -pos 1 -win $_nTrace1
srcAction -pos 104 7 2 -win $_nTrace1 -name "r_ns" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_ns" -line 135 -pos 1 -win $_nTrace1
srcAction -pos 134 1 1 -win $_nTrace1 -name "r_ns" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_ns" -line 135 -pos 1 -win $_nTrace1
srcAction -pos 134 1 1 -win $_nTrace1 -name "r_ns" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_ns" -line 135 -pos 1 -win $_nTrace1
srcAction -pos 134 1 1 -win $_nTrace1 -name "r_ns" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_ns" -line 135 -pos 1 -win $_nTrace1
srcAction -pos 134 1 1 -win $_nTrace1 -name "r_ns" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_ns" -line 135 -pos 1 -win $_nTrace1
wvSetCursor -win $_nWave3 17939606554.180695 -snap {("G5" 1)}
wvZoomAll -win $_nWave3
wvCreateWindow
wvSetPosition -win $_nWave4 {("G1" 0)}
wvOpenFile -win $_nWave4 \
           {/mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_tientq_ws_9/testdbscp-lx61102-cpu_test_c-lxs_fw+testcase00-vseq+cpu_receive_data_uart_vseq_c-time+35000000000-fsdb_all-use_env_uart0/all.fsdb}
wvSetCursor -win $_nWave4 2154852707.446411
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
wvSelectGroup -win $_nWave3 {G4}
wvSelectGroup -win $_nWave3 {G1}
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G1" 1 )} 
wvSelectSignal -win $_nWave3 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 4)}
verdiDockWidgetSetCurTab -dock windowDock_nWave_4
wvAddSignal -win $_nWave4 "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD" \
           "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD"
wvSetPosition -win $_nWave4 {("G1" 0)}
wvSetPosition -win $_nWave4 {("G1" 2)}
wvSetPosition -win $_nWave4 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G5" 2)}
wvSetCursor -win $_nWave4 1030435796.239950 -snap {("G2" 0)}
wvZoomAll -win $_nWave4
wvZoom -win $_nWave4 47962309635.924049 51249769531.604271
wvSetCursor -win $_nWave4 50127964246.203270 -snap {("G2" 0)}
wvZoomAll -win $_nWave4
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvReloadFile -win $_nWave4
wvSetCursor -win $_nWave4 26126654960.405956 -snap {("G2" 0)}
wvZoomAll -win $_nWave4
wvZoom -win $_nWave4 57811531110.477570 60656448498.052711
wvZoom -win $_nWave4 59873232375.149963 60202314779.727768
wvSetCursor -win $_nWave4 60060137477.103798 -snap {("G2" 0)}
wvZoomAll -win $_nWave4
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvReloadFile -win $_nWave4
wvSetCursor -win $_nWave4 25534011614.408989 -snap {("G2" 0)}
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 36148054294.156525 -snap {("G1" 2)}
wvZoomAll -win $_nWave4
wvZoom -win $_nWave4 54933657313.167007 61444576541.346771
wvSetCursor -win $_nWave4 59859211014.987144 -snap {("G2" 0)}
wvZoomAll -win $_nWave4
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
wvZoom -win $_nWave3 16527039108.969616 17374579576.096264
wvZoomAll -win $_nWave3
wvSetCursor -win $_nWave3 43013651549.270447 -snap {("G1" 8)}
wvZoomAll -win $_nWave3
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSetCursor -win $_nWave3 23867331042.582993 -snap {("G4" 3)}
wvZoom -win $_nWave3 44718460909.454948 49111623491.468849
wvZoom -win $_nWave3 46098131802.975021 46666943487.147621
wvZoom -win $_nWave3 46192150263.163818 46280945475.569092
wvZoom -win $_nWave3 46209110230.267715 46229576344.421730
wvZoomAll -win $_nWave3
srcDeselectAll -win $_nTrace1
srcHBSelect \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0" \
           -delim "."
srcHBSelect \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0" \
           -win $_nTrace1
wvSelectGroup -win $_nWave3 {G4}
wvSelectAll -win $_nWave3
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G5" 0)}
wvSelectGroup -win $_nWave3 {G2} {G3} {G4} {G5} {G6}
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_checksum_start" -line 5 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_start_addr" -line 6 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_data_length" -line 7 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_eflash_data" -line 8 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
wvSetRadix -win $_nWave3 -format UDec
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_data_valid" -line 9 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_rdvalid" -line 10 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_ready" -line 11 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvSetOptions -win $_nWave3 -hierName off
wvSelectSignal -win $_nWave3 {( "G1" 1 )} 
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G2" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G2" 1)}
wvSetPosition -win $_nWave3 {("G2" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "o_read_en" -line 15 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "o_checksum_result" -line 17 -pos 1 -win $_nTrace1
srcSelect -signal "o_busy" -line 18 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
wvSetPosition -win $_nWave3 {("G2" 2)}
wvSetPosition -win $_nWave3 {("G2" 3)}
wvSetPosition -win $_nWave3 {("G3" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G3" 2)}
wvSetPosition -win $_nWave3 {("G3" 2)}
wvScrollDown -win $_nWave3 1
wvSelectGroup -win $_nWave3 {G2}
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvSelectSignal -win $_nWave3 {( "G1" 5 6 )} 
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
wvScrollUp -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
wvZoom -win $_nWave3 41571120552.191254 51013141623.982330
wvZoom -win $_nWave3 45429430356.549072 47310898283.618553
wvZoom -win $_nWave3 46096323487.714310 46372755873.693291
wvZoom -win $_nWave3 46208521021.780441 46239489571.908478
wvZoom -win $_nWave3 46214407605.688637 46218758559.012405
wvSetCursor -win $_nWave3 46215594229.313759 -snap {("G1" 5)}
wvZoomAll -win $_nWave3
wvSetCursor -win $_nWave3 7933920483.935555 -snap {("G2" 0)}
wvZoomAll -win $_nWave3
srcDeselectAll -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_sfr" \
           -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "o_start_clr" -line 20 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_checksum_start" -line 5 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_start_addr" -line 6 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_data_length" -line 7 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_eflash_data" -line 8 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_data_valid" -line 9 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_rdvalid" -line 10 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_rdvalid" -line 10 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_ready" -line 11 -pos 1 -win $_nTrace1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
wvSelectAll -win $_nWave3
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G3" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_checksum_start" -line 5 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "o_checksum_done" -line 13 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_eflash_data" -line 8 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_eflash_data" -line 8 -pos 1 -win $_nTrace1
srcAction -pos 7 1 4 -win $_nTrace1 -name "i_eflash_data" -ctrlKey off
wvSelectSignal -win $_nWave3 {( "G3" 2 )} 
wvSelectSignal -win $_nWave3 {( "G3" 1 )} 
wvSetPosition -win $_nWave3 {("G3" 1)}
wvSetPosition -win $_nWave3 {("G2" 0)}
wvSetPosition -win $_nWave3 {("G3" 3)}
srcTraceConnectivity \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0.i_checksum_start" \
           -win $_nTrace1
wvSelectSignal -win $_nWave3 {( "G3" 2 )} 
wvSetPosition -win $_nWave3 {("G3" 2)}
wvSetPosition -win $_nWave3 {("G3" 3)}
srcTraceConnectivity \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0.o_checksum_done" \
           -win $_nTrace1
wvZoomAll -win $_nWave3
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl" \
           -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl" \
           -delim "."
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl" \
           -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ahb" \
           -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl" \
           -win $_nTrace1
srcHBSelect \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_synchronizer_RSTBUSY" \
           -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_sfr" \
           -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ahb" \
           -win $_nTrace1
srcHBSelect \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0" \
           -delim "."
srcHBSelect \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0" \
           -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {9 10 5 1 19 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "o_read_addr" -line 14 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
wvZoom -win $_nWave3 1639239769.408173 6163541532.974729
wvZoom -win $_nWave3 2245803642.209393 2898067532.824590
wvZoom -win $_nWave3 2449448934.044782 2547078882.777819
wvZoom -win $_nWave3 2469799713.072834 2486116196.699475
wvZoom -win $_nWave3 2474459425.108626 2477006534.582023
wvZoomAll -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_eflash_data" -line 8 -pos 1 -win $_nTrace1
wvZoom -win $_nWave3 23277204725.596050 29637455030.899761
wvZoom -win $_nWave3 24001420554.660397 24965094843.342777
wvZoom -win $_nWave3 24249197231.272549 24414676654.581646
wvZoom -win $_nWave3 24313778273.424606 24327454258.822052
wvZoom -win $_nWave3 24319027641.552353 24321551859.242790
wvSelectSignal -win $_nWave3 {( "G3" 4 )} 
wvSetRadix -win $_nWave3 -format UDec
wvSetCursor -win $_nWave3 24320126336.853275 -snap {("G3" 4)}
wvZoomOut -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_rdvalid" -line 10 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
wvSetCursor -win $_nWave3 24318924493.990376 -snap {("G3" 2)}
wvZoomAll -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_data_valid" -line 9 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
wvZoom -win $_nWave3 42751373186.165138 51734407122.521927
wvZoom -win $_nWave3 45679726765.045822 47469734445.660538
wvZoom -win $_nWave3 46146542358.515282 46429261661.605942
wvZoom -win $_nWave3 46203138141.865158 46248310923.075233
wvZoom -win $_nWave3 46213135056.709984 46222509756.942741
wvZoomAll -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_rdvalid" -line 10 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_data_valid" -line 9 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_eflash_data" -line 8 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_data_valid" -line 9 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {10 11 5 1 1 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {10 13 5 1 4 1} -backward
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_ready" -line 11 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_rdvalid" -line 10 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_ready" -line 11 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
schCreateWindow -delim "." -win $_nSchema1 -scope \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0"
schSetOptions -win $_nSchema5 -portName on
schSetOptions -win $_nSchema5 -pinName on
schSetOptions -win $_nSchema5 -highContrastMode on
schSetOptions -win $_nSchema5 -completeName on
schSetOptions -win $_nSchema5 -localNetName on
schSetOptions -win $_nSchema5 -instName on
schSetOptions -win $_nSchema5 -parameterList on
wvSelectSignal -win $_nWave3 {( "G3" 4 )} 
wvSelectSignal -win $_nWave3 {( "G3" 2 )} 
wvSelectSignal -win $_nWave3 {( "G3" 3 )} 
wvSetPosition -win $_nWave3 {("G3" 3)}
wvSetPosition -win $_nWave3 {("G3" 0)}
schSetScope -win $_nSchema5 -signal \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0.i_eflash_data\[31:0\]"
wvSetPosition -win $_nWave3 {("G3" 9)}
schZoom {-2242} {15272} {7586} {20820} -win $_nSchema5
schSelect -win $_nSchema5 -port "i_eflash_data\[31:0\]"
schPopViewUp -win $_nSchema5
schZoom {-58535} {399290} {215751} {500836} -win $_nSchema5
schZoom {65082} {439773} {131244} {460690} -win $_nSchema5
schZoom {86179} {440676} {110415} {454366} -win $_nSchema5
schZoom {90805} {444542} {109216} {452501} -win $_nSchema5
schSelect -win $_nSchema5 -signal "o_rdata\[31:0\]"
schFit -win $_nSchema5
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "o_busy" -line 18 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "o_checksum_result" -line 17 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "o_checksum_result" -line 17 -pos 1 -win $_nTrace1
srcAction -pos 16 1 11 -win $_nTrace1 -name "o_checksum_result" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_sum_16" -line 263 -pos 1 -win $_nTrace1
srcAction -pos 262 7 4 -win $_nTrace1 -name "r_sum_16" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "w_sum_byte" -line 258 -pos 1 -win $_nTrace1
srcAction -pos 257 14 3 -win $_nTrace1 -name "w_sum_byte" -ctrlKey off
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave3 {( "G3" 3 )} 
wvSelectSignal -win $_nWave3 {( "G3" 4 )} 
wvSelectSignal -win $_nWave3 {( "G3" 3 )} 
wvSetPosition -win $_nWave3 {("G3" 3)}
wvSetPosition -win $_nWave3 {("G3" 2)}
wvSetPosition -win $_nWave3 {("G3" 10)}
srcTraceConnectivity \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0.i_eflash_data\[31:0\]" \
           -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_eflash_data\[7:0\]" -line 244 -pos 1 -win $_nTrace1
srcAction -pos 243 7 7 -win $_nTrace1 -name "i_eflash_data\[7:0\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_cache_hit_en" -line 2148 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_no_read_burst" -line 2148 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "o_rdata" -line 2148 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "read_data_fifo\[decoded_addr\]\[31:0\]" -line 2149 -pos 1 -win \
          $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_ADD\[1:0\]" -line 2149 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
wvZoom -win $_nWave3 1442530997.079192 6491389486.856363
wvZoom -win $_nWave3 2188964621.371125 2763857599.086800
wvZoom -win $_nWave3 2452391247.523545 2529465971.808658
wvZoom -win $_nWave3 2472420767.240802 2482470914.943728
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_cache_hit_en" -line 2148 -pos 1 -win $_nTrace1
wvSelectSignal -win $_nWave3 {( "G3" 13 )} 
wvSelectSignal -win $_nWave3 {( "G3" 13 )} 
wvSelectSignal -win $_nWave3 {( "G3" 14 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G4" 0)}
wvSetPosition -win $_nWave3 {("G3" 13)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_cache_hit_en" -line 2148 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
wvSetCursor -win $_nWave3 2475060199.970061 -snap {("G3" 12)}
wvZoomAll -win $_nWave3
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_no_read_burst" -line 2148 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_ADD\[1:0\]" -line 2149 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "read_data_fifo\[decoded_addr\]\[31:0\]" -line 2149 -pos 1 -win \
          $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
wvSelectSignal -win $_nWave3 {( "G3" 16 )} 
wvExpandBus -win $_nWave3
wvScrollUp -win $_nWave3 17
wvScrollUp -win $_nWave3 11
wvSelectSignal -win $_nWave3 {( "G3" 16 )} 
wvSetPosition -win $_nWave3 {("G3" 16)}
wvCollapseBus -win $_nWave3
wvSetPosition -win $_nWave3 {("G3" 16)}
wvSetCursor -win $_nWave3 1835948541.737153 -snap {("G3" 14)}
wvSetCursor -win $_nWave3 3212909948.040018 -snap {("G3" 7)}
wvSetCursor -win $_nWave3 13966322835.357630 -snap {("G3" 13)}
wvZoomAll -win $_nWave3
wvSetPosition -win $_nWave3 {("G4" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G4" 1)}
wvSetPosition -win $_nWave3 {("G4" 1)}
wvSetCursor -win $_nWave3 2360505267.947769 -snap {("G3" 10)}
wvSelectSignal -win $_nWave3 {( "G3" 8 )} 
wvScrollUp -win $_nWave3 8
wvSelectSignal -win $_nWave3 {( "G3" 1 )} 
wvSelectSignal -win $_nWave3 {( "G3" 1 4 )} 
wvSetPosition -win $_nWave3 {("G3" 1)}
wvSetPosition -win $_nWave3 {("G3" 5)}
wvSetPosition -win $_nWave3 {("G3" 9)}
wvSetPosition -win $_nWave3 {("G3" 10)}
wvSetPosition -win $_nWave3 {("G3" 11)}
wvSetPosition -win $_nWave3 {("G3" 12)}
wvSetPosition -win $_nWave3 {("G3" 13)}
wvSetPosition -win $_nWave3 {("G3" 15)}
wvSetPosition -win $_nWave3 {("G3" 13)}
wvSetPosition -win $_nWave3 {("G3" 14)}
wvSetPosition -win $_nWave3 {("G3" 15)}
wvSetPosition -win $_nWave3 {("G4" 0)}
wvSetPosition -win $_nWave3 {("G4" 1)}
wvSetPosition -win $_nWave3 {("G5" 0)}
wvSetPosition -win $_nWave3 {("G4" 1)}
wvSetPosition -win $_nWave3 {("G4" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G4" 2)}
wvScrollDown -win $_nWave3 0
wvSetCursor -win $_nWave3 3475188311.145326 -snap {("G4" 2)}
wvZoom -win $_nWave3 2098226904.842461 11671387158.186188
wvZoom -win $_nWave3 2300414862.442464 2757535462.234818
srcDeselectAll -win $_nTrace1
srcSelect -signal "read_data_fifo\[decoded_addr\]\[63:32\]" -line 2150 -pos 1 \
          -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "read_data_fifo\[decoded_addr\]\[95:64\]" -line 2151 -pos 1 \
          -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvZoom -win $_nWave3 2464961487.895262 2513653856.651840
wvZoom -win $_nWave3 2475424310.933603 2480387444.939095
wvSetCursor -win $_nWave3 2476695857.661680 -snap {("G4" 2)}
wvSetCursor -win $_nWave3 2476663955.055584 -snap {("G4" 2)}
wvZoomAll -win $_nWave3
srcDeselectAll -win $_nTrace1
srcSelect -signal "read_data_fifo\[decoded_addr\]\[31:0\]" -line 2149 -pos 1 -win \
          $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "read_data_fifo\[decoded_addr\]\[31:0\]" -line 2149 -pos 1 -win \
          $_nTrace1
srcAction -pos 2148 20 9 -win $_nTrace1 -name \
          "read_data_fifo\[decoded_addr\]\[31:0\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "w_cache_flush_state" -line 1453 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
wvScrollDown -win $_nWave3 1
wvSetPosition -win $_nWave3 {("G5" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G5" 1)}
wvSetPosition -win $_nWave3 {("G5" 1)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_cmp_2d" -line 1486 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
wvScrollDown -win $_nWave3 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "read_data_fifo\[no_match_read_addr_offset_fifo_cnt_3d\]" -line \
          1489 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "read_data_fifo\[no_match_read_addr_offset_fifo_cnt_3d\]" -line \
          1489 -pos 2 -partailSelPos 24 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_DOUT" -line 1487 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
wvScrollDown -win $_nWave3 1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_DOUT" -line 1487 -pos 1 -win $_nTrace1
srcAction -pos 1486 14 2 -win $_nTrace1 -name "i_DOUT" -ctrlKey off
wvSetPosition -win $_nWave3 {("G4" 1)}
wvSetPosition -win $_nWave3 {("G5" 4)}
srcTraceConnectivity \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.i_DOUT\[127:0\]" \
           -win $_nTrace1
wvSelectSignal -win $_nWave3 {( "G5" 3 )} 
wvSetPosition -win $_nWave3 {("G5" 3)}
wvSetPosition -win $_nWave3 {("G5" 2)}
wvSetPosition -win $_nWave3 {("G5" 4)}
srcTraceConnectivity \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.read_data_fifo\[0:31\]" \
           -win $_nTrace1
wvSelectSignal -win $_nWave3 {( "G5" 1 )} 
wvSetPosition -win $_nWave3 {("G5" 1)}
wvSetPosition -win $_nWave3 {("G5" 0)}
wvSetPosition -win $_nWave3 {("G5" 4)}
srcTraceConnectivity \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.w_cache_flush_state" \
           -win $_nTrace1
wvSelectSignal -win $_nWave3 {( "G5" 2 )} 
wvSelectSignal -win $_nWave3 {( "G4" 1 )} 
wvSelectSignal -win $_nWave3 {( "G3" 13 )} 
wvSetPosition -win $_nWave3 {("G3" 13)}
wvSetPosition -win $_nWave3 {("G3" 11)}
wvSetPosition -win $_nWave3 {("G5" 4)}
srcTraceConnectivity \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.r_no_read_burst" \
           -win $_nTrace1
wvSelectGroup -win $_nWave3 {G4}
wvSelectSignal -win $_nWave3 {( "G4" 1 )} 
wvSetPosition -win $_nWave3 {("G4" 1)}
wvSetPosition -win $_nWave3 {("G3" 11)}
wvSetPosition -win $_nWave3 {("G5" 4)}
srcTraceConnectivity \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0.i_checksum_start" \
           -win $_nTrace1
srcHBSelect \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0" \
           -delim "."
srcHBSelect \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0" \
           -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_rdvalid" -line 10 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave3
srcDeselectAll -win $_nTrace1
verdiDockWidgetSetCurTab -dock windowDock_nWave_4
wvSetCursor -win $_nWave4 18074027147.078262 -snap {("G2" 0)}
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 38816463813.902336 -snap {("G1" 0)}
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvReloadFile -win $_nWave4
wvZoom -win $_nWave4 12915102075.569704 13235311217.939201
wvZoomAll -win $_nWave4
wvGetSignalOpen -win $_nWave4
wvGetSignalSetScope -win $_nWave4 "/soc_tb"
wvSetPosition -win $_nWave4 {("G1" 1)}
wvSetPosition -win $_nWave4 {("G1" 2)}
wvSetPosition -win $_nWave4 {("G1" 1)}
wvSetPosition -win $_nWave4 {("G1" 2)}
wvGetSignalSetScope -win $_nWave4 "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart"
wvGetSignalSetSignalFilter -win $_nWave4 "*tx*"
wvSetPosition -win $_nWave4 {("G1" 2)}
wvSetPosition -win $_nWave4 {("G1" 2)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
}
wvSetPosition -win $_nWave4 {("G1" 2)}
wvSetPosition -win $_nWave4 {("G1" 3)}
wvSetPosition -win $_nWave4 {("G1" 3)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
}
wvSelectSignal -win $_nWave4 {( "G1" 3 )} 
wvSetPosition -win $_nWave4 {("G1" 3)}
wvSetPosition -win $_nWave4 {("G1" 3)}
wvSetPosition -win $_nWave4 {("G1" 3)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
}
wvSelectSignal -win $_nWave4 {( "G1" 3 )} 
wvSetPosition -win $_nWave4 {("G1" 3)}
wvGetSignalClose -win $_nWave4
wvSetCursor -win $_nWave4 64217640080.971664 -snap {("G2" 0)}
wvZoomAll -win $_nWave4
wvZoom -win $_nWave4 58432793522.267204 67022414170.040489
wvZoom -win $_nWave4 60742899711.510773 62471753375.724251
wvSetCursor -win $_nWave4 61446840127.707970 -snap {("G1" 3)}
wvSetCursor -win $_nWave4 62218774788.652336 -snap {("G1" 3)}
wvZoomOut -win $_nWave4
wvSetCursor -win $_nWave4 62158279909.132057 -snap {("G1" 3)}
wvSetCursor -win $_nWave4 61104369115.562943 -snap {("G1" 1)}
wvZoomAll -win $_nWave4
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvReloadFile -win $_nWave4
wvSetCursor -win $_nWave4 14519501490.546732 -snap {("G2" 0)}
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 20422064067.354820 -snap {("G1" 2)}
wvSetCursor -win $_nWave4 20079794837.175690 -snap {("G1" 3)}
wvZoomAll -win $_nWave4
wvSelectSignal -win $_nWave4 {( "G1" 3 )} 
wvZoom -win $_nWave4 42857019597.750732 60109366145.088089
wvZoom -win $_nWave4 48855749273.458397 51795126814.555511
wvZoom -win $_nWave4 49802155255.041069 50967277089.829216
wvZoomAll -win $_nWave4
wvSelectSignal -win $_nWave4 {( "G1" 2 )} 
wvSelectSignal -win $_nWave4 {( "G1" 3 )} 
wvSelectSignal -win $_nWave4 {( "G1" 2 )} 
wvSelectSignal -win $_nWave4 {( "G1" 1 )} 
wvSetOptions -win $_nWave4 -hierName on
wvSetCursor -win $_nWave4 16253431281.993263 -snap {("G2" 0)}
wvZoomAll -win $_nWave4
wvGetSignalOpen -win $_nWave4
wvGetSignalSetScope -win $_nWave4 "/soc_tb/if_jtag_clk"
wvGetSignalSetScope -win $_nWave4 "/soc_tb/if_nvic"
wvGetSignalSetScope -win $_nWave4 "/soc_tb/if_uart0"
wvSetPosition -win $_nWave4 {("G1" 4)}
wvSetPosition -win $_nWave4 {("G1" 4)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
{/soc_tb/if_uart0/Txd} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
}
wvSelectSignal -win $_nWave4 {( "G1" 4 )} 
wvSetPosition -win $_nWave4 {("G1" 4)}
wvSelectSignal -win $_nWave4 {( "G1" 4 )} 
wvSetCursor -win $_nWave4 31680744659.069992 -snap {("G1" 4)}
wvZoomAll -win $_nWave4
wvSetPosition -win $_nWave4 {("G2" 0)}
wvMoveSelected -win $_nWave4
wvSetPosition -win $_nWave4 {("G2" 1)}
wvSetPosition -win $_nWave4 {("G2" 1)}
wvGetSignalSetSignalFilter -win $_nWave4 "*clk*"
wvSetPosition -win $_nWave4 {("G2" 1)}
wvSetPosition -win $_nWave4 {("G2" 1)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
{/soc_tb/if_uart0/Txd} \
}
wvAddSignal -win $_nWave4 -group {"G3" \
}
wvSetPosition -win $_nWave4 {("G2" 1)}
wvSetPosition -win $_nWave4 {("G2" 2)}
wvSetPosition -win $_nWave4 {("G2" 2)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
{/soc_tb/if_uart0/Txd} \
{/soc_tb/if_uart0/Clk} \
}
wvAddSignal -win $_nWave4 -group {"G3" \
}
wvSelectSignal -win $_nWave4 {( "G2" 2 )} 
wvSetPosition -win $_nWave4 {("G2" 2)}
wvSetCursor -win $_nWave4 20577016167.915283 -snap {("G2" 1)}
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 42457835824.935799 -snap {("G2" 2)}
wvZoomAll -win $_nWave4
wvSetPosition -win $_nWave4 {("G2" 1)}
wvSetPosition -win $_nWave4 {("G2" 0)}
wvMoveSelected -win $_nWave4
wvSetPosition -win $_nWave4 {("G2" 0)}
wvSetPosition -win $_nWave4 {("G2" 1)}
wvSetCursor -win $_nWave4 48278668155.773773 -snap {("G2" 1)}
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 50675481468.471764 -snap {("G2" 0)}
wvGetSignalSetSignalFilter -win $_nWave4 "*rxd*"
wvSetPosition -win $_nWave4 {("G2" 1)}
wvSetPosition -win $_nWave4 {("G2" 1)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
{/soc_tb/if_uart0/Clk} \
{/soc_tb/if_uart0/Txd} \
}
wvAddSignal -win $_nWave4 -group {"G3" \
}
wvSetPosition -win $_nWave4 {("G2" 1)}
wvSetPosition -win $_nWave4 {("G2" 2)}
wvSetPosition -win $_nWave4 {("G2" 2)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
{/soc_tb/if_uart0/Clk} \
{/soc_tb/if_uart0/Rxd} \
{/soc_tb/if_uart0/Txd} \
}
wvAddSignal -win $_nWave4 -group {"G3" \
}
wvSelectSignal -win $_nWave4 {( "G2" 2 )} 
wvSetPosition -win $_nWave4 {("G2" 2)}
wvSetCursor -win $_nWave4 59064328062.914726 -snap {("G2" 2)}
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 28248156899.654869 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvReloadFile -win $_nWave4
wvSetCursor -win $_nWave4 2914247264.957603 -snap {("G3" 0)}
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 2179697269.406645 -snap {("G2" 2)}
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 1988075531.436830 -snap {("G2" 1)}
wvZoomAll -win $_nWave4
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvReloadFile -win $_nWave4
wvSetCursor -win $_nWave4 2395271724.622687 -snap {("G2" 2)}
wvZoomAll -win $_nWave4
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvReloadFile -win $_nWave4
wvSetCursor -win $_nWave4 7436184573.981385 -snap {("G2" 3)}
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 13702790962.598810 -snap {("G2" 1)}
wvZoomAll -win $_nWave4
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvReloadFile -win $_nWave4
wvSetCursor -win $_nWave4 6759430441.281963 -snap {("G3" 0)}
wvZoomAll -win $_nWave4
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvReloadFile -win $_nWave4
wvSetCursor -win $_nWave4 25704075007.350700 -snap {("G2" 1)}
wvZoomAll -win $_nWave4
wvZoom -win $_nWave4 57790653605.389137 62201388659.399757
wvZoom -win $_nWave4 60721681082.944580 62098483336.328423
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 58492361454.890831 -snap {("G2" 1)}
wvZoomAll -win $_nWave4
srcDeselectAll -win $_nTrace1
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvReloadFile -win $_nWave4
wvSetCursor -win $_nWave4 9207563048.337860 -snap {("G2" 2)}
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 8031414483.769156 -snap {("G2" 2)}
wvZoomAll -win $_nWave4
wvZoom -win $_nWave4 1814629213.906002 5712721599.333709
wvZoom -win $_nWave4 2642542640.899495 3043955211.563008
wvSetCursor -win $_nWave4 2759123443.802885 -snap {("G2" 1)}
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 1814629213.906002 -snap {("G3" 0)}
wvZoomAll -win $_nWave4
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvReloadFile -win $_nWave4
wvSetCursor -win $_nWave4 15962016233.432421 -snap {("G2" 1)}
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 27320062881.025806 -snap {("G2" 1)}
wvZoomAll -win $_nWave4
srcHBSelect \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0" \
           -win $_nTrace1
wvGetSignalOpen -win $_nWave4
srcHBDrag -win $_nTrace1
wvGetSignalSetScope -win $_nWave4 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvGetSignalSetSignalFilter -win $_nWave4 "*"
wvSetPosition -win $_nWave4 {("G2" 2)}
wvSetPosition -win $_nWave4 {("G2" 2)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
{/soc_tb/if_uart0/Clk} \
{/soc_tb/if_uart0/Rxd} \
{/soc_tb/if_uart0/Txd} \
}
wvAddSignal -win $_nWave4 -group {"G3" \
}
wvSetPosition -win $_nWave4 {("G2" 2)}
wvGetSignalSetOptions -win $_nWave4 -output on
wvGetSignalSetSignalFilter -win $_nWave4 "*"
wvSetPosition -win $_nWave4 {("G2" 3)}
wvSetPosition -win $_nWave4 {("G2" 3)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
{/soc_tb/if_uart0/Clk} \
{/soc_tb/if_uart0/Rxd} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/soc_tb/if_uart0/Txd} \
}
wvAddSignal -win $_nWave4 -group {"G3" \
}
wvSelectSignal -win $_nWave4 {( "G2" 3 )} 
wvSetPosition -win $_nWave4 {("G2" 3)}
wvSetCursor -win $_nWave4 8148779562.496170 -snap {("G2" 3)}
wvZoomAll -win $_nWave4
wvZoom -win $_nWave4 2093488083.241529 5126909591.611907
wvZoom -win $_nWave4 2420502147.699271 2659661687.377707
wvZoom -win $_nWave4 2483611020.598861 2515935077.450009
wvZoom -win $_nWave4 2493544881.995537 2496639461.854980
wvZoomAll -win $_nWave4
wvSetPosition -win $_nWave4 {("G2" 4)}
wvSetPosition -win $_nWave4 {("G2" 4)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
{/soc_tb/if_uart0/Clk} \
{/soc_tb/if_uart0/Rxd} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_addr\[31:0\]} \
{/soc_tb/if_uart0/Txd} \
}
wvAddSignal -win $_nWave4 -group {"G3" \
}
wvSelectSignal -win $_nWave4 {( "G2" 4 )} 
wvSetPosition -win $_nWave4 {("G2" 4)}
wvZoom -win $_nWave4 1879866850.257699 5596876304.176332
wvZoom -win $_nWave4 2391217306.105822 2785943973.778597
wvZoom -win $_nWave4 2485850087.252616 2515700696.070992
wvZoom -win $_nWave4 2493150638.403075 2496656824.153262
wvZoomAll -win $_nWave4
wvGetSignalSetOptions -win $_nWave4 -input on
wvGetSignalSetSignalFilter -win $_nWave4 "*"
wvGetSignalSetOptions -win $_nWave4 -output off
wvGetSignalSetSignalFilter -win $_nWave4 "*"
wvSetPosition -win $_nWave4 {("G2" 6)}
wvSetPosition -win $_nWave4 {("G2" 6)}
wvAddSignal -win $_nWave4 -clear
wvAddSignal -win $_nWave4 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
}
wvAddSignal -win $_nWave4 -group {"G2" \
{/soc_tb/if_uart0/Clk} \
{/soc_tb/if_uart0/Rxd} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_addr\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_start_addr\[31:0\]} \
{/soc_tb/if_uart0/Txd} \
}
wvAddSignal -win $_nWave4 -group {"G3" \
}
wvSelectSignal -win $_nWave4 {( "G2" 5 6 )} 
wvSetPosition -win $_nWave4 {("G2" 6)}
wvZoom -win $_nWave4 1634340508.086806 8083359810.267176
wvZoom -win $_nWave4 3045549880.727240 3372410875.125762
wvZoom -win $_nWave4 3123912371.741288 3157834389.663580
wvZoom -win $_nWave4 3136465974.511921 3141405544.297870
wvZoomAll -win $_nWave4
wvSelectSignal -win $_nWave4 {( "G2" 6 )} 
wvSelectSignal -win $_nWave4 {( "G2" 5 )} 
wvSelectSignal -win $_nWave4 {( "G2" 4 )} 
wvSelectSignal -win $_nWave4 {( "G2" 3 )} 
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvReloadFile -win $_nWave4
wvSetCursor -win $_nWave4 6477792616.101721 -snap {("G2" 1)}
wvZoomAll -win $_nWave4
wvZoom -win $_nWave4 58826902585.613098 62610794261.360077
wvSetCursor -win $_nWave4 61027830728.462021 -snap {("G2" 2)}
wvZoomAll -win $_nWave4
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvReloadFile -win $_nWave4
wvSetCursor -win $_nWave4 21795216052.302620 -snap {("G2" 5)}
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 54508135081.634865 -snap {("G2" 1)}
wvZoomAll -win $_nWave4
wvDisplayGridCount -win $_nWave3 -off
wvGetSignalClose -win $_nWave3
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvReloadFile -win $_nWave4
wvSetCursor -win $_nWave4 50472387498.271080 -snap {("G2" 6)}
wvZoomAll -win $_nWave4
wvSelectSignal -win $_nWave4 {( "G2" 3 )} 
wvSetCursor -win $_nWave4 3113858618.316686 -snap {("G2" 3)}
wvSelectSignal -win $_nWave4 {( "G2" 5 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "o_read_en" -line 15 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave4 {("G1" 2)}
wvSetPosition -win $_nWave4 {("G2" 3)}
wvSetPosition -win $_nWave4 {("G2" 5)}
wvSetPosition -win $_nWave4 {("G2" 6)}
wvSetPosition -win $_nWave4 {("G2" 7)}
wvSetPosition -win $_nWave4 {("G3" 0)}
wvCreateWindow
wvSetPosition -win $_nWave6 {("G1" 0)}
wvOpenFile -win $_nWave6 \
           {/mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_tientq_ws_9/testdbscp-lx61102-cpu_test_c-lxs_fw+testcase00-vseq+cpu_receive_data_uart_vseq_c-time+35000000000-fsdb_all-use_env_uart0__bk/all.fsdb}
wvSetCursor -win $_nWave6 1145382781.703840
wvSetFileTimeRange -win $_nWave6 -time_unit 1p 0 70278108860
verdiDockWidgetSetCurTab -dock windowDock_nWave_4
wvSelectSignal -win $_nWave4 {( "G2" 3 )} 
wvSelectAll -win $_nWave4
wvSetPosition -win $_nWave4 {("G2" 3)}
verdiDockWidgetSetCurTab -dock windowDock_nWave_6
wvAddSignal -win $_nWave6 "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD" \
           "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD" \
           "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]" \
           "/soc_tb/if_uart0/Clk" "/soc_tb/if_uart0/Rxd" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_addr\[31:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_start_addr\[31:0\]" \
           "/soc_tb/if_uart0/Txd"
wvSetPosition -win $_nWave6 {("G1" 0)}
wvSetPosition -win $_nWave6 {("G1" 10)}
wvSetPosition -win $_nWave6 {("G1" 10)}
wvSetPosition -win $_nWave4 {("G3" 0)}
wvSetCursor -win $_nWave6 2069078573.400486 -snap {("G1" 7)}
wvZoomAll -win $_nWave6
wvSetCursor -win $_nWave6 12832446108.371481 -snap {("G1" 5)}
wvZoomAll -win $_nWave6
wvGetSignalOpen -win $_nWave6
wvGetSignalSetScope -win $_nWave6 "/soc_tb"
wvSetPosition -win $_nWave6 {("G1" 8)}
wvSetPosition -win $_nWave6 {("G1" 10)}
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart"
wvSelectSignal -win $_nWave6 {( "G1" 6 )} 
wvSetPosition -win $_nWave6 {("G1" 6)}
wvSetPosition -win $_nWave6 {("G1" 10)}
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvGetSignalSetOptions -win $_nWave6 -input on
wvGetSignalSetSignalFilter -win $_nWave6 "*"
wvSetPosition -win $_nWave6 {("G1" 11)}
wvSetPosition -win $_nWave6 {("G1" 11)}
wvAddSignal -win $_nWave6 -clear
wvAddSignal -win $_nWave6 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
{/soc_tb/if_uart0/Clk} \
{/soc_tb/if_uart0/Rxd} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_addr\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_start_addr\[31:0\]} \
{/soc_tb/if_uart0/Txd} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_data_length\[16:0\]} \
}
wvAddSignal -win $_nWave6 -group {"G2" \
}
wvSelectSignal -win $_nWave6 {( "G1" 11 )} 
wvSetPosition -win $_nWave6 {("G1" 11)}
wvSetPosition -win $_nWave6 {("G1" 12)}
wvSetPosition -win $_nWave6 {("G1" 12)}
wvAddSignal -win $_nWave6 -clear
wvAddSignal -win $_nWave6 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
{/soc_tb/if_uart0/Clk} \
{/soc_tb/if_uart0/Rxd} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_addr\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_start_addr\[31:0\]} \
{/soc_tb/if_uart0/Txd} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_data_length\[16:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_rdvalid} \
}
wvAddSignal -win $_nWave6 -group {"G2" \
}
wvSelectSignal -win $_nWave6 {( "G1" 12 )} 
wvSetPosition -win $_nWave6 {("G1" 12)}
wvSetCursor -win $_nWave6 4050405689.481699 -snap {("G1" 10)}
wvZoomAll -win $_nWave6
wvGetSignalSetOptions -win $_nWave6 -output on
wvGetSignalSetSignalFilter -win $_nWave6 "*"
wvGetSignalSetOptions -win $_nWave6 -input off
wvGetSignalSetSignalFilter -win $_nWave6 "*"
wvSelectSignal -win $_nWave6 {( "G1" 8 )} 
wvSelectSignal -win $_nWave6 {( "G1" 9 )} 
wvSelectSignal -win $_nWave6 {( "G1" 8 )} 
wvSetPosition -win $_nWave6 {("G1" 5)}
wvSetPosition -win $_nWave6 {("G1" 9)}
wvSetPosition -win $_nWave6 {("G1" 8)}
wvAddSignal -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done"
wvSetPosition -win $_nWave6 {("G1" 8)}
wvSetPosition -win $_nWave6 {("G1" 9)}
wvGetSignalSetOptions -win $_nWave6 -all on
wvGetSignalSetSignalFilter -win $_nWave6 "*"
wvSetPosition -win $_nWave6 {("G1" 10)}
wvSetPosition -win $_nWave6 {("G1" 9)}
wvSetPosition -win $_nWave6 {("G1" 8)}
wvSetPosition -win $_nWave6 {("G1" 5)}
wvSetPosition -win $_nWave6 {("G1" 3)}
wvSetPosition -win $_nWave6 {("G1" 2)}
wvSetPosition -win $_nWave6 {("G1" 4)}
wvSetPosition -win $_nWave6 {("G1" 6)}
wvSetPosition -win $_nWave6 {("G1" 8)}
wvSetPosition -win $_nWave6 {("G1" 9)}
wvAddSignal -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_en"
wvSetPosition -win $_nWave6 {("G1" 9)}
wvSetPosition -win $_nWave6 {("G1" 10)}
wvSelectSignal -win $_nWave6 {( "G1" 6 10 )} 
wvGetSignalClose -win $_nWave6
wvSelectSignal -win $_nWave6 {( "G1" 6 7 10 )} 
wvSelectSignal -win $_nWave6 {( "G1" 6 7 8 10 )} 
wvSelectSignal -win $_nWave6 {( "G1" 6 7 8 9 10 )} 
wvSetPosition -win $_nWave6 {("G1" 8)}
wvSetPosition -win $_nWave6 {("G1" 11)}
wvSetPosition -win $_nWave6 {("G1" 14)}
wvSetPosition -win $_nWave6 {("G2" 0)}
wvMoveSelected -win $_nWave6
wvSetPosition -win $_nWave6 {("G2" 5)}
wvSetPosition -win $_nWave6 {("G2" 5)}
wvScrollDown -win $_nWave6 1
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvGetSignalOpen -win $_nWave6
wvGetSignalSetScope -win $_nWave6 "/soc_tb"
wvGetSignalSetScope -win $_nWave6 "/top"
wvGetSignalSetScope -win $_nWave6 "/top/dut"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_MEM"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP"
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top"
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl"
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_PERI"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_PERI/u_uart0"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart"
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvSelectSignal -win $_nWave6 {( "G2" 1 )} 
wvScrollDown -win $_nWave6 1
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 1
wvScrollDown -win $_nWave6 1
wvScrollDown -win $_nWave6 1
wvScrollDown -win $_nWave6 1
wvScrollDown -win $_nWave6 1
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvZoom -win $_nWave6 1926412462.070564 7409278700.271399
wvZoom -win $_nWave6 2380456360.710153 2876470703.762420
wvZoom -win $_nWave6 2464333525.192742 2539581351.765738
wvZoom -win $_nWave6 2489520863.105438 2502821453.188626
wvSelectSignal -win $_nWave6 {( "G2" 1 )} 
wvSelectSignal -win $_nWave6 {( "G2" 2 )} 
wvSelectSignal -win $_nWave6 {( "G2" 3 )} 
wvSelectSignal -win $_nWave6 {( "G2" 4 )} 
wvSelectSignal -win $_nWave6 {( "G2" 4 )} 
wvSelectSignal -win $_nWave6 {( "G2" 3 )} 
wvSelectSignal -win $_nWave6 {( "G2" 4 )} 
wvSelectSignal -win $_nWave6 {( "G2" 3 )} 
wvZoom -win $_nWave6 2495065089.590616 2495416810.135613
wvZoomAll -win $_nWave6
wvZoom -win $_nWave6 2469759566.757133 7705649848.282256
wvZoom -win $_nWave6 2987154431.041320 3544629179.178650
wvZoom -win $_nWave6 3124098471.467219 3171815516.714882
wvSetCursor -win $_nWave6 3142328574.348675 -snap {("G2" 2)}
wvZoomAll -win $_nWave6
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "o_start_clr" -line 20 -pos 1 -win $_nTrace1
verdiDockWidgetSetCurTab -dock windowDock_nWave_4
wvZoomAll -win $_nWave4
verdiDockWidgetSetCurTab -dock windowDock_nWave_3
wvTpfCloseForm -win $_nWave3
wvGetSignalClose -win $_nWave3
wvCloseWindow -win $_nWave3
verdiDockWidgetSetCurTab -dock windowDock_nWave_6
wvSetCursor -win $_nWave6 12645168981.796522 -snap {("G2" 4)}
wvZoomAll -win $_nWave6
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "o_checksum_done" -line 13 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "o_read_addr" -line 14 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "o_start_clr" -line 20 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "o_busy" -line 18 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "o_checksum_result" -line 17 -pos 1 -win $_nTrace1
srcAction -pos 16 1 6 -win $_nTrace1 -name "o_checksum_result" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_sum_16" -line 263 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "w_sum_byte" -line 258 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave4
wvSetPosition -win $_nWave6 {("G2" 0)}
wvSetPosition -win $_nWave6 {("G2" 1)}
wvSetPosition -win $_nWave6 {("G2" 3)}
wvSetPosition -win $_nWave6 {("G2" 4)}
wvSetPosition -win $_nWave6 {("G2" 5)}
wvSetPosition -win $_nWave6 {("G3" 0)}
wvAddSignal -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_sum_byte\[9:0\]"
wvSetPosition -win $_nWave6 {("G3" 0)}
wvSetPosition -win $_nWave6 {("G3" 1)}
wvSetPosition -win $_nWave6 {("G3" 1)}
wvZoom -win $_nWave6 1481855740.054280 8495972909.644538
wvZoom -win $_nWave6 2653315810.131705 3610008200.695164
wvZoom -win $_nWave6 3061424672.633018 3183258150.345693
wvZoom -win $_nWave6 3133151271.202883 3152736193.507426
wvZoom -win $_nWave6 3139039014.024242 3140279256.146521
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
srcDeselectAll -win $_nTrace1
srcSelect -signal "w_cal_valid" -line 258 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave4
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave6
wvSetCursor -win $_nWave6 3138397316.029045 -snap {("G3" 2)}
wvSetCursor -win $_nWave6 3138286842.130888 -snap {("G3" 1)}
wvSelectSignal -win $_nWave6 {( "G3" 1 )} 
wvSetCursor -win $_nWave6 3138096965.118430 -snap {("G3" 1)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk" -line 254 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave6
wvSetPosition -win $_nWave6 {("G3" 1)}
wvSetPosition -win $_nWave6 {("G3" 0)}
wvMoveSelected -win $_nWave6
wvSetPosition -win $_nWave6 {("G3" 0)}
wvSetPosition -win $_nWave6 {("G3" 1)}
wvScrollDown -win $_nWave6 1
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "w_cal_valid" -line 258 -pos 1 -win $_nTrace1
wvSetCursor -win $_nWave6 3138538860.711058 -snap {("G3" 1)}
wvSetCursor -win $_nWave6 3137900183.487338 -snap {("G3" 1)}
wvSetCursor -win $_nWave6 3137858755.775529 -snap {("G3" 1)}
wvSetCursor -win $_nWave6 3138531956.092423 -snap {("G3" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "r_sum_16" -line 259 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave6
wvScrollDown -win $_nWave6 1
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "w_sum_byte" -line 258 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "w_sum_byte" -line 258 -pos 1 -win $_nTrace1
srcAction -pos 257 14 5 -win $_nTrace1 -name "w_sum_byte" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "data01" -line 252 -pos 1 -win $_nTrace1
srcSelect -signal "data23" -line 252 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave6
wvScrollDown -win $_nWave6 2
wvSetPosition -win $_nWave6 {("G3" 3)}
wvSetPosition -win $_nWave6 {("G3" 5)}
wvSetPosition -win $_nWave6 {("G4" 0)}
wvMoveSelected -win $_nWave6
wvSetPosition -win $_nWave6 {("G4" 2)}
wvSetPosition -win $_nWave6 {("G4" 2)}
wvScrollDown -win $_nWave6 1
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_eflash_data\[7:0\]" -line 244 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave6
wvSelectSignal -win $_nWave6 {( "G4" 3 )} 
wvSetCursor -win $_nWave6 3139156824.078874 -snap {("G4" 3)}
wvZoomAll -win $_nWave6
wvScrollDown -win $_nWave6 1
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvZoom -win $_nWave6 1778226888.065136 9730852693.023106
wvZoom -win $_nWave6 2558547165.378204 3986367247.270449
wvZoom -win $_nWave6 3078206109.587912 3245132883.253811
wvZoom -win $_nWave6 3124903787.397502 3156151735.982141
wvZoom -win $_nWave6 3135972128.266576 3142560944.147680
wvSetPosition -win $_nWave6 {("G5" 0)}
wvMoveSelected -win $_nWave6
wvSetPosition -win $_nWave6 {("G5" 1)}
wvSetPosition -win $_nWave6 {("G5" 1)}
srcTraceConnectivity \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0.i_eflash_data\[7:0\]" \
           -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_ready" -line 11 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_eflash_data" -line 8 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave6 {("G6" 0)}
wvAddSignal -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]"
wvSetPosition -win $_nWave6 {("G6" 0)}
wvSetPosition -win $_nWave6 {("G6" 1)}
wvSetPosition -win $_nWave6 {("G6" 1)}
wvScrollDown -win $_nWave6 1
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvSetCursor -win $_nWave6 3139548521.019835 -snap {("G3" 4)}
wvSetCursor -win $_nWave6 3140864450.148489 -snap {("G3" 4)}
wvSetCursor -win $_nWave6 3141529292.391190 -snap {("G3" 4)}
wvSetCursor -win $_nWave6 3141873176.309827 -snap {("G3" 4)}
wvZoomAll -win $_nWave6
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0B_TOP" -win $_nTrace1
wvSelectSignal -win $_nWave6 {( "G4" 1 )} 
wvSetOptions -win $_nWave6 -hierName on
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0B_TOP.u_eflash_sub_top" -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0B_TOP.u_eflash_sub_top.u_eflash_sfr" \
           -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0B_TOP.u_eflash_sub_top.u_eflash_ctrl" \
           -win $_nTrace1
srcHBSelect \
           "top.dut.u_DTOP.u_MEM.u_FLASH0B_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0" \
           -win $_nTrace1
wvGetSignalOpen -win $_nWave6
wvGetSignalSetScope -win $_nWave6 "/soc_tb"
wvGetSignalSetScope -win $_nWave6 "/top"
wvGetSignalSetScope -win $_nWave6 "/top/dut"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_MEM"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP"
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top"
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl"
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_PERI"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_PERI/u_uart0"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart"
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
srcHBDrag -win $_nTrace1
wvSetPosition -win $_nWave6 {("G5" 1)}
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvGetSignalSetOptions -win $_nWave6 -output on
wvGetSignalSetSignalFilter -win $_nWave6 "*"
wvSetPosition -win $_nWave6 {("G6" 3)}
wvSetPosition -win $_nWave6 {("G6" 3)}
wvAddSignal -win $_nWave6 -clear
wvAddSignal -win $_nWave6 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
{/soc_tb/if_uart0/Clk} \
{/soc_tb/if_uart0/Rxd} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_start_addr\[31:0\]} \
{/soc_tb/if_uart0/Txd} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_data_length\[16:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_rdvalid} \
}
wvAddSignal -win $_nWave6 -group {"G2" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_addr\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_en} \
}
wvAddSignal -win $_nWave6 -group {"G3" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/clk} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/r_sum_16\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_sum_byte\[9:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_cal_valid} \
}
wvAddSignal -win $_nWave6 -group {"G4" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/data01\[8:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/data23\[8:0\]} \
}
wvAddSignal -win $_nWave6 -group {"G5" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[7:0\]} \
}
wvAddSignal -win $_nWave6 -group {"G6" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
}
wvAddSignal -win $_nWave6 -group {"G7" \
}
wvSelectSignal -win $_nWave6 {( "G6" 2 3 )} 
wvSetPosition -win $_nWave6 {("G6" 3)}
wvSelectSignal -win $_nWave6 {( "G6" 2 )} 
wvSetPosition -win $_nWave6 {("G6" 2)}
wvSetPosition -win $_nWave6 {("G7" 0)}
wvMoveSelected -win $_nWave6
wvSetPosition -win $_nWave6 {("G7" 1)}
wvSetPosition -win $_nWave6 {("G7" 1)}
wvSelectSignal -win $_nWave6 {( "G6" 2 )} 
wvSetPosition -win $_nWave6 {("G6" 2)}
wvSetPosition -win $_nWave6 {("G7" 0)}
wvMoveSelected -win $_nWave6
wvSetPosition -win $_nWave6 {("G7" 1)}
wvScrollDown -win $_nWave6 1
wvSelectSignal -win $_nWave6 {( "G7" 2 )} 
wvSelectGroup -win $_nWave6 {G7}
wvSelectSignal -win $_nWave6 {( "G7" 2 )} 
wvSelectSignal -win $_nWave6 {( "G7" 1 )} 
wvSelectSignal -win $_nWave6 {( "G7" 2 )} 
wvSelectSignal -win $_nWave6 {( "G7" 1 )} 
wvSelectSignal -win $_nWave6 {( "G7" 2 )} 
wvSetCursor -win $_nWave6 11095862077.311754 -snap {("G7" 0)}
wvZoomAll -win $_nWave6
wvSelectSignal -win $_nWave6 {( "G7" 2 )} 
wvSelectSignal -win $_nWave6 {( "G7" 1 )} 
wvSelectSignal -win $_nWave6 {( "G7" 2 )} 
wvSelectSignal -win $_nWave6 {( "G3" 4 )} 
wvSetCursor -win $_nWave6 13877960702.180588 -snap {("G5" 1)}
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvSetCursor -win $_nWave6 12633300549.518652 -snap {("G3" 2)}
wvScrollDown -win $_nWave6 1
wvScrollDown -win $_nWave6 1
wvScrollDown -win $_nWave6 1
wvSelectSignal -win $_nWave6 {( "G4" 2 )} 
wvScrollDown -win $_nWave6 4
wvSelectSignal -win $_nWave6 {( "G7" 2 )} 
wvSelectSignal -win $_nWave6 {( "G7" 1 )} 
wvSelectSignal -win $_nWave6 {( "G7" 2 )} 
wvGetSignalOpen -win $_nWave6
wvGetSignalSetScope -win $_nWave6 "/soc_tb"
wvGetSignalSetScope -win $_nWave6 "/top"
wvGetSignalSetScope -win $_nWave6 "/top/dut"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_MEM"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP"
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top"
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl"
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_PERI"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_PERI/u_uart0"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart"
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvGetSignalSetOptions -win $_nWave6 -input on
wvGetSignalSetSignalFilter -win $_nWave6 "*"
wvGetSignalSetOptions -win $_nWave6 -output off
wvGetSignalSetSignalFilter -win $_nWave6 "*"
wvGetSignalSetOptions -win $_nWave6 -all on
wvGetSignalSetSignalFilter -win $_nWave6 "*"
wvGetSignalSetOptions -win $_nWave6 -input on
wvGetSignalSetSignalFilter -win $_nWave6 "*"
wvSetPosition -win $_nWave6 {("G7" 2)}
wvSetPosition -win $_nWave6 {("G7" 1)}
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvSetPosition -win $_nWave6 {("G7" 3)}
wvSetPosition -win $_nWave6 {("G7" 3)}
wvAddSignal -win $_nWave6 -clear
wvAddSignal -win $_nWave6 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
{/soc_tb/if_uart0/Clk} \
{/soc_tb/if_uart0/Rxd} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_start_addr\[31:0\]} \
{/soc_tb/if_uart0/Txd} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_data_length\[16:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_rdvalid} \
}
wvAddSignal -win $_nWave6 -group {"G2" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_addr\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_en} \
}
wvAddSignal -win $_nWave6 -group {"G3" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/clk} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/r_sum_16\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_sum_byte\[9:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_cal_valid} \
}
wvAddSignal -win $_nWave6 -group {"G4" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/data01\[8:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/data23\[8:0\]} \
}
wvAddSignal -win $_nWave6 -group {"G5" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[7:0\]} \
}
wvAddSignal -win $_nWave6 -group {"G6" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]} \
}
wvAddSignal -win $_nWave6 -group {"G7" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
}
wvAddSignal -win $_nWave6 -group {"G8" \
}
wvSelectSignal -win $_nWave6 {( "G7" 2 3 )} 
wvSetPosition -win $_nWave6 {("G7" 3)}
wvZoom -win $_nWave6 22341649740.281754 31178736824.181499
wvZoom -win $_nWave6 23912687444.084396 25805073769.121517
wvZoom -win $_nWave6 24272049695.703213 24551128891.112728
wvZoom -win $_nWave6 24354927759.791313 24395239199.128242
wvZoom -win $_nWave6 24363437952.538910 24374106232.444237
wvSetCursor -win $_nWave6 24366950941.670540 -snap {("G7" 3)}
wvZoomAll -win $_nWave6
wvSetCursor -win $_nWave6 13407501434.735558 -snap {("G6" 1)}
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
verdiDockWidgetMaximize -dock windowDock_nWave_6
wvSelectSignal -win $_nWave6 {( "G2" 1 )} 
wvZoom -win $_nWave6 23301807306.358589 27173492212.645863
wvZoom -win $_nWave6 24115252215.953789 24674495591.306396
wvZoom -win $_nWave6 24320308120.245956 24379056919.272896
wvZoom -win $_nWave6 24334372226.673725 24346240670.921589
wvZoom -win $_nWave6 24337237436.948017 24341361421.615963
wvSetCursor -win $_nWave6 24339141134.912979 -snap {("G2" 3)}
wvSetCursor -win $_nWave6 24339795140.562340 -snap {("G5" 0)}
wvZoomAll -win $_nWave6
wvZoom -win $_nWave6 44309282816.398796 49328133620.845261
wvSetCursor -win $_nWave6 45581738929.436523 -snap {("G4" 0)}
wvZoomAll -win $_nWave6
wvZoom -win $_nWave6 1505655241.333940 7241484732.129900
wvZoom -win $_nWave6 2212494835.148260 3180053951.272427
wvSetCursor -win $_nWave6 2491034580.698896 -snap {("G2" 3)}
wvSetCursor -win $_nWave6 2374732020.275890 -snap {("G2" 5)}
wvZoomAll -win $_nWave6
wvZoom -win $_nWave6 23086713700.453739 26886700738.106064
wvZoom -win $_nWave6 24207517958.020180 24414789978.255764
wvZoomOut -win $_nWave6
wvSetCursor -win $_nWave6 24383175761.025528 -snap {("G2" 5)}
wvZoom -win $_nWave6 24307385385.949486 24367682700.927109
wvZoom -win $_nWave6 24336742260.504860 24344964621.638172
wvZoom -win $_nWave6 24338536230.201813 24340695638.176220
wvSetCursor -win $_nWave6 24339057541.822105 -snap {("G2" 1)}
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvSelectSignal -win $_nWave6 {( "G7" 1 )} 
wvZoom -win $_nWave6 22154641408.199398 29324428271.694347
wvZoom -win $_nWave6 24102795616.553780 25667112750.407223
wvZoomAll -win $_nWave6
wvZoom -win $_nWave6 43807397735.954147 51120580336.718994
wvZoom -win $_nWave6 46008739569.311539 46858250679.501396
wvZoom -win $_nWave6 46180357975.408958 46285045203.129326
wvZoom -win $_nWave6 46206899888.690720 46221809887.790291
wvZoom -win $_nWave6 46209023434.016304 46213647039.797684
wvSetCursor -win $_nWave6 46211153094.854759 -snap {("G7" 1)}
wvZoomAll -win $_nWave6
wvZoom -win $_nWave6 1505655241.333940 30113104826.678791
wvZoom -win $_nWave6 1852412206.003847 5146603370.376890
wvZoom -win $_nWave6 2208451049.021097 2943820995.815483
wvZoom -win $_nWave6 2466944727.288117 2515969390.407743
wvZoom -win $_nWave6 2489921943.133966 2501261991.471738
wvSetCursor -win $_nWave6 2492785591.703145 -snap {("G2" 3)}
wvSelectSignal -win $_nWave6 {( "G2" 5 )} 
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoomOut -win $_nWave6
wvZoom -win $_nWave6 22473730704.984898 28901499194.719616
wvZoom -win $_nWave6 24038470307.026531 24876028019.325298
wvZoom -win $_nWave6 24313426121.663536 24420024375.956104
wvZoom -win $_nWave6 24332807622.440468 24351650748.199253
wvZoom -win $_nWave6 24337128217.942265 24341448813.444534
wvSelectSignal -win $_nWave6 {( "G2" 5 )} 
wvSelectSignal -win $_nWave6 {( "G2" 1 )} 
wvSelectSignal -win $_nWave6 {( "G2" 2 )} 
wvSelectSignal -win $_nWave6 {( "G2" 5 )} 
wvSelectSignal -win $_nWave6 {( "G2" 4 )} 
wvSelectSignal -win $_nWave6 {( "G2" 3 )} 
wvSelectSignal -win $_nWave6 {( "G2" 2 )} 
wvGetSignalOpen -win $_nWave6
wvGetSignalSetScope -win $_nWave6 "/soc_tb"
wvGetSignalSetScope -win $_nWave6 "/top"
wvGetSignalSetScope -win $_nWave6 "/top/dut"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_MEM"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP"
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top"
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl"
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_PERI"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_PERI/u_uart0"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart"
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvSetPosition -win $_nWave6 {("G2" 2)}
wvSetPosition -win $_nWave6 {("G7" 3)}
wvGetSignalSetScope -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvGetSignalSetOptions -win $_nWave6 -all on
wvGetSignalSetSignalFilter -win $_nWave6 "*"
wvGetSignalSetOptions -win $_nWave6 -input on
wvGetSignalSetSignalFilter -win $_nWave6 "*"
wvSetPosition -win $_nWave6 {("G1" 8)}
wvSetPosition -win $_nWave6 {("G2" 0)}
wvSetPosition -win $_nWave6 {("G2" 1)}
wvSetPosition -win $_nWave6 {("G2" 2)}
wvSetPosition -win $_nWave6 {("G2" 3)}
wvSetPosition -win $_nWave6 {("G2" 4)}
wvSetPosition -win $_nWave6 {("G2" 5)}
wvAddSignal -win $_nWave6 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]"
wvSetPosition -win $_nWave6 {("G2" 5)}
wvSetPosition -win $_nWave6 {("G2" 6)}
wvZoom -win $_nWave6 24338332747.595177 24339262330.263847
wvZoomOut -win $_nWave6
wvSetCursor -win $_nWave6 24338636035.677143 -snap {("G3" 3)}
wvZoomAll -win $_nWave6
wvSetCursor -win $_nWave6 28392355979.440002 -snap {("G4" 1)}
wvZoomAll -win $_nWave6
wvZoom -win $_nWave6 22943317963.183842 26169722051.756569
wvZoom -win $_nWave6 24269728532.926567 24585850953.726116
wvZoom -win $_nWave6 24331037123.620518 24354027845.133213
wvZoom -win $_nWave6 24337795002.367668 24342671822.082485
wvZoom -win $_nWave6 24338499431.874363 24339573317.427727
wvSetCursor -win $_nWave6 24338898613.570644 -snap {("G3" 4)}
wvZoomAll -win $_nWave6
wvZoom -win $_nWave6 22656526488.644043 28248960242.170105
wvZoom -win $_nWave6 24125246464.313511 24554564611.048843
wvZoom -win $_nWave6 24301310269.940853 24362021927.054943
wvZoom -win $_nWave6 24333567170.588493 24342213982.359291
wvZoom -win $_nWave6 24337322856.500652 24340100317.251270
wvSetCursor -win $_nWave6 24337712823.211449 -snap {("G2" 1)}
wvZoomAll -win $_nWave6
wvSetCursor -win $_nWave6 51980954760.338394 -snap {("G6" 0)}
wvSetCursor -win $_nWave6 49830018701.289909 -snap {("G5" 1)}
wvZoomAll -win $_nWave6
wvSetCursor -win $_nWave6 38716849062.872734 -snap {("G3" 4)}
wvZoomAll -win $_nWave6
wvSetCursor -win $_nWave6 63309218004.660416 -snap {("G3" 3)}
wvZoomAll -win $_nWave6
wvSetCursor -win $_nWave6 70120515524.980621 -snap {("G1" 4)}
wvZoom -win $_nWave6 68901651758.186478 70837494211.330109
wvZoom -win $_nWave6 70027960094.554474 70587203469.907074
wvSetCursor -win $_nWave6 70273688244.326141 -snap {("G1" 4)}
wvSetCursor -win $_nWave6 70277642490.414490 -snap {("G1" 4)}
wvZoom -win $_nWave6 70258436152.271072 70391750734.678360
wvZoom -win $_nWave6 70274191512.009048 70288330937.415878
wvSetCursor -win $_nWave6 70278004872.185486 -snap {("G1" 4)}
wvSetCursor -win $_nWave6 70278090565.672791 -snap {("G1" 4)}
wvSetCursor -win $_nWave6 70274591414.940796 -snap {("G3" 3)}
wvZoomAll -win $_nWave6
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvDisplayGridCount -win $_nWave6 -off
wvGetSignalClose -win $_nWave6
wvReloadFile -win $_nWave6
wvSetCursor -win $_nWave6 36565913003.824249 -snap {("G2" 3)}
wvZoomAll -win $_nWave6
wvCreateWindow
verdiDockWidgetSetCurTab -dock windowDock_nWave_7
wvSetPosition -win $_nWave7 {("G1" 0)}
wvOpenFile -win $_nWave7 \
           {/mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_tientq_ws_9/testdbscp-lx61102-cpu_test_c-lxs_fw+testcase00-vseq+cpu_receive_data_uart_vseq_c-time+35000000000-fsdb_all-use_env_uart0/all.fsdb}
verdiDockWidgetSetCurTab -dock windowDock_nWave_6
wvSelectGroup -win $_nWave6 {G3}
wvSelectAll -win $_nWave6
wvSetPosition -win $_nWave6 {("G3" 2)}
wvSetPosition -win $_nWave6 {("G7" 4)}
wvSetPosition -win $_nWave6 {("G8" 0)}
verdiDockWidgetSetCurTab -dock windowDock_nWave_7
wvAddSignal -win $_nWave7 "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD" \
           "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD" \
           "/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]" \
           "/soc_tb/if_uart0/Clk" "/soc_tb/if_uart0/Rxd" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_start_addr\[31:0\]" \
           "/soc_tb/if_uart0/Txd" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_data_length\[16:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_rdvalid" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_addr\[31:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_en" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/clk" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/r_sum_16\[15:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_sum_byte\[9:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_cal_valid" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/data01\[8:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/data23\[8:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[7:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done"
wvSetPosition -win $_nWave7 {("G1" 0)}
wvSetPosition -win $_nWave7 {("G1" 27)}
wvSetPosition -win $_nWave7 {("G1" 27)}
wvSetPosition -win $_nWave6 {("G2" 6)}
wvSetCursor -win $_nWave7 1882909962.390852 -snap {("G1" 18)}
wvZoomAll -win $_nWave7
wvSetCursor -win $_nWave7 38538063716.223991 -snap {("G1" 10)}
wvZoom -win $_nWave7 22744496508.319408 29255493574.530769
wvZoom -win $_nWave7 24280926122.546112 24491808618.617737
wvZoom -win $_nWave7 24335323805.158825 24348496338.169659
wvZoom -win $_nWave7 24338264578.858608 24339948286.085556
wvZoomOut -win $_nWave7
wvZoomOut -win $_nWave7
wvZoomAll -win $_nWave7
wvSetCursor -win $_nWave7 34270721044.450329 -snap {("G1" 17)}
wvZoomAll -win $_nWave7
wvSetCursor -win $_nWave7 26709565094.931767 -snap {("G1" 23)}
wvZoomAll -win $_nWave7
wvSetCursor -win $_nWave7 52615099230.353035 -snap {("G1" 26)}
wvZoomAll -win $_nWave7
wvSelectSignal -win $_nWave7 {( "G1" 7 )} 
wvSelectSignal -win $_nWave7 {( "G1" 8 )} 
wvSelectSignal -win $_nWave7 {( "G1" 7 )} 
wvSetOptions -win $_nWave7 -hierName on
wvSetCursor -win $_nWave7 8680962046.054224 -snap {("G1" 10)}
wvZoomAll -win $_nWave7
wvSelectSignal -win $_nWave7 {( "G1" 21 )} 
wvSelectSignal -win $_nWave7 {( "G1" 7 )} 
wvSelectSignal -win $_nWave7 {( "G1" 5 )} 
wvSelectSignal -win $_nWave7 {( "G1" 7 )} 
wvSetPosition -win $_nWave7 {("G1" 7)}
wvSetPosition -win $_nWave7 {("G1" 6)}
wvSetPosition -win $_nWave7 {("G1" 5)}
wvMoveSelected -win $_nWave7
wvSetPosition -win $_nWave7 {("G1" 5)}
wvSetPosition -win $_nWave7 {("G1" 6)}
wvSetCursor -win $_nWave7 48062887425.714844 -snap {("G1" 9)}
wvZoomAll -win $_nWave7
verdiDockWidgetSetCurTab -dock windowDock_nWave_6
wvSetCursor -win $_nWave6 501885080.444647 -snap {("G5" 1)}
wvSetCursor -win $_nWave6 17064092735.117983 -snap {("G6" 0)}
wvZoomAll -win $_nWave6
wvScrollDown -win $_nWave6 1
wvScrollDown -win $_nWave6 1
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 1
wvScrollDown -win $_nWave6 1
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvSelectGroup -win $_nWave6 {G3}
wvGetSignalOpen -win $_nWave6
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_SYS/u_syscon"
wvGetSignalSetScope -win $_nWave6 "/top/dut/u_DTOP/u_SYS/u_syscon/pmureg2pmu"
wvGetSignalSetOptions -win $_nWave6 -all on
wvGetSignalSetSignalFilter -win $_nWave6 "*"
wvSetPosition -win $_nWave6 {("G2" 7)}
wvSetPosition -win $_nWave6 {("G2" 7)}
wvAddSignal -win $_nWave6 -clear
wvAddSignal -win $_nWave6 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
{/soc_tb/if_uart0/Clk} \
{/soc_tb/if_uart0/Rxd} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_start_addr\[31:0\]} \
{/soc_tb/if_uart0/Txd} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_data_length\[16:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_rdvalid} \
}
wvAddSignal -win $_nWave6 -group {"G2" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_addr\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_en} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]} \
{/top/dut/u_DTOP/u_SYS/u_syscon/pmureg2pmu/pmrm} \
}
wvAddSignal -win $_nWave6 -group {"G3" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/clk} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/r_sum_16\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_sum_byte\[9:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_cal_valid} \
}
wvAddSignal -win $_nWave6 -group {"G4" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/data01\[8:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/data23\[8:0\]} \
}
wvAddSignal -win $_nWave6 -group {"G5" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[7:0\]} \
}
wvAddSignal -win $_nWave6 -group {"G6" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]} \
}
wvAddSignal -win $_nWave6 -group {"G7" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
}
wvAddSignal -win $_nWave6 -group {"G8" \
}
wvSelectSignal -win $_nWave6 {( "G2" 7 )} 
wvSetPosition -win $_nWave6 {("G2" 7)}
wvSelectSignal -win $_nWave6 {( "G2" 7 )} 
wvSetPosition -win $_nWave6 {("G3" 1)}
wvSetPosition -win $_nWave6 {("G7" 1)}
wvSetPosition -win $_nWave6 {("G7" 2)}
wvSetPosition -win $_nWave6 {("G7" 3)}
wvSetPosition -win $_nWave6 {("G7" 4)}
wvSetPosition -win $_nWave6 {("G8" 0)}
wvMoveSelected -win $_nWave6
wvSetPosition -win $_nWave6 {("G8" 1)}
wvSetPosition -win $_nWave6 {("G8" 1)}
wvScrollDown -win $_nWave6 0
wvSelectSignal -win $_nWave6 {( "G8" 1 )} 
wvExpandBus -win $_nWave6
wvScrollDown -win $_nWave6 1
wvSelectSignal -win $_nWave6 {( "G8" 5 )} 
wvSetCursor -win $_nWave6 46030031663.637581 -snap {("G8" 5)}
wvSelectSignal -win $_nWave6 {( "G8" 5 )} 
wvSetPosition -win $_nWave6 {("G9" 0)}
verdiDockWidgetSetCurTab -dock windowDock_nWave_7
wvAddSignal -win $_nWave7 \
           "/top/dut/u_DTOP/u_SYS/u_syscon/pmureg2pmu/pmrm.remap\[3:0\]"
wvSetPosition -win $_nWave7 {("G1" 6)}
wvSetPosition -win $_nWave7 {("G1" 7)}
wvSetPosition -win $_nWave6 {("G8" 5)}
wvSetPosition -win $_nWave7 {("G1" 11)}
wvSetPosition -win $_nWave7 {("G1" 25)}
wvSetPosition -win $_nWave7 {("G1" 26)}
wvSetPosition -win $_nWave7 {("G1" 28)}
wvSetPosition -win $_nWave7 {("G2" 0)}
wvMoveSelected -win $_nWave7
wvSetPosition -win $_nWave7 {("G2" 1)}
wvSetPosition -win $_nWave7 {("G2" 1)}
wvSetCursor -win $_nWave7 38164473385.396919 -snap {("G1" 27)}
wvZoomAll -win $_nWave7
wvSetCursor -win $_nWave7 34300386620.994736 -snap {("G3" 0)}
wvSetCursor -win $_nWave7 34300386620.994736 -snap {("G1" 21)}
wvGetSignalOpen -win $_nWave7
wvGetSignalSetScope -win $_nWave7 "/soc_tb"
wvGetSignalSetScope -win $_nWave7 "/top/dut/u_DTOP/u_SYS/u_syscon/pmureg2pmu"
wvGetSignalSetScope -win $_nWave7 "/top/dut/u_DTOP/u_SYS/u_syscon/pmu2tm"
wvGetSignalSetScope -win $_nWave7 "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu"
wvGetSignalSetSignalFilter -win $_nWave7 "*boot"
wvSetPosition -win $_nWave7 {("G2" 1)}
wvSetPosition -win $_nWave7 {("G2" 1)}
wvAddSignal -win $_nWave7 -clear
wvAddSignal -win $_nWave7 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
{/soc_tb/if_uart0/Clk} \
{/soc_tb/if_uart0/Rxd} \
{/soc_tb/if_uart0/Txd} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_start_addr\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_data_length\[16:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_rdvalid} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_addr\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_en} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/clk} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/r_sum_16\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_sum_byte\[9:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_cal_valid} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/data01\[8:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/data23\[8:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[7:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
}
wvAddSignal -win $_nWave7 -group {"G2" \
{/top/dut/u_DTOP/u_SYS/u_syscon/pmureg2pmu/pmrm.remap\[3:0\]} \
}
wvAddSignal -win $_nWave7 -group {"G3" \
}
wvSetPosition -win $_nWave7 {("G2" 1)}
wvGetSignalSetSignalFilter -win $_nWave7 "*boot*"
wvSetPosition -win $_nWave7 {("G2" 1)}
wvSetPosition -win $_nWave7 {("G2" 1)}
wvAddSignal -win $_nWave7 -clear
wvAddSignal -win $_nWave7 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
{/soc_tb/if_uart0/Clk} \
{/soc_tb/if_uart0/Rxd} \
{/soc_tb/if_uart0/Txd} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_start_addr\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_data_length\[16:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_rdvalid} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_addr\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_en} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/clk} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/r_sum_16\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_sum_byte\[9:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_cal_valid} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/data01\[8:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/data23\[8:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[7:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
}
wvAddSignal -win $_nWave7 -group {"G2" \
{/top/dut/u_DTOP/u_SYS/u_syscon/pmureg2pmu/pmrm.remap\[3:0\]} \
}
wvAddSignal -win $_nWave7 -group {"G3" \
}
wvSetPosition -win $_nWave7 {("G2" 1)}
wvGetSignalSetScope -win $_nWave7 \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu/u_cm3_pmu"
wvGetSignalSetScope -win $_nWave7 "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu/u_ps"
wvSetPosition -win $_nWave7 {("G2" 5)}
wvSetPosition -win $_nWave7 {("G2" 5)}
wvAddSignal -win $_nWave7 -clear
wvAddSignal -win $_nWave7 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
{/soc_tb/if_uart0/Clk} \
{/soc_tb/if_uart0/Rxd} \
{/soc_tb/if_uart0/Txd} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_start_addr\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_data_length\[16:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_rdvalid} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_addr\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_en} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/clk} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/r_sum_16\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_sum_byte\[9:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_cal_valid} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/data01\[8:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/data23\[8:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[7:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
}
wvAddSignal -win $_nWave7 -group {"G2" \
{/top/dut/u_DTOP/u_SYS/u_syscon/pmureg2pmu/pmrm.remap\[3:0\]} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu/u_ps/boot_phase0} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu/u_ps/boot_phase1} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu/u_ps/boot_phase2} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu/u_ps/boot_phase3} \
}
wvAddSignal -win $_nWave7 -group {"G3" \
}
wvSelectSignal -win $_nWave7 {( "G2" 2 3 4 5 )} 
wvSetPosition -win $_nWave7 {("G2" 5)}
wvSetPosition -win $_nWave7 {("G2" 5)}
wvSetPosition -win $_nWave7 {("G2" 5)}
wvAddSignal -win $_nWave7 -clear
wvAddSignal -win $_nWave7 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
{/soc_tb/if_uart0/Clk} \
{/soc_tb/if_uart0/Rxd} \
{/soc_tb/if_uart0/Txd} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_start_addr\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_data_length\[16:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_rdvalid} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_addr\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_en} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/clk} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/r_sum_16\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_sum_byte\[9:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_cal_valid} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/data01\[8:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/data23\[8:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[7:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
}
wvAddSignal -win $_nWave7 -group {"G2" \
{/top/dut/u_DTOP/u_SYS/u_syscon/pmureg2pmu/pmrm.remap\[3:0\]} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu/u_ps/boot_phase0} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu/u_ps/boot_phase1} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu/u_ps/boot_phase2} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu/u_ps/boot_phase3} \
}
wvAddSignal -win $_nWave7 -group {"G3" \
}
wvSelectSignal -win $_nWave7 {( "G2" 2 3 4 5 )} 
wvSetPosition -win $_nWave7 {("G2" 5)}
wvGetSignalClose -win $_nWave7
wvSetCursor -win $_nWave7 45045723787.756973 -snap {("G2" 3)}
wvZoomAll -win $_nWave7
wvScrollUp -win $_nWave7 1
wvScrollUp -win $_nWave7 1
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
verdiDockWidgetSetCurTab -dock windowDock_nWave_6
verdiDockWidgetSetCurTab -dock windowDock_nWave_7
wvSetCursor -win $_nWave7 40652310069.327095 -snap {("G1" 10)}
wvZoomAll -win $_nWave7
wvSelectSignal -win $_nWave7 {( "G1" 4 )} 
wvScrollDown -win $_nWave7 2
wvScrollDown -win $_nWave7 0
wvGetSignalOpen -win $_nWave7
wvGetSignalSetScope -win $_nWave7 "/soc_tb"
wvGetSignalSetScope -win $_nWave7 "/top"
wvGetSignalSetScope -win $_nWave7 "/top/dut"
wvGetSignalSetScope -win $_nWave7 "/top/dut/u_DTOP"
wvGetSignalSetScope -win $_nWave7 "/top/dut/u_DTOP/u_SYS"
wvGetSignalSetScope -win $_nWave7 "/top/dut/u_DTOP/u_SYS/u_syscon"
wvGetSignalSetScope -win $_nWave7 "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu"
wvGetSignalSetScope -win $_nWave7 "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu/u_ps"
wvGetSignalSetScope -win $_nWave7 "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu"
wvGetSignalSetScope -win $_nWave7 "/top/dut/u_DTOP/u_CPU/u_cm3"
wvGetSignalSetScope -win $_nWave7 "/top/dut/u_DTOP/u_CPU/u_cm3/u_cm3i"
wvGetSignalSetSignalFilter -win $_nWave7 "*reset*"
wvSetPosition -win $_nWave7 {("G2" 5)}
wvSetPosition -win $_nWave7 {("G2" 5)}
wvAddSignal -win $_nWave7 -clear
wvAddSignal -win $_nWave7 -group {"G1" \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTTXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/UARTRXD} \
{/top/dut/u_DTOP/u_PERI/u_uart0/u_uart/TXShiftData\[7:0\]} \
{/soc_tb/if_uart0/Clk} \
{/soc_tb/if_uart0/Rxd} \
{/soc_tb/if_uart0/Txd} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_start_addr\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_data_length\[16:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_rdvalid} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_addr\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_read_en} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/clk} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/r_sum_16\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_sum_byte\[9:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/w_cal_valid} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/data01\[8:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/data23\[8:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[7:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_done} \
}
wvAddSignal -win $_nWave7 -group {"G2" \
{/top/dut/u_DTOP/u_SYS/u_syscon/pmureg2pmu/pmrm.remap\[3:0\]} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu/u_ps/boot_phase0} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu/u_ps/boot_phase1} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu/u_ps/boot_phase2} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu/u_ps/boot_phase3} \
}
wvAddSignal -win $_nWave7 -group {"G3" \
}
wvSetPosition -win $_nWave7 {("G2" 5)}
wvSetPosition -win $_nWave7 {("G1" 26)}
wvSetPosition -win $_nWave7 {("G2" 4)}
wvSetPosition -win $_nWave7 {("G2" 5)}
wvSetPosition -win $_nWave7 {("G3" 0)}
wvAddSignal -win $_nWave7 "/top/dut/u_DTOP/u_CPU/u_cm3/u_cm3i/PORESETn" \
           "/top/dut/u_DTOP/u_CPU/u_cm3/u_cm3i/SYSRESETREQ" \
           "/top/dut/u_DTOP/u_CPU/u_cm3/u_cm3i/SYSRESETn" \
           "/top/dut/u_DTOP/u_CPU/u_cm3/u_cm3i/dap_reset_n" \
           "/top/dut/u_DTOP/u_CPU/u_cm3/u_cm3i/int_poreset_n" \
           "/top/dut/u_DTOP/u_CPU/u_cm3/u_cm3i/int_sysreset_n" \
           "/top/dut/u_DTOP/u_CPU/u_cm3/u_cm3i/poreset_n_q" \
           "/top/dut/u_DTOP/u_CPU/u_cm3/u_cm3i/poreset_n_qq" \
           "/top/dut/u_DTOP/u_CPU/u_cm3/u_cm3i/refreset_n_q" \
           "/top/dut/u_DTOP/u_CPU/u_cm3/u_cm3i/refreset_n_qq" \
           "/top/dut/u_DTOP/u_CPU/u_cm3/u_cm3i/sysreset_n_q" \
           "/top/dut/u_DTOP/u_CPU/u_cm3/u_cm3i/sysreset_n_qq" \
           "/top/dut/u_DTOP/u_CPU/u_cm3/u_cm3i/t_reset_n"
wvSetPosition -win $_nWave7 {("G3" 0)}
wvSetPosition -win $_nWave7 {("G3" 13)}
wvSetPosition -win $_nWave7 {("G3" 13)}
wvSelectSignal -win $_nWave7 {( "G3" 4 )} 
wvSelectGroup -win $_nWave7 {G3}
wvScrollUp -win $_nWave7 1
wvScrollUp -win $_nWave7 1
wvScrollUp -win $_nWave7 1
wvScrollUp -win $_nWave7 1
wvScrollUp -win $_nWave7 1
wvScrollUp -win $_nWave7 1
wvScrollUp -win $_nWave7 1
wvScrollUp -win $_nWave7 1
wvScrollUp -win $_nWave7 1
wvScrollUp -win $_nWave7 1
wvScrollUp -win $_nWave7 1
wvScrollUp -win $_nWave7 1
wvScrollUp -win $_nWave7 1
wvScrollUp -win $_nWave7 1
wvScrollUp -win $_nWave7 1
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvScrollDown -win $_nWave7 0
wvSetCursor -win $_nWave7 46263175782.020676 -snap {("G1" 14)}
wvZoomAll -win $_nWave7
verdiDockWidgetSetCurTab -dock windowDock_nWave_6
wvSetCursor -win $_nWave6 30758385644.393337 -snap {("G7" 4)}
wvZoomAll -win $_nWave6
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollUp -win $_nWave6 1
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvScrollDown -win $_nWave6 0
wvSelectSignal -win $_nWave6 {( "G1" 5 )} 
wvSelectSignal -win $_nWave6 {( "G1" 4 )} 
wvSelectSignal -win $_nWave6 {( "G1" 5 )} 
verdiDockWidgetSetCurTab -dock windowDock_nWave_7
wvSetCursor -win $_nWave7 28689520908.301151 -snap {("G1" 26)}
wvZoomAll -win $_nWave7
wvScrollDown -win $_nWave7 1
wvScrollDown -win $_nWave7 1
wvScrollDown -win $_nWave7 1
wvScrollDown -win $_nWave7 1
wvScrollDown -win $_nWave7 1
wvScrollDown -win $_nWave7 1
wvScrollDown -win $_nWave7 1
wvScrollDown -win $_nWave7 1
wvScrollDown -win $_nWave7 1
wvScrollDown -win $_nWave7 1
wvScrollDown -win $_nWave7 1
wvScrollDown -win $_nWave7 1
wvScrollDown -win $_nWave7 1
wvSelectSignal -win $_nWave7 {( "G3" 1 )} 
wvSelectSignal -win $_nWave7 {( "G2" 5 )} 
wvSelectSignal -win $_nWave7 {( "G2" 4 )} 
wvSelectSignal -win $_nWave7 {( "G2" 3 )} 
wvSelectSignal -win $_nWave7 {( "G2" 2 )} 
wvSelectSignal -win $_nWave7 {( "G2" 1 )} 
wvSelectSignal -win $_nWave7 {( "G2" 2 )} 
wvSelectSignal -win $_nWave7 {( "G2" 3 )} 
wvSelectSignal -win $_nWave7 {( "G2" 5 )} 
wvSelectSignal -win $_nWave7 {( "G2" 5 )} 
wvSelectSignal -win $_nWave7 {( "G3" 1 )} 
wvSelectGroup -win $_nWave7 {G3}
wvCut -win $_nWave7
wvSetPosition -win $_nWave7 {("G2" 5)}
wvZoom -win $_nWave7 44463464138.326508 50550724109.645020
wvZoom -win $_nWave7 45861373526.305466 46950048413.312325
wvSetCursor -win $_nWave7 46236386796.354561 -snap {("G1" 12)}
wvZoomAll -win $_nWave7
wvCreateWindow
verdiDockWidgetSetCurTab -dock windowDock_nWave_7
verdiDockWidgetSetCurTab -dock windowDock_nWave_6
wvSelectSignal -win $_nWave6 {( "G3" 1 )} 
verdiDockWidgetSetCurTab -dock windowDock_nWave_7
wvSetCursor -win $_nWave7 17785385655.330605 -snap {("G1" 20)}
wvSetCursor -win $_nWave7 23502116758.829727 -snap {("G1" 23)}
wvZoomAll -win $_nWave7
debReload
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvDisplayGridCount -win $_nWave6 -off
wvGetSignalClose -win $_nWave6
wvDisplayGridCount -win $_nWave7 -off
wvGetSignalClose -win $_nWave7
wvDisplayGridCount -win $_nWave8 -off
wvGetSignalClose -win $_nWave8
wvReloadFile -win $_nWave7
wvSetCursor -win $_nWave7 10675942763.077078 -snap {("G1" 19)}
wvZoomAll -win $_nWave7
verdiDockWidgetSetCurTab -dock widgetDock_MTB_SOURCE_TAB_1
verdiDockWidgetSetCurTab -dock windowDock_nWave_8
wvCloseWindow -win $_nWave8
verdiDockWidgetSetCurTab -dock windowDock_nWave_7
wvTpfCloseForm -win $_nWave7
wvGetSignalClose -win $_nWave7
wvCloseWindow -win $_nWave7
verdiDockWidgetSetCurTab -dock windowDock_nWave_6
wvSetCursor -win $_nWave6 10181097346.162830 -snap {("G4" 2)}
wvZoomAll -win $_nWave6
wvSetCursor -win $_nWave6 6882995388.955153 -snap {("G2" 6)}
wvZoomAll -win $_nWave6
wvSetCursor -win $_nWave6 15486739625.149094 -snap {("G3" 3)}
verdiDockWidgetSetCurTab -dock windowDock_nWave_4
wvSetCursor -win $_nWave4 2031644573.896618 -snap {("G3" 0)}
wvZoomAll -win $_nWave4
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvDisplayGridCount -win $_nWave6 -off
wvGetSignalClose -win $_nWave6
wvReloadFile -win $_nWave4
wvSetCursor -win $_nWave4 10802041716.364391 -snap {("G2" 6)}
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 7535808135.758470 -snap {("G2" 5)}
wvZoomAll -win $_nWave4
verdiDockWidgetRestore -dock windowDock_nWave_4
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvDisplayGridCount -win $_nWave6 -off
wvGetSignalClose -win $_nWave6
wvReloadFile -win $_nWave6
wvSelectSignal -win $_nWave6 {( "G1" 6 )} 
wvZoomAll -win $_nWave6
verdiDockWidgetSetCurTab -dock windowDock_nWave_4
wvSelectSignal -win $_nWave4 {( "G2" 3 )} 
wvZoomAll -win $_nWave4
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvDisplayGridCount -win $_nWave6 -off
wvGetSignalClose -win $_nWave6
wvReloadFile -win $_nWave4
wvSetCursor -win $_nWave4 18745593002.125519 -snap {("G2" 4)}
wvZoomAll -win $_nWave4
wvZoom -win $_nWave4 47267266096.407845 52939338027.976791
wvZoom -win $_nWave4 49843380232.326431 51206525828.915298
wvSetCursor -win $_nWave4 50151545530.123184 -snap {("G2" 2)}
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 15233564616.213728 -snap {("G2" 2)}
wvZoomAll -win $_nWave4
wvSetCursor -win $_nWave4 25929471687.172306 -snap {("G2" 3)}
wvDisplayGridCount -win $_nWave4 -off
wvGetSignalClose -win $_nWave4
wvDisplayGridCount -win $_nWave6 -off
wvGetSignalClose -win $_nWave6
wvReloadFile -win $_nWave4
wvSetCursor -win $_nWave4 24339263806.000000
wvSetCursor -win $_nWave4 37057536619.583755 -snap {("G2" 4)}
wvZoomAll -win $_nWave4
verdiDockWidgetSetCurTab -dock windowDock_nWave_6
wvSetCursor -win $_nWave6 21365964853.214954 -snap {("G1" 6)}
wvZoomAll -win $_nWave6
verdiDockWidgetSetCurTab -dock windowDock_nWave_4
wvSetCursor -win $_nWave4 20743660242.256252 -snap {("G2" 3)}
wvZoomAll -win $_nWave4
wvSelectSignal -win $_nWave4 {( "G2" 3 )} 
wvZoom -win $_nWave4 22735989192.077477 27892605297.497108
wvZoom -win $_nWave4 24090782425.469456 24715667676.533546
wvZoom -win $_nWave4 24316682898.095184 24361226653.262688
wvZoom -win $_nWave4 24336459962.502457 24341540309.324005
wvSetCursor -win $_nWave4 24339398493.044441 -snap {("G2" 3)}
wvZoomAll -win $_nWave4
verdiDockWidgetSetCurTab -dock windowDock_nWave_6
wvSetCursor -win $_nWave6 70120515524.980621 -snap {("G1" 4)}
wvCreateWindow
wvSetPosition -win $_nWave9 {("G1" 0)}
wvOpenFile -win $_nWave9 \
           {/mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_tientq_ws_9/testdbscp-lx61102-cpu_test_c-bios+cpu_system_reset-vseq+cpu_reset_system_vseq_c-time+35000000000-fsdb_all/all.fsdb}
wvSetCursor -win $_nWave9 606128350.623002
wvGetSignalOpen -win $_nWave9
wvGetSignalSetScope -win $_nWave9 "/soc_tb"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu"
wvSetPosition -win $_nWave9 {("G1" 0)}
wvSetPosition -win $_nWave9 {("G1" 0)}
wvAddSignal -win $_nWave9 -clear
wvAddSignal -win $_nWave9 -group {"G1" \
}
wvSetPosition -win $_nWave9 {("G1" 0)}
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon/tm2pmu"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon/pmureg2pmu"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon/u_ccureg"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu"
wvGetSignalSetScope -win $_nWave9 \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu"
wvSetPosition -win $_nWave9 {("G1" 1)}
wvSetPosition -win $_nWave9 {("G1" 1)}
wvAddSignal -win $_nWave9 -clear
wvAddSignal -win $_nWave9 -group {"G1" \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir} \
}
wvAddSignal -win $_nWave9 -group {"G2" \
}
wvSelectSignal -win $_nWave9 {( "G1" 1 )} 
wvSetPosition -win $_nWave9 {("G1" 1)}
wvSetPosition -win $_nWave9 {("G1" 1)}
wvSetPosition -win $_nWave9 {("G1" 1)}
wvAddSignal -win $_nWave9 -clear
wvAddSignal -win $_nWave9 -group {"G1" \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir} \
}
wvAddSignal -win $_nWave9 -group {"G2" \
}
wvSelectSignal -win $_nWave9 {( "G1" 1 )} 
wvSetPosition -win $_nWave9 {("G1" 1)}
wvGetSignalClose -win $_nWave9
wvSetCursor -win $_nWave9 1015111924.578724 -snap {("G2" 0)}
wvSetCursor -win $_nWave9 1015111924.578724 -snap {("G2" 0)}
wvZoomAll -win $_nWave9
wvSelectSignal -win $_nWave9 {( "G1" 1 )} 
wvExpandBus -win $_nWave9
wvSetCursor -win $_nWave9 4134836748.258981 -snap {("G1" 7)}
wvZoomAll -win $_nWave9
wvSetCursor -win $_nWave9 3371944640.475800 -snap {("G1" 7)}
wvZoomAll -win $_nWave9
wvSelectSignal -win $_nWave9 {( "G1" 6 )} 
wvSelectSignal -win $_nWave9 {( "G1" 7 )} 
wvSelectSignal -win $_nWave9 {( "G1" 6 )} 
wvZoom -win $_nWave9 7847977349.071994 10041233376.284130
wvZoom -win $_nWave9 8815544842.400667 9081394057.820320
wvGetSignalOpen -win $_nWave9
wvGetSignalSetScope -win $_nWave9 "/soc_tb"
wvGetSignalSetScope -win $_nWave9 "/top"
wvGetSignalSetScope -win $_nWave9 "/top/dut"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu"
wvGetSignalSetScope -win $_nWave9 \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu"
wvGetSignalSetSignalFilter -win $_nWave9 "*clk*"
wvSetPosition -win $_nWave9 {("G1" 7)}
wvSetPosition -win $_nWave9 {("G1" 7)}
wvAddSignal -win $_nWave9 -clear
wvAddSignal -win $_nWave9 -group {"G1" \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.rsvd\[31:5\]} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.lvd} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.lockup} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.iwdt} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.sysrst} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.swrst} \
}
wvAddSignal -win $_nWave9 -group {"G2" \
}
wvSetPosition -win $_nWave9 {("G1" 7)}
wvSetPosition -win $_nWave9 {("G1" 8)}
wvSetPosition -win $_nWave9 {("G1" 8)}
wvAddSignal -win $_nWave9 -clear
wvAddSignal -win $_nWave9 -group {"G1" \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.rsvd\[31:5\]} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.lvd} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.lockup} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.iwdt} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.sysrst} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.swrst} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/fclk} \
}
wvAddSignal -win $_nWave9 -group {"G2" \
}
wvSelectSignal -win $_nWave9 {( "G1" 8 )} 
wvSetPosition -win $_nWave9 {("G1" 8)}
wvZoom -win $_nWave9 8876058793.478609 8892545566.527891
wvZoom -win $_nWave9 8882019127.920765 8883250698.000555
wvSetCursor -win $_nWave9 8882537272.625874 -snap {("G1" 8)}
wvSetMarker -win $_nWave9 8882640154.000000
wvShowDeltaFreq -win $_nWave9 -freq
wvSetCursor -win $_nWave9 8882526857.656912 -snap {("G1" 8)}
wvZoomOut -win $_nWave9
wvZoomOut -win $_nWave9
wvZoomOut -win $_nWave9
wvZoomOut -win $_nWave9
wvZoomOut -win $_nWave9
wvZoomOut -win $_nWave9
wvGetSignalOpen -win $_nWave9
wvGetSignalSetScope -win $_nWave9 "/soc_tb"
wvGetSignalSetScope -win $_nWave9 "/top"
wvGetSignalSetScope -win $_nWave9 "/top/dut"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu"
wvGetSignalSetScope -win $_nWave9 \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon/apbif2ccureg"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon"
wvGetSignalSetSignalFilter -win $_nWave9 "h*"
wvSetPosition -win $_nWave9 {("G1" 8)}
wvSetPosition -win $_nWave9 {("G1" 8)}
wvAddSignal -win $_nWave9 -clear
wvAddSignal -win $_nWave9 -group {"G1" \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.rsvd\[31:5\]} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.lvd} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.lockup} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.iwdt} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.sysrst} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.swrst} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/fclk} \
}
wvAddSignal -win $_nWave9 -group {"G2" \
}
wvSetPosition -win $_nWave9 {("G1" 8)}
wvSetPosition -win $_nWave9 {("G1" 9)}
wvSetPosition -win $_nWave9 {("G1" 9)}
wvAddSignal -win $_nWave9 -clear
wvAddSignal -win $_nWave9 -group {"G1" \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.rsvd\[31:5\]} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.lvd} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.lockup} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.iwdt} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.sysrst} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.swrst} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/fclk} \
{/top/dut/u_DTOP/u_SYS/u_syscon/hoclk} \
}
wvAddSignal -win $_nWave9 -group {"G2" \
}
wvSelectSignal -win $_nWave9 {( "G1" 9 )} 
wvSetPosition -win $_nWave9 {("G1" 9)}
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/apb2syscon"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS"
wvGetSignalSetSignalFilter -win $_nWave9 "*"
wvSetPosition -win $_nWave9 {("G1" 9)}
wvSetPosition -win $_nWave9 {("G1" 9)}
wvAddSignal -win $_nWave9 -clear
wvAddSignal -win $_nWave9 -group {"G1" \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.rsvd\[31:5\]} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.lvd} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.lockup} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.iwdt} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.sysrst} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.swrst} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/fclk} \
{/top/dut/u_DTOP/u_SYS/u_syscon/hoclk} \
}
wvAddSignal -win $_nWave9 -group {"G2" \
}
wvSelectSignal -win $_nWave9 {( "G1" 9 )} 
wvSetPosition -win $_nWave9 {("G1" 9)}
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/anacon2ccu"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/anacon2dma"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/anacon2pmu"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/apb2syscon"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/cac2irc"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/uart02dma"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon/apbif2ccureg"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon/apb2syscon"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon/anacon2pmu"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon/apb2syscon"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon"
wvGetSignalSetOptions -win $_nWave9 -input on
wvGetSignalSetSignalFilter -win $_nWave9 "*"
wvGetSignalSetSignalFilter -win $_nWave9 "*clk*"
wvSetPosition -win $_nWave9 {("G1" 9)}
wvSetPosition -win $_nWave9 {("G1" 9)}
wvAddSignal -win $_nWave9 -clear
wvAddSignal -win $_nWave9 -group {"G1" \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.rsvd\[31:5\]} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.lvd} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.lockup} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.iwdt} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.sysrst} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.swrst} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/fclk} \
{/top/dut/u_DTOP/u_SYS/u_syscon/hoclk} \
}
wvAddSignal -win $_nWave9 -group {"G2" \
}
wvSelectSignal -win $_nWave9 {( "G1" 9 )} 
wvSetPosition -win $_nWave9 {("G1" 9)}
wvSetPosition -win $_nWave9 {("G1" 10)}
wvSetPosition -win $_nWave9 {("G1" 10)}
wvAddSignal -win $_nWave9 -clear
wvAddSignal -win $_nWave9 -group {"G1" \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.rsvd\[31:5\]} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.lvd} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.lockup} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.iwdt} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.sysrst} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.swrst} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/fclk} \
{/top/dut/u_DTOP/u_SYS/u_syscon/hoclk} \
{/top/dut/u_DTOP/u_SYS/u_syscon/pllclk} \
}
wvAddSignal -win $_nWave9 -group {"G2" \
}
wvSelectSignal -win $_nWave9 {( "G1" 10 )} 
wvSetPosition -win $_nWave9 {("G1" 10)}
wvZoom -win $_nWave9 8893383160.929361 8898104613.525597
wvSetCursor -win $_nWave9 8896035026.834003 -snap {("G1" 10)}
wvSetMarker -win $_nWave9 8896058721.000000
wvSetCursor -win $_nWave9 8893995385.930908 -snap {("G1" 6)}
wvZoomAll -win $_nWave9
wvSetCursor -win $_nWave9 3177983223.103298 -snap {("G1" 10)}
wvSetCursor -win $_nWave9 3192903332.131952 -snap {("G1" 10)}
wvZoomAll -win $_nWave9
wvSelectSignal -win $_nWave9 {( "G1" 8 )} 
wvSelectSignal -win $_nWave9 {( "G1" 8 9 )} 
wvSelectSignal -win $_nWave9 {( "G1" 9 )} 
wvSelectSignal -win $_nWave9 {( "G1" 8 )} 
wvZoom -win $_nWave9 3327184313.389838 4669994125.968696
wvZoom -win $_nWave9 3518338352.952727 3616754294.114251
wvZoom -win $_nWave9 3528811085.239097 3533735350.089321
wvZoom -win $_nWave9 3529269156.387858 3529578007.389740
wvZoomAll -win $_nWave9
wvSelectSignal -win $_nWave9 {( "G1" 10 )} 
wvGetSignalOpen -win $_nWave9
wvGetSignalSetScope -win $_nWave9 "/soc_tb"
wvGetSignalSetScope -win $_nWave9 "/top"
wvGetSignalSetScope -win $_nWave9 "/top/dut"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon"
wvGetSignalSetScope -win $_nWave9 "/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu"
wvGetSignalSetScope -win $_nWave9 \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu"
wvGetSignalSetOptions -win $_nWave9 -output on
wvGetSignalSetSignalFilter -win $_nWave9 "*clk*"
wvSetPosition -win $_nWave9 {("G1" 11)}
wvSetPosition -win $_nWave9 {("G1" 11)}
wvAddSignal -win $_nWave9 -clear
wvAddSignal -win $_nWave9 -group {"G1" \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.rsvd\[31:5\]} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.lvd} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.lockup} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.iwdt} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.sysrst} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/rcureg2rcu/rir.swrst} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu/fclk} \
{/top/dut/u_DTOP/u_SYS/u_syscon/hoclk} \
{/top/dut/u_DTOP/u_SYS/u_syscon/pllclk} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_ccu/sysclk} \
}
wvAddSignal -win $_nWave9 -group {"G2" \
}
wvSelectSignal -win $_nWave9 {( "G1" 11 )} 
wvSetPosition -win $_nWave9 {("G1" 11)}
wvZoom -win $_nWave9 1133928286.177703 2297696790.412713
wvZoom -win $_nWave9 1248746884.198777 1339781629.773186
wvZoomAll -win $_nWave9
wvZoom -win $_nWave9 3088462568.931374 3998589219.679267
wvZoom -win $_nWave9 3209043125.901123 3271898948.151506
wvZoom -win $_nWave9 3219807019.351912 3223749350.698130
wvSelectSignal -win $_nWave9 {( "G1" 10 )} 
wvSelectSignal -win $_nWave9 {( "G1" 11 )} 
wvSetCursor -win $_nWave9 3220593263.023290 -snap {("G1" 9)}
wvSetCursor -win $_nWave9 3221171138.231192 -snap {("G1" 9)}
wvSetCursor -win $_nWave9 3220832192.195788 -snap {("G1" 9)}
wvSetCursor -win $_nWave9 3221062786.629711 -snap {("G1" 5)}
wvZoomAll -win $_nWave9
verdiDockWidgetSetCurTab -dock windowDock_nWave_6
wvSetCursor -win $_nWave6 14482969464.259800 -snap {("G1" 8)}
wvZoomAll -win $_nWave6
wvSetCursor -win $_nWave6 21581058459.119801 -snap {("G1" 4)}
wvZoomAll -win $_nWave6
wvSetCursor -win $_nWave6 46747010349.987076 -snap {("G1" 5)}
wvZoomAll -win $_nWave6
wvTpfCloseForm -win $_nWave9
wvGetSignalClose -win $_nWave9
wvCloseWindow -win $_nWave9
wvTpfCloseForm -win $_nWave6
wvGetSignalClose -win $_nWave6
wvCloseWindow -win $_nWave6
wvTpfCloseForm -win $_nWave4
wvGetSignalClose -win $_nWave4
wvCloseWindow -win $_nWave4
wvCreateWindow
wvOpenFile -win $_nWave10 \
           {/mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_tientq_ws_9/testdbscp-lx61102-cpu_test_c-bios+cpu_system_reset-vseq+cpu_reset_system_vseq_c-time+35000000000-fsdb_all/all.fsdb}
wvSetCursor -win $_nWave10 286533402.112692
wvSetCursor -win $_nWave10 454290137.537644
wvGetSignalOpen -win $_nWave10
wvGetSignalSetScope -win $_nWave10 "/soc_tb"
wvGetSignalSetScope -win $_nWave10 "/top/dut/u_DTOP/u_SYS/u_syscon/u_ccu"
wvGetSignalSetSignalFilter -win $_nWave10 "*sys*"
wvSetPosition -win $_nWave10 {("G1" 0)}
wvSetPosition -win $_nWave10 {("G1" 0)}
wvAddSignal -win $_nWave10 -clear
wvAddSignal -win $_nWave10 -group {"G1" \
}
wvSetActiveFile -win $_nWave10 \
           {/mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_tientq_ws_9/testdbscp-lx61102-cpu_test_c-bios+cpu_system_reset-vseq+cpu_reset_system_vseq_c-time+35000000000-fsdb_all/all.fsdb}
wvSetPosition -win $_nWave10 {("G1" 0)}
wvSetPosition -win $_nWave10 {("G1" 1)}
wvSetPosition -win $_nWave10 {("G1" 1)}
wvAddSignal -win $_nWave10 -clear
wvAddSignal -win $_nWave10 -group {"G1" \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_ccu/sysclk} \
}
wvAddSignal -win $_nWave10 -group {"G2" \
}
wvSelectSignal -win $_nWave10 {( "G1" 1 )} 
wvSetPosition -win $_nWave10 {("G1" 1)}
wvSetCursor -win $_nWave10 1443687526.029331 -snap {("G2" 0)}
wvZoomAll -win $_nWave10
wvZoom -win $_nWave10 1261236769.983216 4689841581.588074
wvSetCursor -win $_nWave10 2185314180.166842 -snap {("G2" 0)}
wvZoomAll -win $_nWave10
wvGetSignalSetScope -win $_nWave10 "/top/dut/u_DTOP/u_SYS/u_syscon/u_ccureg"
wvGetSignalSetSignalFilter -win $_nWave10 "*"
wvSetPosition -win $_nWave10 {("G1" 1)}
wvSetPosition -win $_nWave10 {("G1" 1)}
wvAddSignal -win $_nWave10 -clear
wvAddSignal -win $_nWave10 -group {"G1" \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_ccu/sysclk} \
}
wvAddSignal -win $_nWave10 -group {"G2" \
}
wvSelectSignal -win $_nWave10 {( "G1" 1 )} 
wvSetPosition -win $_nWave10 {("G1" 1)}
wvGetSignalSetScope -win $_nWave10 \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_ccureg/apbif2ccureg"
wvGetSignalSetScope -win $_nWave10 \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_ccureg/anacon2ccu"
wvGetSignalSetScope -win $_nWave10 \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_ccureg/apbif2ccureg"
wvGetSignalSetScope -win $_nWave10 \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_ccureg/ccureg2ccu"
wvSetPosition -win $_nWave10 {("G1" 2)}
wvSetPosition -win $_nWave10 {("G1" 2)}
wvAddSignal -win $_nWave10 -clear
wvAddSignal -win $_nWave10 -group {"G1" \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_ccu/sysclk} \
{/top/dut/u_DTOP/u_SYS/u_syscon/u_ccureg/ccureg2ccu/scr} \
}
wvAddSignal -win $_nWave10 -group {"G2" \
}
wvSelectSignal -win $_nWave10 {( "G1" 2 )} 
wvSetPosition -win $_nWave10 {("G1" 2)}
wvSelectSignal -win $_nWave10 {( "G1" 2 )} 
wvExpandBus -win $_nWave10
wvSelectSignal -win $_nWave10 {( "G1" 8 )} 
wvSelectSignal -win $_nWave10 {( "G1" 9 )} 
wvZoom -win $_nWave10 2634097776.517766 4459588793.732404
wvZoom -win $_nWave10 3150556349.666518 3293644439.197120
wvZoom -win $_nWave10 3221355600.333928 3245101388.614879
wvZoom -win $_nWave10 3232581410.836916 3233991907.752563
wvSetCursor -win $_nWave10 3233186896.652208 -snap {("G1" 1)}
wvSetMarker -win $_nWave10 3233208831.000000
wvShowDeltaFreq -win $_nWave10 -freq
wvSetCursor -win $_nWave10 3233179122.939875 -snap {("G1" 1)}
wvZoomOut -win $_nWave10
wvZoomOut -win $_nWave10
wvZoomOut -win $_nWave10
wvZoomOut -win $_nWave10
wvZoomOut -win $_nWave10
wvZoomOut -win $_nWave10
wvZoomOut -win $_nWave10
wvZoomOut -win $_nWave10
wvDisplayGridCount -win $_nWave10 -off
wvGetSignalClose -win $_nWave10
wvReloadFile -win $_nWave10
wvSetCursor -win $_nWave10 3171041680.892603 -snap {("G1" 6)}
wvZoomAll -win $_nWave10
wvSetCursor -win $_nWave10 2181381079.246724 -snap {("G1" 8)}
wvZoomAll -win $_nWave10
wvZoom -win $_nWave10 2901687026.615248 3098134103.170300
wvZoom -win $_nWave10 2982527464.731959 2987339395.572255
wvSetCursor -win $_nWave10 2984495847.952872 -snap {("G1" 1)}
wvSetMarker -win $_nWave10 2984592970.000000
wvZoomAll -win $_nWave10
wvSetCursor -win $_nWave10 4559209235.048500 -snap {("G1" 6)}
wvZoomAll -win $_nWave10
wvDisplayGridCount -win $_nWave10 -off
wvGetSignalClose -win $_nWave10
wvReloadFile -win $_nWave10
wvSetCursor -win $_nWave10 4555116587.620270 -snap {("G1" 4)}
wvZoomAll -win $_nWave10
wvSelectSignal -win $_nWave10 {( "G1" 2 )} 
wvSetPosition -win $_nWave10 {("G1" 2)}
wvCollapseBus -win $_nWave10
wvSetPosition -win $_nWave10 {("G1" 2)}
wvGetSignalOpen -win $_nWave10
wvGetSignalSetScope -win $_nWave10 \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_ccureg/ccureg2ccu"
wvSetCursor -win $_nWave10 4262731481.125058 -snap {("G2" 0)}
wvZoomAll -win $_nWave10
wvDisplayGridCount -win $_nWave10 -off
wvGetSignalClose -win $_nWave10
wvReloadFile -win $_nWave10
wvZoom -win $_nWave10 3511386723.660569 3547165045.444592
wvZoomAll -win $_nWave10
wvCreateWindow
wvSetPosition -win $_nWave11 {("G1" 0)}
wvOpenFile -win $_nWave11 \
           {/mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_tientq_ws_9/testdbscp-lx61102-cpu_test_c-bios+i2cs_intr-vseq+cpu_i2cs_vseq_c-time+6000000000000-use_env_i2c-fsdb_all/all.fsdb}
wvGetSignalOpen -win $_nWave11
wvGetSignalSetScope -win $_nWave11 "/soc_tb"
wvGetSignalSetScope -win $_nWave11 "/soc_tb/if_ccu_clk"
wvGetSignalSetScope -win $_nWave11 "/soc_tb/if_i2c_m"
wvSetPosition -win $_nWave11 {("G1" 2)}
wvSetPosition -win $_nWave11 {("G1" 2)}
wvAddSignal -win $_nWave11 -clear
wvAddSignal -win $_nWave11 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_inst} \
}
wvAddSignal -win $_nWave11 -group {"G2" \
}
wvSelectSignal -win $_nWave11 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave11 {("G1" 2)}
wvSetPosition -win $_nWave11 {("G1" 2)}
wvSetPosition -win $_nWave11 {("G1" 2)}
wvAddSignal -win $_nWave11 -clear
wvAddSignal -win $_nWave11 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_inst} \
}
wvAddSignal -win $_nWave11 -group {"G2" \
}
wvSelectSignal -win $_nWave11 {( "G1" 1 2 )} 
wvSetPosition -win $_nWave11 {("G1" 2)}
wvGetSignalClose -win $_nWave11
wvSetCursor -win $_nWave11 294092476.159659 -snap {("G1" 1)}
wvZoomAll -win $_nWave11
wvZoom -win $_nWave11 3211339638.903991 3402202277.819983
wvZoom -win $_nWave11 3231209664.932426 3269293881.488827
wvZoomAll -win $_nWave11
wvSelectGroup -win $_nWave11 {G1}
wvSelectSignal -win $_nWave11 {( "G1" 2 )} 
wvGetSignalOpen -win $_nWave11
wvGetSignalSetScope -win $_nWave11 "/soc_tb"
wvGetSignalSetScope -win $_nWave11 "/soc_tb/if_i2c_m"
wvGetSignalSetScope -win $_nWave11 "/top/dut/u_DTOP/u_PERI/u_i2cs_wrapper"
wvGetSignalSetScope -win $_nWave11 "/top/dut/u_DTOP/u_PERI/u_i2cs_wrapper/u_i2cs"
wvGetSignalSetOptions -win $_nWave11 -output on
wvGetSignalSetSignalFilter -win $_nWave11 "*"
wvGetSignalSetOptions -win $_nWave11 -all on
wvGetSignalSetSignalFilter -win $_nWave11 "*"
wvGetSignalSetOptions -win $_nWave11 -inout on
wvGetSignalSetSignalFilter -win $_nWave11 "*"
wvGetSignalSetOptions -win $_nWave11 -output on
wvGetSignalSetSignalFilter -win $_nWave11 "*"
wvGetSignalSetOptions -win $_nWave11 -inout off
wvGetSignalSetSignalFilter -win $_nWave11 "*"
wvGetSignalSetOptions -win $_nWave11 -all on
wvGetSignalSetSignalFilter -win $_nWave11 "*"
wvGetSignalSetSignalFilter -win $_nWave11 "*scl*"
wvSetPosition -win $_nWave11 {("G1" 2)}
wvSetPosition -win $_nWave11 {("G1" 2)}
wvAddSignal -win $_nWave11 -clear
wvAddSignal -win $_nWave11 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_inst} \
}
wvAddSignal -win $_nWave11 -group {"G2" \
}
wvSetPosition -win $_nWave11 {("G1" 2)}
wvSetPosition -win $_nWave11 {("G1" 4)}
wvSetPosition -win $_nWave11 {("G1" 4)}
wvAddSignal -win $_nWave11 -clear
wvAddSignal -win $_nWave11 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_inst} \
{/top/dut/u_DTOP/u_PERI/u_i2cs_wrapper/u_i2cs/SCLi} \
{/top/dut/u_DTOP/u_PERI/u_i2cs_wrapper/u_i2cs/SCLo} \
}
wvAddSignal -win $_nWave11 -group {"G2" \
}
wvSelectSignal -win $_nWave11 {( "G1" 3 4 )} 
wvSetPosition -win $_nWave11 {("G1" 4)}
wvGetSignalSetSignalFilter -win $_nWave11 "*sda*"
wvSetPosition -win $_nWave11 {("G1" 4)}
wvSetPosition -win $_nWave11 {("G1" 4)}
wvAddSignal -win $_nWave11 -clear
wvAddSignal -win $_nWave11 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_inst} \
{/top/dut/u_DTOP/u_PERI/u_i2cs_wrapper/u_i2cs/SCLi} \
{/top/dut/u_DTOP/u_PERI/u_i2cs_wrapper/u_i2cs/SCLo} \
}
wvAddSignal -win $_nWave11 -group {"G2" \
}
wvSelectSignal -win $_nWave11 {( "G1" 3 4 )} 
wvSetPosition -win $_nWave11 {("G1" 4)}
wvSetPosition -win $_nWave11 {("G1" 6)}
wvSetPosition -win $_nWave11 {("G1" 6)}
wvAddSignal -win $_nWave11 -clear
wvAddSignal -win $_nWave11 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_inst} \
{/top/dut/u_DTOP/u_PERI/u_i2cs_wrapper/u_i2cs/SCLi} \
{/top/dut/u_DTOP/u_PERI/u_i2cs_wrapper/u_i2cs/SCLo} \
{/top/dut/u_DTOP/u_PERI/u_i2cs_wrapper/u_i2cs/SDAi} \
{/top/dut/u_DTOP/u_PERI/u_i2cs_wrapper/u_i2cs/SDAo} \
}
wvAddSignal -win $_nWave11 -group {"G2" \
}
wvSelectSignal -win $_nWave11 {( "G1" 5 6 )} 
wvSetPosition -win $_nWave11 {("G1" 6)}
wvSetPosition -win $_nWave11 {("G1" 6)}
wvSetPosition -win $_nWave11 {("G1" 6)}
wvAddSignal -win $_nWave11 -clear
wvAddSignal -win $_nWave11 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_inst} \
{/top/dut/u_DTOP/u_PERI/u_i2cs_wrapper/u_i2cs/SCLi} \
{/top/dut/u_DTOP/u_PERI/u_i2cs_wrapper/u_i2cs/SCLo} \
{/top/dut/u_DTOP/u_PERI/u_i2cs_wrapper/u_i2cs/SDAi} \
{/top/dut/u_DTOP/u_PERI/u_i2cs_wrapper/u_i2cs/SDAo} \
}
wvAddSignal -win $_nWave11 -group {"G2" \
}
wvSelectSignal -win $_nWave11 {( "G1" 5 6 )} 
wvSetPosition -win $_nWave11 {("G1" 6)}
wvGetSignalClose -win $_nWave11
wvSetCursor -win $_nWave11 2366090809.418884 -snap {("G2" 0)}
wvZoomAll -win $_nWave11
wvSetCursor -win $_nWave11 389835085.441006 -snap {("G2" 0)}
wvSelectSignal -win $_nWave11 {( "G1" 4 )} 
wvSelectSignal -win $_nWave11 {( "G1" 2 )} 
wvSelectSignal -win $_nWave11 {( "G1" 3 )} 
wvGetSignalOpen -win $_nWave11
wvGetSignalSetScope -win $_nWave11 "/soc_tb"
wvGetSignalSetScope -win $_nWave11 "/soc_tb/if_i2c_m"
wvGetSignalSetScope -win $_nWave11 "/top"
wvGetSignalSetScope -win $_nWave11 "/top/dut"
wvGetSignalSetScope -win $_nWave11 "/top/dut/u_DTOP"
wvGetSignalSetScope -win $_nWave11 "/top/dut/u_DTOP/u_PERI"
wvGetSignalSetScope -win $_nWave11 "/top/dut/u_DTOP/u_PERI/u_i2cs_wrapper"
wvGetSignalSetScope -win $_nWave11 "/top/dut/u_DTOP/u_PERI/u_i2cs_wrapper/u_i2cs"
wvGetSignalSetScope -win $_nWave11 "/top/dut/u_DTOP/u_PERI/u_i2cs_wrapper/u_i2cs"
wvGetSignalSetScope -win $_nWave11 "/top/dut/u_DTOP"
wvGetSignalSetScope -win $_nWave11 "/top/dut"
wvSetCursor -win $_nWave11 746633299.234469 -snap {("G2" 0)}
wvZoomAll -win $_nWave11
wvCreateWindow
wvSetPosition -win $_nWave12 {("G1" 0)}
wvOpenFile -win $_nWave12 \
           {/mnt/users/DV/lx61100/SIM/ML4_DEV04/lx61100_tientq_ws_8/testdbscp-lx61100-cpu_test_c-lxs_fw+testcase00-vseq+cpu_receive_data_uart_vseq_c-time+35000000000-fsdb_all-use_env_uart0/all.fsdb}
wvSetCursor -win $_nWave12 441480620.612175
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP" -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top" -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ahb" \
           -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl" \
           -win $_nTrace1
srcHBSelect \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0" \
           -win $_nTrace1
wvGetSignalOpen -win $_nWave12
wvGetSignalSetScope -win $_nWave12 "/soc_tb"
srcHBDrag -win $_nTrace1
srcHBDrag -win $_nTrace1
wvGetSignalSetScope -win $_nWave12 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvGetSignalSetSignalFilter -win $_nWave12 "*result*"
wvSetPosition -win $_nWave12 {("G1" 0)}
wvSetPosition -win $_nWave12 {("G1" 0)}
wvAddSignal -win $_nWave12 -clear
wvAddSignal -win $_nWave12 -group {"G1" \
}
wvSetPosition -win $_nWave12 {("G1" 0)}
wvSetPosition -win $_nWave12 {("G1" 1)}
wvSetPosition -win $_nWave12 {("G1" 1)}
wvAddSignal -win $_nWave12 -clear
wvAddSignal -win $_nWave12 -group {"G1" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
}
wvAddSignal -win $_nWave12 -group {"G2" \
}
wvSelectSignal -win $_nWave12 {( "G1" 1 )} 
wvSetPosition -win $_nWave12 {("G1" 1)}
wvSetPosition -win $_nWave12 {("G1" 1)}
wvSetPosition -win $_nWave12 {("G1" 1)}
wvAddSignal -win $_nWave12 -clear
wvAddSignal -win $_nWave12 -group {"G1" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
}
wvAddSignal -win $_nWave12 -group {"G2" \
}
wvSelectSignal -win $_nWave12 {( "G1" 1 )} 
wvSetPosition -win $_nWave12 {("G1" 1)}
wvGetSignalClose -win $_nWave12
wvSetCursor -win $_nWave12 590470528.101186 -snap {("G2" 0)}
wvZoomAll -win $_nWave12
wvZoom -win $_nWave12 2266214908.648641 3238570094.366396
wvZoom -win $_nWave12 2475420304.302716 2564276359.446386
wvZoom -win $_nWave12 2490580822.675270 2503428719.601769
wvZoom -win $_nWave12 2493389674.634640 2494786669.789169
wvZoom -win $_nWave12 2493848606.529762 2493974651.205359
wvZoomAll -win $_nWave12
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top" -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0B_TOP" -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0B_TOP.u_eflash_sub_top" -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0B_TOP.u_eflash_sub_top.u_eflash_sfr" \
           -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0B_TOP.u_eflash_sub_top.u_eflash_ctrl" \
           -win $_nTrace1
srcHBSelect \
           "top.dut.u_DTOP.u_MEM.u_FLASH0B_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0" \
           -win $_nTrace1
wvGetSignalOpen -win $_nWave12
wvGetSignalSetScope -win $_nWave12 "/soc_tb"
wvGetSignalSetScope -win $_nWave12 "/top"
wvGetSignalSetScope -win $_nWave12 "/top/dut"
wvGetSignalSetScope -win $_nWave12 "/top/dut/u_DTOP"
wvGetSignalSetScope -win $_nWave12 "/top/dut/u_DTOP/u_MEM"
wvGetSignalSetScope -win $_nWave12 "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP"
wvGetSignalSetScope -win $_nWave12 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top"
wvGetSignalSetScope -win $_nWave12 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl"
wvGetSignalSetScope -win $_nWave12 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvGetSignalSetScope -win $_nWave12 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
srcHBDrag -win $_nTrace1
wvGetSignalSetScope -win $_nWave12 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvSetPosition -win $_nWave12 {("G1" 2)}
wvSetPosition -win $_nWave12 {("G1" 2)}
wvAddSignal -win $_nWave12 -clear
wvAddSignal -win $_nWave12 -group {"G1" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
}
wvAddSignal -win $_nWave12 -group {"G2" \
}
wvSelectSignal -win $_nWave12 {( "G1" 2 )} 
wvSetPosition -win $_nWave12 {("G1" 2)}
wvSetPosition -win $_nWave12 {("G1" 2)}
wvSetPosition -win $_nWave12 {("G1" 2)}
wvAddSignal -win $_nWave12 -clear
wvAddSignal -win $_nWave12 -group {"G1" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
}
wvAddSignal -win $_nWave12 -group {"G2" \
}
wvSelectSignal -win $_nWave12 {( "G1" 2 )} 
wvSetPosition -win $_nWave12 {("G1" 2)}
wvGetSignalClose -win $_nWave12
wvSetCursor -win $_nWave12 3897262316.949392 -snap {("G1" 2)}
wvZoomAll -win $_nWave12
wvSelectSignal -win $_nWave12 {( "G1" 2 )} 
wvSetPosition -win $_nWave12 {("G2" 0)}
wvMoveSelected -win $_nWave12
wvSetPosition -win $_nWave12 {("G2" 1)}
wvSetPosition -win $_nWave12 {("G2" 1)}
wvSetCursor -win $_nWave12 2023126112.219202 -snap {("G3" 0)}
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0B_TOP.u_eflash_sub_top.u_eflash_ctrl" \
           -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0B_TOP.u_eflash_sub_top.u_eflash_ahb" \
           -win $_nTrace1
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0B_TOP.u_eflash_sub_top.u_eflash_ctrl" \
           -win $_nTrace1
wvGetSignalOpen -win $_nWave12
wvGetSignalSetScope -win $_nWave12 "/soc_tb"
wvGetSignalSetScope -win $_nWave12 "/top"
wvGetSignalSetScope -win $_nWave12 "/top/dut"
wvGetSignalSetScope -win $_nWave12 "/top/dut/u_DTOP"
wvGetSignalSetScope -win $_nWave12 "/top/dut/u_DTOP/u_MEM"
wvGetSignalSetScope -win $_nWave12 "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP"
wvGetSignalSetScope -win $_nWave12 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top"
wvGetSignalSetScope -win $_nWave12 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl"
wvGetSignalSetScope -win $_nWave12 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvGetSignalSetScope -win $_nWave12 "/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP"
wvGetSignalSetScope -win $_nWave12 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top"
wvGetSignalSetScope -win $_nWave12 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl"
wvGetSignalSetScope -win $_nWave12 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvGetSignalSetScope -win $_nWave12 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvSetPosition -win $_nWave12 {("G1" 1)}
wvSetPosition -win $_nWave12 {("G2" 1)}
wvSetPosition -win $_nWave12 {("G1" 1)}
wvSetPosition -win $_nWave12 {("G2" 1)}
wvGetSignalSetScope -win $_nWave12 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvGetSignalSetSignalFilter -win $_nWave12 "*"
wvSetPosition -win $_nWave12 {("G2" 1)}
wvSetPosition -win $_nWave12 {("G2" 1)}
wvAddSignal -win $_nWave12 -clear
wvAddSignal -win $_nWave12 -group {"G1" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
}
wvAddSignal -win $_nWave12 -group {"G2" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
}
wvAddSignal -win $_nWave12 -group {"G3" \
}
wvSetPosition -win $_nWave12 {("G2" 1)}
wvGetSignalSetScope -win $_nWave12 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl"
wvGetSignalSetScope -win $_nWave12 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvGetSignalSetOptions -win $_nWave12 -input on
wvGetSignalSetSignalFilter -win $_nWave12 "*"
wvSetPosition -win $_nWave12 {("G2" 2)}
wvSetPosition -win $_nWave12 {("G2" 2)}
wvAddSignal -win $_nWave12 -clear
wvAddSignal -win $_nWave12 -group {"G1" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
}
wvAddSignal -win $_nWave12 -group {"G2" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
}
wvAddSignal -win $_nWave12 -group {"G3" \
}
wvSelectSignal -win $_nWave12 {( "G2" 2 )} 
wvSetPosition -win $_nWave12 {("G2" 2)}
wvSetCursor -win $_nWave12 7865098800.604106 -snap {("G3" 0)}
wvZoomAll -win $_nWave12
wvSetCursor -win $_nWave12 5771398521.679584 -snap {("G2" 2)}
wvZoomAll -win $_nWave12
wvSetCursor -win $_nWave12 5771398521.679584 -snap {("G2" 2)}
wvZoomAll -win $_nWave12
wvSetCursor -win $_nWave12 5771398521.679584 -snap {("G2" 2)}
wvZoomAll -win $_nWave12
wvSetCursor -win $_nWave12 5771398521.679584 -snap {("G2" 2)}
wvZoomAll -win $_nWave12
wvZoomAll -win $_nWave12
wvSetCursor -win $_nWave12 5771398521.679584 -snap {("G2" 2)}
wvZoomAll -win $_nWave12
wvZoomAll -win $_nWave12
wvSetCursor -win $_nWave12 5771398521.679584 -snap {("G2" 2)}
wvZoomAll -win $_nWave12
wvSetCursor -win $_nWave12 5771398521.679584 -snap {("G2" 2)}
wvZoomAll -win $_nWave12
wvZoomAll -win $_nWave12
wvSetCursor -win $_nWave12 5771398521.679584 -snap {("G2" 2)}
wvZoomAll -win $_nWave12
wvGetSignalSetScope -win $_nWave12 "/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP"
wvGetSignalSetScope -win $_nWave12 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0"
wvSetPosition -win $_nWave12 {("G2" 3)}
wvSetPosition -win $_nWave12 {("G2" 3)}
wvAddSignal -win $_nWave12 -clear
wvAddSignal -win $_nWave12 -group {"G1" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
}
wvAddSignal -win $_nWave12 -group {"G2" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
}
wvAddSignal -win $_nWave12 -group {"G3" \
}
wvSelectSignal -win $_nWave12 {( "G2" 3 )} 
wvSetPosition -win $_nWave12 {("G2" 3)}
wvSetPosition -win $_nWave12 {("G2" 4)}
wvSetPosition -win $_nWave12 {("G2" 4)}
wvAddSignal -win $_nWave12 -clear
wvAddSignal -win $_nWave12 -group {"G1" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
}
wvAddSignal -win $_nWave12 -group {"G2" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/o_checksum_result\[15:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0B_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_checksum_start} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_eflash_sub_top/u_eflash_ctrl/checksum_0/i_eflash_data\[31:0\]} \
}
wvAddSignal -win $_nWave12 -group {"G3" \
}
wvSelectSignal -win $_nWave12 {( "G2" 4 )} 
wvSetPosition -win $_nWave12 {("G2" 4)}
wvZoom -win $_nWave12 1489899074.890110 3497342038.952574
wvZoom -win $_nWave12 1664055491.668120 2467497094.404514
wvZoom -win $_nWave12 1731899606.184781 1800673092.133298
wvZoom -win $_nWave12 1738860485.328587 1763521885.726551
wvZoomAll -win $_nWave12
wvSetCursor -win $_nWave12 2438729538.372759 -snap {("G2" 4)}
srcHBSelect "top.dut.u_DTOP.u_MEM.u_FLASH0B_TOP.u_flash_256k_wrapper" -win \
           $_nTrace1
srcHBSelect \
           "top.dut.u_DTOP.u_MEM.u_FLASH0B_TOP.u_flash_256k_wrapper.u_flash_256k" \
           -win $_nTrace1
wvCreateWindow
wvSetPosition -win $_nWave13 {("G1" 0)}
wvOpenFile -win $_nWave13 \
           {/mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_cuonglx_ws_10/testdbscp-lx61102-cpu_test_c-bios+i2cs_intr-vseq+cpu_i2cs_vseq_c-time+6000000000000-use_env_i2c-fsdb_all/all.fsdb}
wvGetSignalOpen -win $_nWave13
wvGetSignalSetScope -win $_nWave13 "/soc_tb"
wvGetSignalSetScope -win $_nWave13 "/soc_tb/if_i2c_s"
wvGetSignalSetScope -win $_nWave13 "/soc_tb/if_i2c_m2"
wvGetSignalSetScope -win $_nWave13 "/soc_tb/if_i2c_s"
wvGetSignalSetScope -win $_nWave13 "/soc_tb/if_i2c_m"
wvSetPosition -win $_nWave13 {("G1" 7)}
wvSetPosition -win $_nWave13 {("G1" 7)}
wvAddSignal -win $_nWave13 -clear
wvAddSignal -win $_nWave13 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_OUT_my} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_OUT_my} \
{/soc_tb/if_i2c_m/SDA_inst} \
{/soc_tb/if_i2c_m/clk} \
}
wvAddSignal -win $_nWave13 -group {"G2" \
}
wvSelectSignal -win $_nWave13 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave13 {("G1" 7)}
wvSetPosition -win $_nWave13 {("G1" 7)}
wvSetPosition -win $_nWave13 {("G1" 7)}
wvAddSignal -win $_nWave13 -clear
wvAddSignal -win $_nWave13 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_OUT_my} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_OUT_my} \
{/soc_tb/if_i2c_m/SDA_inst} \
{/soc_tb/if_i2c_m/clk} \
}
wvAddSignal -win $_nWave13 -group {"G2" \
}
wvSelectSignal -win $_nWave13 {( "G1" 1 2 3 4 5 6 7 )} 
wvSetPosition -win $_nWave13 {("G1" 7)}
wvGetSignalClose -win $_nWave13
wvSetCursor -win $_nWave13 364751394.024235 -snap {("G1" 6)}
wvZoomAll -win $_nWave13
wvZoom -win $_nWave13 3103021490.093812 3571402092.372123
wvZoom -win $_nWave13 3225737749.683558 3276666351.897741
wvZoomAll -win $_nWave13
wvSetCursor -win $_nWave13 2306774466.220683 -snap {("G2" 0)}
wvZoom -win $_nWave13 2895543565.717355 2930712111.049955
wvZoomAll -win $_nWave13
wvZoom -win $_nWave13 2843356522.257269 3718741747.859622
wvZoom -win $_nWave13 3196811805.156260 3292432558.017895
wvSelectSignal -win $_nWave13 {( "G1" 1 )} 
wvSelectSignal -win $_nWave13 {( "G1" 2 )} 
wvSelectSignal -win $_nWave13 {( "G1" 3 )} 
wvSelectSignal -win $_nWave13 {( "G1" 3 )} 
wvSelectSignal -win $_nWave13 {( "G1" 4 )} 
wvZoom -win $_nWave13 3213784799.649645 3214344348.918667
wvZoomAll -win $_nWave13
wvGetSignalOpen -win $_nWave13
wvGetSignalSetScope -win $_nWave13 "/soc_tb"
wvGetSignalSetScope -win $_nWave13 "/soc_tb/if_i2c_m"
wvGetSignalSetScope -win $_nWave13 "/soc_tb/if_i2c_m2"
wvSetPosition -win $_nWave13 {("G1" 14)}
wvSetPosition -win $_nWave13 {("G1" 14)}
wvAddSignal -win $_nWave13 -clear
wvAddSignal -win $_nWave13 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_OUT_my} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_OUT_my} \
{/soc_tb/if_i2c_m/SDA_inst} \
{/soc_tb/if_i2c_m/clk} \
{/soc_tb/if_i2c_m2/SCL_IN} \
{/soc_tb/if_i2c_m2/SCL_OUT_my} \
{/soc_tb/if_i2c_m2/SCL_inst} \
{/soc_tb/if_i2c_m2/SDA_IN} \
{/soc_tb/if_i2c_m2/SDA_OUT_my} \
{/soc_tb/if_i2c_m2/SDA_inst} \
{/soc_tb/if_i2c_m2/clk} \
}
wvAddSignal -win $_nWave13 -group {"G2" \
}
wvSelectSignal -win $_nWave13 {( "G1" 8 9 10 11 12 13 14 )} 
wvSetPosition -win $_nWave13 {("G1" 14)}
wvSetCursor -win $_nWave13 4186052657.767646 -snap {("G2" 0)}
wvZoomAll -win $_nWave13
wvSelectSignal -win $_nWave13 {( "G1" 10 )} 
wvSelectSignal -win $_nWave13 {( "G1" 7 )} 
wvSelectSignal -win $_nWave13 {( "G1" 8 )} 
wvSelectSignal -win $_nWave13 {( "G1" 8 9 )} 
wvSelectSignal -win $_nWave13 {( "G1" 8 9 10 )} 
wvSelectSignal -win $_nWave13 {( "G1" 8 9 10 11 )} 
wvSelectSignal -win $_nWave13 {( "G1" 8 9 10 11 12 )} 
wvSelectSignal -win $_nWave13 {( "G1" 8 9 10 11 12 13 )} 
wvSelectSignal -win $_nWave13 {( "G1" 8 9 10 11 12 13 14 )} 
wvCut -win $_nWave13
wvSetPosition -win $_nWave13 {("G1" 7)}
wvSetCursor -win $_nWave13 3159285024.730299 -snap {("G1" 6)}
wvZoomAll -win $_nWave13
wvZoom -win $_nWave13 3132957649.524213 3705578060.256580
wvSelectSignal -win $_nWave13 {( "G1" 5 )} 
wvSelectSignal -win $_nWave13 {( "G1" 5 )} 
wvSelectSignal -win $_nWave13 {( "G1" 2 5 )} 
wvCut -win $_nWave13
wvSetPosition -win $_nWave13 {("G1" 5)}
wvSetCursor -win $_nWave13 3245024452.924808 -snap {("G2" 0)}
wvZoomAll -win $_nWave13
wvZoom -win $_nWave13 2659064895.814668 3988597343.722002
wvZoom -win $_nWave13 3203671815.307901 3347171416.317406
wvSelectSignal -win $_nWave13 {( "G1" 4 )} 
wvSelectSignal -win $_nWave13 {( "G1" 2 )} 
wvZoom -win $_nWave13 3243418778.915615 3244258503.498895
wvZoomAll -win $_nWave13
wvGetSignalSetScope -win $_nWave13 "/soc_tb/if_i2c_m"
wvGetSignalSetScope -win $_nWave13 "/soc_tb/if_i2c_s"
wvSetPosition -win $_nWave13 {("G1" 12)}
wvSetPosition -win $_nWave13 {("G1" 12)}
wvAddSignal -win $_nWave13 -clear
wvAddSignal -win $_nWave13 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
{/soc_tb/if_i2c_m/clk} \
{/soc_tb/if_i2c_s/SCL_IN} \
{/soc_tb/if_i2c_s/SCL_OUT_my} \
{/soc_tb/if_i2c_s/SCL_inst} \
{/soc_tb/if_i2c_s/SDA_IN} \
{/soc_tb/if_i2c_s/SDA_OUT_my} \
{/soc_tb/if_i2c_s/SDA_inst} \
{/soc_tb/if_i2c_s/clk} \
}
wvAddSignal -win $_nWave13 -group {"G2" \
}
wvSelectSignal -win $_nWave13 {( "G1" 6 7 8 9 10 11 12 )} 
wvSetPosition -win $_nWave13 {("G1" 12)}
wvSetPosition -win $_nWave13 {("G1" 6)}
wvSetPosition -win $_nWave13 {("G1" 10)}
wvSetPosition -win $_nWave13 {("G2" 0)}
wvMoveSelected -win $_nWave13
wvSetPosition -win $_nWave13 {("G2" 7)}
wvSetPosition -win $_nWave13 {("G2" 7)}
wvSetCursor -win $_nWave13 3205357931.340949 -snap {("G2" 4)}
wvZoomAll -win $_nWave13
wvGetSignalSetScope -win $_nWave13 "/soc_tb/if_i2c_s2"
wvSetPosition -win $_nWave13 {("G2" 5)}
wvSetPosition -win $_nWave13 {("G2" 6)}
wvSetPosition -win $_nWave13 {("G2" 7)}
wvSetPosition -win $_nWave13 {("G3" 0)}
wvAddSignal -win $_nWave13 "/soc_tb/if_i2c_s2/SCL_IN" \
           "/soc_tb/if_i2c_s2/SCL_OUT_my" "/soc_tb/if_i2c_s2/SCL_inst" \
           "/soc_tb/if_i2c_s2/SDA_IN" "/soc_tb/if_i2c_s2/SDA_OUT_my" \
           "/soc_tb/if_i2c_s2/SDA_inst" "/soc_tb/if_i2c_s2/clk"
wvSetPosition -win $_nWave13 {("G3" 0)}
wvSetPosition -win $_nWave13 {("G3" 7)}
wvSetPosition -win $_nWave13 {("G3" 7)}
wvZoom -win $_nWave13 2869683897.463355 2922338647.875526
wvZoomAll -win $_nWave13
wvScrollUp -win $_nWave13 1
wvScrollUp -win $_nWave13 1
wvScrollUp -win $_nWave13 1
wvScrollUp -win $_nWave13 1
wvScrollUp -win $_nWave13 1
wvScrollUp -win $_nWave13 1
wvScrollUp -win $_nWave13 1
wvScrollUp -win $_nWave13 1
wvScrollUp -win $_nWave13 1
wvScrollUp -win $_nWave13 1
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvSelectGroup -win $_nWave13 {G2}
wvScrollDown -win $_nWave13 0
wvGetSignalSetScope -win $_nWave13 "/soc_tb/if_i2c_m"
wvScrollDown -win $_nWave13 5
wvSetCursor -win $_nWave13 2073280797.479259 -snap {("G3" 1)}
wvScrollDown -win $_nWave13 1
wvScrollDown -win $_nWave13 1
wvScrollDown -win $_nWave13 1
wvScrollDown -win $_nWave13 1
wvScrollDown -win $_nWave13 1
wvScrollDown -win $_nWave13 1
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvScrollDown -win $_nWave13 0
wvGetSignalSetScope -win $_nWave13 "/soc_tb"
wvGetSignalSetScope -win $_nWave13 "/top"
wvGetSignalSetSignalFilter -win $_nWave13 "*gpa*"
wvSetPosition -win $_nWave13 {("G3" 7)}
wvSetPosition -win $_nWave13 {("G3" 7)}
wvAddSignal -win $_nWave13 -clear
wvAddSignal -win $_nWave13 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
{/soc_tb/if_i2c_m/clk} \
}
wvAddSignal -win $_nWave13 -group {"G2" \
{/soc_tb/if_i2c_s/SCL_IN} \
{/soc_tb/if_i2c_s/SCL_OUT_my} \
{/soc_tb/if_i2c_s/SCL_inst} \
{/soc_tb/if_i2c_s/SDA_IN} \
{/soc_tb/if_i2c_s/SDA_OUT_my} \
{/soc_tb/if_i2c_s/SDA_inst} \
{/soc_tb/if_i2c_s/clk} \
}
wvAddSignal -win $_nWave13 -group {"G3" \
{/soc_tb/if_i2c_s2/SCL_IN} \
{/soc_tb/if_i2c_s2/SCL_OUT_my} \
{/soc_tb/if_i2c_s2/SCL_inst} \
{/soc_tb/if_i2c_s2/SDA_IN} \
{/soc_tb/if_i2c_s2/SDA_OUT_my} \
{/soc_tb/if_i2c_s2/SDA_inst} \
{/soc_tb/if_i2c_s2/clk} \
}
wvAddSignal -win $_nWave13 -group {"G4" \
}
wvSetPosition -win $_nWave13 {("G3" 7)}
wvSetPosition -win $_nWave13 {("G3" 9)}
wvSetPosition -win $_nWave13 {("G3" 9)}
wvAddSignal -win $_nWave13 -clear
wvAddSignal -win $_nWave13 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
{/soc_tb/if_i2c_m/clk} \
}
wvAddSignal -win $_nWave13 -group {"G2" \
{/soc_tb/if_i2c_s/SCL_IN} \
{/soc_tb/if_i2c_s/SCL_OUT_my} \
{/soc_tb/if_i2c_s/SCL_inst} \
{/soc_tb/if_i2c_s/SDA_IN} \
{/soc_tb/if_i2c_s/SDA_OUT_my} \
{/soc_tb/if_i2c_s/SDA_inst} \
{/soc_tb/if_i2c_s/clk} \
}
wvAddSignal -win $_nWave13 -group {"G3" \
{/soc_tb/if_i2c_s2/SCL_IN} \
{/soc_tb/if_i2c_s2/SCL_OUT_my} \
{/soc_tb/if_i2c_s2/SCL_inst} \
{/soc_tb/if_i2c_s2/SDA_IN} \
{/soc_tb/if_i2c_s2/SDA_OUT_my} \
{/soc_tb/if_i2c_s2/SDA_inst} \
{/soc_tb/if_i2c_s2/clk} \
{/top/GPA00} \
{/top/GPA01} \
}
wvAddSignal -win $_nWave13 -group {"G4" \
}
wvSelectSignal -win $_nWave13 {( "G3" 8 9 )} 
wvSetPosition -win $_nWave13 {("G3" 9)}
wvScrollDown -win $_nWave13 0
wvGetSignalSetSignalFilter -win $_nWave13 "*gpd*"
wvSetPosition -win $_nWave13 {("G3" 9)}
wvSetPosition -win $_nWave13 {("G3" 9)}
wvAddSignal -win $_nWave13 -clear
wvAddSignal -win $_nWave13 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
{/soc_tb/if_i2c_m/clk} \
}
wvAddSignal -win $_nWave13 -group {"G2" \
{/soc_tb/if_i2c_s/SCL_IN} \
{/soc_tb/if_i2c_s/SCL_OUT_my} \
{/soc_tb/if_i2c_s/SCL_inst} \
{/soc_tb/if_i2c_s/SDA_IN} \
{/soc_tb/if_i2c_s/SDA_OUT_my} \
{/soc_tb/if_i2c_s/SDA_inst} \
{/soc_tb/if_i2c_s/clk} \
}
wvAddSignal -win $_nWave13 -group {"G3" \
{/soc_tb/if_i2c_s2/SCL_IN} \
{/soc_tb/if_i2c_s2/SCL_OUT_my} \
{/soc_tb/if_i2c_s2/SCL_inst} \
{/soc_tb/if_i2c_s2/SDA_IN} \
{/soc_tb/if_i2c_s2/SDA_OUT_my} \
{/soc_tb/if_i2c_s2/SDA_inst} \
{/soc_tb/if_i2c_s2/clk} \
{/top/GPA00} \
{/top/GPA01} \
}
wvAddSignal -win $_nWave13 -group {"G4" \
}
wvSelectSignal -win $_nWave13 {( "G3" 8 9 )} 
wvSetPosition -win $_nWave13 {("G3" 9)}
wvSetPosition -win $_nWave13 {("G3" 11)}
wvSetPosition -win $_nWave13 {("G3" 11)}
wvAddSignal -win $_nWave13 -clear
wvAddSignal -win $_nWave13 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
{/soc_tb/if_i2c_m/clk} \
}
wvAddSignal -win $_nWave13 -group {"G2" \
{/soc_tb/if_i2c_s/SCL_IN} \
{/soc_tb/if_i2c_s/SCL_OUT_my} \
{/soc_tb/if_i2c_s/SCL_inst} \
{/soc_tb/if_i2c_s/SDA_IN} \
{/soc_tb/if_i2c_s/SDA_OUT_my} \
{/soc_tb/if_i2c_s/SDA_inst} \
{/soc_tb/if_i2c_s/clk} \
}
wvAddSignal -win $_nWave13 -group {"G3" \
{/soc_tb/if_i2c_s2/SCL_IN} \
{/soc_tb/if_i2c_s2/SCL_OUT_my} \
{/soc_tb/if_i2c_s2/SCL_inst} \
{/soc_tb/if_i2c_s2/SDA_IN} \
{/soc_tb/if_i2c_s2/SDA_OUT_my} \
{/soc_tb/if_i2c_s2/SDA_inst} \
{/soc_tb/if_i2c_s2/clk} \
{/top/GPA00} \
{/top/GPA01} \
{/top/GPD06} \
{/top/GPD07} \
}
wvAddSignal -win $_nWave13 -group {"G4" \
}
wvSelectSignal -win $_nWave13 {( "G3" 10 11 )} 
wvSetPosition -win $_nWave13 {("G3" 11)}
wvSetCursor -win $_nWave13 5186492915.598907 -snap {("G3" 8)}
wvZoomAll -win $_nWave13
wvSetCursor -win $_nWave13 4074161313.141781 -snap {("G3" 9)}
wvZoomAll -win $_nWave13
wvGetSignalSetSignalFilter -win $_nWave13 "*gpa*"
wvSetPosition -win $_nWave13 {("G3" 9)}
wvSetPosition -win $_nWave13 {("G3" 11)}
wvSetPosition -win $_nWave13 {("G4" 0)}
wvAddSignal -win $_nWave13 "/top/GPA02" "/top/GPA03"
wvSetPosition -win $_nWave13 {("G4" 0)}
wvSetPosition -win $_nWave13 {("G4" 2)}
wvSetPosition -win $_nWave13 {("G4" 2)}
wvSetCursor -win $_nWave13 2935502335.478570 -snap {("G4" 1)}
wvZoomAll -win $_nWave13
wvSelectSignal -win $_nWave13 {( "G3" 10 )} 
wvSelectSignal -win $_nWave13 {( "G3" 10 11 )} 
wvSetPosition -win $_nWave13 {("G3" 10)}
wvSetPosition -win $_nWave13 {("G3" 11)}
wvSetPosition -win $_nWave13 {("G4" 2)}
wvMoveSelected -win $_nWave13
wvSetPosition -win $_nWave13 {("G4" 4)}
wvSelectSignal -win $_nWave13 {( "G4" 1 )} 
wvSelectSignal -win $_nWave13 {( "G4" 1 2 )} 
wvCut -win $_nWave13
wvSetPosition -win $_nWave13 {("G4" 2)}
wvSetCursor -win $_nWave13 5449766667.659765 -snap {("G4" 1)}
wvZoomAll -win $_nWave13
wvSelectSignal -win $_nWave13 {( "G4" 1 )} 
wvSelectSignal -win $_nWave13 {( "G3" 9 )} 
wvSelectSignal -win $_nWave13 {( "G4" 1 )} 
wvSelectSignal -win $_nWave13 {( "G4" 1 2 )} 
wvSelectSignal -win $_nWave13 {( "G3" 9 )} {( "G4" 1 2 )} 
wvSelectSignal -win $_nWave13 {( "G3" 7 9 )} {( "G4" 1 2 )} 
wvSelectSignal -win $_nWave13 {( "G3" 7 8 9 )} {( "G4" 1 2 )} 
wvSelectSignal -win $_nWave13 {( "G3" 8 9 )} {( "G4" 1 2 )} 
wvCut -win $_nWave13
wvSetPosition -win $_nWave13 {("G4" 0)}
wvSetPosition -win $_nWave13 {("G3" 6)}
wvSetPosition -win $_nWave13 {("G4" 0)}
wvSetPosition -win $_nWave13 {("G5" 0)}
wvAddSignal -win $_nWave13 "/top/GPA06" "/top/GPA07"
wvSetPosition -win $_nWave13 {("G5" 0)}
wvSetPosition -win $_nWave13 {("G5" 2)}
wvSetPosition -win $_nWave13 {("G5" 2)}
wvSetCursor -win $_nWave13 1342696135.510377 -snap {("G5" 1)}
wvZoomAll -win $_nWave13
wvSetCursor -win $_nWave13 1178150040.472341 -snap {("G3" 7)}
wvZoomAll -win $_nWave13
wvDisplayGridCount -win $_nWave10 -off
wvGetSignalClose -win $_nWave10
wvDisplayGridCount -win $_nWave11 -off
wvGetSignalClose -win $_nWave11
wvDisplayGridCount -win $_nWave12 -off
wvGetSignalClose -win $_nWave12
wvDisplayGridCount -win $_nWave13 -off
wvGetSignalClose -win $_nWave13
wvReloadFile -win $_nWave13
wvSetCursor -win $_nWave13 3231685306.547035 -snap {("G3" 7)}
wvZoomAll -win $_nWave13
wvSetCursor -win $_nWave13 3053975523.905955 -snap {("G4" 0)}
wvZoomAll -win $_nWave13
wvSetCursor -win $_nWave13 3238267150.348557 -snap {("G3" 7)}
wvZoomAll -win $_nWave13
wvSetCursor -win $_nWave13 3238267150.348557 -snap {("G3" 7)}
wvZoomAll -win $_nWave13
wvSetCursor -win $_nWave13 2718301490.028361 -snap {("G3" 7)}
wvZoomAll -win $_nWave13
wvZoom -win $_nWave13 0.000000 243528220.656294
wvSetCursor -win $_nWave13 50510729.772014 -snap {("G5" 0)}
wvZoomAll -win $_nWave13
wvSelectSignal -win $_nWave13 {( "G3" 5 )} 
wvSelectSignal -win $_nWave13 {( "G1" 1 )} 
wvScrollDown -win $_nWave13 0
wvSelectGroup -win $_nWave13 {G1}
wvCut -win $_nWave13
wvSetPosition -win $_nWave13 {("G5" 2)}
wvSelectGroup -win $_nWave13 {G2}
wvCut -win $_nWave13
wvSetPosition -win $_nWave13 {("G5" 2)}
wvSelectGroup -win $_nWave13 {G3}
wvCut -win $_nWave13
wvSetPosition -win $_nWave13 {("G5" 2)}
wvGetSignalOpen -win $_nWave13
wvTpfCloseForm -win $_nWave10
wvGetSignalClose -win $_nWave10
wvCloseWindow -win $_nWave10
verdiDockWidgetSetCurTab -dock windowDock_nWave_12
wvTpfCloseForm -win $_nWave11
wvGetSignalClose -win $_nWave11
wvCloseWindow -win $_nWave11
wvTpfCloseForm -win $_nWave12
wvGetSignalClose -win $_nWave12
wvCloseWindow -win $_nWave12
wvTpfCloseForm -win $_nWave13
wvGetSignalClose -win $_nWave13
wvCloseWindow -win $_nWave13
wvCreateWindow
wvSetCursor -win $_nWave14 93090644.702814
wvOpenFile -win $_nWave14 \
           {/mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_tientq_ws_9/testdbscp-lx61102-cpu_test_c-lxs_fw+testcase65-vseq+cpu_receive_data_uart_vseq_c-time+35000000000-fsdb_all-use_env_uart0/all.fsdb}
wvSetCursor -win $_nWave14 564906346.724197
wvGetSignalOpen -win $_nWave14
wvGetSignalSetScope -win $_nWave14 "/soc_tb"
wvGetSignalSetScope -win $_nWave14 "/top/svc_sdk"
wvGetSignalSetScope -win $_nWave14 "/top/u_u_cmsdk_uart_capture_ard"
wvGetSignalSetScope -win $_nWave14 "/top/dut"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_PERI"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_MEM"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_CPU"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_BUS"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_CPU"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_BUS"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_CPU"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_MEM"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_CPU"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_MEM"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_PERI"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_stc"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_rcureg"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_ccu"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_ccureg"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_rcureg"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_stc"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_rcureg"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_rcu"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg"
wvGetSignalSetScope -win $_nWave14 \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/apbif2pmureg"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu"
wvGetSignalSetScope -win $_nWave14 \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu/u_cm3_pmu"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmu"
wvGetSignalSetScope -win $_nWave14 "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg"
srcSetScope -win $_nTrace1 "top.dut.u_DTOP.u_SYS.u_syscon.u_pmureg" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -word -line 43 -pos 5 -win $_nTrace1
wvRenameGroup -win $_nWave14 {G1} {pmureg2pmu(prod)}
wvAddSignal -win $_nWave14 \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmrm" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmcr" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmsr" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr32_0\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr32_1\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr32_2\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr32_3\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr16_0\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr16_1\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr16_2\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr16_3\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/clr_stopen"
wvSetPosition -win $_nWave14 {("pmureg2pmu(prod)" 0)}
wvSetPosition -win $_nWave14 {("pmureg2pmu(prod)" 12)}
wvSetPosition -win $_nWave14 {("pmureg2pmu(prod)" 12)}
wvSetPosition -win $_nWave14 {("G2" 0)}
wvSetCursor -win $_nWave14 843409126.053259 -snap {("pmureg2pmu(prod)" 6)}
wvSetCursor -win $_nWave14 634038242.302333 -snap {("pmureg2pmu(prod)" 7)}
wvZoomAll -win $_nWave14
wvSetCursor -win $_nWave14 46367993007.100861 -snap {("pmureg2pmu(prod)" 5)}
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 6 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 5 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 7 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 5 )} 
wvSetOptions -win $_nWave14 -hierName on
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 7 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 6 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 5 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 4 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 6 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 8 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 10 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 12 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 10 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 7 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 7 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 8 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 4 )} 
wvCopySignalFullPathToClipboard -win $_nWave14
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 4 )} 
wvCopySignalFullPathToClipboard -win $_nWave14
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 5 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 6 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 5 )} 
wvCopySignalFullPathToClipboard -win $_nWave14
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 8 )} 
wvCopySignalFullPathToClipboard -win $_nWave14
wvCreateWindow
wvSetPosition -win $_nWave15 {("G1" 0)}
wvOpenFile -win $_nWave15 \
           {/mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_cuonglx_ws_10/testdbscp-lx61102-cpu_test_c-bios+i2cs_intr-vseq+cpu_i2cs_vseq_c-time+6000000000000-use_env_i2c-fsdb_all/all.fsdb}
wvGetSignalOpen -win $_nWave15
wvGetSignalSetScope -win $_nWave15 "/soc_tb"
wvGetSignalSetScope -win $_nWave15 "/soc_tb/if_ccu"
wvGetSignalSetScope -win $_nWave15 "/soc_tb/if_ccu_clk"
wvGetSignalSetScope -win $_nWave15 "/soc_tb/if_i2c_s2"
wvGetSignalSetScope -win $_nWave15 "/soc_tb/if_i2c_s"
wvGetSignalSetScope -win $_nWave15 "/soc_tb/if_i2c_m2"
wvGetSignalSetScope -win $_nWave15 "/soc_tb/if_i2c_m"
wvSetPosition -win $_nWave15 {("G1" 4)}
wvSetPosition -win $_nWave15 {("G1" 4)}
wvAddSignal -win $_nWave15 -clear
wvAddSignal -win $_nWave15 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
}
wvAddSignal -win $_nWave15 -group {"G2" \
}
wvSelectSignal -win $_nWave15 {( "G1" 1 2 3 4 )} 
wvSetPosition -win $_nWave15 {("G1" 4)}
wvSetPosition -win $_nWave15 {("G1" 4)}
wvSetPosition -win $_nWave15 {("G1" 4)}
wvAddSignal -win $_nWave15 -clear
wvAddSignal -win $_nWave15 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
}
wvAddSignal -win $_nWave15 -group {"G2" \
}
wvSelectSignal -win $_nWave15 {( "G1" 1 2 3 4 )} 
wvSetPosition -win $_nWave15 {("G1" 4)}
wvGetSignalClose -win $_nWave15
wvSetCursor -win $_nWave15 511120332.236207 -snap {("G2" 0)}
wvZoomAll -win $_nWave15
wvZoom -win $_nWave15 3138150035.264685 3676787727.884743
wvZoom -win $_nWave15 3215098277.066865 3281454453.196462
wvSetCursor -win $_nWave15 3236206372.422436 -snap {("G1" 4)}
wvZoomAll -win $_nWave15
wvGetSignalOpen -win $_nWave15
wvGetSignalSetScope -win $_nWave15 "/soc_tb"
wvGetSignalSetScope -win $_nWave15 "/soc_tb/if_i2c_m"
wvGetSignalSetScope -win $_nWave15 "/soc_tb"
wvGetSignalSetScope -win $_nWave15 "/top"
wvGetSignalSetScope -win $_nWave15 "/top/dut"
wvGetSignalSetSignalFilter -win $_nWave15 "*GPA*"
wvSetPosition -win $_nWave15 {("G1" 4)}
wvSetPosition -win $_nWave15 {("G1" 4)}
wvAddSignal -win $_nWave15 -clear
wvAddSignal -win $_nWave15 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
}
wvAddSignal -win $_nWave15 -group {"G2" \
}
wvSetPosition -win $_nWave15 {("G1" 4)}
wvSetPosition -win $_nWave15 {("G1" 6)}
wvSetPosition -win $_nWave15 {("G1" 6)}
wvAddSignal -win $_nWave15 -clear
wvAddSignal -win $_nWave15 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
{/top/dut/GPA06} \
{/top/dut/GPA07} \
}
wvAddSignal -win $_nWave15 -group {"G2" \
}
wvSelectSignal -win $_nWave15 {( "G1" 5 6 )} 
wvSetPosition -win $_nWave15 {("G1" 6)}
wvSetPosition -win $_nWave15 {("G1" 5)}
wvSetPosition -win $_nWave15 {("G1" 6)}
wvSetPosition -win $_nWave15 {("G2" 0)}
wvMoveSelected -win $_nWave15
wvSetPosition -win $_nWave15 {("G2" 2)}
wvSetPosition -win $_nWave15 {("G2" 2)}
wvSetCursor -win $_nWave15 1662751138.088005 -snap {("G2" 2)}
wvZoomAll -win $_nWave15
wvGetSignalOpen -win $_nWave15
wvGetSignalSetScope -win $_nWave15 "/soc_tb"
wvGetSignalSetScope -win $_nWave15 "/soc_tb/if_i2c_m"
wvGetSignalSetSignalFilter -win $_nWave15 "*GPD*"
wvSetPosition -win $_nWave15 {("G2" 2)}
wvSetPosition -win $_nWave15 {("G2" 2)}
wvAddSignal -win $_nWave15 -clear
wvAddSignal -win $_nWave15 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
}
wvAddSignal -win $_nWave15 -group {"G2" \
{/top/dut/GPA06} \
{/top/dut/GPA07} \
}
wvAddSignal -win $_nWave15 -group {"G3" \
}
wvSetPosition -win $_nWave15 {("G2" 2)}
wvGetSignalSetScope -win $_nWave15 "/soc_tb"
wvGetSignalSetScope -win $_nWave15 "/top"
wvGetSignalSetScope -win $_nWave15 "/top/dut"
wvSetPosition -win $_nWave15 {("G2" 4)}
wvSetPosition -win $_nWave15 {("G2" 4)}
wvAddSignal -win $_nWave15 -clear
wvAddSignal -win $_nWave15 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
}
wvAddSignal -win $_nWave15 -group {"G2" \
{/top/dut/GPA06} \
{/top/dut/GPA07} \
{/top/dut/GPD02} \
{/top/dut/GPD03} \
}
wvAddSignal -win $_nWave15 -group {"G3" \
}
wvSelectSignal -win $_nWave15 {( "G2" 3 4 )} 
wvSetPosition -win $_nWave15 {("G2" 4)}
wvSetPosition -win $_nWave15 {("G2" 4)}
wvSetPosition -win $_nWave15 {("G2" 4)}
wvAddSignal -win $_nWave15 -clear
wvAddSignal -win $_nWave15 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
}
wvAddSignal -win $_nWave15 -group {"G2" \
{/top/dut/GPA06} \
{/top/dut/GPA07} \
{/top/dut/GPD02} \
{/top/dut/GPD03} \
}
wvAddSignal -win $_nWave15 -group {"G3" \
}
wvSelectSignal -win $_nWave15 {( "G2" 3 4 )} 
wvSetPosition -win $_nWave15 {("G2" 4)}
wvGetSignalClose -win $_nWave15
wvSetCursor -win $_nWave15 5175605655.175339 -snap {("G2" 1)}
wvZoomAll -win $_nWave15
wvSetPosition -win $_nWave15 {("G2" 3)}
wvSetPosition -win $_nWave15 {("G2" 4)}
wvSetPosition -win $_nWave15 {("G3" 0)}
wvMoveSelected -win $_nWave15
wvSetPosition -win $_nWave15 {("G3" 2)}
wvSetPosition -win $_nWave15 {("G3" 2)}
wvGetSignalOpen -win $_nWave15
wvGetSignalSetScope -win $_nWave15 "/top"
wvGetSignalSetScope -win $_nWave15 "/top/dut"
wvGetSignalSetScope -win $_nWave15 "/soc_tb"
wvGetSignalSetSignalFilter -win $_nWave15 "*i2c_scl_bus*"
wvSetPosition -win $_nWave15 {("G3" 2)}
wvSetPosition -win $_nWave15 {("G3" 2)}
wvAddSignal -win $_nWave15 -clear
wvAddSignal -win $_nWave15 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
}
wvAddSignal -win $_nWave15 -group {"G2" \
{/top/dut/GPA06} \
{/top/dut/GPA07} \
}
wvAddSignal -win $_nWave15 -group {"G3" \
{/top/dut/GPD02} \
{/top/dut/GPD03} \
}
wvAddSignal -win $_nWave15 -group {"G4" \
}
wvSetPosition -win $_nWave15 {("G3" 2)}
wvSetPosition -win $_nWave15 {("G3" 3)}
wvSetPosition -win $_nWave15 {("G3" 3)}
wvAddSignal -win $_nWave15 -clear
wvAddSignal -win $_nWave15 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
}
wvAddSignal -win $_nWave15 -group {"G2" \
{/top/dut/GPA06} \
{/top/dut/GPA07} \
}
wvAddSignal -win $_nWave15 -group {"G3" \
{/top/dut/GPD02} \
{/top/dut/GPD03} \
{/soc_tb/I2C_SCL_bus} \
}
wvAddSignal -win $_nWave15 -group {"G4" \
}
wvSelectSignal -win $_nWave15 {( "G3" 3 )} 
wvSetPosition -win $_nWave15 {("G3" 3)}
wvSetPosition -win $_nWave15 {("G4" 0)}
wvMoveSelected -win $_nWave15
wvSetPosition -win $_nWave15 {("G4" 1)}
wvSetPosition -win $_nWave15 {("G4" 1)}
wvGetSignalSetSignalFilter -win $_nWave15 "*i2c_sda_bus*"
wvSetPosition -win $_nWave15 {("G4" 1)}
wvSetPosition -win $_nWave15 {("G4" 1)}
wvAddSignal -win $_nWave15 -clear
wvAddSignal -win $_nWave15 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
}
wvAddSignal -win $_nWave15 -group {"G2" \
{/top/dut/GPA06} \
{/top/dut/GPA07} \
}
wvAddSignal -win $_nWave15 -group {"G3" \
{/top/dut/GPD02} \
{/top/dut/GPD03} \
}
wvAddSignal -win $_nWave15 -group {"G4" \
{/soc_tb/I2C_SCL_bus} \
}
wvAddSignal -win $_nWave15 -group {"G5" \
}
wvSetPosition -win $_nWave15 {("G4" 1)}
wvSetPosition -win $_nWave15 {("G4" 2)}
wvSetPosition -win $_nWave15 {("G4" 2)}
wvAddSignal -win $_nWave15 -clear
wvAddSignal -win $_nWave15 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
}
wvAddSignal -win $_nWave15 -group {"G2" \
{/top/dut/GPA06} \
{/top/dut/GPA07} \
}
wvAddSignal -win $_nWave15 -group {"G3" \
{/top/dut/GPD02} \
{/top/dut/GPD03} \
}
wvAddSignal -win $_nWave15 -group {"G4" \
{/soc_tb/I2C_SCL_bus} \
{/soc_tb/I2C_SDA_bus} \
}
wvAddSignal -win $_nWave15 -group {"G5" \
}
wvSelectSignal -win $_nWave15 {( "G4" 2 )} 
wvSetPosition -win $_nWave15 {("G4" 2)}
wvGetSignalSetSignalFilter -win $_nWave15 "*M1*"
wvSetPosition -win $_nWave15 {("G4" 2)}
wvSetPosition -win $_nWave15 {("G4" 2)}
wvAddSignal -win $_nWave15 -clear
wvAddSignal -win $_nWave15 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
}
wvAddSignal -win $_nWave15 -group {"G2" \
{/top/dut/GPA06} \
{/top/dut/GPA07} \
}
wvAddSignal -win $_nWave15 -group {"G3" \
{/top/dut/GPD02} \
{/top/dut/GPD03} \
}
wvAddSignal -win $_nWave15 -group {"G4" \
{/soc_tb/I2C_SCL_bus} \
{/soc_tb/I2C_SDA_bus} \
}
wvAddSignal -win $_nWave15 -group {"G5" \
}
wvSelectSignal -win $_nWave15 {( "G4" 2 )} 
wvSetPosition -win $_nWave15 {("G4" 2)}
wvSetPosition -win $_nWave15 {("G4" 6)}
wvSetPosition -win $_nWave15 {("G4" 6)}
wvAddSignal -win $_nWave15 -clear
wvAddSignal -win $_nWave15 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
}
wvAddSignal -win $_nWave15 -group {"G2" \
{/top/dut/GPA06} \
{/top/dut/GPA07} \
}
wvAddSignal -win $_nWave15 -group {"G3" \
{/top/dut/GPD02} \
{/top/dut/GPD03} \
}
wvAddSignal -win $_nWave15 -group {"G4" \
{/soc_tb/I2C_SCL_bus} \
{/soc_tb/I2C_SDA_bus} \
{/soc_tb/I2C_SCL_in_M1} \
{/soc_tb/I2C_SCL_out_M1} \
{/soc_tb/I2C_SDA_in_M1} \
{/soc_tb/I2C_SDA_out_M1} \
}
wvAddSignal -win $_nWave15 -group {"G5" \
}
wvSelectSignal -win $_nWave15 {( "G4" 3 4 5 6 )} 
wvSetPosition -win $_nWave15 {("G4" 6)}
wvSetPosition -win $_nWave15 {("G4" 3)}
wvSetPosition -win $_nWave15 {("G5" 0)}
wvMoveSelected -win $_nWave15
wvSetPosition -win $_nWave15 {("G5" 4)}
wvSetPosition -win $_nWave15 {("G5" 4)}
wvSetCursor -win $_nWave15 2763445553.442036 -snap {("G5" 2)}
wvZoomAll -win $_nWave15
wvSelectSignal -win $_nWave15 {( "G5" 4 )} 
wvSetCursor -win $_nWave15 2012871968.785207 -snap {("G5" 0)}
wvZoomAll -win $_nWave15
wvGetSignalOpen -win $_nWave15
wvGetSignalSetScope -win $_nWave15 "/top"
wvGetSignalSetScope -win $_nWave15 "/top/dut"
wvGetSignalSetScope -win $_nWave15 "/top"
wvGetSignalSetScope -win $_nWave15 "/soc_tb"
wvGetSignalSetSignalFilter -win $_nWave15 "*i2c*"
wvSetPosition -win $_nWave15 {("G5" 4)}
wvSetPosition -win $_nWave15 {("G5" 4)}
wvAddSignal -win $_nWave15 -clear
wvAddSignal -win $_nWave15 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
}
wvAddSignal -win $_nWave15 -group {"G2" \
{/top/dut/GPA06} \
{/top/dut/GPA07} \
}
wvAddSignal -win $_nWave15 -group {"G3" \
{/top/dut/GPD02} \
{/top/dut/GPD03} \
}
wvAddSignal -win $_nWave15 -group {"G4" \
{/soc_tb/I2C_SCL_bus} \
{/soc_tb/I2C_SDA_bus} \
}
wvAddSignal -win $_nWave15 -group {"G5" \
{/soc_tb/I2C_SCL_in_M1} \
{/soc_tb/I2C_SCL_out_M1} \
{/soc_tb/I2C_SDA_in_M1} \
{/soc_tb/I2C_SDA_out_M1} \
}
wvAddSignal -win $_nWave15 -group {"G6" \
}
wvSetPosition -win $_nWave15 {("G5" 4)}
wvSetPosition -win $_nWave15 {("G5" 5)}
wvSetPosition -win $_nWave15 {("G5" 5)}
wvAddSignal -win $_nWave15 -clear
wvAddSignal -win $_nWave15 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
}
wvAddSignal -win $_nWave15 -group {"G2" \
{/top/dut/GPA06} \
{/top/dut/GPA07} \
}
wvAddSignal -win $_nWave15 -group {"G3" \
{/top/dut/GPD02} \
{/top/dut/GPD03} \
}
wvAddSignal -win $_nWave15 -group {"G4" \
{/soc_tb/I2C_SCL_bus} \
{/soc_tb/I2C_SDA_bus} \
}
wvAddSignal -win $_nWave15 -group {"G5" \
{/soc_tb/I2C_SCL_in_M1} \
{/soc_tb/I2C_SCL_out_M1} \
{/soc_tb/I2C_SDA_in_M1} \
{/soc_tb/I2C_SDA_out_M1} \
{/soc_tb/I2C_SCL_bus} \
}
wvAddSignal -win $_nWave15 -group {"G6" \
}
wvSelectSignal -win $_nWave15 {( "G5" 5 )} 
wvSetPosition -win $_nWave15 {("G5" 5)}
wvGetSignalSetScope -win $_nWave15 "/soc_tb/if_soc"
wvSetPosition -win $_nWave15 {("G5" 7)}
wvSetPosition -win $_nWave15 {("G5" 7)}
wvAddSignal -win $_nWave15 -clear
wvAddSignal -win $_nWave15 -group {"G1" \
{/soc_tb/if_i2c_m/SCL_IN} \
{/soc_tb/if_i2c_m/SCL_inst} \
{/soc_tb/if_i2c_m/SDA_IN} \
{/soc_tb/if_i2c_m/SDA_inst} \
}
wvAddSignal -win $_nWave15 -group {"G2" \
{/top/dut/GPA06} \
{/top/dut/GPA07} \
}
wvAddSignal -win $_nWave15 -group {"G3" \
{/top/dut/GPD02} \
{/top/dut/GPD03} \
}
wvAddSignal -win $_nWave15 -group {"G4" \
{/soc_tb/I2C_SCL_bus} \
{/soc_tb/I2C_SDA_bus} \
}
wvAddSignal -win $_nWave15 -group {"G5" \
{/soc_tb/I2C_SCL_in_M1} \
{/soc_tb/I2C_SCL_out_M1} \
{/soc_tb/I2C_SDA_in_M1} \
{/soc_tb/I2C_SDA_out_M1} \
{/soc_tb/I2C_SCL_bus} \
{/soc_tb/if_soc/isolate_vip_i2c} \
{/soc_tb/if_soc/mode_vip_i2c} \
}
wvAddSignal -win $_nWave15 -group {"G6" \
}
wvSelectSignal -win $_nWave15 {( "G5" 6 7 )} 
wvSetPosition -win $_nWave15 {("G5" 7)}
wvSetCursor -win $_nWave15 1109255617.400392 -snap {("G5" 5)}
wvZoomAll -win $_nWave15
wvSelectSignal -win $_nWave15 {( "G5" 7 )} 
wvSelectSignal -win $_nWave15 {( "G5" 6 )} 
wvSelectSignal -win $_nWave15 {( "G5" 7 )} 
wvSelectSignal -win $_nWave15 {( "G5" 6 )} 
wvSelectSignal -win $_nWave15 {( "G5" 7 )} 
wvSelectSignal -win $_nWave15 {( "G5" 5 )} 
wvSelectSignal -win $_nWave15 {( "G5" 6 )} 
wvSelectSignal -win $_nWave15 {( "G5" 7 )} 
verdiDockWidgetSetCurTab -dock windowDock_nWave_14
wvSetCursor -win $_nWave14 5927438429.908312 -snap {("pmureg2pmu(prod)" 9)}
wvZoomAll -win $_nWave14
wvDisplayGridCount -win $_nWave14 -off
wvGetSignalClose -win $_nWave14
wvDisplayGridCount -win $_nWave15 -off
wvGetSignalClose -win $_nWave15
wvReloadFile -win $_nWave14
wvSetCursor -win $_nWave14 36996197758.494865 -snap {("pmureg2pmu(prod)" 7)}
wvZoomAll -win $_nWave14
wvSetCursor -win $_nWave14 46449742470.141029 -snap {("pmureg2pmu(prod)" 5)}
wvDisplayGridCount -win $_nWave14 -off
wvGetSignalClose -win $_nWave14
wvDisplayGridCount -win $_nWave15 -off
wvGetSignalClose -win $_nWave15
wvReloadFile -win $_nWave14
wvZoom -win $_nWave14 41527370118.844826 52643282322.374001
wvZoom -win $_nWave14 45768342610.520073 47441910230.555267
wvZoomAll -win $_nWave14
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 8 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 9 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 8 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 9 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 8 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 10 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 8 )} 
wvSetPosition -win $_nWave14 {("pmureg2pmu(prod)" 8)}
wvSetPosition -win $_nWave14 {("G2" 0)}
srcTraceConnectivity \
           "top.dut.u_DTOP.u_SYS.u_syscon.u_pmureg.pmureg2pmu.pmu_gpr16_0\[31:0\]" \
           -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "wr_sel\[20\]" -line 182 -pos 1 -win $_nTrace1
wvScrollDown -win $_nWave14 1
verdiDockWidgetSetCurTab -dock windowDock_nWave_15
wvTpfCloseForm -win $_nWave15
wvGetSignalClose -win $_nWave15
wvCloseWindow -win $_nWave15
wvCreateWindow
wvCreateWindow
wvCloseWindow -win $_nWave17
wvSetPosition -win $_nWave16 {("G1" 0)}
wvOpenFile -win $_nWave16 \
           {/mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_tientq_ws_9/testdbscp-lx61102-cpu_test_c-lxs_fw+testcase00-vseq+cpu_receive_data_uart_vseq_c-time+35000000000-fsdb_all-use_env_uart0/all.fsdb}
verdiDockWidgetSetCurTab -dock windowDock_nWave_14
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 4 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 4 5 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 4 5 6 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 4 5 6 7 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 4 5 6 7 8 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 4 5 6 7 8 9 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 4 5 6 7 8 9 10 )} 
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 4 5 6 7 8 9 10 11 )} 
wvSetPosition -win $_nWave14 {("pmureg2pmu(prod)" 10)}
wvSetPosition -win $_nWave14 {("G2" 0)}
verdiDockWidgetSetCurTab -dock windowDock_nWave_16
wvAddSignal -win $_nWave16 \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr32_0\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr32_1\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr32_2\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr32_3\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr16_0\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr16_1\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr16_2\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr16_3\[31:0\]"
wvSetPosition -win $_nWave16 {("G1" 0)}
wvSetPosition -win $_nWave16 {("G1" 8)}
wvSetPosition -win $_nWave16 {("G1" 8)}
wvZoomAll -win $_nWave14
wvSetCursor -win $_nWave16 1350648513.191984 -snap {("G1" 5)}
wvSetCursor -win $_nWave16 2927089331.020926 -snap {("G1" 5)}
wvSetCursor -win $_nWave16 2171711439.144557 -snap {("G1" 2)}
wvSetCursor -win $_nWave16 2693086397.124442 -snap {("G1" 8)}
wvSetCursor -win $_nWave16 2739835284.230326 -snap {("G1" 5)}
wvZoomAll -win $_nWave16
wvSetCursor -win $_nWave16 46185597518.830750 -snap {("G1" 5)}
wvSelectSignal -win $_nWave16 {( "G1" 5 )} 
verdiDockWidgetSetCurTab -dock windowDock_nWave_14
wvSelectSignal -win $_nWave14 {( "pmureg2pmu(prod)" 8 )} 
verdiDockWidgetSetCurTab -dock windowDock_nWave_16
wvSelectSignal -win $_nWave16 {( "G1" 5 )} 
wvSetCursor -win $_nWave16 9953039918.991882 -snap {("G1" 6)}
wvCopyFilePathToClipboard -win $_nWave16 -fileId 13
wvCopyFilePathToClipboard -win $_nWave16 -fileId 13
wvCopyFilePathToClipboard -win $_nWave16 -fileId 13
wvSetActiveFile -win $_nWave16 \
           {/mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_tientq_ws_9/testdbscp-lx61102-cpu_test_c-lxs_fw+testcase00-vseq+cpu_receive_data_uart_vseq_c-time+35000000000-fsdb_all-use_env_uart0/all.fsdb}
wvSelectSignal -win $_nWave16 {( "G1" 5 )} 
wvSelectSignal -win $_nWave16 {( "G1" 5 )} 
wvCopySignalFullPathToClipboard -win $_nWave16
wvSetCursor -win $_nWave16 45967329099.554611 -snap {("G1" 5)}
wvZoomAll -win $_nWave16
wvCreateWindow
wvSetPosition -win $_nWave18 {("G1" 0)}
wvOpenFile -win $_nWave18 \
           {/mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_tientq_ws_9/testdbscp-lx61102-cpu_test_c-lxs_fw+testcase01-vseq+cpu_receive_data_uart_vseq_c-time+35000000000-fsdb_all-use_env_uart0/all.fsdb}
verdiDockWidgetSetCurTab -dock windowDock_nWave_16
wvSelectSignal -win $_nWave16 {( "G1" 3 )} 
wvSelectAll -win $_nWave16
wvSetPosition -win $_nWave16 {("G1" 3)}
wvSetPosition -win $_nWave16 {("G1" 8)}
wvSetPosition -win $_nWave16 {("G2" 0)}
verdiDockWidgetSetCurTab -dock windowDock_nWave_18
wvAddSignal -win $_nWave18 \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr32_0\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr32_1\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr32_2\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr32_3\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr16_0\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr16_1\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr16_2\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr16_3\[31:0\]"
wvSetPosition -win $_nWave18 {("G1" 0)}
wvSetPosition -win $_nWave18 {("G1" 8)}
wvSetPosition -win $_nWave18 {("G1" 8)}
wvSetPosition -win $_nWave16 {("G1" 8)}
wvSetCursor -win $_nWave18 2237482881.772962 -snap {("G1" 6)}
wvZoomAll -win $_nWave18
wvSelectSignal -win $_nWave18 {( "G1" 5 )} 
wvCreateWindow
wvSetPosition -win $_nWave19 {("G1" 0)}
wvOpenFile -win $_nWave19 \
           {/mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_tientq_ws_9/testdbscp-lx61102-cpu_test_c-lxs_fw+testcase02-vseq+cpu_receive_data_uart_vseq_c-time+35000000000-fsdb_all-use_env_uart0/all.fsdb}
verdiDockWidgetSetCurTab -dock windowDock_nWave_18
wvSelectSignal -win $_nWave18 {( "G1" 4 )} 
wvSelectAll -win $_nWave18
wvSetPosition -win $_nWave18 {("G1" 4)}
wvSetPosition -win $_nWave18 {("G1" 8)}
verdiDockWidgetSetCurTab -dock windowDock_nWave_19
wvAddSignal -win $_nWave19 \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr32_0\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr32_1\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr32_2\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr32_3\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr16_0\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr16_1\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr16_2\[31:0\]" \
           "/top/dut/u_DTOP/u_SYS/u_syscon/u_pmureg/pmureg2pmu/pmu_gpr16_3\[31:0\]"
wvSetPosition -win $_nWave19 {("G1" 0)}
wvSetPosition -win $_nWave19 {("G1" 8)}
wvSetPosition -win $_nWave19 {("G1" 8)}
wvSetCursor -win $_nWave19 2356650811.648502 -snap {("G1" 5)}
wvZoomAll -win $_nWave19
wvSelectSignal -win $_nWave19 {( "G1" 5 )} 
verdiDockWidgetSetCurTab -dock windowDock_nWave_18
wvSetCursor -win $_nWave18 21061077400.908791 -snap {("G1" 7)}
wvZoomAll -win $_nWave18
wvSetCursor -win $_nWave18 18885176616.799305 -snap {("G1" 5)}
wvZoomAll -win $_nWave18
wvTpfCloseForm -win $_nWave16
wvGetSignalClose -win $_nWave16
wvCloseWindow -win $_nWave16
wvTpfCloseForm -win $_nWave14
wvGetSignalClose -win $_nWave14
wvCloseWindow -win $_nWave14
verdiDockWidgetSetCurTab -dock windowDock_nWave_19
wvTpfCloseForm -win $_nWave19
wvGetSignalClose -win $_nWave19
wvCloseWindow -win $_nWave19
wvSelectSignal -win $_nWave18 {( "G1" 3 )} 
wvSelectAll -win $_nWave18
wvCut -win $_nWave18
wvSetPosition -win $_nWave18 {("G1" 0)}
wvSetCursor -win $_nWave18 5103147623.632463
wvGetSignalOpen -win $_nWave18
wvGetSignalSetScope -win $_nWave18 "/soc_tb"
wvGetSignalSetScope -win $_nWave18 "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP"
wvGetSignalSetScope -win $_nWave18 "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc"
wvGetSignalSetScope -win $_nWave18 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0"
wvSetPosition -win $_nWave18 {("G1" 6)}
wvSetPosition -win $_nWave18 {("G1" 6)}
wvAddSignal -win $_nWave18 -clear
wvAddSignal -win $_nWave18 -group {"G1" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0/DIN\[38:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0/DOUT\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0/E1} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0/E2} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0/errbit\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0/p\[6:0\]} \
}
wvAddSignal -win $_nWave18 -group {"G2" \
}
wvSelectSignal -win $_nWave18 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave18 {("G1" 6)}
wvSetPosition -win $_nWave18 {("G1" 6)}
wvSetPosition -win $_nWave18 {("G1" 6)}
wvAddSignal -win $_nWave18 -clear
wvAddSignal -win $_nWave18 -group {"G1" \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0/DIN\[38:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0/DOUT\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0/E1} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0/E2} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0/errbit\[31:0\]} \
{/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0/p\[6:0\]} \
}
wvAddSignal -win $_nWave18 -group {"G2" \
}
wvSelectSignal -win $_nWave18 {( "G1" 1 2 3 4 5 6 )} 
wvSetPosition -win $_nWave18 {("G1" 6)}
wvGetSignalClose -win $_nWave18
wvZoomAll -win $_nWave18
wvCreateWindow
wvSetPosition -win $_nWave20 {("G1" 0)}
wvOpenFile -win $_nWave20 \
           {/mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_tientq_ws_9/LX61102_BOOTROM/testdbscp-lx61102-cpu_test_c-lxs_fw+testcase00-vseq+cpu_receive_data_uart_vseq_c-time+35000000000-fsdb_all-use_env_uart0/all.fsdb}
wvSetCursor -win $_nWave20 3354042052.516264
wvGetSignalOpen -win $_nWave20
wvGetSignalSetScope -win $_nWave20 "/soc_tb"
verdiDockWidgetSetCurTab -dock windowDock_nWave_18
wvSelectSignal -win $_nWave18 {( "G1" 3 )} 
wvSelectAll -win $_nWave18
wvSetPosition -win $_nWave18 {("G1" 2)}
wvSetPosition -win $_nWave18 {("G1" 5)}
verdiDockWidgetSetCurTab -dock windowDock_nWave_20
wvAddSignal -win $_nWave20 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0/DIN\[38:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0/DOUT\[31:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0/E1" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0/E2" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0/errbit\[31:0\]" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/trim_d0/p\[6:0\]"
wvSetPosition -win $_nWave20 {("G1" 0)}
wvSetPosition -win $_nWave20 {("G1" 6)}
wvSetPosition -win $_nWave20 {("G1" 6)}
verdiDockWidgetSetCurTab -dock windowDock_nWave_18
wvSetPosition -win $_nWave18 {("G1" 6)}
wvTpfCloseForm -win $_nWave18
wvGetSignalClose -win $_nWave18
wvCloseWindow -win $_nWave18
wvSetCursor -win $_nWave20 1892550044.320683 -snap {("G1" 3)}
wvZoomAll -win $_nWave20
wvSelectSignal -win $_nWave20 {( "G1" 4 )} 
wvSetOptions -win $_nWave20 -hierName on
wvZoom -win $_nWave20 8776391020.439568 9147224443.838423
wvZoomAll -win $_nWave20
wvSelectSignal -win $_nWave20 {( "G1" 2 )} 
wvSelectSignal -win $_nWave20 {( "G1" 1 )} 
wvSetCursor -win $_nWave20 15977884539.037086 -snap {("G2" 0)}
wvZoomAll -win $_nWave20
wvSetCursor -win $_nWave20 16322730967.937168 -snap {("G1" 3)}
wvZoomAll -win $_nWave20
wvSelectSignal -win $_nWave20 {( "G1" 2 )} 
wvSelectSignal -win $_nWave20 {( "G1" 1 )} 
wvZoom -win $_nWave20 44830035757.010536 54255838146.946083
wvZoom -win $_nWave20 45974870055.382744 46959427551.983299
wvZoom -win $_nWave20 46226789220.502083 46396595493.195137
wvZoom -win $_nWave20 46245763524.655174 46261575444.784485
wvZoom -win $_nWave20 46248529010.275856 46251371314.946877
wvZoom -win $_nWave20 46249069853.668938 46249237860.341797
wvZoomAll -win $_nWave20
wvZoom -win $_nWave20 55807647076.996445 61784985177.931183
wvZoom -win $_nWave20 59868365025.722183 60700836404.961670
wvZoom -win $_nWave20 60084066111.838737 60233708740.333603
wvZoom -win $_nWave20 60119326034.819481 60139076438.418396
wvZoom -win $_nWave20 60121596931.418129 60123276115.529778
wvZoom -win $_nWave20 60121822635.509224 60122082331.189644
wvZoomAll -win $_nWave20
wvSelectSignal -win $_nWave20 {( "G1" 3 )} 
wvSelectSignal -win $_nWave20 {( "G1" 2 )} 
wvZoom -win $_nWave20 459795238.533441 10747713700.719193
wvZoom -win $_nWave20 1767652079.475232 2367433560.671487
wvZoom -win $_nWave20 2069728258.668579 2168801474.995734
wvZoom -win $_nWave20 2083044982.482014 2088820910.883274
wvZoom -win $_nWave20 2083905525.660811 2084752038.244316
wvZoomAll -win $_nWave20
wvSelectSignal -win $_nWave20 {( "G1" 3 )} 
wvZoom -win $_nWave20 58796316127.463814 64371333394.681793
wvZoom -win $_nWave20 60037716733.520683 60453021663.548256
wvZoom -win $_nWave20 60101946078.973656 60154741928.377968
wvZoom -win $_nWave20 60119772693.708138 60124859905.108231
wvZoom -win $_nWave20 60121412135.106667 60123459377.265244
wvZoomAll -win $_nWave20
wvZoom -win $_nWave20 57704302435.946892 66612835182.532318
wvZoom -win $_nWave20 59630276722.043900 60589657171.676170
wvZoom -win $_nWave20 60053647041.918213 60205904991.819366
wvZoom -win $_nWave20 60111468077.135620 60164234394.996101
wvZoom -win $_nWave20 60120055955.583405 60132275523.930038
wvZoom -win $_nWave20 60121441169.805534 60123637723.791725
wvZoomAll -win $_nWave20
wvZoom -win $_nWave20 57934200055.213615 63221845298.348190
wvZoom -win $_nWave20 59796649999.148087 61166728118.826683
wvZoom -win $_nWave20 60058462498.123116 60240399997.416466
wvZoom -win $_nWave20 60114001313.693764 60161437649.541908
wvZoom -win $_nWave20 60119762811.971153 60131477858.476158
wvZoom -win $_nWave20 60121356437.729385 60123670989.427544
wvZoomAll -win $_nWave20
wvZoom -win $_nWave20 17242321445.004051 36841093487.491989
wvZoom -win $_nWave20 22288806877.802563 25145308066.181374
wvZoom -win $_nWave20 22943373546.877895 23637260475.229027
wvZoom -win $_nWave20 23118109445.426437 23228232391.140465
wvZoom -win $_nWave20 23147178336.353416 23166171200.674946
wvZoom -win $_nWave20 23151376758.989494 23156036546.754211
wvSelectSignal -win $_nWave20 {( "G1" 5 )} 
wvSelectSignal -win $_nWave20 {( "G1" 6 )} 
wvSetCursor -win $_nWave20 23153093522.893318 -snap {("G2" 0)}
wvSetCursor -win $_nWave20 23152452094.618011 -snap {("G2" 0)}
wvZoomAll -win $_nWave20
wvZoom -win $_nWave20 747167262.616842 5747440481.668017
wvZoom -win $_nWave20 2293810476.930605 2957814369.986793
wvZoomAll -win $_nWave20
wvZoom -win $_nWave20 58738841722.647133 65865667919.915474
wvZoom -win $_nWave20 59939149292.706245 60654717267.168816
wvZoom -win $_nWave20 60091533403.860855 60220161817.084084
wvZoom -win $_nWave20 60114551119.910477 60140380955.116432
wvZoom -win $_nWave20 60120093554.184967 60128124855.172081
wvZoom -win $_nWave20 60121667298.988808 60124177486.989639
wvZoomAll -win $_nWave20
wvSelectSignal -win $_nWave20 {( "G1" 3 )} 
wvSelectSignal -win $_nWave20 {( "G1" 4 )} 
wvSelectSignal -win $_nWave20 {( "G1" 3 )} 
wvSelectSignal -win $_nWave20 {( "G1" 4 )} 
wvSelectSignal -win $_nWave20 {( "G1" 5 )} 
wvSelectSignal -win $_nWave20 {( "G1" 6 )} 
wvSelectSignal -win $_nWave20 {( "G1" 6 )} 
wvSelectSignal -win $_nWave20 {( "G1" 5 )} 
wvSelectSignal -win $_nWave20 {( "G1" 4 )} 
wvSelectSignal -win $_nWave20 {( "G1" 3 )} 
wvSelectSignal -win $_nWave20 {( "G1" 2 )} 
wvSelectSignal -win $_nWave20 {( "G1" 1 )} 
wvSetCursor -win $_nWave20 17644642278.720814 -snap {("G1" 2)}
wvZoomAll -win $_nWave20
wvZoom -win $_nWave20 1724232144.500405 8678635127.318707
wvZoom -win $_nWave20 2377439226.286982 2895500015.290451
wvZoom -win $_nWave20 2434488835.439418 2476437077.463991
wvZoom -win $_nWave20 2441350005.389578 2444610759.425496
wvZoom -win $_nWave20 2442274105.723066 2442715033.596749
wvSelectSignal -win $_nWave20 {( "G1" 1 )} 
wvSetPosition -win $_nWave20 {("G1" 1)}
wvSetPosition -win $_nWave20 {("G1" 0)}
wvSetPosition -win $_nWave20 {("G1" 6)}
srcTraceConnectivity \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_ecc.trim_d0.DIN\[38:0\]" -win \
           $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "i_flash_trim_boot_done" -line 73 -pos 1 -win $_nTrace1
srcSelect -signal "i_flag_main_dout_en" -line 73 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave20 {("G1" 4)}
wvSetPosition -win $_nWave20 {("G2" 0)}
wvAddSignal -win $_nWave20 \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/i_flash_trim_boot_done" \
           "/top/dut/u_DTOP/u_MEM/u_FLASH0A_TOP/u_ecc/i_flag_main_dout_en"
wvSetPosition -win $_nWave20 {("G2" 0)}
wvSetPosition -win $_nWave20 {("G2" 2)}
wvSetPosition -win $_nWave20 {("G2" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "w_DOUT_0" -line 73 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "w_DOUT_0" -line 73 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave20
srcDeselectAll -win $_nTrace1
srcSelect -signal "DOUT_ECC\[38:33\]" -line 73 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave20
srcDeselectAll -win $_nTrace1
srcSelect -signal "DOUT_ECC\[32\]" -line 73 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "DOUT_ECC\[38:33\]" -line 73 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "DOUT_ECC\[32\]" -line 73 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "DOUT_ECC\[31:0\]" -line 73 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave20
srcDeselectAll -win $_nTrace1
srcSelect -signal "DOUT_ECC\[32\]" -line 73 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave20
srcDeselectAll -win $_nTrace1
srcSelect -signal "DOUT_ECC\[38:33\]" -line 73 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "DOUT_ECC\[38:33\]" -line 73 -pos 1 -win $_nTrace1
srcAction -pos 72 18 3 -win $_nTrace1 -name "DOUT_ECC\[38:33\]" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "phy_o_DOUT" -line 167 -pos 1 -win $_nTrace1
srcAddSelectedToWave -clipboard -win $_nTrace1
wvDrop -win $_nWave20
wvScrollDown -win $_nWave20 1
wvScrollDown -win $_nWave20 0
wvScrollDown -win $_nWave20 0
wvScrollDown -win $_nWave20 0
wvScrollDown -win $_nWave20 0
wvScrollDown -win $_nWave20 0
wvScrollDown -win $_nWave20 0
wvScrollDown -win $_nWave20 0
wvScrollDown -win $_nWave20 0
srcDeselectAll -win $_nTrace1
srcSelect -signal "phy_o_DOUT" -line 167 -pos 1 -win $_nTrace1
srcAction -pos 166 6 2 -win $_nTrace1 -name "phy_o_DOUT" -ctrlKey off
wvScrollDown -win $_nWave20 0
wvSelectSignal -win $_nWave20 {( "G2" 6 )} 
wvSelectSignal -win $_nWave20 {( "G2" 5 )} 
wvSelectSignal -win $_nWave20 {( "G2" 3 )} 
wvSelectSignal -win $_nWave20 {( "G2" 4 )} 
wvSelectSignal -win $_nWave20 {( "G2" 3 )} 
wvSelectSignal -win $_nWave20 {( "G2" 2 )} 
wvSelectSignal -win $_nWave20 {( "G2" 1 )} 
wvZoom -win $_nWave20 2442417630.423584 2442446192.553053
wvZoom -win $_nWave20 2442421377.034315 2442426673.170063
wvSetCursor -win $_nWave20 2442424044.399534 -snap {("G2" 3)}
wvSetCursor -win $_nWave20 2442424061.553010 -snap {("G2" 4)}
wvZoomAll -win $_nWave20
wvZoom -win $_nWave20 1781706549.317085 5632491672.034657
wvSetCursor -win $_nWave20 2667231225.310352 -snap {("G1" 6)}
wvZoom -win $_nWave20 1999969673.681559 2140281682.201632
wvZoom -win $_nWave20 2064274610.379268 2102675791.658446
wvZoom -win $_nWave20 2082962148.799069 2086848908.037853
wvSetCursor -win $_nWave20 2084888218.964292 -snap {("G2" 2)}
wvZoomAll -win $_nWave20
srcHBSelect \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0" \
           -win $_nTrace1
srcHBSelect \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0" \
           -win $_nTrace1
srcSetScope -win $_nTrace1 \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0" \
           -delim "."
srcHBSelect \
           "top.dut.u_DTOP.u_MEM.u_FLASH0A_TOP.u_eflash_sub_top.u_eflash_ctrl.checksum_0" \
           -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "o_checksum_result" -line 17 -pos 1 -win $_nTrace1
srcAction -pos 16 1 10 -win $_nTrace1 -name "o_checksum_result" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
