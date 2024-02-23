#!/bin/csh
#   Project information
setenv  PROJECT_RTL_DIR     ${PROJECT_WORKSPACE_PATH}/../shared/design
setenv  PROJECT_VER_DIR     ${PROJECT_WORKSPACE_PATH}/verification/soc
setenv  PROJECT_DIR         ${PROJECT_WORKSPACE_PATH}/verification/soc
setenv  PROJECT_SIM_DIR     ${PROJECT_WORKSPACE_SIM}
setenv  PROJECT_COMP_DIR    ${PROJECT_WORKSPACE_SIM}/compile
setenv  IWB_GENERATED_DIR   ${PROJECT_WORKSPACE_PATH}/verification/soc/iwb_tb
setenv  DK_HOME             /PROJECT/DK/LFR6LP/DK

setenv  DESIGN_DIR          ${PROJECT_RTL_DIR}
setenv  BLK_DIR             ${PROJECT_RTL_DIR}/blk
setenv  SOFTMACRO_DIR       ${PROJECT_RTL_DIR}/softmacro
setenv  HARDMACRO_DIR       ${PROJECT_RTL_DIR}/hardmacro

#   License server
setenv  LM_LICENSE_FILE         2727@192.168.140.204:5280@192.168.140.15
setenv  SNPSLMD_LICENSE_FILE    27020@192.168.140.204
setenv  ARMLMD_LICENSE_FILE     27000@192.168.140.31:27000@192.168.140.32:27000@192.168.140.33:27000@192.168.140.34:27000@192.168.140.35

#   EDA tools
# setenv  CDNS_HOME           /tools/cadence/XCELIUM/XCELIUM2009
setenv  CDNS_HOME           /tools/cadence/XCELIUM2009

setenv  CDNS_ARCH           tools.lnx86
#setenv  VERDI_HOME          /tools/synopsys/verdi/O-2018.09-SP2-11
setenv   VERDI_HOME          /tools/synopsys/Verdi/Q-2020.03-SP2
setenv  PATH                ${CDNS_HOME}/${CDNS_ARCH}/bin:${VERDI_HOME}/bin:$PATH

#   UVM
setenv  UVM_HOME            ${CDNS_HOME}/${CDNS_ARCH}/methodology/UVM/CDNS-1.1d

#   VIPs
setenv  CDNS_VIP_HOME       /tools/cadence/VIP/Update_VIPCAT11.30.087/Update_VIPCAT11.30.087/vipcat_11.30.087-08_Nov_2022_08_15_03
setenv  CDNS_VIP_DENALI     ${CDNS_VIP_HOME}/${CDNS_ARCH}/denali_64bit
setenv  SIA_HOME            ${CDNS_VIP_HOME}/${CDNS_ARCH}
setenv  SPECMAN_PATH        ${CDNS_HOME}/specman
setenv  VIP_DENALI          ${CDNS_VIP_DENALI}
setenv  PATH                ${SIA_HOME}/sia/bin:${SPECMAN_PATH}/bin/64bit:$PATH

# for arm-v7 Cortex-M3
setenv  ARMLMD_LICENSE_FILE 27000@192.168.140.31:27000@192.168.140.32:27000@192.168.140.33:27000@192.168.140.34:27000@192.168.140.35
setenv  ARM_COM             /tools/arm/ArmCompilerforEmbeddedFuSa6.16.2
setenv  ARM_CC              /mnt/users/dhkim/ARM_Compiler_5.06u7
setenv  GNU_CC              /mnt/users/tientq/tool_chain/gcc-arm-none-eabi-10-2020-q4-major
setenv  TOOL_CHAIN          gcc
setenv  PATH                ${GNU_CC}/bin:${ARM_CC}/bin:$PATH

#   LD_LIBRARY_PATH
setenv  LD_LIBRARY_PATH     ${CDNS_HOME}:${GNU_CC}/lib:${ARM_CC}/lib:${VERDI_HOME}/share/PLI/IUS/LINUX64

# vManager
setenv CDN_VIP_DISABLE_REMAP_NC_XM
setenv VMANAGER /tools/cadence/VMANAGER/VMANAGER22.09.s001
setenv POSTGRES_HOME ${VMANAGER}/tools.lnx86/vmgr/postgresql-14.4

setenv  PATH                ${VMANAGER}/bin:${VMANAGER}/tools/vmgr/admin:$PATH
