#!/usr/bin/csh
source /mnt/share/common/env/cshrc.env
source /mnt/users/DV/lx61102/env.csh
source /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/env.csh
source $PROJECT_COMP_DIR/cdn-vip-lib/cdn_vip_env_xrun_sv_uvm_64.csh

#   Prerun
source ./run.pre.csh

#   Run
xrun -64bit -access +rwc -sv -disable_sem2009 -licq \
    -timescale 1ns/10ps \
    -vtimescale 10ps/10ps \
    -define UVM_NO_DEPRECATED \
    -define UVM_HDL_MAX_WIDTH=1248 \
    -reflib /mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_tientq_ws_9/compile/lx61102-lib/lx61102_lib \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/nx_ext_clk_se/nx_ext_clk_se_if.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/nx_ext_clk_se/nx_ext_clk_se_pkg.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/nx_ext_rst/nx_ext_rst_if.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/nx_ext_rst/nx_ext_rst_pkg.sv \
    -loadvpi $DENALI/verilog/libcdnsv.so:cdnsvVIP:export \
    $DENALI/ddvapi/sv/denaliMem.sv \
    $DENALI/ddvapi/sv/denaliCdn_apb.sv \
    $DENALI/ddvapi/sv/uvm/cdn_apb/cdnApbUvmTop.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_apb2_m/cdn_apb2_m_if.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_apb2_m/cdn_apb2_m_pkg.sv \
    $DENALI/ddvapi/sv/denaliCdn_ahb.sv \
    $DENALI/ddvapi/sv/uvm/cdn_ahb/cdnAhbUvmTop.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_ahb2_m/cdn_ahb2_m_if.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_ahb2_m/cdn_ahb2_m_pkg.sv \
    $DENALI/ddvapi/sv/denaliSpi.sv \
    $DENALI/ddvapi/sv/uvm/spi/cdnSpiUvmTop.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_spi/spi_env_pkg.sv \
    $DENALI/ddvapi/sv/hdl_interfaces/spi/cdnSpiActiveInterface.sv \
    $DENALI/ddvapi/sv/hdl_interfaces/spi/cdnSpiPassiveInterface.sv \
    $DENALI/ddvapi/sv/denaliJtag.sv \
    $DENALI/ddvapi/sv/uvm/jtag/cdnJtagUvmTop.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_jtag/cdnJtagInterface.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_jtag/cdn_jtag_pkg.sv \
    $CDN_VIP_LIB_PATH/64bit/xmsim_psui.sv \
    -top specman -top specman_wave \
    $DENALI/ddvapi/sv/denaliUart.sv \
    $DENALI/ddvapi/sv/uvm/uart/cdnUartUvmTop.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_uart/cdn_uart_if.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_uart/cdn_uart_pkg.sv \
    $DENALI/ddvapi/sv/denaliCdn_i2c.sv \
    $DENALI/ddvapi/sv/uvm/cdn_i2c/cdnI2cUvmTop.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_i2c/cdn_i2c_env/cdnI2cUser_pkg.sv \
    $DENALI/ddvapi/sv/hdl_interfaces/cdn_i2c/cdnI2cInterface.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_i2c/i2c_env_pkg.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/ccu/ccu_intf.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/ccu/ccu_chk/ccu_defines.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/ccu/ccu_chk/ccu_sva_div_chk.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/ccu/ccu_chk/ccu_source_clk_input_chk.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/ccu/ccu_chk/ccu_sva_pll_chk.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/ccu/ccu_chk/ccu_sva_freq_ip_chk.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/ccu/ccu_chk/ccu_sva_freq_chk.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/ccu/ccu_chk/ccu_sva_sel_chk.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/ccu/ccu_chk/ccu_sva_bind_freq.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/ccu/ccu_chk/ccu_sva_bind_mux.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/wdt/wdt_intf.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/rcu/rcu_intf.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/rcu/rcu_chk/rcu_defines.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/rcu/rcu_chk/rcu_sva_sysrst_deassert_chk.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/rcu/rcu_chk/rcu_sva_sysrst_ip_chk.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/rcu/rcu_chk/rcu_sva_bind_sysrst.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/rcu/rcu_chk/rcu_sva_trim_data_chk.sv \
    -incdir $DENALI/ddvapi/sv \
    -incdir $DENALI/ddvapi/sv/uvm/cdn_apb \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_apb2_m \
    -incdir $DENALI/ddvapi/sv/uvm/cdn_ahb \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_ahb2_m \
    -incdir $DENALI/ddvapi/sv/uvm/spi \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_spi \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_spi/cdn_spi_env \
    -incdir $DENALI/ddvapi/sv/uvm/jtag \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_jtag \
    -incdir $DENALI/ddvapi/sv/uvm/uart \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_uart \
    -incdir $DENALI/ddvapi/sv/uvm/cdn_i2c \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_i2c/cdn_i2c_env \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cdn_i2c \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/ccu/ \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/ccu/ccu_chk \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/wdt \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/rcu \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/rcu/rcu_chk \
    -define DENALI_UVM \
    -define CDN_AUTO_TEST \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cm3/uvm/cm3_nvic_if.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cm3/uvm/cm3_pkg.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/tube/tube_pkg.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cmsdk/cmsdk_uart_capture_ard.v \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cmsdk/cmsdk_uart_capture_ard_bind.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/csv_uvmc_sdk/uvm/csv_uvmc_sdk_pkg.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/csv_uvmc_sdk/sv/csv_svc_sdk.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/reg_model/reg_model_pkg.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/lx61102/lx61102_pkg.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/common/common_pkg.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/gpio/gpio_if.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/gpio/gpio_env_pkg.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/gpio/gpio_sva_dnf_chk.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/gpio/gpio_sva_bind_dnf.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/soc_tb/soc_if.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/soc_tb/soc_tb_pkg.sv \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/soc_tb/soc_tb.sv \
    -top soc_tb \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/top/top.sv \
    -define SIM_POWER_PINS \
    -define SIM_FAST_ERASE \
    -top top \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/tarmac/tarmac_defs.v \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/tarmac/tarmacB.v \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/tarmac/tarmacE.v \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/tarmac/tarmacI.v \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/tarmac/tarmacM.v \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/tarmac/tarmacR.v \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/tarmac/tarmac.v \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/tarmac/tarmacDSM.v \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/tarmac/tarmac_undefs.v \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/tarmac/tarmac_bind.sv \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/cm3/uvm \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/tube/ \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/csv_uvmc_sdk/uvm \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/reg_model \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/lx61102 \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/common \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/gpio \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/tests/intr \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/soc_tb \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/tarmac \
    -incdir $PROJECT_RTL_DIR/softmacro/LXS_IP/cm3/rtl_codes/cm3_dpu \
    -incdir $PROJECT_RTL_DIR/softmacro/LXS_IP/cm3/rtl_codes/ualdis \
    -incdir $PROJECT_RTL_DIR/softmacro/LXS_IP/cm3/rtl_codes/cm3_lic_defs \
    -define USE_TUBE \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/nx_ext_clk_se \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/libs/nx_ext_rst \
    -define LX61102_VE \
    -define UVM_REG_ADDR_WIDTH=32 \
    -define UVM_REG_DATA_WIDTH=32 \
    -uvm -uvmhome CDNS-1.2 -c \
    -process_save \
    -mkdbssnap \
    -xmlibdirname lx61102_dbs \
#    -coverage all -covoverwrite -covdut lx61102 -write_metrics -covfile $PROJECT_DIR/misc/coverage/coverage.ccf \
    -coverage all -covoverwrite -write_metrics -covfile coverage.ccf \
    /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/tests/cpu/cpu_vseq_pkg.sv \
    -top cpu_vseq_pkg \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/tests/cpu \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/tests/rcu \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/tests/ccu \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/tests/wdt \
    -incdir /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/tests/pmu \

#   Postrun
source ./run.post.csh

