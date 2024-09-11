// ------------------------------------------------------------------------------
// 
// Copyright 2002 - 2022 Synopsys, INC.
// 
// This Synopsys IP and all associated documentation are proprietary to
// Synopsys, Inc. and may only be used pursuant to the terms and conditions of a
// written license agreement with Synopsys, Inc. All other use, reproduction,
// modification, or distribution of the Synopsys IP or the associated
// documentation is strictly prohibited.
// Inclusivity & Diversity - Read the Synopsys Statement on Inclusivity and Diversity at.
// https://solvnetplus.synopsys.com/s/article/Synopsys-Statement-on-Inclusivity-and-Diversity
// 
// Component Name   : DWC_pcie_ctl
// Component Version: 6.00a
// Release Type     : GA
// Build ID         : 552.190.276.129.PCIeParseConfig_84.PCIeSimulate_785.PCIeTbCommon_920.SNPSPHYSetup_226
// ------------------------------------------------------------------------------

// -------------------------------------------------------------------------
// ---  RCS information: ARCT generated file. Do not manually edit. (generator -> process_rtl.sh)
// ---    $DateTime: 2022/06/14 06:59:17 $
// ---    $Revision: #208 $
// ---    $Id: //dwh/pcie_iip/main/DWC_pcie/DWC_pcie_ctl/src/DWC_pcie_ctl.sv#208 $
// -------------------------------------------------------------------------

//==============================================================================
// Start License Usage
//==============================================================================
// Key Used   : DWC-PCIE                  (IP access)
// Key NotUsed: DWC-PCIE-G4-PREM-A-V2-SRC (Add-on feature access: DWC PCIe G4-PREM.0 Premium License)
//==============================================================================
// End License Usage
//==============================================================================


// -----------------------------------------------------------------------------
// --- Module description:  This is for top-level dual mode/end device/root complex/switch application.
// --- Top level modules:
// --- * radm_dm        : Rcvd ADM for dual-mode application
// --- * radm_ep        : Rcvd ADM for end-point application
// --- * radm_rc        : Rcvd ADM for root application
// --- * radm_sw        : Rcvd ADM for switch application
// --- * xadm           : Txmt ADM
// --- * cx_pl          : Basic PCI Express Functionality: Layer1, Layer2 and Layer3
// --- * cdm            : Type 0 CDM
// --- * lbc            : Local bus controller
// --- * pm_ctrl        : Power management running at Aux clock
// --- * msg_gen        : Message TLP Generation
// -----------------------------------------------------------------------------

`include "include/x4_DWC_pcie_ctl_all_defs.svh"
`include "include/x4_DWC_pcie_ctl_all_pkgs.svh"
`include "include/x4_DWC_pcie_ctl_all_itfs.svh"
`include "x4_DWC_pcie_ctl_pkg.svh"
`include "products/x4_cx_pl_pkg.svh"
`include "Axi/svif/x4_DWC_pcie_axi_dpram_if.svh"
`include "Cdm/x4_cdm_pkg.svh"

module x4_DWC_pcie_ctl
import x4_cx_pl_pkg::dllp_struct;
import x4_DWC_pcie_ctl_pkg::TP;
import x4_cdm_pkg::*;
import x4_DWC_pcie_ctl_pkg::N_XADM_IF;
import x4_DWC_pcie_ctl_pkg::CRGB_ADDR_WIDTH;
import x4_DWC_pcie_ctl_pkg::CRGB_DATA_WIDTH;
import x4_DWC_pcie_ctl_pkg::CRGB_BE_WIDTH;
  #(

// module parameter port list
    parameter INST = 0,

    parameter NL = 4,

    parameter TXNL = 4,

    parameter RXNL = 4,

    parameter NB = 4,

    parameter PHY_NB = 4,

    parameter CM_PHY_NB = 1,

    parameter NW = 4,

    parameter NF = 1,

    parameter VPD_NF = 1,

    parameter PB_NF = 1,

    parameter PF_WD = 8'h3,

    parameter SRIOV_NF = 8'h1,

    parameter MSI_NF = 1,

    parameter NVC = 4'h1,

    parameter NVC_XALI_EXP = 4'h1,

    parameter NHQ = 1,

    parameter NDQ = 1,

    parameter DATA_PAR_WD = 0,

    parameter TRGT_DATA_WD = 128,


    parameter ADDR_PAR_WD = 0,

    parameter DW_W_PAR = 128,

    parameter DW_WO_PAR = 128,

    parameter RAS_PCIE_HDR_PROT_WD = 0,

    parameter TX_HW_W_PAR = 128,

    parameter RADM_P_HWD = 136,

    parameter DW = 128,

    parameter DATA_WIDTH = 128,

    parameter ADDR_WIDTH = 64,
    
    parameter RX_NDLLP = 2,

    parameter L2N_INTFC = 1,

    parameter ALL_FUNC_NUM = 24'hfac688,

    parameter TRGT_HDR_WD = 136,

    parameter TRGT_HDR_PROT_WD = 0,

    parameter CLIENT_HDR_PROT_WD = 0,

    parameter ST_HDR = 158,

    parameter HDR_PROT_WD = 0,

    parameter RBUF_DEPTH = 427,

    parameter RBUF_PW = 9,

    parameter SOTBUF_DP = 512,

    parameter SOTBUF_PW = 9,

    parameter SOTBUF_WD = 9,

    parameter DATAQ_WD = 137,

    parameter RADM_Q_DATABITS = 130,

    parameter RADM_Q_DATABITS_O = 130,

    parameter LBC_EXT_AW = 6'h20,


    parameter RADM_PQ_HWD = 142,

    parameter RADM_NPQ_HWD = 142,

    parameter RADM_CPLQ_HWD = 106,

    parameter RADM_PQ_HPW = 6,

    parameter RADM_NPQ_HPW = 6,

    parameter RADM_CPLQ_HPW = 8,

    parameter RADM_PQ_DPW = 9,

    parameter RADM_NPQ_DPW = 5,

    parameter RADM_CPLQ_DPW = 9,


    parameter RADM_Q_H_CTRLBITS = 1,

    parameter RADM_Q_D_CTRLBITS = 1,

    parameter RADM_PQ_H_DATABITS = 138,

    parameter RADM_PQ_H_DATABITS_O = 138,

    parameter RADM_NPQ_H_DATABITS = 142,

    parameter RADM_NPQ_H_DATABITS_O = 142,

    parameter RADM_CPLQ_H_DATABITS = 106,

    parameter RADM_CPLQ_H_DATABITS_O = 106,


    parameter RADM_PQ_H_ADDRBITS = 8,

    parameter RADM_NPQ_H_ADDRBITS = 8,

    parameter RADM_CPLQ_H_ADDRBITS = 8,

    parameter RADM_PQ_D_ADDRBITS = 10,

    parameter RADM_NPQ_D_ADDRBITS = 10,

    parameter RADM_CPLQ_D_ADDRBITS = 10,


    parameter RADM_PQ_HDP = 43,

    parameter RADM_NPQ_HDP = 44,

    parameter RADM_CPLQ_HDP = 134,

    parameter RADM_PQ_DDP = 442,

    parameter RADM_NPQ_DDP = 30,

    parameter RADM_CPLQ_DDP = 305,

    parameter DCA_WD = 1,

    parameter NVC_WD = 1,

    parameter APP_CRD_WD = 1,

    parameter BUSNUM_WD = 8,

    parameter DEVNUM_WD = 5,

    parameter N_FLT_MASK = 5'h1c,


    parameter CPL_LUT_DEPTH = 64,
    
    parameter SLV_DATA_WD = 128,

    parameter SLV_DATAP_WD = 1,

    parameter SLV_AW_USER_WIDTH = 0,

    parameter SLV_W_USER_WIDTH = 0,

    parameter SLV_AR_USER_WIDTH = 0,

    parameter SLV_R_USER_WIDTH = 0,

    parameter SLV_B_USER_WIDTH = 0,

    parameter SLV_ADDR_WD = 64,

    parameter SLV_ADDRP_WD = 1,

    parameter SLV_LOCK_WD = 1,

    parameter SLV_WSTRB_WD = 16,

    parameter SLV_ID_WD = 16,

    parameter DBI_SLV_DATA_WD = 32,

    parameter DBI_SLV_AW_USER_WIDTH = 0,

    parameter DBI_SLV_W_USER_WIDTH = 0,

    parameter DBI_SLV_AR_USER_WIDTH = 0,

    parameter DBI_SLV_R_USER_WIDTH = 0,

    parameter DBI_SLV_B_USER_WIDTH = 0,

    parameter DBI_SLV_WSTRB_WD = 4,

    parameter DBI_SLV_ADDR_WD = 32,

    parameter DBI_SLV_LOCK_WD = 1,

    parameter DBI_SLV_ID_WD = 4,

    parameter DATA_PAR_CALC_WIDTH = 0,

    parameter ADDR_PAR_CALC_WIDTH = 0,


    parameter MSTR_DATA_WD = 128,

    parameter MSTR_DATAP_WD = 1,

    parameter MSTR_AW_USER_WIDTH = 0,

    parameter MSTR_W_USER_WIDTH = 0,

    parameter MSTR_AR_USER_WIDTH = 0,

    parameter MSTR_R_USER_WIDTH = 0,

    parameter MSTR_B_USER_WIDTH = 0,

    parameter MSTR_ADDR_WD = 64,

    parameter MSTR_ADDRP_WD = 1,

    parameter MSTR_LOCK_WD = 1,

    parameter MSTR_WSTRB_WD = 16,

    parameter MSTR_ID_WD_CORE = 5,

    parameter MSTR_ID_WD = 6,
    
    parameter AER_HDRLOG_ADDRWIDTH = 2,

    parameter AER_HDRLOG_WIDTH = 133,
    
     parameter SLV_NPW_SAB_RAM_DATA_WD = 139,

     parameter SLV_NPW_SAB_RAM_ADDR_WD = 5,

     parameter SLV_NPW_SAB_RAM_ADDRP_WD = 1,
     
     parameter SLV_WRP_RSP_ROB_FIFO_ADDR_WD = 4,
     
     parameter OB_NPDCMP_RAM_DATA_WD = 167,

     parameter OB_NPDCMP_RAM_ADDR_WD = 5,

     parameter OB_NPDCMP_RAM_ADDRP_WD = 1,
     
     parameter OB_PDCMP_HDR_RAM_DATA_WD = 125,

     parameter OB_PDCMP_HDR_RAM_ADDR_WD = 4,

     parameter OB_PDCMP_HDR_RAM_ADDRP_WD = 1,
     
     parameter OB_PDCMP_DATA_RAM_DATA_WD = 128,

     parameter OB_PDCMP_DATA_RAM_ADDR_WD = 6,

     parameter OB_PDCMP_DATA_RAM_ADDRP_WD = 1,
     
     parameter OB_CCMP_DATA_RAM_DATA_WD = 133,

     parameter OB_CCMP_DATA_RAM_ADDR_WD = 10,

     parameter OB_CCMP_DATA_RAM_ADDRP_WD = 1,

     parameter CC_OB_CCMP_NSLICES = 1,

     parameter CC_OB_CCMP_SLICE_WD = 133,
     
      parameter CC_IB_SCHEDULER_P_HDR_RAM_ADDR_WD = 5,

      parameter CC_IB_SCHEDULER_P_HDR_RAM_ADDRP_WD = 1,

      parameter CC_IB_SCHEDULER_P_HDR_RAM_DATA_WD = 224,
      
      parameter CC_IB_SCHEDULER_P_DATA_RAM_ADDR_WD = 9,

      parameter CC_IB_SCHEDULER_P_DATA_RAM_ADDRP_WD = 1,

      parameter CC_IB_SCHEDULER_P_DATA_RAM_DATA_WD = 128,
      
      parameter CC_IB_SCHEDULER_NP_HDR_RAM_ADDR_WD = 4,

      parameter CC_IB_SCHEDULER_NP_HDR_RAM_ADDRP_WD = 1,

      parameter CC_IB_SCHEDULER_NP_HDR_RAM_DATA_WD = 160,
      
      parameter CC_IB_SCHEDULER_NP_DATA_RAM_ADDR_WD = 5,

      parameter CC_IB_SCHEDULER_NP_DATA_RAM_ADDRP_WD = 1,

      parameter CC_IB_SCHEDULER_NP_DATA_RAM_DATA_WD = 32,
      
      parameter CC_IB_RD_REQ_ORDR_RAM_ADDR_WD = 5,

      parameter CC_IB_RD_REQ_ORDR_RAM_ADDRP_WD = 1,

      parameter CC_IB_RD_REQ_ORDR_RAM_DATA_WD = 140,
      
      parameter CC_IB_RD_REQ_CDC_RAM_ADDR_WD = 4,

      parameter CC_IB_RD_REQ_CDC_RAM_ADDRP_WD = 1,

      parameter CC_IB_WR_REQ_CDC_RAM_ADDR_WD = 4,

      parameter CC_IB_WR_REQ_CDC_RAM_ADDRP_WD = 1,
      
      parameter CC_IB_WR_REQ_CDC_RAM_DATA_WD = 313,

      parameter CC_IB_RD_REQ_CDC_RAM_DATA_WD = 148,
      
      parameter CC_IB_MCPL_CDC_RAM_ADDR_WD = 4,

      parameter CC_IB_MCPL_CDC_RAM_ADDRP_WD = 1,

      parameter CC_IB_MCPL_CDC_RAM_DATA_WD = 192,
      
      parameter CC_AXI_RCHUNKNUM_WD = 8,

      parameter CC_AXI_RCHUNKSTRB_WD = 1,
      
      parameter CC_MSTR_CPL_SEG_N_SLICES = 1,

      parameter CC_MSTR_CPL_SEG_BUF_SLICE_WD = 133,

      parameter CC_IB_MCPL_SEG_BUF_RAM_DATA_WD = 133,

      parameter CC_IB_MCPL_SEG_BUF_RAM_ADDR_WD = 10,

      parameter CC_IBH_MCPL_SEG_BUF_RAM_ADDR_WD = 9,

      parameter CC_IB_MCPL_SEG_BUF_RAM_ADDRP_WD = 1,

      parameter CC_IBH_MCPL_SEG_BUF_RAM_ADDRP_WD = 1,
      
      parameter CC_IB_WR_REQ_PTRK_HDR_RAM_ADDR_WD = 6,

      parameter CC_IB_WR_REQ_PTRK_HDR_RAM_ADDRP_WD = 1,

      parameter CC_IB_WR_REQ_PTRK_HDR_RAM_DATA_WD = 224,

      parameter CC_IB_WR_REQ_PTRK_DATA_RAM_ADDR_WD = 6,

      parameter CC_IB_WR_REQ_PTRK_DATA_RAM_ADDRP_WD = 1,

      parameter CC_IB_WR_REQ_PTRK_DATA_RAM_DATA_WD = 128,
      
      parameter DTIM_AXI4SS_REQ_Q_RAM_DATA_WD = 105,

      parameter DTIM_AXI4SS_REQ_Q_RAM_ADDR_WD = 4,

      parameter DTIM_AXI4SS_REQ_Q_RAM_ADDRP_WD = 0,

      parameter DTIM_NUM_BYTES_PER_BEAT = 20,

      parameter DTIM_DATA_WD = 160,

      parameter DTIM_INTF_PROT_WD = 0,

      parameter PCIE_ATS_INV_REQ_ITAG_WD = 5,

      parameter DTIM_ATS_SID_LWR_WD = 16,
      
      parameter AXI_RAS_ERR_INJ_EN_INTF_WD = 0,

      parameter AXI_RAS_ERR_INJ_MASK_INTF_WD = 2,
      
      parameter DTIM_RAS_ERR_UC_INTF_WD = 13,

      parameter DTIM_RAS_ERR_C_INTF_WD = 1,
      
      parameter DTIM_RAS_RAM_ERR_C_INTF_WD = 1,

      parameter DTIM_RAS_RAM_ERR_UC_INTF_WD = 1,

      parameter DTIM_RAS_RAM_ERR_ADDR_INTF_WD = 4,

      parameter DTIM_RAS_RAM_ERR_SYND_INTF_WD = 0,
      
      parameter CC_AMBA_TLP_SEQ_WD = 9,
      


    parameter MSTR_MISC_INFO_PW = 50,

    parameter SLV_MISC_INFO_PW = 22,

    parameter MSTR_RESP_MISC_INFO_PW = 13,

    parameter SLV_RESP_MISC_INFO_PW = 11,

    parameter MSTR_BURST_LEN_PW = 8,

    parameter SLV_BURST_LEN_PW = 8,

    parameter SLV_INT_BURST_LEN_PW = 4,

    parameter DBISLV_BURST_LEN_PW = 8,

    parameter DBISLV_INT_BURST_LEN_PW = 4,



    parameter MAX_MSTR_TAGS = 32,

    parameter MAX_MSTR_TAG_PW = 5,


    parameter MAX_WIRE_TAG = 32,


    parameter MAX_WIRE_TAG_PW = 5,


    parameter CORE_ADDR_BUS_WD = 64,

    parameter ADDR_PAR_CALC_WIDTH_NO_ZERO = 1,

    parameter CORE_ADDR_PAR_WD = 0,
    
    parameter DMA_CTX_RAM_ADDR_WIDTH = 3,
    
    parameter DMA_CTX_RAM_ADDRP_WIDTH = 1,
    

    parameter DMA_CTX_RAM_DATA_WIDTH = 256,


    parameter DMA_SEG_BUF_NW_ADDR_WIDTH = 10,
    
    parameter DMA_SEG_BUF_NW_ADDRP_WIDTH = 1,
    

    parameter DMA_SEG_BUF_DATA_WIDTH = 128,
    
    parameter NVF = 2,

    parameter INT_NVF = 2,
    
    parameter VFI_WD = 1,

    parameter VF_WD = 2,
    
    parameter VF_RAM_DATABITS = 3,

    parameter VF_RAM_ADDRBITS = 1,

    parameter VF_RAM_CTRLBITS = 1,
    
    parameter RASDES_EC_RAM_DATA_WIDTH = 64,

    parameter RASDES_EC_RAM_ADDR_WIDTH = 1,

    parameter RASDES_EC_RAM_DEPTH = 0,

    parameter RASDES_EC_INFO_CM = 183,

    parameter RASDES_EC_INFO_PL = 13,
    
    parameter RASDES_TBA_RAM_DATA_WIDTH = 64,

    parameter RASDES_TBA_RAM_ADDR_WIDTH = 1,

    parameter RASDES_TBA_RAM_DEPTH = 1,
    
    parameter RASDES_SD_INFO_CM = 80,

    parameter RASDES_SD_INFO_PL = 248,

    parameter RASDES_SD_INFO_PV = 240,
    
    parameter RASDES_TBA_INFO_CM = 7,
    

    parameter TX_COEF_WD = 18,
    
    parameter RX_PSET_WD = 3,

    parameter TX_PSET_WD = 4,

    parameter TX_FSLF_WD = 12,

    parameter TX_FS_WD = 6,

    parameter TX_CRSR_WD = 6,

    parameter PHY_RXSB_WD = 1,

    parameter PHY_RXSH_WD = 2,
    
    parameter DIRFEEDBACK_WD = 6,

    parameter FOMFEEDBACK_WD = 8,
    

    parameter ORIG_DATA_WD = 32,

    parameter SERDES_DATA_WD = 40,

    parameter PIPE_DATA_WD = 128,

    parameter PDWN_WIDTH = 4,

    parameter RATE_WIDTH = 2,

    parameter P_R_WD = 3,

    parameter WIDTH_WIDTH = 2,

    parameter TX_DEEMPH_WD = 72,

    parameter PHY_TXEI_WD = 1,
    
    parameter ATU_OUT_REGIONS = 16,

    parameter ATU_IN_REGIONS = 16,
    
    parameter ATU_BASE_WD = 32,
    
    parameter ATU_REG_WD = 20,

    parameter ATU_UPR_LMT_WD = 3,

    parameter ATU_IN_MIN1 = 16,
    

    parameter ERR_BUS_WD = 27,

    parameter RX_TLP = 1,

    parameter FX_TLP = 1,


    parameter TAG_SIZE = 10,

    parameter LOOKUPID_WD = 8,
    
    parameter SATA_IDX_WD = 64,
    

    parameter ATTR_WD = 2,


    parameter AXI_IF_PAR_ECC_ENABLED = 0,
    
    parameter CX_TLP_PREFIX_ENABLE_VALUE = 0,

    parameter PRFX_W_PAR = 32,

    parameter NW_PRFX = 0,

    parameter PRFX_PAR_WD = 0,

    parameter PRFX_DW = 32,

    parameter PRFX_WIDTH = 0,
    

    parameter LBC_INT_WD = 32,
    

    parameter MSIX_TABLE_SIZE = 11'h7f,

    parameter MSIX_PBA_SIZE = 1,

    parameter MSIX_TABLE_RAM_DEPTH = 128,

    parameter MSIX_PBA_RAM_DEPTH = 2,

    parameter MSIX_PBA_PW = 1,

    parameter MSIX_TABLE_PW = 7,

    parameter MSIX_TABLE_DW = 131,

    parameter MSIX_TABLE_WEW = 17,

    parameter MSIX_TABLE_RAM_RD_LATENCY = 1,

    parameter MSIX_PBA_RAM_RD_LATENCY = 1,
    

    parameter GEN2_DYNAMIC_FREQ_VALUE = 1,
    
    parameter RAS_PROT_RANGE = 64,

    parameter RAS_PROT_TYPE = 0,

    parameter RAS_CORR_EN = 1,

    parameter RAS_PARITY_MODE = 0,

    parameter ERROR_INJ_EN_WD = 256,

    parameter ERROR_INJ_MASK_WD = 2400,

    parameter APP_ERROR_WD = 52,

    parameter RASDP_TRGT1_HDR_PROT_WD = 0,

    parameter RASDP_BYPASS_HDR_PROT_WD = 0,

    parameter RASDP_HDRQ_ERR_SYND_WD = 0,

    parameter RASDP_DATAQ_ERR_SYND_WD = 0,

    parameter RASDP_RBUF_ERR_SYND_WD = 0,

    parameter RASDP_SOTBUF_ERR_SYND_WD = 0,

    parameter RADM_SBUF_HDRQ_ERR_ADDR_WD = 9,
    
    parameter APP_ERROR_ADDR_WD = 54,

    parameter APP_CORR_DISABLE_WD = 1,
    
    parameter ORDRB_ERROR_ADDR_WD = 54,
    
    parameter RADM_RAM_RD_LATENCY = 1,

    parameter RADM_FORMQ_RAM_RD_LATENCY = 1,

    parameter RETRY_RAM_RD_LATENCY = 1,

    parameter RETRY_SOT_RAM_RD_LATENCY = 1,


    parameter NQW = 2,
    
    parameter RAM_WD_VC0_P = 153,

    parameter RAM_DP_VC0_P = 358,

    parameter RAM_PW_VC0_P = 9,

    parameter RAM_WD_VC0_NP = 153,

    parameter RAM_DP_VC0_NP = 50,

    parameter RAM_PW_VC0_NP = 6,

    parameter RAM_WD_VC0_CPL = 153,

    parameter RAM_DP_VC0_CPL = 130,

    parameter RAM_PW_VC0_CPL = 8,
    
    parameter RAM_WD = 135,

    parameter RAM_DP = 49,

    parameter RAM_PW = 6,

    parameter RASDP_FORMQ_ERR_SYND_WD = 0,
    
    parameter ACS_CTRL_VEC_WD = 9'h4,
    
    parameter PHY_VPT_NUM = 1,

    parameter PHY_VPT_DATA = 16,
    
    parameter CCIX_HDR_WD = 128,

    parameter CCIX_HDR_PROT_WD = 0,

    parameter CX_CCIX_HDR_WD = 128,

    parameter CX_CCIX_DATA_WD = 128,
    
    parameter CXSDATAFLITWIDTH = 256,

    parameter CXSCNTLWIDTH = 14,

    parameter CXS_RX_BUFF_DEPTH = 32,

    parameter CXS_RX_BUFF_DATAW = 270,

    parameter CXS_RX_BUFF_ADDRW = 5,

    parameter CXS_TX_BUFF_DEPTH = 16,

    parameter CXS_TX_BUFF_DATAW = 270,

    parameter CXS_TX_BUFF_ADDRW = 4,
    
    parameter CXSDATACHKWIDTH = 32,

    parameter CXSCNTLCHKWIDTH = 1,
    
    parameter CXSRXREPWIDTH = 0,
    
    parameter CXSTXREPWIDTH = 0,
    

    parameter HCRD_WD = 12,

    parameter DCRD_WD = 16,
    
    parameter PSET_ID_WD = 5,
    
    parameter AUX_CLK_FREQ_WD = 10,
    

    parameter XADM_RFC_IN_WD = 67,

    parameter RADM_RFC_OUT_WD = 67,

    parameter XADM_XTLH_OUT_WD = 270,

    parameter RTLH_RAMD_IN_WD = 270,

    parameter LTSSM_EMU_IN_WD = 11,

    parameter LTSSM_EMU_OUT_WD = 11,

    parameter FREQ = 3,

    parameter GEN3_MODE = 0,
    
    parameter CORE_SYNC_DEPTH = 2,

    parameter PM_MST_WD = 5,

    parameter PM_SLV_WD = 5,
    
    parameter CPL_LUT_PTR_WD = 6,

    parameter DPC_PRFX_LOG_SIZE = 0,

    parameter DPC_PRFX_LOG_WD = 0,
    
    parameter CXL_WD = 528
    )

                   (
  // list of port declarations
    // Master interfaces of AXI
    output  [MSTR_ID_WD-1:0]        mstr_awid,
    output                           mstr_awvalid,
    output  [MSTR_ADDR_WD -1:0]      mstr_awaddr,
    output  [MSTR_BURST_LEN_PW -1:0] mstr_awlen,
    output  [2:0]                    mstr_awsize,
    output  [1:0]                    mstr_awburst,
    output  [MSTR_LOCK_WD-1:0]       mstr_awlock,
    output  [3:0]                    mstr_awcache,
    output  [2:0]                    mstr_awprot,
    input                            mstr_awready,
    output  [MSTR_MISC_INFO_PW -1:0] mstr_awmisc_info,
    output                           mstr_awmisc_info_last_dcmp_tlp,
    output  [63:0]                   mstr_awmisc_info_hdr_34dw,
    output [`x4_CC_NUM_DMA_RD_CHAN_WIDTH+`x4_DC_DMA_TYPE_WIDTH-1:0] mstr_awmisc_info_dma,
    output                           mstr_awmisc_info_ep,
    output  [3:0]                    mstr_awqos,
    input                            mstr_wready,
    output  [MSTR_DATA_WD -1:0]      mstr_wdata,
    output  [MSTR_WSTRB_WD -1:0]     mstr_wstrb,
    output                           mstr_wlast,
    output                           mstr_wvalid,

    output                           mstr_bready,
    input   [MSTR_ID_WD-1:0]        mstr_bid,
    input                            mstr_bvalid,
    input   [1:0]                    mstr_bresp,



    input   [2:0]                    mstr_bmisc_info_cpl_stat,


    output  [MSTR_ID_WD-1:0]        mstr_arid,
    output                           mstr_arvalid,
    output  [MSTR_ADDR_WD -1:0]      mstr_araddr,
    output  [MSTR_BURST_LEN_PW -1:0] mstr_arlen,
    output  [2:0]                    mstr_arsize,
    output  [1:0]                    mstr_arburst,
    output  [MSTR_LOCK_WD-1:0]       mstr_arlock,
    output  [3:0]                    mstr_arcache,
    output  [2:0]                    mstr_arprot,
    output                           mstr_rready,
    output  [MSTR_MISC_INFO_PW -1:0] mstr_armisc_info,
    output               mstr_armisc_info_last_dcmp_tlp,
    output  [`x4_CC_NUM_DMA_MAX_CHAN_WIDTH+`x4_DC_DMA_TYPE_WIDTH-1:0] mstr_armisc_info_dma,
    output                           mstr_armisc_info_zeroread,
    input                            mstr_arready,
    output  [3:0]                    mstr_arqos,
    input   [MSTR_ID_WD-1:0]        mstr_rid,
    input                            mstr_rvalid,
    input                            mstr_rlast,
    input   [MSTR_DATA_WD -1:0]      mstr_rdata,
    input   [1:0]                    mstr_rresp,
    input   [MSTR_RESP_MISC_INFO_PW -1:0] mstr_rmisc_info,



    input   [2:0]                    mstr_rmisc_info_cpl_stat,

    output                           mstr_csysack,
    output                           mstr_cactive,
    input                            mstr_csysreq,
    input                            mstr_aclk,
    input                            mstr_aclk_ug,
    output                           mstr_aclk_active,
    input                            mstr_aresetn,

    input   [SLV_ID_WD -1:0] slv_awid,
    input   [SLV_ADDR_WD -1:0] slv_awaddr,
    input   [SLV_BURST_LEN_PW -1:0]  slv_awlen,
    input   [2:0]                    slv_awsize,
    input   [1:0]                    slv_awburst,
    input   [SLV_LOCK_WD-1:0]        slv_awlock,
    input   [3:0]                    slv_awcache,
    input   [2:0]                    slv_awprot,
    input                            slv_awvalid,
    output                           slv_awready,
    input   [3:0]                    slv_awqos,
    input   [SLV_MISC_INFO_PW -1:0]  slv_awmisc_info,
    input   [63:0]                   slv_awmisc_info_hdr_34dw,
    input   [TAG_SIZE-1:0]           slv_awmisc_info_p_tag,
    input                            slv_awmisc_info_atu_bypass,

    output                           slv_wready,
    input   [SLV_DATA_WD -1:0]       slv_wdata,
    input   [SLV_WSTRB_WD -1:0]      slv_wstrb,
    input                            slv_wlast,
    input                            slv_wvalid,
    input                            slv_wmisc_info_ep,
    input                            slv_wmisc_info_silentDrop,

    output  [SLV_ID_WD -1:0]         slv_bid,
    output  [1:0]                    slv_bresp,
    output                           slv_bvalid,
    input                            slv_bready,
    output  [SLV_RESP_MISC_INFO_PW -1:0]  slv_bmisc_info,
    input   [SLV_ID_WD -1:0]         slv_arid,
    input   [SLV_ADDR_WD -1:0]       slv_araddr,
    input   [SLV_BURST_LEN_PW -1:0]  slv_arlen,
    input   [2:0]                    slv_arsize,
    input   [1:0]                    slv_arburst,
    input   [SLV_LOCK_WD-1:0]        slv_arlock,
    input   [3:0]                    slv_arcache,
    input   [2:0]                    slv_arprot,
    input                            slv_arvalid,
    input   [SLV_MISC_INFO_PW -1:0]  slv_armisc_info,
    input                            slv_armisc_info_atu_bypass,
    input                            slv_rready,
    output  [SLV_ID_WD -1:0]         slv_rid,
    output  [SLV_DATA_WD -1:0]       slv_rdata,
    output  [1:0]                    slv_rresp,
    output                           slv_rlast,
    output                           slv_rvalid,
    output  [SLV_RESP_MISC_INFO_PW -1:0]  slv_rmisc_info,
    output                           slv_arready,
    input   [3:0]                    slv_arqos,

    input                            slv_csysreq,
    output                           slv_csysack,
    output                           slv_cactive,

    input                            slv_aclk,
    input                            slv_aclk_ug,
    output                           slv_aclk_active,
    input                            slv_aresetn,



    output                              radm_cpl_timeout,
    output  [PF_WD-1:0]                 radm_timeout_func_num,
    output  [2:0]                       radm_timeout_cpl_tc,
    output  [1:0]                       radm_timeout_cpl_attr,
    output  [11:0]                      radm_timeout_cpl_len,
    output  [TAG_SIZE-1:0]              radm_timeout_cpl_tag,


    output [2:0]                   radm_trgt1_vc,


    // Gated Slave DBI clock
    input                                dbi_aclk,
    // Ungated Slave DBI clock
    input                                dbi_aclk_ug,
    // Slave DBI clock gating control
    output                               dbi_aclk_active,
    input                                dbi_aresetn,
    // Slave DBI interfaces of AXI
    input   [DBI_SLV_ID_WD -1:0]        dbi_awid,
    input   [DBI_SLV_ADDR_WD -1:0]      dbi_awaddr,
    input   [DBISLV_BURST_LEN_PW -1:0]  dbi_awlen,
    input   [2:0]                       dbi_awsize,
    input   [1:0]                       dbi_awburst,
    input   [DBI_SLV_LOCK_WD-1:0]       dbi_awlock,
    input   [3:0]                       dbi_awcache,
    input   [2:0]                       dbi_awprot,
    input                               dbi_awvalid,
    output                              dbi_awready,
    input   [3:0]                       dbi_awqos,
    output                              dbi_wready,
    input   [DBI_SLV_DATA_WD -1:0]      dbi_wdata,
    input   [DBI_SLV_DATA_WD/8 -1:0]    dbi_wstrb,
    input                               dbi_wlast,
    input                               dbi_wvalid,
    output  [DBI_SLV_ID_WD -1:0]        dbi_bid,
    output  [1:0]                       dbi_bresp,
    output                              dbi_bvalid,
    input                               dbi_bready,

    input   [DBI_SLV_ID_WD -1:0]         dbi_arid,
    input   [DBI_SLV_ADDR_WD -1:0]       dbi_araddr,
    input   [DBISLV_BURST_LEN_PW -1:0]   dbi_arlen,
    input   [2:0]                        dbi_arsize,
    input   [1:0]                        dbi_arburst,
    input   [DBI_SLV_LOCK_WD-1:0]        dbi_arlock,
    input   [3:0]                        dbi_arcache,
    input   [2:0]                        dbi_arprot,
    input                                dbi_arvalid,
    input                                dbi_rready,

    output  [DBI_SLV_ID_WD -1:0]         dbi_rid,
    output  [DBI_SLV_DATA_WD -1:0]       dbi_rdata,
    output  [1:0]                        dbi_rresp,
    output                               dbi_rlast,
    output                               dbi_rvalid,
    output                               dbi_arready,
    input   [3:0]                        dbi_arqos,

    input                                dbi_csysreq,
    output                               dbi_csysack,
    output                               dbi_cactive,


    // ELBI interface
    input   [NF-1:0]                    ext_lbc_ack,
    input   [(`x4_CX_LBC_NW*32*NF)-1:0]    ext_lbc_din,
    output  [LBC_EXT_AW-1:0]            lbc_ext_addr,
    output  [`x4_CX_LBC_NW*32-1:0]         lbc_ext_dout,
    output  [NF-1:0]                    lbc_ext_cs,
    output  [(4*`x4_CX_LBC_NW)-1:0]        lbc_ext_wr,
    output                              lbc_ext_dbi_access,
    output                              lbc_ext_rom_access,
    output                              lbc_ext_io_access,
    output  [2:0]                       lbc_ext_bar_num,
    // MSI interface
    input                               ven_msi_req,
    input   [PF_WD-1:0]                 ven_msi_func_num,
    input   [2:0]                       ven_msi_tc,
    input   [4:0]                       ven_msi_vector,
    output                              ven_msi_grant,
    output  [MSI_NF-1:0]                    cfg_msi_en,
    output  [(32*MSI_NF)-1:0]               cfg_msi_mask,
    input   [(32*MSI_NF)-1:0]               cfg_msi_pending,

    // MSI-X interface
    input                               dbg_table,
    input                               dbg_pba,
    output [MSIX_TABLE_PW-1:0]          msix_table_addr,

    output [130:0]                      msix_table_data_out,

    output [16:0]                       msix_table_we,

    output                              msix_table_en,

    input  [130:0]                      msix_table_data_in,

    output                              msix_table_ls,

    output                              cfg_msix_table_ds,

    output                              cfg_msix_table_sd,

    output [MSIX_PBA_PW-1:0]            msix_pba_addr,

    output [63:0]                       msix_pba_data_out,

    output [7:0]                        msix_pba_we,

    output                              msix_pba_en,

    input  [63:0]                       msix_pba_data_in,

    output                              msix_pba_ls,

    output                              cfg_msix_pba_ds,

    output                              cfg_msix_pba_sd,

    // VPD interface


    // FLR interface


    output  [1:0]                       cfg_obff_en,
    output                              app_obff_msg_grant,

    output                              cfg_ltr_m_en,
    output [(32*NF)-1:0]                cfg_ltr_max_latency,
    output                              cfg_disable_ltr_clr_msg,
    // VMI interface
    input   [1:0]                       ven_msg_fmt,
    input   [4:0]                       ven_msg_type,
    input   [2:0]                       ven_msg_tc,
    input                               ven_msg_td,
    input                               ven_msg_ep,
    input   [ATTR_WD-1:0]               ven_msg_attr,
    input   [9:0]                       ven_msg_len,
    input   [PF_WD-1:0]                 ven_msg_func_num,
    input   [TAG_SIZE-1:0]              ven_msg_tag,
    input   [7:0]                       ven_msg_code,
    input   [63:0]                      ven_msg_data,
    input                               ven_msg_req,
    output                              ven_msg_grant,

    // SII interface
    input                               rx_lane_flip_en,
    input                               tx_lane_flip_en,


    input   [NF-1:0]                    sys_int,
    input   [NF-1:0]                    outband_pwrup_cmd,
    input   [NF-1:0]                    apps_pm_xmt_pme,
    input                               sys_aux_pwr_det,
    input   [NF-1:0]                    sys_atten_button_pressed,
    input   [NF-1:0]                    sys_pre_det_state,
    input   [NF-1:0]                    sys_mrl_sensor_state,
    input   [NF-1:0]                    sys_pwr_fault_det,
    input   [NF-1:0]                    sys_mrl_sensor_chged,
    input   [NF-1:0]                    sys_pre_det_chged,
    input   [NF-1:0]                    sys_cmd_cpled_int,
    input   [NF-1:0]                    sys_eml_interlock_engaged,
    output  [(2*NF)-1:0]                cfg_pwr_ind,
    output  [(2*NF)-1:0]                cfg_atten_ind,
    output  [NF-1:0]                    cfg_pwr_ctrler_ctrl,
    input                               apps_pm_xmt_turnoff,
    input                               app_unlock_msg,
    input                               app_obff_idle_msg_req,
    input                               app_obff_obff_msg_req,
    input                               app_obff_cpu_active_msg_req,
    output                              pm_xtlh_block_tlp,
    output  [(64*NF)-1:0]               cfg_bar0_start,
    output  [(32*NF)-1:0]               cfg_bar1_start,
    output  [(64*NF)-1:0]               cfg_bar0_limit,
    output  [(32*NF)-1:0]               cfg_bar1_limit,
    output  [(64*NF)-1:0]               cfg_bar2_start,
    output  [(64*NF)-1:0]               cfg_bar2_limit,
    output  [(32*NF)-1:0]               cfg_bar3_start,
    output  [(32*NF)-1:0]               cfg_bar3_limit,
    output  [(64*NF)-1:0]               cfg_bar4_start,
    output  [(64*NF)-1:0]               cfg_bar4_limit,
    output  [(32*NF)-1:0]               cfg_bar5_start,
    output  [(32*NF)-1:0]               cfg_bar5_limit,
    output  [(32*NF)-1:0]               cfg_exp_rom_start,
    output  [(32*NF)-1:0]               cfg_exp_rom_limit,
    output  [NF-1:0]                    cfg_bus_master_en,
    output  [NF-1:0]                    cfg_mem_space_en,
    output  [(3*NF)-1:0]                cfg_max_rd_req_size,
    output  [(3*NF)-1:0]                cfg_max_payload_size,
    output  [NF-1:0]                    cfg_ext_tag_en,
    output  [NF-1:0]                    cfg_rcb,
    output  [NF -1 :0]                  cfg_pm_no_soft_rst,
    output  [NF-1:0]                    cfg_aer_rc_err_int,
    output  [NF-1:0]                    cfg_aer_rc_err_msi,
    output  [(NF*5)-1:0]                cfg_aer_int_msg_num,
    output  [NF-1:0]                    cfg_sys_err_rc,
    output  [NF-1:0]                    cfg_pme_int,
    output  [NF-1:0]                    cfg_pme_msi,
    output  [NF-1:0]                    cfg_crs_sw_vis_en,
    output  [(NF*5)-1:0]                cfg_pcie_cap_int_msg_num,
    output                              rdlh_link_up,
    output  [2:0]                       pm_curnt_state,
    output  [5:0]                       smlh_ltssm_state,
    output                              smlh_ltssm_state_rcvry_eq,
    output                              smlh_link_up,
    output                              smlh_req_rst_not,
    output                              link_req_rst_not,
    output                              brdg_slv_xfer_pending,
    output                              brdg_dbi_xfer_pending,
    output                              edma_xfer_pending,
    output                              radm_xfer_pending,
    output  [FX_TLP-1:0]                radm_vendor_msg,
    output                              radm_msg_ltr,
    output  [(FX_TLP*64)-1:0]           radm_msg_payload,

    output                              radm_slot_pwr_limit,

    output  [31:0]                      radm_slot_pwr_payload,

    output                              radm_msg_unlock,
    output                              radm_msg_idle,
    output                              radm_msg_obff,
    output                              radm_msg_cpu_active,
    output  [(FX_TLP*16)-1:0]           radm_msg_req_id,
    output                              radm_inta_asserted,
    output                              radm_intb_asserted,
    output                              radm_intc_asserted,
    output                              radm_intd_asserted,
    output                              radm_inta_deasserted,
    output                              radm_intb_deasserted,
    output                              radm_intc_deasserted,
    output                              radm_intd_deasserted,
    output                              radm_correctable_err,
    output                              radm_nonfatal_err,
    output                              radm_fatal_err,
    output                              radm_pm_pme,
    output                              radm_pm_to_ack,
    output                              radm_pm_turnoff,
    output  [RX_NDLLP-1:0]              rtlh_rfc_upd,
    output  [(32*RX_NDLLP)-1:0]         rtlh_rfc_data,
    output                              wake,
    output                              local_ref_clk_req_n,
    output  [NF-1:0]                    cfg_eml_control,
    output  [NF-1:0]                    hp_pme,
    output  [NF-1:0]                    hp_int,
    output  [NF-1:0]                    hp_msi,
    input                               app_ltssm_enable,
    output  [BUSNUM_WD-1:0]             cfg_pbus_num,
    output  [DEVNUM_WD-1:0]             cfg_pbus_dev_num,
    output  [(3*NF)-1:0]                pm_dstate,
    output  [NF-1:0]                    pm_pme_en,
    output                              pm_linkst_in_l0s,
    output                              pm_linkst_in_l1,
    output                              pm_linkst_in_l2,
    output                              pm_linkst_l2_exit,
    output  [(PM_MST_WD - 1):0]         pm_master_state,
    output  [(PM_SLV_WD - 1):0]         pm_slave_state,
    output  [2:0]                       pm_l1sub_state,
    output  [NF-1:0]                    pm_status,
    output  [NF-1:0]                    aux_pm_en,
    output                              cfg_link_auto_bw_int,
    output                              cfg_link_auto_bw_msi,
    output                              cfg_bw_mgt_int,
    output                              cfg_bw_mgt_msi,
    output                              cfg_link_eq_req_int,
    output                              usp_eq_redo_executed_int,
    output  [31:0]                      msi_ctrl_io,
    output                              msi_ctrl_int,
    output  [7:0]                       msi_ctrl_int_vec,
    input                               app_ltr_msg_req,
    output                              app_ltr_msg_grant,
    input   [31:0]                      app_ltr_msg_latency,
    input   [PF_WD-1:0]                 app_ltr_msg_func_num,
    output  [31:0]                      app_ltr_latency,
    output  [NVC-1:0]                   radm_q_not_empty,
    output  [NVC-1:0]                   radm_qoverflow,


    output                              trgt_cpl_timeout,
    output  [PF_WD-1:0]                 trgt_timeout_cpl_func_num,
    output  [2:0]                       trgt_timeout_cpl_tc,
    output  [1:0]                       trgt_timeout_cpl_attr,
    output  [11:0]                      trgt_timeout_cpl_len,
    output  [LOOKUPID_WD-1:0]           trgt_timeout_lookup_id,
    output  [LOOKUPID_WD-1:0]           trgt_lookup_id,
    output                              trgt_lookup_empty,

    input                               app_hdr_valid,
    input   [127:0]                     app_hdr_log,
    input   [ERR_BUS_WD-1:0]            app_err_bus,
    input                               app_err_advisory,
    input                               app_poisoned_tlp_type,
    input   [PF_WD-1:0]                 app_err_func_num,

    // PIPE interface
    output  [(PDWN_WIDTH - 1) : 0]                       mac_phy_powerdown,
    input   [NL-1:0]                    phy_mac_rxelecidle,
    input   [NL-1:0]                    phy_mac_phystatus,
    input   [(PIPE_DATA_WD - 1):0]         phy_mac_rxdata,
    input   [(NL*PHY_NB)-1:0]           phy_mac_rxdatak,
    input   [NL-1:0]                    phy_mac_rxvalid,
    input   [(NL*3)-1:0]                phy_mac_rxstatus,
    input   [NL-1:0]                    phy_mac_rxstandbystatus,
    input   [31:0]                      phy_cfg_status,
    output  [(PIPE_DATA_WD - 1):0]         mac_phy_txdata,
    output  [(NL*PHY_NB)-1:0]           mac_phy_txdatak,
    output                              mac_phy_elasticbuffermode,
    output  [NL-1:0]                    mac_phy_txdatavalid,
    output  [(NL*2)-1:0]                mac_phy_txsyncheader,
    output  [NL-1:0]                    mac_phy_txstartblock,
    output                              mac_phy_encodedecodebypass,
    output                             mac_phy_blockaligncontrol,

    output  [NL-1:0]                    mac_phy_txdetectrx_loopback,
    output  [NL*PHY_TXEI_WD-1:0]       mac_phy_txelecidle,
    output  [NL-1:0]                    mac_phy_txcompliance,
    output  [NL-1:0]                    mac_phy_rxpolarity,
    output  [WIDTH_WIDTH-1:0]           mac_phy_width,
    output  [P_R_WD-1:0]                       mac_phy_pclk_rate,
    output  [NL-1:0]                    mac_phy_rxstandby,

    output  [RATE_WIDTH-1:0]            mac_phy_rate,
    output  [TX_DEEMPH_WD-1:0]          mac_phy_txdeemph,
    output  [2:0]                       mac_phy_txmargin,
    output                              mac_phy_txswing,
    output                              cfg_hw_auto_sp_dis,

    output  [2:0]                       pm_current_data_rate,



    input   [NL-1:0]                    phy_mac_rxdatavalid,
    input   [NL*PHY_RXSB_WD-1:0]        phy_mac_rxstartblock,
    input   [NL*PHY_RXSH_WD-1:0]        phy_mac_rxsyncheader,
    output  [NL*8-1:0]                  mac_phy_messagebus,
    input   [NL*8-1:0]                  phy_mac_messagebus,

    input                               app_margining_ready,
    input                               app_margining_software_ready,
    output  [31:0]                      cfg_phy_control,
    // clk_and_reset interface
    input                               core_clk,
    input                               core_clk_ug,
    input                               aux_clk,
    input                               aux_clk_g,
    output                              en_aux_clk_g,
    input                               radm_clk_g,
    output                              en_radm_clk_g,
    output                              radm_idle,
    input                               pwr_rst_n,
    input                               sticky_rst_n,
    input                               non_sticky_rst_n,
    input                               core_rst_n,
    input               perst_n,
    input               app_clk_req_n,
    input               phy_clk_req_n,
    output              pm_req_sticky_rst,
    output              pm_req_core_rst,
    output              pm_req_non_sticky_rst,
    output              pm_sel_aux_clk,
    output              pm_en_core_clk,
    output              pm_req_phy_rst,
    output              pm_req_phy_perst,


    output                             pm_aspm_l1_enter_ready,

    input                               app_req_entr_l1,


    input                               app_ready_entr_l23,


    //<ct:CX_IS_SW><br><i>Note:</i> The controller ignores this input in a downstream port.</ct>
    input                               app_req_exit_l1,
    input                               app_xfer_pending,
    input                               app_init_rst,

    input   [3:0]                       device_type,
    input                               app_req_retry_en,
    input  [NF-1:0]                       app_pf_req_retry_en,


    // DBI Read-only Write Disable
    input                              app_dbi_ro_wr_disable,


    output                              training_rst_n,

   // RAM moved out of the TOP
    // Retry buffer external RAM interface
    output  [RBUF_PW -1:0]              xdlh_retryram_addr,
    output  [`x4_RBUF_WIDTH-1:0]           xdlh_retryram_data,
    output                              xdlh_retryram_we,
    output                              xdlh_retryram_en,
    input   [`x4_RBUF_WIDTH-1:0]           retryram_xdlh_data,

    // Retry SOT buffer
    output  [SOTBUF_PW -1:0]            xdlh_retrysotram_waddr,
    output  [SOTBUF_PW -1:0]            xdlh_retrysotram_raddr,
    output  [SOTBUF_WD -1:0]            xdlh_retrysotram_data,
    output                              xdlh_retrysotram_we,
    output                              xdlh_retrysotram_en,
    input   [SOTBUF_WD -1:0]            retrysotram_xdlh_data,

    // For the effort of bring RAM outside of the hiarch.
    // Beneath are grouped outputs and input  s just for RAM

    input   [RADM_PQ_H_DATABITS_O-1:0]  p_hdrq_dataout,
    output  [RADM_PQ_H_ADDRBITS-1:0]    p_hdrq_addra,
    output  [RADM_PQ_H_ADDRBITS-1:0]    p_hdrq_addrb,
    output  [RADM_PQ_H_DATABITS-1:0]    p_hdrq_datain,
    output  [RADM_Q_H_CTRLBITS-1:0]     p_hdrq_ena,
    output  [RADM_Q_H_CTRLBITS-1:0]     p_hdrq_enb,
    output  [RADM_Q_H_CTRLBITS-1:0]     p_hdrq_wea,
    input   [RADM_Q_DATABITS_O-1:0]     p_dataq_dataout,
    output  [RADM_PQ_D_ADDRBITS-1:0]    p_dataq_addra,
    output  [RADM_PQ_D_ADDRBITS-1:0]    p_dataq_addrb,
    output  [RADM_Q_DATABITS-1:0]       p_dataq_datain,
    output  [RADM_Q_D_CTRLBITS-1:0]     p_dataq_ena,
    output  [RADM_Q_D_CTRLBITS-1:0]     p_dataq_enb,
    output  [RADM_Q_D_CTRLBITS-1:0]     p_dataq_wea,










  // eDMA RAM interface signals
    input  [DMA_CTX_RAM_DATA_WIDTH-1:0]     ram2edma_din,
    output [DMA_CTX_RAM_ADDR_WIDTH-1:0]     edma2ram_addra,
    output [DMA_CTX_RAM_ADDR_WIDTH-1:0]     edma2ram_addrb,
    output [DMA_CTX_RAM_DATA_WIDTH-1:0]     edma2ram_dout,
    output                                  edma2ram_re,
    output                                  edma2ram_we,
    //eDMA Read buffer RAM interface
    input  [DMA_SEG_BUF_DATA_WIDTH-1:0]    ram2edmarbuff_din,
    output [DMA_SEG_BUF_NW_ADDR_WIDTH-1:0] edmarbuff2ram_addra,
    output [DMA_SEG_BUF_NW_ADDR_WIDTH-1:0] edmarbuff2ram_addrb,
    output [DMA_SEG_BUF_DATA_WIDTH-1:0]    edmarbuff2ram_dout,
    output                                 edmarbuff2ram_re,
    output                                 edmarbuff2ram_we,



    output  [NF-1:0]                    cfg_reg_serren,
    output  [NF-1:0]                    cfg_cor_err_rpt_en,
    output  [NF-1:0]                    cfg_nf_err_rpt_en,
    output  [NF-1:0]                    cfg_f_err_rpt_en,

    input   [`x4_CX_DIAG_CONTROL_BUS_WD -1 :0] diag_ctrl_bus,
    output  [`x4_CX_DIAG_STATUS_BUS_WD -1 :0]  diag_status_bus,


    output [CC_IB_RD_REQ_ORDR_RAM_ADDR_WD-1:0]     ib_rreq_ordr_ram_addra,
    output [CC_IB_RD_REQ_ORDR_RAM_ADDR_WD-1:0]     ib_rreq_ordr_ram_addrb,
    output                                         ib_rreq_ordr_ram_wea,
    output                                         ib_rreq_ordr_ram_enb,
    output [CC_IB_RD_REQ_ORDR_RAM_DATA_WD-1:0]     ib_rreq_ordr_ram_dina,
    input  [CC_IB_RD_REQ_ORDR_RAM_DATA_WD-1:0]     ib_rreq_ordr_ram_doutb,
    output [CC_IB_RD_REQ_CDC_RAM_ADDR_WD-1:0]      ib_rreq_c2a_cdc_ram_addra,
    output [CC_IB_RD_REQ_CDC_RAM_ADDR_WD-1:0]      ib_rreq_c2a_cdc_ram_addrb,
    output                                         ib_rreq_c2a_cdc_ram_wea,
    output                                         ib_rreq_c2a_cdc_ram_enb,
    output [CC_IB_RD_REQ_CDC_RAM_DATA_WD-1:0]      ib_rreq_c2a_cdc_ram_dina,
    input [CC_IB_RD_REQ_CDC_RAM_DATA_WD-1:0]       ib_rreq_c2a_cdc_ram_doutb,
    output [CC_IB_WR_REQ_CDC_RAM_ADDR_WD-1:0]      ib_wreq_c2a_cdc_ram_addra,
    output [CC_IB_WR_REQ_CDC_RAM_ADDR_WD-1:0]      ib_wreq_c2a_cdc_ram_addrb,
    output                                         ib_wreq_c2a_cdc_ram_wea,
    output                                         ib_wreq_c2a_cdc_ram_enb,
    output [CC_IB_WR_REQ_CDC_RAM_DATA_WD-1:0]      ib_wreq_c2a_cdc_ram_dina,
    input [CC_IB_WR_REQ_CDC_RAM_DATA_WD-1:0]       ib_wreq_c2a_cdc_ram_doutb,
    output [CC_MSTR_CPL_SEG_N_SLICES*CC_IB_MCPL_SEG_BUF_RAM_ADDR_WD-1:0]   ib_mcpl_sb_ram_addra,
    output [CC_MSTR_CPL_SEG_N_SLICES*CC_IB_MCPL_SEG_BUF_RAM_ADDR_WD-1:0]   ib_mcpl_sb_ram_addrb,
    output [CC_MSTR_CPL_SEG_N_SLICES*CC_MSTR_CPL_SEG_BUF_SLICE_WD-1:0]   ib_mcpl_sb_ram_dina,
    input [CC_MSTR_CPL_SEG_N_SLICES*CC_MSTR_CPL_SEG_BUF_SLICE_WD-1:0]   ib_mcpl_sb_ram_doutb,
    output [CC_MSTR_CPL_SEG_N_SLICES-1:0]                                        ib_mcpl_sb_ram_enb,
    output [CC_MSTR_CPL_SEG_N_SLICES-1:0]                                        ib_mcpl_sb_ram_wea,
    output [CC_IB_MCPL_CDC_RAM_ADDR_WD-1:0]     ib_mcpl_a2c_cdc_ram_addra,
    output [CC_IB_MCPL_CDC_RAM_ADDR_WD-1:0]     ib_mcpl_a2c_cdc_ram_addrb,
    output                                      ib_mcpl_a2c_cdc_ram_wea,
    output                                      ib_mcpl_a2c_cdc_ram_enb,
    input  [CC_IB_MCPL_CDC_RAM_DATA_WD-1:0]     ib_mcpl_a2c_cdc_ram_doutb,
    output [CC_IB_MCPL_CDC_RAM_DATA_WD-1:0]     ib_mcpl_a2c_cdc_ram_dina,
    output [SLV_NPW_SAB_RAM_ADDR_WD-1:0]      slv_npw_sab_ram_addra,
    output                                    slv_npw_sab_ram_wea,
    output [SLV_NPW_SAB_RAM_DATA_WD-1:0]      slv_npw_sab_ram_dina,
    output [SLV_NPW_SAB_RAM_ADDR_WD-1:0]      slv_npw_sab_ram_addrb,
    output                                    slv_npw_sab_ram_enb,
    input  [SLV_NPW_SAB_RAM_DATA_WD-1:0]      slv_npw_sab_ram_doutb,
    output [OB_NPDCMP_RAM_ADDR_WD-1:0]        ob_npdcmp_ram_addra,
    output                                    ob_npdcmp_ram_wea,
    output [OB_NPDCMP_RAM_DATA_WD-1:0]        ob_npdcmp_ram_dina,
    output [OB_NPDCMP_RAM_ADDR_WD-1:0]        ob_npdcmp_ram_addrb,
    output                                    ob_npdcmp_ram_enb,
    input  [OB_NPDCMP_RAM_DATA_WD-1:0]        ob_npdcmp_ram_doutb,
    output [OB_PDCMP_HDR_RAM_ADDR_WD-1:0]     ob_pdcmp_hdr_ram_addra,
    output                                    ob_pdcmp_hdr_ram_wea,
    output [OB_PDCMP_HDR_RAM_DATA_WD-1:0]     ob_pdcmp_hdr_ram_dina,
    output [OB_PDCMP_HDR_RAM_ADDR_WD-1:0]     ob_pdcmp_hdr_ram_addrb,
    output                                    ob_pdcmp_hdr_ram_enb,
    input  [OB_PDCMP_HDR_RAM_DATA_WD-1:0]     ob_pdcmp_hdr_ram_doutb,
    output [OB_PDCMP_DATA_RAM_ADDR_WD-1:0]    ob_pdcmp_data_ram_addra,
    output                                    ob_pdcmp_data_ram_wea,
    output [OB_PDCMP_DATA_RAM_DATA_WD-1:0]    ob_pdcmp_data_ram_dina,
    output [OB_PDCMP_DATA_RAM_ADDR_WD-1:0]    ob_pdcmp_data_ram_addrb,
    output                                    ob_pdcmp_data_ram_enb,
    input  [OB_PDCMP_DATA_RAM_DATA_WD-1:0]    ob_pdcmp_data_ram_doutb,
    output [CC_OB_CCMP_NSLICES*OB_CCMP_DATA_RAM_ADDR_WD-1:0]  ob_ccmp_data_ram_addra,
    output [CC_OB_CCMP_NSLICES-1:0]                           ob_ccmp_data_ram_wea,
    output [CC_OB_CCMP_NSLICES*CC_OB_CCMP_SLICE_WD-1:0]       ob_ccmp_data_ram_dina,
    output [CC_OB_CCMP_NSLICES*OB_CCMP_DATA_RAM_ADDR_WD-1:0]  ob_ccmp_data_ram_addrb,
    output [CC_OB_CCMP_NSLICES-1:0]                           ob_ccmp_data_ram_enb,
    input  [CC_OB_CCMP_NSLICES*CC_OB_CCMP_SLICE_WD-1:0]       ob_ccmp_data_ram_doutb,


    input [NF-1:0]               exp_rom_validation_status_strobe,
    input [NF*3-1:0]               exp_rom_validation_status,
    input [NF-1:0]               exp_rom_validation_details_strobe,
    input [NF*4-1:0]               exp_rom_validation_details,
    output  [63:0]                      cxpl_debug_info,
    output  [`x4_CX_INFO_EI_WD-1:0]        cxpl_debug_info_ei
    ,input          [NL*TX_FS_WD-1:0]        phy_mac_localfs,
    input          [NL*TX_FS_WD-1:0]        phy_mac_locallf
    ,output         [NL*RX_PSET_WD-1:0]      mac_phy_rxpresethint
    ,output         [NL*TX_FS_WD-1:0]        mac_phy_fs,
    output         [NL*TX_FS_WD-1:0]        mac_phy_lf,
    input          [NL*DIRFEEDBACK_WD-1:0]  phy_mac_dirfeedback,
    input          [NL*FOMFEEDBACK_WD-1:0]  phy_mac_fomfeedback,
    input          [NL*TX_COEF_WD-1:0]      phy_mac_local_tx_pset_coef,
    input          [NL-1:0]                 phy_mac_local_tx_coef_valid,
    output         [NL*PSET_ID_WD-1:0]      mac_phy_local_pset_index,
    output         [NL-1:0]                 mac_phy_getlocal_pset_coef,
    output         [NL-1:0]                 mac_phy_rxeqinprogress,
    output         [NL-1:0]                 mac_phy_invalid_req,
    output         [NL-1:0]                 mac_phy_rxeqeval
    ,output         [NL-1:0]                 mac_phy_dirchange
    ,output [(`x4_CC_NUM_DMA_RD_CHAN+`x4_CC_NUM_DMA_WR_CHAN-1):0] edma_int
    ,
    output                              assert_inta_grt,
    output                              assert_intb_grt,
    output                              assert_intc_grt,
    output                              assert_intd_grt,
    output                              deassert_inta_grt,
    output                              deassert_intb_grt,
    output                              deassert_intc_grt,
    output                              deassert_intd_grt,
    output  [(8*NF)-1:0]                cfg_int_pin
   ,
    output  [(8*NF)-1:0]                cfg_2ndbus_num,
    output  [(8*NF)-1:0]                cfg_subbus_num,
    output                              cfg_2nd_reset
    ,
    input                   clkreq_in_n,
    output                  pm_linkst_in_l1sub,
    output                  cfg_l1sub_en,
    output                  mac_phy_rxelecidle_disable,
    output                  mac_phy_txcommonmode_disable
    ,
    input                   app_clk_pm_en
    ,
    output [NF-1:0]         dpa_substate_update
    ,input                   aux_clk_active


    ,output  [NF-1:0]                    cfg_send_cor_err
    ,output  [NF-1:0]                    cfg_send_nf_err
    ,output  [NF-1:0]                    cfg_send_f_err


    ,output  [NF-1:0]                    cfg_int_disable
    ,output  [NF-1:0]        cfg_no_snoop_en
    ,output  [NF-1:0]        cfg_relax_order_en









    ,output   [NF-1:0]                cfg_br_ctrl_serren

,output [NF-1:0] cfg_hp_slot_ctrl_access
,output [NF-1:0] cfg_dll_state_chged_en
,output [NF-1:0] cfg_cmd_cpled_int_en
,output [NF-1:0] cfg_hp_int_en
,output [NF-1:0] cfg_pre_det_chged_en
,output [NF-1:0] cfg_mrl_sensor_chged_en
,output [NF-1:0] cfg_pwr_fault_det_en
,output [NF-1:0] cfg_atten_button_pressed_en




    ,input                                  app_hold_phy_rst
    ,input                                  app_l1sub_disable
    ,output                     pm_l1_entry_started
    ,

    input      [4:0]                 app_dev_num,

    input      [7:0]                 app_bus_num
    ,

    output                           cfg_uncor_internal_err_sts,
    output                           cfg_rcvr_overflow_err_sts,
    output                           cfg_fc_protocol_err_sts,
    output                           cfg_mlf_tlp_err_sts,
    output                           cfg_surprise_down_er_sts,
    output                           cfg_dl_protocol_err_sts,
    output                           cfg_ecrc_err_sts,
    output                           cfg_corrected_internal_err_sts,
    output                           cfg_replay_number_rollover_err_sts,
    output                           cfg_replay_timer_timeout_err_sts,
    output                           cfg_bad_dllp_err_sts,
    output                           cfg_bad_tlp_err_sts,
    output                           cfg_rcvr_err_sts,
    output [NF-1:0]                              cfg_advisory_nf_sts,
    output [NF-1:0]                              cfg_hdr_log_overflow_sts
    ,output   [ATU_IN_MIN1-1:0]          radm_trgt1_atu_sloc_match
    ,output    [ATU_IN_MIN1-1:0]         radm_trgt1_atu_cbuf_err




    , output [5:0]                      cfg_neg_link_width


);
// ------------------------------------------------------------------------------------------
// macros
// ------------------------------------------------------------------------------------------

`define x4_AMBA_TOP x4_DWC_pcie_edma_amba_bridge
          `define x4_AMBA_INST u_DWC_pcie_edma_axi_bridge
          `define x4_AMBA_TOP_AMBADMA_WRAPPER


localparam L2NL    = NL==1 ? 1 : `x4_CX_LOGBASE2(NL);  // log2 number of NL
localparam TX_DATAK_WD = NL * PHY_NB;
localparam TX_NDLLP    =  1;
localparam ATU_OUT_MIN1 = x4_DWC_pcie_ctl_pkg::ATU_OUT_NREGIONS_MIN1;
localparam L1SUB_CONTROL_WD = `x4_CX_L1SUB_CONTROL_WD;
localparam PL_L1SUB_CONTROL_WD = `x4_CX_PL_L1SUB_CONTROL_WD;
localparam PM_CPL_TIMER_WD = `x4_CX_PM_CPL_TIMER_WD;
localparam PL_AUX_CLK_FREQ_WD = `x4_CX_PL_AUX_CLK_FREQ_WD;

// ------------------------------------------------------------------------------------------
// genvar declarations
// ------------------------------------------------------------------------------------------
genvar lane;  // used to instantiate per-lane logic
genvar func;  // used to instantiate per-function logic
genvar rx_tlp; // used to instantiate per-TLP logic

// ------------------------------------------------------------------------------------------
// Interface Signal Descriptions
// ------------------------------------------------------------------------------------------
dllp_struct   pm_xdlh_dllp_req;
dllp_struct   xplh_pm_dllp_ack;


wire [8:0]                         ltssm_cxl_enable; // {CXL_68B_Enh_flit, cxl.multi-logical_device, cxl2p0_enabled, cxl.r2.0syncheader_bypass, cxl.cache, cxl.mem, cxl.io}





wire                               pm_pclkack_timeout;

wire int_radm_trgt1_hv;
wire int_radm_trgt1_dv;
wire int_radm_trgt1_eot;



wire                             radm_trgt1_dv;
wire                             radm_trgt1_hv;
wire                             radm_trgt1_eot;
wire                             radm_trgt1_tlp_abort;
wire                             radm_trgt1_dllp_abort;
wire                             radm_trgt1_ecrc_err;
wire [TRGT_DATA_WD-1:0]          radm_trgt1_data;
wire [NW -1:0]                   radm_trgt1_dwen;
wire [1:0]                       radm_trgt1_fmt;
wire [4:0]                       radm_trgt1_type;
wire [2:0]                       radm_trgt1_tc;
wire [ATTR_WD-1:0]               radm_trgt1_attr;
wire [15:0]                      radm_trgt1_reqid;
wire [TAG_SIZE-1:0]              radm_trgt1_tag;
wire [PF_WD-1:0]                 radm_trgt1_func_num;
wire                             radm_trgt1_td;
wire                             radm_trgt1_poisoned;
wire [9:0]                       radm_trgt1_dw_len;
wire [3:0]                       radm_trgt1_first_be;
wire [3:0]                       radm_trgt1_last_be;
wire [ADDR_WIDTH -1:0]           radm_trgt1_addr;
wire [ADDR_WIDTH -1:0]           radm_trgt1_hdr_uppr_bytes;
wire                             radm_trgt1_rom_in_range;
wire [2:0]                       radm_trgt1_in_membar_range;
wire                             radm_trgt1_io_req_in_range;
wire [2:0]                       radm_trgt1_cpl_status;
wire [(NVC*3)-1:0]               bridge_trgt1_radm_pkt_halt;

wire                             radm_trgt1_bcm;
wire                             radm_trgt1_cpl_last;
wire [11:0]                      radm_trgt1_byte_cnt;
wire [15:0]                      radm_trgt1_cmpltr_id;


wire    [31:0]                      slv_dbi_addr;                   // address in DBI interface
wire    [31:0]                      slv_dbi_din;                    // wire  data in DBI interface
wire                                slv_dbi_cs;                     // Chip select to program configuration space registers
wire                                slv_dbi_cs2;                    // Chip select2 wire  for DBI bus. Used for changing
wire    [3:0]                       slv_dbi_wr;                     // Byte write enable
wire    [PF_WD-1:0]           slv_dbi_func_num;               // Function number of the DBI access
wire    [2:0]                       slv_dbi_bar_num;                // BAR number of the DBI access
wire                                slv_dbi_rom_access;             // ROM BAR of the DBI access
wire                                slv_dbi_io_access;              // IO BAR of the DBI access
wire                                slv_lbc_dbi_ack;                // When asserted, indicates that the read/write operation
                                                                    // is completed.
wire    [31:0]                      slv_lbc_dbi_dout;               // Register read back data bus

wire [(NVC*3)-1:0]                  trgt1_radm_pkt_halt;
assign trgt1_radm_pkt_halt = {(NVC*3){1'b0}}; // if AMBA_POPULATED && RADM_SEG_BUF && TRGT1_POPULATE there is NO trgt1_radm_pkt_halt input



wire                                radm_trgt1_hdr_uppr_bytes_valid_i;



//Wire declaration for when RAS D.E.S. debug signals are not included in the top level port.



wire                                pm_aux_clk;
wire [NVC_XALI_EXP-1:0]             pm_xadm_client0_tlp_hv;
wire [NVC_XALI_EXP-1:0]             pm_xadm_client1_tlp_hv;
wire [NVC_XALI_EXP-1:0]             pm_xadm_client2_tlp_hv;

wire                                pm_aux_clk_active;


wire [NVC_XALI_EXP-1:0]          client0_addr_align_en;
wire [(NVC_XALI_EXP*8)-1:0]      client0_tlp_byte_en;
wire [(NVC_XALI_EXP*16)-1:0]     client0_remote_req_id;
wire [(NVC_XALI_EXP*12)-1:0]     client0_cpl_byte_cnt;
wire [(NVC_XALI_EXP*3)-1:0]      client0_tlp_tc;
wire [(NVC_XALI_EXP*ATTR_WD)-1:0]client0_tlp_attr;
wire [(NVC_XALI_EXP*3)-1:0]      client0_cpl_status;
wire [NVC_XALI_EXP-1:0]          client0_cpl_bcm;
wire [NVC_XALI_EXP-1:0]          client0_tlp_dv;
wire [NVC_XALI_EXP-1:0]          client0_tlp_eot;
wire [NVC_XALI_EXP-1:0]          client0_tlp_bad_eot;
wire [NVC_XALI_EXP-1:0]          client0_tlp_hv;
wire [(NVC_XALI_EXP*2)-1:0]      client0_tlp_fmt;
wire [(NVC_XALI_EXP*5)-1:0]      client0_tlp_type;
wire [NVC_XALI_EXP-1:0]          client0_tlp_td;
wire [NVC_XALI_EXP-1:0]          client0_tlp_ep;
wire [(NVC_XALI_EXP*13)-1:0]     client0_tlp_byte_len;
// LMD: Undriven net Range
// LJ: The function swap_addr_par is assigned to a signal client0_tlp_addr where the result come through two "for" statement intercalated
// leda NTL_CON12 off
wire [(NVC_XALI_EXP*64)-1:0]    client0_tlp_addr;
// leda NTL_CON12 on
wire [(NVC_XALI_EXP*TAG_SIZE)-1:0]client0_tlp_tid;
// LMD: Undriven net Range
// LJ: The function swap_data_par is assigned to a signal client0_tlp_data where the result come through two "for" statement intercalated
// leda NTL_CON12 off
wire [(NVC_XALI_EXP*DW_W_PAR)-1:0]client0_tlp_data;
// leda NTL_CON12 on
wire [(NVC_XALI_EXP*PF_WD)-1:0] client0_tlp_func_num;
  // Client0 DMA Wr Eng only
wire  [(NVC_XALI_EXP*`x4_DC_DMA_TYPE_WIDTH)-1:0]         client0_tlp_dma;
wire  [(NVC_XALI_EXP*`x4_CC_NUM_DMA_MAX_CHAN_WIDTH)-1:0] client0_tlp_dma_channel;
wire [(NVC_XALI_EXP*LOOKUPID_WD)-1:0]client0_cpl_lookup_id;
wire [NVC_XALI_EXP-1:0]          xadm_client0_halt;

// XALI1 interface
wire [NVC_XALI_EXP-1:0]                           client1_addr_align_en;
wire [(NVC_XALI_EXP*8)-1:0]                       client1_tlp_byte_en;
wire [(NVC_XALI_EXP*16)-1:0]                      client1_remote_req_id;
wire [(NVC_XALI_EXP*3)-1:0]                       client1_cpl_status;
wire [NVC_XALI_EXP-1:0]                           client1_cpl_bcm;
wire [(NVC_XALI_EXP*12)-1:0]                      client1_cpl_byte_cnt;
wire [NVC_XALI_EXP-1:0]                           client1_tlp_dv;
wire [NVC_XALI_EXP-1:0]                           client1_tlp_eot;
wire [NVC_XALI_EXP-1:0]                           client1_tlp_bad_eot;
wire [NVC_XALI_EXP-1:0]                           client1_tlp_hv;
wire [(NVC_XALI_EXP*2)-1:0]                       client1_tlp_fmt;
wire [(NVC_XALI_EXP*5)-1:0]                       client1_tlp_type;
wire [(NVC_XALI_EXP*3)-1:0]                       client1_tlp_tc;
wire [NVC_XALI_EXP-1:0]                           client1_tlp_td;
wire [NVC_XALI_EXP-1:0]                           client1_tlp_ep;
wire [(NVC_XALI_EXP*ATTR_WD)-1:0]                 client1_tlp_attr;

wire [(NVC_XALI_EXP*13)-1:0]                      client1_tlp_byte_len;
wire [(NVC_XALI_EXP*TAG_SIZE)-1:0]                client1_tlp_tid;
// LMD: Undriven net Range
// LJ: The function swap_addr_par is assigned to a signal client1_tlp_addr where the result come through two "for" statement intercalated
// leda NTL_CON12 off
wire [(NVC_XALI_EXP*64)-1:0]                      client1_tlp_addr;
// leda NTL_CON12 on
// LMD: Undriven net Range
// LJ: The function swap_data_par is assigned to a signal client1_tlp_data where the result come through two "for" statement intercalated
// leda NTL_CON12 off
wire [(NVC_XALI_EXP*DW_W_PAR)-1:0]                client1_tlp_data;
// leda NTL_CON12 on
wire [(NVC_XALI_EXP*PF_WD)-1:0]                   client1_tlp_func_num;
   // Client 1 DMA Rd Eng only with HDMA, DMA Rd Eng req and Both Eng MSI with eDMA
wire  [(NVC_XALI_EXP*`x4_DC_DMA_TYPE_WIDTH)-1:0]         client1_tlp_dma;
wire  [(NVC_XALI_EXP*`x4_CC_NUM_DMA_MAX_CHAN_WIDTH)-1:0] client1_tlp_dma_channel;
wire [(NVC_XALI_EXP*LOOKUPID_WD)-1:0]             client1_cpl_lookup_id;
wire [NVC_XALI_EXP-1:0]                           xadm_client1_halt;
// XALI2 interface
wire [(NVC_XALI_EXP*LOOKUPID_WD)-1:0]             client2_cpl_lookup_id;
  // Client 2 not used by DMA, only here for interface completeness
wire  [(NVC_XALI_EXP*`x4_DC_DMA_TYPE_WIDTH)-1:0]         client2_tlp_dma;
wire  [(NVC_XALI_EXP*`x4_CC_NUM_DMA_MAX_CHAN_WIDTH)-1:0] client2_tlp_dma_channel;
wire [NVC_XALI_EXP-1:0]                           client2_addr_align_en;
wire [(NVC_XALI_EXP*8)-1:0]                       client2_tlp_byte_en;
wire [(NVC_XALI_EXP*16)-1:0]                      client2_remote_req_id;
wire [(NVC_XALI_EXP*3)-1:0]                       client2_cpl_status;
wire [NVC_XALI_EXP-1:0]                           client2_cpl_bcm;
wire [(NVC_XALI_EXP*12)-1:0]                      client2_cpl_byte_cnt;
wire [NVC_XALI_EXP-1:0]                           client2_tlp_dv;
wire [NVC_XALI_EXP-1:0]                           client2_tlp_eot;
wire [NVC_XALI_EXP-1:0]                           client2_tlp_bad_eot;
wire [NVC_XALI_EXP-1:0]                           client2_tlp_hv;
wire [(NVC_XALI_EXP*2)-1:0]                       client2_tlp_fmt;
wire [(NVC_XALI_EXP*5)-1:0]                       client2_tlp_type;
wire [(NVC_XALI_EXP*3)-1:0]                       client2_tlp_tc;
wire [NVC_XALI_EXP-1:0]                           client2_tlp_td;
wire [NVC_XALI_EXP-1:0]                           client2_tlp_ep;
wire [(NVC_XALI_EXP*ATTR_WD)-1:0]                 client2_tlp_attr;
wire [(NVC_XALI_EXP*13)-1:0]                      client2_tlp_byte_len;
wire [(NVC_XALI_EXP*TAG_SIZE)-1:0]                client2_tlp_tid;
// LMD: Undriven net Range
// LJ: The function swap_addr_par is assigned to a signal client2_tlp_addr where the result come through two "for" statement intercalated
// leda NTL_CON12 off
wire [(NVC_XALI_EXP*64)-1:0]                      client2_tlp_addr;
// leda NTL_CON12 on
// LMD: Undriven net Range
// LJ: The function swap_data_par is assigned to a signal client2_tlp_data where the result come through two "for" statement intercalated
// leda NTL_CON12 off
wire [(NVC_XALI_EXP*DW_W_PAR)-1:0]                client2_tlp_data;
// leda NTL_CON12 on
wire [(NVC_XALI_EXP*PF_WD)-1:0]                   client2_tlp_func_num;
wire   [NVC_XALI_EXP-1:0]                         client2_tlp_atu_bypass;
wire   [NVC_XALI_EXP-1:0]                         xadm_client2_halt;
wire [DW_W_PAR-1:0]              radm_bypass_data;

wire [NW-1:0]                    radm_bypass_dwen;
wire [NHQ-1:0]                   radm_bypass_dv;
wire [NHQ-1:0]                   radm_bypass_hv;
wire [NHQ-1:0]                   radm_bypass_eot;
wire [NHQ-1:0]                   radm_bypass_dllp_abort;
wire [NHQ-1:0]                   radm_bypass_tlp_abort;
wire [NHQ-1:0]                   radm_bypass_ecrc_err;
wire [NHQ*2-1:0]                 radm_bypass_fmt;
wire [NHQ*5-1:0]                 radm_bypass_type;
wire [NHQ*3-1:0]                 radm_bypass_tc;
wire [NHQ*ATTR_WD-1:0]           radm_bypass_attr;
wire [NHQ*16-1:0]                radm_bypass_reqid;
wire [NHQ*TAG_SIZE-1:0]          radm_bypass_tag;
wire [NHQ*PF_WD-1:0]             radm_bypass_func_num;
wire [NHQ-1:0]                   radm_bypass_td;
wire [NHQ-1:0]                   radm_bypass_poisoned;
wire [NHQ*10-1:0]                radm_bypass_dw_len;
wire [NHQ*4-1:0]                 radm_bypass_first_be;
wire [NHQ*4-1:0]                 radm_bypass_last_be;
wire [NHQ*`x4_FLT_Q_ADDR_WIDTH -1:0]radm_bypass_addr;
wire [NHQ-1:0]                   radm_bypass_rom_in_range;
wire [NHQ-1:0]                   radm_bypass_io_req_in_range;
wire [NHQ*3-1:0]                 radm_bypass_in_membar_range;
wire [NHQ-1:0]                   radm_bypass_bcm;
wire [NHQ-1:0]                   radm_bypass_cpl_last;
wire [NHQ*3-1:0]                 radm_bypass_cpl_status;
wire [NHQ*12-1:0]                radm_bypass_byte_cnt;
wire [NHQ*16-1:0]                radm_bypass_cmpltr_id;
wire [(NVC*3)-1:0]               radm_grant_tlp_type;

// ------------------------------------------------------------------------------------------
// Internal Signal declaration
// ------------------------------------------------------------------------------------------

wire   [DW_W_PAR -1:0]             client0_tlp_data_i                 ;
wire   [PF_WD-1:0]                 client0_tlp_func_num_i             ;
wire                               client0_addr_align_en_i            ;
wire   [7:0]                       client0_tlp_byte_en_i              ;
wire   [2:0]                       client0_cpl_status_i               ;
wire                               client0_cpl_bcm_i                  ;
wire   [15:0]                      client0_remote_req_id_i            ;
wire   [11:0]                      client0_cpl_byte_cnt_i             ;
wire   [2:0]                       client0_tlp_tc_i                   ;
wire   [ATTR_WD-1:0]               client0_tlp_attr_i                 ;
wire                               client0_tlp_dv_i                   ;
wire                               client0_tlp_eot_i                  ;
wire                               client0_tlp_bad_eot_i              ;
wire                               client0_tlp_hv_i                   ;
wire   [1:0]                       client0_tlp_fmt_i                  ;
wire   [4:0]                       client0_tlp_type_i                 ;
wire                               client0_tlp_td_i                   ;
wire                               client0_tlp_ep_i                   ;
wire   [12:0]                      client0_tlp_byte_len_i             ;
wire   [TAG_SIZE-1:0]              client0_tlp_tid_i                  ;
wire   [63:0]                      client0_tlp_addr_i                 ;
wire   [15:0]                      client0_req_id_i                   ;

wire                               client1_addr_align_en_i            ;
wire   [7:0]                       client1_tlp_byte_en_i              ;
wire   [2:0]                       client1_cpl_status_i               ;
wire                               client1_cpl_bcm_i                  ;
wire   [15:0]                      client1_remote_req_id_i            ;
wire   [11:0]                      client1_cpl_byte_cnt_i             ;
wire   [2:0]                       client1_tlp_tc_i                   ;
wire   [ATTR_WD-1:0]               client1_tlp_attr_i                 ;
wire                               client1_tlp_dv_i                   ;
wire                               client1_tlp_eot_i                  ;
wire                               client1_tlp_bad_eot_i              ;
wire                               client1_tlp_hv_i                   ;
wire   [1:0]                       client1_tlp_fmt_i                  ;
wire   [4:0]                       client1_tlp_type_i                 ;
wire                               client1_tlp_td_i                   ;
wire                               client1_tlp_ep_i                   ;
wire   [12:0]                      client1_tlp_byte_len_i             ;
wire   [TAG_SIZE-1:0]              client1_tlp_tid_i                  ;
wire   [63:0]                      client1_tlp_addr_i                 ;
wire   [15:0]                      client1_req_id_i                   ;
wire   [DW_W_PAR -1:0]             client1_tlp_data_i                 ;
wire   [PF_WD-1:0]                 client1_tlp_func_num_i             ;
// Client2 XADM interconnect signals
wire                               client2_addr_align_en_i            ;
wire   [7:0]                       client2_tlp_byte_en_i              ;
wire   [2:0]                       client2_cpl_status_i               ;
wire                               client2_cpl_bcm_i                  ;
wire   [15:0]                      client2_remote_req_id_i            ;
wire   [11:0]                      client2_cpl_byte_cnt_i             ;
wire   [2:0]                       client2_tlp_tc_i                   ;
wire   [ATTR_WD-1:0]               client2_tlp_attr_i                 ;
wire                               client2_tlp_dv_i                   ;
wire                               client2_tlp_eot_i                  ;
wire                               client2_tlp_bad_eot_i              ;
wire                               client2_tlp_hv_i                   ;
wire   [1:0]                       client2_tlp_fmt_i                  ;
wire   [4:0]                       client2_tlp_type_i                 ;
wire                               client2_tlp_td_i                   ;
wire                               client2_tlp_ep_i                   ;
wire   [12:0]                      client2_tlp_byte_len_i             ;
wire   [TAG_SIZE-1:0]              client2_tlp_tid_i                  ;
wire   [63:0]                      client2_tlp_addr_i                 ;
wire   [15:0]                      client2_req_id_i                   ;
wire   [DW_W_PAR -1:0]             client2_tlp_data_i                 ;
wire   [PF_WD-1:0]                 client2_tlp_func_num_i             ;

// START_IO:XALI0 Descriptions

wire                               xadm_client0_halt_i                ;
wire [7:0]                         unconn_client0_non_dma_cpl_rmpd_lkup_id   ;
wire [LOOKUPID_WD-1:0]             client0_cpl_lookup_id_i            ;
wire [LOOKUPID_WD-1:0]             trgt_lookup_id_i                   ;

  // Client0 DMA Wr Eng only
wire  [`x4_DC_DMA_TYPE_WIDTH-1:0]        client0_tlp_dma_i               ;
wire  [`x4_CC_NUM_DMA_MAX_CHAN_WIDTH-1:0] client0_tlp_dma_channel_i      ;
wire  [NVC_XALI_EXP-1:0]           client0_tlp_atu_bypass             ;
wire                               client0_tlp_atu_bypass_i           ;
// END_IO:XALI0 Descriptions

// START_IO:XALI1 Descriptions



wire                               xadm_client1_halt_i                ;
wire [LOOKUPID_WD-1:0]             client1_cpl_lookup_id_i            ;

   // Client 1 DMA Rd Eng only with HDMA, DMA Rd Eng req and Both Eng MSI with eDMA
wire  [`x4_DC_DMA_TYPE_WIDTH-1:0]         client1_tlp_dma_i              ;
wire  [`x4_CC_NUM_DMA_MAX_CHAN_WIDTH-1:0] client1_tlp_dma_channel_i      ;
wire  [NVC_XALI_EXP-1:0]           client1_tlp_atu_bypass             ;
wire                               client1_tlp_atu_bypass_i           ;
// END_IO:XALI1 Descriptions

// Client2 XADM interconnect signals
wire [LOOKUPID_WD-1:0]             client2_cpl_lookup_id_i            ;
wire                               client2_tlp_atu_bypass_i           ;
wire                               xadm_client2_halt_i                ;

//--------------------------------
//     TRGT1 Interface
//--------------------------------
wire [TRGT_HDR_WD-1:0]            radm_trgt1_hdr_i                      ;
wire                              trgt1_radm_halt_i                     ;
wire                              radm_trgt1_hv_i                       ;
wire                              radm_trgt1_dv_i                       ;
wire                              radm_trgt1_eot_i                      ;
wire                              radm_trgt1_tlp_abort_i                ;
wire                              radm_trgt1_dllp_abort_i               ;
wire                              radm_trgt1_ecrc_err_i                 ;
wire  [TRGT_DATA_WD-1:0]          radm_trgt1_data_i                     ;
wire  [NW-1:0]                    radm_trgt1_dwen_i                     ;
wire  [1:0]                       radm_trgt1_fmt_i                      ;
wire  [4:0]                       radm_trgt1_type_i                     ;
wire  [2:0]                       radm_trgt1_tc_i                       ;
wire  [ATTR_WD-1:0]               radm_trgt1_attr_i                     ;
wire  [15:0]                      radm_trgt1_reqid_i                    ;
wire  [TAG_SIZE-1:0]              radm_trgt1_tag_i                      ;
wire  [PF_WD-1:0]                 radm_trgt1_func_num_i                 ;
wire                              radm_trgt1_td_i                       ;
wire                              radm_trgt1_poisoned_i                 ;
wire  [9:0]                       radm_trgt1_dw_len_i                   ;
wire  [3:0]                       radm_trgt1_first_be_i                 ;
wire  [3:0]                       radm_trgt1_last_be_i                  ;
wire  [ADDR_WIDTH -1:0]           radm_trgt1_addr_i                     ;
wire [ADDR_WIDTH -1:0]           radm_trgt1_hdr_uppr_bytes_i;
wire [63:0]                      radm_trgt1_hdr_uppr_bytes_tmp;
wire  [ADDR_WIDTH -1:0]           radm_trgt1_addr_out_i                 ;
wire                              radm_trgt1_io_req_in_range_i          ;
wire                              radm_trgt1_rom_in_range_i             ;
wire  [2:0]                       radm_trgt1_in_membar_range_i          ;
wire  [2:0]                       radm_trgt1_cpl_status_i               ;
wire                              radm_trgt1_bcm_i                      ;
wire                              radm_trgt1_cpl_last_i                 ;
wire [11:0]                       radm_trgt1_byte_cnt_i                 ;
wire [15:0]                       radm_trgt1_cmpltr_id_i                ;
localparam P_XFER_DONE_WD = `x4_CC_P_XFER_DONE_WD;
wire [P_XFER_DONE_WD-1:0]         brdg_trgt1_p_xfer_done                ;


wire                                radm_cpl_timeout_i                  ;
wire                                radm_cpl_timeout_cdm_i              ;
wire    [PF_WD-1:0]                 radm_timeout_func_num_i             ;
wire    [2:0]                       radm_timeout_cpl_tc_i               ;
wire    [1:0]                       radm_timeout_cpl_attr_i             ;
wire    [11:0]                      radm_timeout_cpl_len_i              ;
wire    [TAG_SIZE-1:0]              radm_timeout_cpl_tag_i              ;
//--------------------------------
//     RADM Bypass interface
//--------------------------------
wire    [DW_W_PAR-1:0]              radm_bypass_data_i               ;
wire    [NW-1:0]                    radm_bypass_dwen_i               ;
wire    [NHQ-1:0]                   radm_bypass_dv_i                 ;
wire    [NHQ-1:0]                   radm_bypass_hv_i                 ;
wire    [NHQ-1:0]                   radm_bypass_eot_i                ;
wire    [NHQ-1:0]                   radm_bypass_dllp_abort_i         ;
wire    [NHQ-1:0]                   radm_bypass_tlp_abort_i          ;
wire    [NHQ-1:0]                   radm_bypass_ecrc_err_i           ;
wire    [NHQ-1:0]                   radm_bypass_bcm_i                ;
wire    [NHQ-1:0]                   radm_bypass_cpl_last_i           ;
wire    [NHQ*3-1:0]                 radm_bypass_cpl_status_i         ;

wire    [NHQ*12-1:0]                radm_bypass_byte_cnt_i           ;
wire    [NHQ*16-1:0]                radm_bypass_cmpltr_id_i          ;
wire    [NHQ*2-1:0]                 radm_bypass_fmt_i                ;
wire    [NHQ*5-1:0]                 radm_bypass_type_i               ;
wire    [NHQ*3-1:0]                 radm_bypass_tc_i                 ;
wire    [NHQ*ATTR_WD-1:0]           radm_bypass_attr_i               ;
wire    [NHQ*16-1:0]                radm_bypass_reqid_i              ;
wire    [NHQ*TAG_SIZE-1:0]          radm_bypass_tag_i                ;
wire    [NHQ*PF_WD-1:0]             radm_bypass_func_num_i           ;
wire    [NHQ-1:0]                   radm_bypass_td_i                 ;
wire    [NHQ-1:0]                   radm_bypass_poisoned_i           ;
wire    [NHQ*10-1:0]                radm_bypass_dw_len_i             ;
wire    [NHQ*4-1:0]                 radm_bypass_first_be_i           ;
wire    [NHQ*4-1:0]                 radm_bypass_last_be_i            ;
wire    [NHQ*`x4_FLT_Q_ADDR_WIDTH-1:0] radm_bypass_addr_i               ;
wire    [NHQ-1:0]                   radm_bypass_rom_in_range_i       ;
wire    [NHQ-1:0]                   radm_bypass_io_req_in_range_i    ;
wire    [NHQ*3-1:0]                 radm_bypass_in_membar_range_i    ;
wire    [(NVC*3)-1:0]               radm_grant_tlp_type_i            ;
wire                              brdg_slv_flush_ack                 ;
wire  [NVC_XALI_EXP-1:0]          brdg_client0_tlp_hv;
wire  [NVC_XALI_EXP-1:0]          brdg_client1_tlp_hv;
wire  [NVC_XALI_EXP-1:0]          brdg_client2_tlp_hv;
wire                              rstctl_slv_flush_req               ;
wire                              rstctl_mstr_flush_req              ;
wire                              rstctl_flush_done                  ;

wire [2:0]                        radm_trgt1_vc_num_i                   ;
assign radm_trgt1_vc            = radm_trgt1_vc_num_i                   ;

wire                               edma_client0_tlp_hv_i;
wire                               edma_client1_tlp_hv_i;

wire    [NVC-1:0]                   radm_pend_cpl_so                 ;
wire    [NVC-1:0]                   radm_q_cpl_not_empty             ;

wire    [2:0]                       current_data_rate;          // 0=running at gen1 speeds, 1=running at gen2 speeds

wire    [2:0]                       pm_current_data_rate_others;    // reg pm_current_data_rate using core_clk to resolve massive fan-out issues
wire    [2:0]                       int_pm_current_data_rate;
assign                              pm_current_data_rate = pm_current_data_rate_others;

wire                                pm_block_all_tlp;
wire [5:0]                          cfg_link_capable;
// declaration for multi-func purpose
//  output signals of cdm
wire                                cfg_msi_ctrl_en;
wire    [63:0]                      cfg_msi_ctrl_addr;
wire                                msi_int_rcvd;
wire    [15:0]                      msi_int_data;

wire     [15:0]                     cfg_err_resp;
wire [15:0]                                cfg_order_rule_ctrl;
wire [1:0]                                 cfg_ax_mstr_ordr_p_event_sel;
wire                                       cfg_ax_snp_en;
wire                                       cfg_axi_rchunk_disable;
wire     [3:0]                                  cfg_mstr_arcache_mode;
wire     [3:0]                                  cfg_mstr_awcache_mode;
wire     [3:0]                                  cfg_mstr_arcache_value;
wire     [3:0]                                  cfg_mstr_awcache_value;
wire     [31:0]                                 cfg_aximstr_msg_addr_high;
wire     [31:0]                                 cfg_aximstr_msg_addr_low;
wire                                            cfg_ax_mstr_zeroread_fw;
wire                                            cfg_axi_clk_gating_en;

// ATU outbound Region controls
wire      [5*ATU_OUT_MIN1-1:0]                  atu_reg_out_type;
wire      [PF_WD*ATU_OUT_MIN1-1:0]              atu_reg_out_func_num;
wire      [ATU_OUT_MIN1-1:0]                    atu_reg_out_func_bypass;
wire      [ATU_OUT_MIN1-1:0]                    atu_reg_out_snp;
// Mode Settings
wire      [ATU_OUT_MIN1-1:0]                    atu_reg_out_invert;
// Region Enable
wire      [ATU_OUT_MIN1-1:0]                    atu_reg_out_en;
// Base, Limit and Target Registers
wire      [ATU_REG_WD*ATU_OUT_MIN1-1:0]         atu_reg_out_base;
wire      [ATU_BASE_WD*ATU_OUT_MIN1-1:0]        atu_reg_out_upr_base;
wire      [ATU_REG_WD*ATU_OUT_MIN1-1:0]         atu_reg_out_limit;
wire      [ATU_UPR_LMT_WD*ATU_OUT_MIN1-1:0]     atu_reg_out_uppr_limit;
wire      [ATU_OUT_MIN1-1:0]                    atu_reg_out_incr_rgn_size;    // Maximum region size control bit

wire    [30:0]                      cfg_msix_addr_match_low;
wire    [31:0]                      cfg_msix_addr_match_high;

//eDMA interface wires

//CRGB EDMA interface
wire    [CRGB_ADDR_WIDTH - 1 : 0]       crgb_address;
wire                                    crgb_rden;
wire                                    crgb_source;
wire    [CRGB_DATA_WIDTH - 1 : 0]       crgb_wr_data;
wire                                    crgb_wren;
wire                                    crgb_ack;
wire    [CRGB_DATA_WIDTH - 1:0]         crgb_rd_data;

//CDM-CRGB interface
wire    [CRGB_DATA_WIDTH - 1:0]         crgb_cdm_rdata;
wire                                    crgb_cdm_cs;
wire                                    crgb_cdm_ack;
wire    [CRGB_ADDR_WIDTH - 1:0]         crgb_cdm_addr;
wire    [CRGB_DATA_WIDTH - 1:0]         crgb_cdm_wdata;
wire    [CRGB_BE_WIDTH - 1:0]           crgb_cdm_wr;
wire                                    crgb_cdm_source;
// Indicates to the received ompletion is the last one
wire  [NVC-1:0]                         radm_trgt1_cpl_lookup_id_rlsd;
// Indicates non-posted TLP
wire                                    radm_trgt1_lookup_id_consmd;

wire    [31:0]                      cfg_trgt_cpl_lut_delete_entry;  // trgt_cpl_lut delete one entry


wire int_trgt1_radm_halt;

wire int_radm_trgt1_mem_type;

wire trgt_lut_dma_pkt_halt;
wire radm_trgt1_dma_cpl_rlsd;

wire [AUX_CLK_FREQ_WD-1:0]          cfg_pl_aux_clk_freq;
wire [NL-1:0]   phy_mac_phystatus_int;
wire [NL*3-1:0] phy_mac_rxstatus_int;
wire [NL-1:0]   phy_mac_rxdatavalid_int;
wire [NL-1:0]   phy_mac_rxvalid_int;
wire [NL-1:0]   phy_mac_rxelecidle_int;

assign phy_mac_phystatus_int   = phy_mac_phystatus;
assign phy_mac_rxstatus_int    = phy_mac_rxstatus;
assign phy_mac_rxdatavalid_int = phy_mac_rxdatavalid;
assign phy_mac_rxvalid_int     = phy_mac_rxvalid;
assign phy_mac_rxelecidle_int  = phy_mac_rxelecidle;





    wire                               app_hdr_valid_int;
    wire   [127:0]                     app_hdr_log_int;
    wire   [ERR_BUS_WD-1:0]            app_err_bus_int;
    wire                               app_err_advisory_int;
    wire                               app_poisoned_tlp_type_int;
    wire   [PF_WD-1:0]                 app_err_func_num_int;

    assign                               app_hdr_valid_int         =   app_hdr_valid;
    assign                               app_hdr_log_int           =   app_hdr_log;
    assign                               app_err_bus_int           =   app_err_bus;
    assign                               app_err_advisory_int      =   app_err_advisory;
    assign                               app_poisoned_tlp_type_int =   app_poisoned_tlp_type;
    assign                               app_err_func_num_int      =   app_err_func_num;











wire                                       pm_linkst_in_l0;



// ----------------------------------------------------------------------








  `x4_AMBA_TOP
#(
  .ATU_OUT_REGIONS(ATU_OUT_REGIONS)
  ,.ATU_BASE_WD(ATU_BASE_WD)
  ,.ATU_REG_WD(ATU_REG_WD)
  ,.ATU_UPR_LMT_WD(ATU_UPR_LMT_WD)
 )
 `x4_AMBA_INST (
    .core_clk                       (core_clk),
    .core_rst_n                     (core_rst_n),
    .aux_clk_g                      (aux_clk_g),
    .aux_clk                        (pm_aux_clk),
    .cfg_axi_clk_gating_en          (cfg_axi_clk_gating_en),
    .mstr_aclk                      (mstr_aclk),
    .mstr_aresetn                   (mstr_aresetn),
    .mstr_aclk_ug                   (mstr_aclk_ug),
    .mstr_aclk_active               (mstr_aclk_active),
    .mstr_awid                      (mstr_awid),
    .mstr_awvalid                   (mstr_awvalid),
    .mstr_awaddr                    (mstr_awaddr),
    .mstr_awlen                     (mstr_awlen),
    .mstr_awsize                    (mstr_awsize),
    .mstr_awburst                   (mstr_awburst),
    .mstr_awlock                    (mstr_awlock),
    .mstr_awcache                   (mstr_awcache),
    .mstr_awprot                    (mstr_awprot),
    .mstr_awready                   (mstr_awready),
    .mstr_awmisc_info               (mstr_awmisc_info),
    .mstr_awmisc_info_last_dcmp_tlp (mstr_awmisc_info_last_dcmp_tlp),
    .mstr_awmisc_info_hdr_34dw      (mstr_awmisc_info_hdr_34dw),
     .mstr_awmisc_info_dma          (mstr_awmisc_info_dma),
    .mstr_awmisc_info_ep            (mstr_awmisc_info_ep),
    .mstr_awqos                     (mstr_awqos),
    .mstr_wready                    (mstr_wready),
    .mstr_wdata                     (mstr_wdata),
    .mstr_wstrb                     (mstr_wstrb),
    .mstr_wlast                     (mstr_wlast),
    .mstr_wvalid                    (mstr_wvalid),

    .mstr_bready                    (mstr_bready),
    .mstr_bid                       (mstr_bid),
    .mstr_bvalid                    (mstr_bvalid),
    .mstr_bresp                     (mstr_bresp),
    .mstr_bmisc_info_cpl_stat       (mstr_bmisc_info_cpl_stat),
    .mstr_arid                      (mstr_arid),
    .mstr_arvalid                   (mstr_arvalid),
    .mstr_araddr                    (mstr_araddr),
    .mstr_arlen                     (mstr_arlen),
    .mstr_arsize                    (mstr_arsize),
    .mstr_arburst                   (mstr_arburst),
    .mstr_arlock                    (mstr_arlock),
    .mstr_arcache                   (mstr_arcache),
    .mstr_arprot                    (mstr_arprot),
    .mstr_armisc_info               (mstr_armisc_info),
    .mstr_armisc_info_last_dcmp_tlp (mstr_armisc_info_last_dcmp_tlp),
    .mstr_armisc_info_zeroread      (mstr_armisc_info_zeroread),
    .mstr_armisc_info_dma           (mstr_armisc_info_dma),
    .mstr_arready                   (mstr_arready),
    .mstr_arqos                     (mstr_arqos),

    .mstr_rready                    (mstr_rready),
    .mstr_rid                       (mstr_rid),
    .mstr_rvalid                    (mstr_rvalid),
    .mstr_rlast                     (mstr_rlast),
    .mstr_rdata                     (mstr_rdata),
    .mstr_rresp                     (mstr_rresp),
    .mstr_rmisc_info                (mstr_rmisc_info),
    .mstr_rmisc_info_cpl_stat       (mstr_rmisc_info_cpl_stat),
    .mstr_csysack                   (mstr_csysack),
    .mstr_cactive                   (mstr_cactive),
    .mstr_csysreq                   (mstr_csysreq),
    // Slave interfaces of AXI
    .slv_aclk                       (slv_aclk),
    .slv_aresetn                    (slv_aresetn),
    .slv_aclk_ug                    (slv_aclk_ug),
    .slv_aclk_active                (slv_aclk_active),
    .slv_awid                       (slv_awid),
    .slv_awaddr                     (slv_awaddr),
    .slv_awlen                      (slv_awlen[SLV_INT_BURST_LEN_PW-1:0]),
    .slv_awsize                     (slv_awsize),
    .slv_awburst                    (slv_awburst),
    .slv_awlock                     (slv_awlock),
    .slv_awcache                    (slv_awcache),
    .slv_awprot                     (slv_awprot),
    .slv_awvalid                    (slv_awvalid),
    .slv_awready                    (slv_awready),
    .slv_awqos                      (slv_awqos),
    .slv_awmisc_info                (slv_awmisc_info),
    .slv_awmisc_info_hdr_34dw       (slv_awmisc_info_hdr_34dw),
    .slv_awmisc_info_p_tag          (slv_awmisc_info_p_tag),
    .slv_awmisc_info_atu_bypass     (slv_awmisc_info_atu_bypass),

    .slv_wdata                      (slv_wdata),
    .slv_wstrb                      (slv_wstrb),
    .slv_wlast                      (slv_wlast),
    .slv_wvalid                     (slv_wvalid),
    .slv_wready                     (slv_wready),
    .slv_wmisc_info_ep              (slv_wmisc_info_ep),
    .slv_wmisc_info_silentDrop      (slv_wmisc_info_silentDrop),

    .slv_bid                        (slv_bid),
    .slv_bresp                      (slv_bresp),
    .slv_bvalid                     (slv_bvalid),
    .slv_bready                     (slv_bready),
    .slv_bmisc_info                 (slv_bmisc_info),
    .slv_arid                       (slv_arid),
    .slv_araddr                     (slv_araddr),
    .slv_arlen                      (slv_arlen[SLV_INT_BURST_LEN_PW-1:0]),
    .slv_arsize                     (slv_arsize),
    .slv_arburst                    (slv_arburst),
    .slv_arlock                     (slv_arlock),
    .slv_arcache                    (slv_arcache),
    .slv_arprot                     (slv_arprot),
    .slv_armisc_info                (slv_armisc_info),
    .slv_armisc_info_atu_bypass     (slv_armisc_info_atu_bypass),
    .slv_arvalid                    (slv_arvalid),
    .slv_arready                    (slv_arready),
    .slv_arqos                      (slv_arqos),

    .slv_rid                        (slv_rid),
    .slv_rdata                      (slv_rdata),
    .slv_rresp                      (slv_rresp),
    .slv_rlast                      (slv_rlast),
    .slv_rvalid                     (slv_rvalid),
    .slv_rmisc_info                 (slv_rmisc_info),
    .slv_rready                     (slv_rready),

    .slv_csysreq                    (slv_csysreq),
    .slv_csysack                    (slv_csysack),
    .slv_cactive                    (slv_cactive),
    .cfg_pbus_dev_num               (cfg_pbus_dev_num[4:0]),
    .cfg_pbus_num                   (cfg_pbus_num[7:0]),
    .cfg_subbus_num                 (cfg_subbus_num[7:0]),
    .cfg_2ndbus_num                 (cfg_2ndbus_num[7:0]),
    // DBI Slave interfaces of AXI
    .dbi_clk                        (dbi_aclk),
    .dbi_rst_n                      (dbi_aresetn),
    .dbi_clk_ug                     (dbi_aclk_ug),
    .dbi_clk_active                 (dbi_aclk_active),
    .dbi_awid                       (dbi_awid),
    .dbi_awaddr                     (dbi_awaddr),
    .dbi_awlen                      (dbi_awlen[DBISLV_INT_BURST_LEN_PW-1:0]),
    .dbi_awsize                     (dbi_awsize),
    .dbi_awburst                    (dbi_awburst),
    .dbi_awlock                     (dbi_awlock),
    .dbi_awcache                    (dbi_awcache),
    .dbi_awprot                     (dbi_awprot),
    .dbi_awvalid                    (dbi_awvalid),
    .dbi_awready                    (dbi_awready),
    .dbi_awqos                      (dbi_awqos),
    .dbi_wdata                      (dbi_wdata),
    .dbi_wstrb                      (dbi_wstrb),
    .dbi_wlast                      (dbi_wlast),
    .dbi_wvalid                     (dbi_wvalid),
    .dbi_wready                     (dbi_wready),
    .dbi_bid                        (dbi_bid),
    .dbi_bresp                      (dbi_bresp),
    .dbi_bvalid                     (dbi_bvalid),
    .dbi_bready                     (dbi_bready),

    .dbi_arid                       (dbi_arid),
    .dbi_araddr                     (dbi_araddr),
    .dbi_arlen                      (dbi_arlen[DBISLV_INT_BURST_LEN_PW-1:0]),
    .dbi_arsize                     (dbi_arsize),
    .dbi_arburst                    (dbi_arburst),
    .dbi_arlock                     (dbi_arlock),
    .dbi_arcache                    (dbi_arcache),
    .dbi_arprot                     (dbi_arprot),
    .dbi_arvalid                    (dbi_arvalid),
    .dbi_arready                    (dbi_arready),
    .dbi_arqos                      (dbi_arqos),

    .dbi_rid                        (dbi_rid),
    .dbi_rdata                      (dbi_rdata),
    .dbi_rresp                      (dbi_rresp),
    .dbi_rlast                      (dbi_rlast),
    .dbi_rvalid                     (dbi_rvalid),
    .dbi_rready                     (dbi_rready),

    .dbi_csysreq                    (dbi_csysreq),
    .dbi_csysack                    (dbi_csysack),
    .dbi_cactive                    (dbi_cactive),
    .rstctl_mstr_flush_req          (rstctl_mstr_flush_req),
    .rstctl_slv_flush_req           (rstctl_slv_flush_req),
    .brdg_slv_flush_ack             (brdg_slv_flush_ack),
    .brdg_slv_xfer_pending          (brdg_slv_xfer_pending),
    .app_xfer_pending               (app_xfer_pending),
    .radm_xfer_pending              (radm_xfer_pending),
    .brdg_dbi_xfer_pending          (brdg_dbi_xfer_pending),
    .cfg_msi_ctrl_en                (cfg_msi_ctrl_en),
    .cfg_msi_ctrl_addr              (cfg_msi_ctrl_addr),
    .msi_int_rcvd                   (msi_int_rcvd),
    .msi_int_data                   (msi_int_data),
    .radm_bypass_tlp_abort          (radm_bypass_tlp_abort[0]),
    .radm_bypass_dllp_abort         (radm_bypass_dllp_abort[0]),
    .radm_bypass_data               (radm_bypass_data_i),
    .radm_bypass_dv                 (radm_bypass_dv[0]),
    .radm_bypass_hv                 (radm_bypass_hv[0]),
    .radm_bypass_dwen               (radm_bypass_dwen),
    .radm_bypass_eot                (radm_bypass_eot[0]),
    .radm_bypass_fmt                (radm_bypass_fmt[1:0]),
    .radm_bypass_type               (radm_bypass_type[4:0]),
    .radm_bypass_tc                 (radm_bypass_tc[2:0]),
    .radm_bypass_attr               (radm_bypass_attr[ATTR_WD-1:0]),
    .radm_bypass_reqid              (radm_bypass_reqid[15:0]),
    .radm_bypass_td                 (radm_bypass_td[0]),
    .radm_bypass_tag                (radm_bypass_tag[TAG_SIZE-1:0]),
    .radm_bypass_cpl_status         (radm_bypass_cpl_status[2:0]),
    .radm_bypass_poisoned           (radm_bypass_poisoned[0]),
    .radm_bypass_dw_len             (radm_bypass_dw_len[9:0]),
    .radm_bypass_addr               (radm_bypass_addr_i[`x4_FLT_Q_ADDR_WIDTH-1:0]),
    .radm_bypass_cpl_last           (radm_bypass_cpl_last[0]),
    .radm_bypass_ecrc_err           (radm_bypass_ecrc_err[0]),
    .radm_bypass_func_num           (radm_bypass_func_num[PF_WD-1:0]),
    .radm_bypass_bcm                (radm_bypass_bcm[0]),
    .radm_bypass_byte_cnt           (radm_bypass_byte_cnt_i[11:0]),
    .radm_bypass_first_be           (radm_bypass_first_be[3:0]),
    .radm_bypass_last_be            (radm_bypass_last_be[3:0]),
    .radm_bypass_in_membar_range    (radm_bypass_in_membar_range[2:0]),
    .radm_bypass_io_req_in_range    (radm_bypass_io_req_in_range[0]),
    .radm_bypass_rom_in_range       (radm_bypass_rom_in_range[0]),
    .radm_bypass_cmpltr_id          (radm_bypass_cmpltr_id[15:0]),

    .radm_cpl_timeout               (radm_cpl_timeout),
    .radm_timeout_cpl_tc            (radm_timeout_cpl_tc),
    .radm_timeout_cpl_attr          (radm_timeout_cpl_attr),
    .radm_timeout_cpl_tag           (radm_timeout_cpl_tag),
    .radm_timeout_func_num          (radm_timeout_func_num),

    .radm_trgt1_hdr_uppr_bytes      ({{64-ADDR_WIDTH{1'b0}},radm_trgt1_hdr_uppr_bytes}),
    .radm_grant_tlp_type            (radm_grant_tlp_type_i),
    .radm_pend_cpl_so               (radm_pend_cpl_so),
    .radm_trgt1_vc_num              (radm_trgt1_vc_num_i),
    .radm_trgt1_hdr_uppr_bytes_valid (radm_trgt1_hdr_uppr_bytes_valid),
    .radm_trgt1_data                (radm_trgt1_data_i),
    .radm_trgt1_dwen                (radm_trgt1_dwen),
    .radm_trgt1_dv                  (int_radm_trgt1_dv),
    .radm_trgt1_hv                  (int_radm_trgt1_hv),
    .radm_trgt1_eot                 (int_radm_trgt1_eot),
    .radm_trgt1_dllp_abort          (radm_trgt1_dllp_abort),
    .radm_trgt1_tlp_abort           (radm_trgt1_tlp_abort),

    .radm_trgt1_fmt                 (radm_trgt1_fmt),
    .radm_trgt1_type                (radm_trgt1_type),
    .radm_trgt1_tc                  (radm_trgt1_tc),
    .radm_trgt1_attr                (radm_trgt1_attr),
    .radm_trgt1_mem_type            (int_radm_trgt1_mem_type),
    .radm_trgt1_reqid               (radm_trgt1_reqid),
    .radm_trgt1_tag                 (radm_trgt1_tag),
    .radm_trgt1_lookup_id           (trgt_lookup_id_i),
    .radm_trgt1_func_num            (radm_trgt1_func_num),
    .radm_trgt1_td                  (radm_trgt1_td),
    .radm_trgt1_poisoned            (radm_trgt1_poisoned),
    .radm_trgt1_dw_len              (radm_trgt1_dw_len),
    .radm_trgt1_first_be            (radm_trgt1_first_be),
    .radm_trgt1_cpl_status          (radm_trgt1_cpl_status),
    .radm_trgt1_bcm                 (radm_trgt1_bcm     ),
    .radm_trgt1_byte_cnt            (radm_trgt1_byte_cnt),
    .radm_trgt1_cmpltr_id           (radm_trgt1_cmpltr_id),
    .radm_trgt1_cpl_last            (radm_trgt1_cpl_last),
    .trgt1_radm_pkt_halt            (bridge_trgt1_radm_pkt_halt),

    .radm_trgt1_addr                (radm_trgt1_addr_i),

    .radm_trgt1_rom_in_range        (radm_trgt1_rom_in_range),
    .radm_trgt1_io_req_in_range     (radm_trgt1_io_req_in_range),
    .radm_trgt1_in_membar_range     (radm_trgt1_in_membar_range),
    .radm_trgt1_last_be             (radm_trgt1_last_be),
    .trgt1_radm_halt                (int_trgt1_radm_halt),
    .brdg_trgt1_p_xfer_done         (brdg_trgt1_p_xfer_done),
    .client0_addr_align_en          (client0_addr_align_en),
    .client0_tlp_func_num           (client0_tlp_func_num),
    .client0_cpl_cmpltr_id          (client0_remote_req_id),
    .client0_cpl_status             (client0_cpl_status),
    .client0_cpl_bcm                (client0_cpl_bcm),
    .client0_cpl_byte_cnt           (client0_cpl_byte_cnt),
    .client0_tlp_dv                 (client0_tlp_dv),
    .client0_tlp_eot                (client0_tlp_eot),
    .client0_tlp_bad_eot            (client0_tlp_bad_eot),
    .client0_tlp_hv                 (brdg_client0_tlp_hv),
    .client0_tlp_fmt                (client0_tlp_fmt),
    .client0_tlp_type               (client0_tlp_type),
    .client0_tlp_td                 (client0_tlp_td),
    .client0_tlp_ep                 (client0_tlp_ep),
    .client0_tlp_tid                (client0_tlp_tid),
    .client0_tlp_attr               (client0_tlp_attr),
    .client0_tlp_atu_bypass         (client0_tlp_atu_bypass),
    .client0_tlp_byte_len           (client0_tlp_byte_len),
    .client0_tlp_byte_en            (client0_tlp_byte_en),
    .client0_tlp_tc                 (client0_tlp_tc),
    .client0_tlp_addr               (client0_tlp_addr),
    .client0_tlp_data               (client0_tlp_data),
    .client0_tlp_dma                (client0_tlp_dma),
    .client0_tlp_dma_channel        (client0_tlp_dma_channel),
    .xadm_client0_halt              (xadm_client0_halt),
    .client0_cpl_lookup_id          (client0_cpl_lookup_id),
    .client1_addr_align_en          (client1_addr_align_en),
    .client1_tlp_func_num           (client1_tlp_func_num),
    .client1_cpl_cmpltr_id          (client1_remote_req_id),
    .client1_cpl_status             (client1_cpl_status),
    .client1_cpl_bcm                (client1_cpl_bcm),
    .client1_cpl_byte_cnt           (client1_cpl_byte_cnt),
    .client1_tlp_dv                 (client1_tlp_dv),
    .client1_tlp_eot                (client1_tlp_eot),
    .client1_tlp_bad_eot            (client1_tlp_bad_eot),
    .client1_tlp_hv                 (brdg_client1_tlp_hv),
    .client1_tlp_fmt                (client1_tlp_fmt),
    .client1_tlp_type               (client1_tlp_type),
    .client1_tlp_td                 (client1_tlp_td),
    .client1_tlp_ep                 (client1_tlp_ep),
    .client1_tlp_tid                (client1_tlp_tid),
    .client1_tlp_attr               (client1_tlp_attr),
    .client1_tlp_atu_bypass         (client1_tlp_atu_bypass),
    .client1_tlp_byte_len           (client1_tlp_byte_len),
    .client1_tlp_byte_en            (client1_tlp_byte_en),
    .client1_tlp_tc                 (client1_tlp_tc),
    .client1_tlp_addr               (client1_tlp_addr),
    .client1_tlp_data               (client1_tlp_data),
    .client1_tlp_dma                (client1_tlp_dma),
    .client1_tlp_dma_channel        (client1_tlp_dma_channel),
    .xadm_client1_halt              (xadm_client1_halt),
    .client1_cpl_lookup_id          (client1_cpl_lookup_id),
    // Client2 interface
    .client2_cpl_lookup_id          (client2_cpl_lookup_id),
    .client2_addr_align_en          (client2_addr_align_en),
    .client2_tlp_byte_en            (client2_tlp_byte_en),
    .client2_remote_req_id          (client2_remote_req_id),
    .client2_cpl_status             (client2_cpl_status),
    .client2_cpl_bcm                (client2_cpl_bcm),
    .client2_cpl_byte_cnt           (client2_cpl_byte_cnt),
    .client2_tlp_dv                 (client2_tlp_dv),
    .client2_tlp_eot                (client2_tlp_eot),
    .client2_tlp_bad_eot            (client2_tlp_bad_eot),
    .client2_tlp_hv                 (brdg_client2_tlp_hv),
    .client2_tlp_fmt                (client2_tlp_fmt),
    .client2_tlp_type               (client2_tlp_type),
    .client2_tlp_tc                 (client2_tlp_tc),
    .client2_tlp_td                 (client2_tlp_td),
    .client2_tlp_ep                 (client2_tlp_ep),
    .client2_tlp_attr               (client2_tlp_attr),
    .client2_tlp_byte_len           (client2_tlp_byte_len),
    .client2_tlp_tid                (client2_tlp_tid),
    .client2_tlp_addr               (client2_tlp_addr),
    .client2_tlp_data               (client2_tlp_data),
    .client2_tlp_func_num           (client2_tlp_func_num),
    .client2_tlp_atu_bypass         (client2_tlp_atu_bypass),
    .client2_tlp_dma                (client2_tlp_dma),
    .client2_tlp_dma_channel        (client2_tlp_dma_channel),
    .xadm_client2_halt              (xadm_client2_halt),
    // DBI interface
    .dbi_addr                       (slv_dbi_addr),
    .dbi_din                        (slv_dbi_din),
    .dbi_cs                         (slv_dbi_cs),
    .dbi_cs2                        (slv_dbi_cs2),
    .dbi_wr                         (slv_dbi_wr),
    .dbi_func_num                   (slv_dbi_func_num),
    .dbi_bar_num                    (slv_dbi_bar_num),
    .dbi_io_access                  (slv_dbi_io_access),
    .dbi_rom_access                 (slv_dbi_rom_access),
    .dbi_ack                        (slv_lbc_dbi_ack),
    .dbi_dout                       (slv_lbc_dbi_dout),
  // External RAM Interfaces
  // Inbound
  // Inbound Read Request Order RAM
    .ib_rreq_ordr_ram_addra         (ib_rreq_ordr_ram_addra ),
    .ib_rreq_ordr_ram_wea           (ib_rreq_ordr_ram_wea   ),
    .ib_rreq_ordr_ram_dina          (ib_rreq_ordr_ram_dina  ),
    .ib_rreq_ordr_ram_addrb         (ib_rreq_ordr_ram_addrb ),
    .ib_rreq_ordr_ram_enb           (ib_rreq_ordr_ram_enb   ),
    .ib_rreq_ordr_ram_doutb         (ib_rreq_ordr_ram_doutb ),
    // Inbound Read Request Clock Domain Crossing FIFO RAM
    .ib_rreq_c2a_cdc_ram_addra      (ib_rreq_c2a_cdc_ram_addra),
    .ib_rreq_c2a_cdc_ram_wea        (ib_rreq_c2a_cdc_ram_wea),
    .ib_rreq_c2a_cdc_ram_dina       (ib_rreq_c2a_cdc_ram_dina),
    .ib_rreq_c2a_cdc_ram_addrb      (ib_rreq_c2a_cdc_ram_addrb),
    .ib_rreq_c2a_cdc_ram_enb        (ib_rreq_c2a_cdc_ram_enb),
    .ib_rreq_c2a_cdc_ram_doutb      (ib_rreq_c2a_cdc_ram_doutb),
    // Inbound Write Request Clock Domain Crossing FIFO RAM
    .ib_wreq_c2a_cdc_ram_addra      (ib_wreq_c2a_cdc_ram_addra),
    .ib_wreq_c2a_cdc_ram_wea        (ib_wreq_c2a_cdc_ram_wea),
    .ib_wreq_c2a_cdc_ram_dina       (ib_wreq_c2a_cdc_ram_dina),
    .ib_wreq_c2a_cdc_ram_addrb      (ib_wreq_c2a_cdc_ram_addrb),
    .ib_wreq_c2a_cdc_ram_enb        (ib_wreq_c2a_cdc_ram_enb),
    .ib_wreq_c2a_cdc_ram_doutb      (ib_wreq_c2a_cdc_ram_doutb),

    // Inbound Master Completion Clock Domain Crossing FIFO RAM
    .ib_mcpl_a2c_cdc_ram_addra      (ib_mcpl_a2c_cdc_ram_addra),
    .ib_mcpl_a2c_cdc_ram_wea        (ib_mcpl_a2c_cdc_ram_wea),
    .ib_mcpl_a2c_cdc_ram_dina       (ib_mcpl_a2c_cdc_ram_dina),
    .ib_mcpl_a2c_cdc_ram_addrb      (ib_mcpl_a2c_cdc_ram_addrb),
    .ib_mcpl_a2c_cdc_ram_enb        (ib_mcpl_a2c_cdc_ram_enb),
    .ib_mcpl_a2c_cdc_ram_doutb      (ib_mcpl_a2c_cdc_ram_doutb),
    // // Inbound Master Completion Data Segment FIFO RAM
    .ib_mcpl_sb_ram_addra           (ib_mcpl_sb_ram_addra),
    .ib_mcpl_sb_ram_wea             (ib_mcpl_sb_ram_wea),
    .ib_mcpl_sb_ram_dina            (ib_mcpl_sb_ram_dina),
    .ib_mcpl_sb_ram_addrb           (ib_mcpl_sb_ram_addrb),
    .ib_mcpl_sb_ram_enb             (ib_mcpl_sb_ram_enb),
    .ib_mcpl_sb_ram_doutb           (ib_mcpl_sb_ram_doutb),
   // Outbound
   // Slave Non-Posted Write Set-Aside RAM // To do : change names
  .slv_npw_sab_ram_addra            (slv_npw_sab_ram_addra),
  .slv_npw_sab_ram_wea              (slv_npw_sab_ram_wea),
  .slv_npw_sab_ram_dina             (slv_npw_sab_ram_dina),
  .slv_npw_sab_ram_addrb            (slv_npw_sab_ram_addrb),
  .slv_npw_sab_ram_enb              (slv_npw_sab_ram_enb),
  .slv_npw_sab_ram_doutb            (slv_npw_sab_ram_doutb),
  // Outbound Non-Posted TLP Decomposer Header/Data FIFO RAM
  .ob_npdcmp_ram_addra              (ob_npdcmp_ram_addra),
  .ob_npdcmp_ram_wea                (ob_npdcmp_ram_wea),
  .ob_npdcmp_ram_dina               (ob_npdcmp_ram_dina),
  .ob_npdcmp_ram_addrb              (ob_npdcmp_ram_addrb),
  .ob_npdcmp_ram_enb                (ob_npdcmp_ram_enb),
  .ob_npdcmp_ram_doutb              (ob_npdcmp_ram_doutb),
  // Outbound Posted TLP Decomposer Header FIFO RAM
  .ob_pdcmp_hdr_ram_addra           (ob_pdcmp_hdr_ram_addra),
  .ob_pdcmp_hdr_ram_wea             (ob_pdcmp_hdr_ram_wea),
  .ob_pdcmp_hdr_ram_dina            (ob_pdcmp_hdr_ram_dina),
  .ob_pdcmp_hdr_ram_addrb           (ob_pdcmp_hdr_ram_addrb),
  .ob_pdcmp_hdr_ram_enb             (ob_pdcmp_hdr_ram_enb),
  .ob_pdcmp_hdr_ram_doutb           (ob_pdcmp_hdr_ram_doutb),
  // Outbound Posted TLP Decomposer Data FIFO RAM
  .ob_pdcmp_data_ram_addra          (ob_pdcmp_data_ram_addra),
  .ob_pdcmp_data_ram_wea            (ob_pdcmp_data_ram_wea),
  .ob_pdcmp_data_ram_dina           (ob_pdcmp_data_ram_dina),
  .ob_pdcmp_data_ram_addrb          (ob_pdcmp_data_ram_addrb),
  .ob_pdcmp_data_ram_enb            (ob_pdcmp_data_ram_enb),
  .ob_pdcmp_data_ram_doutb          (ob_pdcmp_data_ram_doutb),
  // Outbound Composer Segmented Buffer RAM
  .ob_ccmp_data_ram_addra          (ob_ccmp_data_ram_addra),
  .ob_ccmp_data_ram_wea            (ob_ccmp_data_ram_wea),
  .ob_ccmp_data_ram_dina           (ob_ccmp_data_ram_dina),
  .ob_ccmp_data_ram_addrb          (ob_ccmp_data_ram_addrb),
  .ob_ccmp_data_ram_enb            (ob_ccmp_data_ram_enb),
  .ob_ccmp_data_ram_doutb          (ob_ccmp_data_ram_doutb),
    //DMA Ram interface outputs
    .edma2ram_addra                 (edma2ram_addra),
    .edma2ram_we                    (edma2ram_we),
    .edma2ram_dout                  (edma2ram_dout),
    .edma2ram_addrb                 (edma2ram_addrb),
    .edma2ram_re                    (edma2ram_re),
    .ram2edma_din                   (ram2edma_din),
    //DMA read buffer interface
    .edmarbuff2ram_addra            (edmarbuff2ram_addra),
    .edmarbuff2ram_we               (edmarbuff2ram_we),
    .edmarbuff2ram_dout             (edmarbuff2ram_dout),
    .edmarbuff2ram_addrb            (edmarbuff2ram_addrb),
    .edmarbuff2ram_re               (edmarbuff2ram_re),
    .ram2edmarbuff_din              (ram2edmarbuff_din),
    .phy_type                       (1'b0),
    //eDMA interface signals
    //crgb inputs
    .crgb_address                   (crgb_address),
    .crgb_rden                      (crgb_rden),
    .crgb_source                    (crgb_source),
    .crgb_wr_data                   (crgb_wr_data),
    .crgb_wren                      (crgb_wren),
    //crgb outputs
    .crgb_ack                       (crgb_ack),
    .crgb_rd_data                   (crgb_rd_data),
     //DMA Local Interrupt
    .edma_int                      (edma_int),
     // DMA Read/Write Channel transfer pending
    .edma_xfer_pending             (edma_xfer_pending),
    .radm_trgt1_cpl_lookup_id_rlsd  (radm_trgt1_cpl_lookup_id_rlsd),
    // Indicates non-posted TLP
    .radm_trgt1_lookup_id_consmd    (radm_trgt1_lookup_id_consmd),

    .cfg_slv_resp_err_map           (cfg_err_resp[15:10]),
    .cfg_ax_mstr_np_pass_p          (cfg_order_rule_ctrl[7:0]),
    .cfg_ax_mstr_ordr_p_event_sel   (cfg_ax_mstr_ordr_p_event_sel),
    .cfg_ax_ib_cpl_pass_p           (cfg_order_rule_ctrl[15:8]),
    .cfg_ax_snp_en                  (cfg_ax_snp_en),
    .cfg_msix_addr_match_low        (cfg_msix_addr_match_low),
    .cfg_msix_addr_match_high       (cfg_msix_addr_match_high),
    .cfg_mstr_arcache_mode          (cfg_mstr_arcache_mode),
    .cfg_mstr_awcache_mode          (cfg_mstr_awcache_mode),
    .cfg_mstr_arcache_value         (cfg_mstr_arcache_value),
    .cfg_mstr_awcache_value         (cfg_mstr_awcache_value),
    .cfg_aximstr_msg_addr_high      (cfg_aximstr_msg_addr_high),
    .cfg_aximstr_msg_addr_low       (cfg_aximstr_msg_addr_low),
    .cfg_ax_mstr_zeroread_fw        (cfg_ax_mstr_zeroread_fw),
    .atu_reg_out_upr_base           (atu_reg_out_upr_base),
    .atu_reg_out_en                 (atu_reg_out_en),
    .atu_reg_out_type               (atu_reg_out_type),
    .atu_reg_out_base               (atu_reg_out_base),
    .atu_reg_out_limit              (atu_reg_out_limit),
    .atu_reg_out_uppr_limit         (atu_reg_out_uppr_limit),
    .atu_reg_out_incr_rgn_size      (atu_reg_out_incr_rgn_size),
    .atu_reg_out_invert             (atu_reg_out_invert),
    .atu_reg_out_func_num           (atu_reg_out_func_num),
    .atu_reg_out_func_bypass        (atu_reg_out_func_bypass),
    .atu_reg_out_snp                (atu_reg_out_snp),
    .cfg_err_resp_mode              (cfg_err_resp[4:0]),
    .cfg_ext_tag_en                 (|cfg_ext_tag_en[NF-1:0]),
    .cfg_max_rd_req_size            (cfg_max_rd_req_size),
    .cfg_max_payload_size           (cfg_max_payload_size)

    ,
    .d_radm_trgt1_dma_grant         (radm_trgt1_dma_grant),        // Output edma bridge instance
    .d_radm_trgt1_dma_cpl_rlsd      (radm_trgt1_dma_cpl_rlsd),     // Output edma bridge instance
    .d_trgt1_radm_dma_pkt_halt      (1'b0),                        // Input  edma bridge instance // No External input DMA halt if AMBA_POPULATED
    .trgt_lut_dma_pkt_halt          (trgt_lut_dma_pkt_halt)        // xadm.trgt_lut DMA halt

); // amba bridge instance







x4_DWC_pcie_edma_cdm_crgb

#(
    .INST (INST),
    .ADDR_WIDTH(CRGB_ADDR_WIDTH),
    .DATA_WIDTH(CRGB_DATA_WIDTH),
    .BE_WIDTH(CRGB_BE_WIDTH)
)
 u_DWC_pcie_edma_cdm_crgb (

     .clk                            (aux_clk_g),
    .reset_n                         (core_rst_n),
    //CRGB _ INTERFACE
    .crgb_addr                      (crgb_address),
    .crgb_re                        (crgb_rden),
    .crgb_we                        (crgb_wren),
    .crgb_dout                      (crgb_wr_data),
    .crgb_din                       (crgb_rd_data),

    .crgb_byte_en                   (/*NOT USED*/),
    .crgb_source                    (crgb_source),
    .crgb_ready                     (crgb_ack),

    //CRGB _ INTERFACE
    .cdm_cs                          (crgb_cdm_cs),
    .cdm_ack                         (crgb_cdm_ack),
    .cdm_addr                        (crgb_cdm_addr),
    .cdm_datain                      (crgb_cdm_wdata),
    .cdm_dataout                     (crgb_cdm_rdata),

    .cdm_wr                          (crgb_cdm_wr),
    .cdm_source                      (crgb_cdm_source)

 ); //DWC_pcie_edma_cdm_crgb







wire                                cfg_upd_aspm_ctrl;
wire                                cfg_aspm_l1_timer_enable;
wire    [(NF - 1) : 0]              cfg_upd_aslk_pmctrl;
wire    [NF-1:0]                    cfg_upd_pme_cap;
wire                                cfg_elastic_buffer_mode;
wire                                rstctl_ltssm_enable;
wire                                rstctl_core_flush_req;
wire                                int_rstctl_core_flush_req;
assign int_rstctl_core_flush_req = 1'b0;

wire                                upstream_port;
wire                                xdlh_nodllp_pending;
wire                                xdlh_no_acknak_dllp_pending;
wire                                xdlh_xmt_pme_ack;
wire                                rdlh_rcvd_as_req_l1;
wire                                rdlh_rcvd_pm_enter_l1;
wire                                rdlh_rcvd_pm_enter_l23;
wire                                rdlh_rcvd_pm_req_ack;
wire                                smlh_link_in_training;
wire                                xdlh_not_expecting_ack;
wire [NVC-1:0]                      xadm_had_enough_credit;
wire                                smlh_in_l0;
wire                                smlh_in_l0s;
wire                                smlh_in_rl0s;
wire                                smlh_in_l0_l0s;
wire                                smlh_in_l1;
wire                                smlh_in_l1_p1;
wire                                smlh_in_l23;
wire                                smlh_l123_eidle_timeout;
wire                                latched_rcvd_eidle_set;
wire                                xadm_tlp_pending;
wire                                xadm_block_tlp_ack;
wire                                xtlh_tlp_pending;
wire                                xdlh_tlp_pending;
wire                                xdlh_retry_pending;
wire [NVC-1:0]                      xadm_no_fc_credit;
wire [(2*NF)-1:0]                   cfg_aslk_pmctrl;
wire [2:0]                          cfg_l0s_entr_latency_timer;
wire [2:0]                          cfg_l1_entr_latency_timer;
wire                                cfg_l1_entr_wo_rl0s;
wire [NF-1:0]                       cfg_upd_pmcsr;
wire [NF-1:0]                       cfg_upd_aux_pm_en;
wire [NF-1:0]                       cfg_pmstatus_clr;
wire [(3*NF)-1:0]                   cfg_pmstate;
wire [NF-1:0]                       cfg_pme_en;
wire [NF-1:0]                       cfg_aux_pm_en;
wire [NF-1:0]                       cfg_upd_req_id;
wire                                int_cfg_upd_req_id;
wire    [7:0]                       int_cfg_pbus_num;
wire    [4:0]                       int_cfg_pbus_dev_num;
wire                                cfg_clk_pm_en;
wire                                radm_pm_asnak;
wire                                int_radm_pm_to_ack;
wire [(5*NF)-1:0]                   cfg_pme_cap;
wire    [NL-1:0]                    int_phy_mac_phystatus;
assign                              int_phy_mac_phystatus = phy_mac_phystatus;

wire [NL-1:0]                       rmlh_descrambled_even_parity;
wire [NL-1:0]                       xmlh_scramble_even_parity;
wire [1:0]                          pipe_aux_sync_p1_ack;
wire [1:0]                          pipe_aux_sync_block;
wire [`x4_CX_L1SUB_CONTROL_WD-1:0]     cfg_l1sub_control;
wire [`x4_CX_PL_L1SUB_CONTROL_WD-1:0]  cfg_pl_l1sub_control;
wire                                cfg_pl_l1_exit_mode;
wire                                pm_cpl_timer_decr;
wire [`x4_CX_PM_CPL_TIMER_WD-1:0]      pm_cpl_timeout_value;
wire                                cfg_pl_l1_nowait_p1;
wire                                cfg_pl_l1_clk_sel;
wire                                cfg_p2nobeacon_enable;
wire [31:0]                         cfg_utility;
wire [31:0]                         pm_cfg_utility;
wire [17:0]                         cfg_phy_rst_timer;
wire [5:0]                          cfg_pma_phy_rst_delay_timer;
wire [3:0]                          cfg_dsp_pcipm_l1_enter_delay;
wire                                cfg_phy_perst_on_warm_reset;
wire                                cfg_pl_gen3_zrxdc_noncompl;
wire                                pme_to_ack_grt;
wire                                radm_trgt0_pending;
wire                                lbc_active;
wire [NF-1:0]                       pm_pme_grant;
wire                                pme_turn_off_grt;
wire [(PDWN_WIDTH - 1) :0]         pre_mac_phy_powerdown;
wire [NL*PHY_TXEI_WD-1:0]          int_mac_phy_txelecidle;
wire [(PIPE_DATA_WD - 1):0]        pre_mac_phy_txdata;
wire [(NL*PHY_NB)-1:0]             pre_mac_phy_txdatak;
wire [NL-1:0]                      pre_mac_phy_txdetectrx_loopback;
wire [NL-1:0]                      core_pre_mac_phy_txdetectrx_loopback;
assign pre_mac_phy_txdetectrx_loopback = core_pre_mac_phy_txdetectrx_loopback;
wire [NL-1:0]                      glue_mac_phy_txcompliance;
wire [NL-1:0]                      pre_mac_phy_rxpolarity;
wire [NL-1:0]                      tmp_mac_phy_rxpolarity;
wire [(WIDTH_WIDTH -1):0]          pre_mac_phy_width;
wire [P_R_WD-1:0]                  pre_mac_phy_pclk_rate;
wire [NL-1:0]                      pre_mac_phy_rxstandby;
wire [RATE_WIDTH-1:0]              pre_mac_phy_rate;
wire [TX_DEEMPH_WD-1:0]            pre_mac_phy_txdeemph;
wire [2:0]                         pre_mac_phy_txmargin;
wire                               pre_mac_phy_txswing;
wire [NL-1:0]                      pre_mac_phy_txdatavalid;
wire [(NL*2)-1:0]                  pre_mac_phy_txsyncheader;
wire [NL-1:0]                      pre_mac_phy_txstartblock;
wire                               pre_mac_phy_blockaligncontrol;
wire [NL*RX_PSET_WD-1:0]           pre_mac_phy_rxpresethint;
wire [NL*TX_FS_WD-1:0]             pre_mac_phy_fs;
wire [NL*TX_FS_WD-1:0]             pre_mac_phy_lf;
wire [NL*PSET_ID_WD-1:0]           pre_mac_phy_local_pset_index;
wire [NL-1:0]                      pre_mac_phy_getlocal_pset_coef;
wire [NL-1:0]                      pre_mac_phy_rxeqinprogress;
wire [NL-1:0]                      pre_mac_phy_invalid_req;
wire [NL-1:0]                      pre_mac_phy_rxeqeval;
wire [NL-1:0]                      pre_mac_phy_dirchange;
wire [NL*TX_COEF_WD-1:0]           pre_mac_phy_smlh_coef_rtx;
wire                               pre_mac_phy_encodedecodebypass;
wire [NL*8-1:0]                    pre_mac_phy_mbus;
wire [31:0]                        pre_cfg_phy_control;
wire                               msg_gen_asnak_grt;
wire [L2NL-1:0]                    smlh_lane_flip_ctrl;
wire                               cfg_link_retrain;
wire                               cfg_lpbk_en;
wire                               cfg_plreg_reset;
wire [(2*PDWN_WIDTH) - 1 : 0]      pm_powerdown_status;
wire                               cfg_force_powerdown;
wire                               cfg_directed_speed_change;      // config bit to start speed change
wire [`x4_CX_PL_MULTILANE_CONTROL_WD-1:0] cfg_pl_multilane_control;
wire                               msg_gen_unlock_grant;
wire                               pm_ltssm_enable;
wire [NL-1:0]                      pm_rmlh_descrambled_even_parity;
wire [NL-1:0]                      pm_xmlh_scramble_even_parity;
wire                               pm_smlh_entry_to_l0s;
wire                               pm_smlh_entry_to_l1;
wire                               pm_smlh_entry_to_l2;
wire                               pm_smlh_prepare4_l123;
wire                               pm_smlh_l0s_exit;
wire                               pm_smlh_l1_exit;
wire                               pm_smlh_l23_exit;
wire                               pm_freeze_fc_timer;
    // Adding in a freeze completion timer control per PM module's request
wire                               pm_freeze_cpl_timer;
wire                               pm_xmt_asnak;
wire                               pm_xmt_turnoff;
wire [NF-1:0]                      pm_xmt_to_ack;
wire [NF-1:0]                      pm_xmt_pme;
wire                               pm_turnoff_timeout;
wire [BUSNUM_WD -1:0]              pm_bus_num;
wire [DEVNUM_WD -1:0]              pm_dev_num;
wire [(PDWN_WIDTH - 1) : 0]        pm_int_phy_powerdown;
wire                               pm_current_powerdown_p1;
wire                               pm_current_powerdown_p0;
wire                               pm_smlh_l1_2_latched; // 1: L1_SUB entered L1_2 substate
wire                               pm_smlh_l1_n_latched; // 1: L1_SUB entered L1_n substate
wire [`x4_CX_PM_CPL_TIMER_WD-1:0]     pm_cpl_timer;        // how much time was spent in L1 substate, in 16us units
wire [NL-1:0]                      int_phy_txelecidle;
wire                               pm_block_phystatus;
wire [1:0]                         pm_en_pulse_det;
wire [(NL*2)-1:0]                  mac_phy_txsyncheader_i;         // Indicates the sync header for a 130b block
assign mac_phy_txsyncheader = mac_phy_txsyncheader_i;
wire [NL-1:0]                      sqlchd_rxelecidle;
wire                               pm_sys_aux_pwr_det;
wire [NF-1:0]                      pm_pme_en_split;
wire [NF-1:0]                      pm_aux_pm_en_split;
wire                               pm_init_rst;
wire                               pm_unlock_msg_req;
wire [L2NL - 1 : 0]                pm_rx_lane_flip_en;
wire [L2NL - 1 : 0]                pm_tx_lane_flip_en;
wire [L2NL - 1 : 0]                pm_rx_pol_lane_flip_ctrl;
wire                               pm_smlh_link_retrain;
wire                               msg_gen_hv;
wire                               lbc_cpl_hv;

wire                               pm_l1_aspm_entr;
wire    [NF-1:0]                   pm_radm_block_tlp;
wire                               trgt_cpl_lut_empty;
wire                               msix_msi_req;

wire usp_g3_eq_redo_executed_int;
wire usp_g4_eq_redo_executed_int;

 assign int_cfg_upd_req_id      = cfg_upd_req_id[0];


wire   pm_smlh_link_in_training;
wire   pm_smlh_req_l1;
wire   pm_smlh_req_l2;
wire   pm_smlh_l1_exit_s;
wire   pm_smlh_prepare4_l123_s;

assign pm_smlh_link_in_training = smlh_link_in_training;
assign pm_smlh_prepare4_l123_s  = pm_smlh_prepare4_l123;
assign pm_smlh_req_l1           = pm_smlh_entry_to_l1;
assign pm_smlh_req_l2           = pm_smlh_entry_to_l2;
assign pm_smlh_l1_exit_s        = pm_smlh_l1_exit;




logic pm_xdlh_req_ack;


x4_DWC_pcie_core

#(
    .INST         (INST         ),
    .NL           (NL           ),
    .TXNL         (TXNL         ),
    .RXNL         (RXNL         ),
    .NB           (NB           ),
    .PHY_NB       (PHY_NB       ),
    .CM_PHY_NB    (CM_PHY_NB    ),
    .NW           (NW           ),
    .NF           (NF           ),
    .PF_WD        (PF_WD        ),
    .NVC          (NVC          ),
    .NHQ          (NHQ          ),
    .NDQ          (NDQ          ),
    .DATA_PAR_WD  (DATA_PAR_WD  ),
    .TRGT_DATA_WD (TRGT_DATA_WD ),

    .ADDR_PAR_WD           (ADDR_PAR_WD          ),
    .DW_W_PAR              (DW_W_PAR             ),
    .DW_WO_PAR             (DW_WO_PAR            ),
    .RAS_PCIE_HDR_PROT_WD  (RAS_PCIE_HDR_PROT_WD ),
    .TX_HW_W_PAR           (TX_HW_W_PAR          ),
    .RADM_P_HWD            (RADM_P_HWD           ),
    .DW                    (DW                   ),
    .DATA_WIDTH            (DATA_WIDTH           ),
    .ADDR_WIDTH            (ADDR_WIDTH           ),
    .RX_NDLLP              (RX_NDLLP             ),
    .L2N_INTFC             (L2N_INTFC            ),
    .ALL_FUNC_NUM          (ALL_FUNC_NUM         ),
    .TRGT_HDR_WD           (TRGT_HDR_WD          ),
    .TRGT_HDR_PROT_WD      (TRGT_HDR_PROT_WD     ),
    .CLIENT_HDR_PROT_WD    (CLIENT_HDR_PROT_WD   ),
    .ST_HDR                (ST_HDR               ),
    .HDR_PROT_WD           (HDR_PROT_WD          ),
    .RBUF_DEPTH            (RBUF_DEPTH           ),
    .RBUF_PW               (RBUF_PW              ),
    .SOTBUF_DP             (SOTBUF_DP            ),
    .SOTBUF_PW             (SOTBUF_PW            ),
    .SOTBUF_WD             (SOTBUF_WD            ),
    .DATAQ_WD              (DATAQ_WD             ),
    .RADM_Q_DATABITS       (RADM_Q_DATABITS      ),
    .RADM_Q_DATABITS_O     (RADM_Q_DATABITS_O    ),
    .LBC_EXT_AW            (LBC_EXT_AW           ),

    .RADM_PQ_HWD             (RADM_PQ_HWD           ),
    .RADM_NPQ_HWD            (RADM_NPQ_HWD          ),
    .RADM_CPLQ_HWD           (RADM_CPLQ_HWD         ),
    .RADM_PQ_HPW             (RADM_PQ_HPW           ),
    .RADM_NPQ_HPW            (RADM_NPQ_HPW          ),
    .RADM_CPLQ_HPW           (RADM_CPLQ_HPW         ),
    .RADM_PQ_DPW             (RADM_PQ_DPW           ),
    .RADM_NPQ_DPW            (RADM_NPQ_DPW          ),
    .RADM_CPLQ_DPW           (RADM_CPLQ_DPW         ),
    .RADM_Q_H_CTRLBITS       (RADM_Q_H_CTRLBITS     ),
    .RADM_Q_D_CTRLBITS       (RADM_Q_D_CTRLBITS     ),
    .RADM_PQ_H_DATABITS      (RADM_PQ_H_DATABITS    ),
    .RADM_PQ_H_DATABITS_O    (RADM_PQ_H_DATABITS_O  ),
    .RADM_NPQ_H_DATABITS     (RADM_NPQ_H_DATABITS   ),
    .RADM_NPQ_H_DATABITS_O   (RADM_NPQ_H_DATABITS_O ),
    .RADM_CPLQ_H_DATABITS    (RADM_CPLQ_H_DATABITS  ),
    .RADM_CPLQ_H_DATABITS_O  (RADM_CPLQ_H_DATABITS_O),
    .RADM_PQ_H_ADDRBITS      (RADM_PQ_H_ADDRBITS    ),
    .RADM_NPQ_H_ADDRBITS     (RADM_NPQ_H_ADDRBITS   ),
    .RADM_CPLQ_H_ADDRBITS    (RADM_CPLQ_H_ADDRBITS  ),
    .RADM_PQ_D_ADDRBITS      (RADM_PQ_D_ADDRBITS    ),
    .RADM_NPQ_D_ADDRBITS     (RADM_NPQ_D_ADDRBITS   ),
    .RADM_CPLQ_D_ADDRBITS    (RADM_CPLQ_D_ADDRBITS  ),
    .RADM_PQ_HDP             (RADM_PQ_HDP           ),
    .RADM_NPQ_HDP            (RADM_NPQ_HDP          ),
    .RADM_CPLQ_HDP           (RADM_CPLQ_HDP         ),
    .RADM_PQ_DDP             (RADM_PQ_DDP           ),
    .RADM_NPQ_DDP            (RADM_NPQ_DDP          ),
    .RADM_CPLQ_DDP           (RADM_CPLQ_DDP         ),
    .DCA_WD                  (DCA_WD                ),
    .APP_CRD_WD              (APP_CRD_WD            ),
    .BUSNUM_WD               (BUSNUM_WD             ),
    .DEVNUM_WD               (DEVNUM_WD             ),
    .N_FLT_MASK              (N_FLT_MASK            ),
    .CPL_LUT_DEPTH           (CPL_LUT_DEPTH         ),

    .SLV_DATA_WD          (SLV_DATA_WD        ),
    .SLV_DATAP_WD         (SLV_DATAP_WD       ),
    .SLV_ADDR_WD          (SLV_ADDR_WD        ),
    .SLV_ADDRP_WD         (SLV_ADDRP_WD       ),
    .SLV_LOCK_WD          (SLV_LOCK_WD        ),
    .SLV_WSTRB_WD         (SLV_WSTRB_WD       ),
    .SLV_ID_WD            (SLV_ID_WD          ),
    .DBI_SLV_DATA_WD      (DBI_SLV_DATA_WD    ),
    .DBI_SLV_WSTRB_WD     (DBI_SLV_WSTRB_WD   ),
    .DBI_SLV_ADDR_WD      (DBI_SLV_ADDR_WD    ),
    .DBI_SLV_LOCK_WD      (DBI_SLV_LOCK_WD    ),
    .DBI_SLV_ID_WD        (DBI_SLV_ID_WD      ),
    .DATA_PAR_CALC_WIDTH  (DATA_PAR_CALC_WIDTH),
    .ADDR_PAR_CALC_WIDTH  (ADDR_PAR_CALC_WIDTH),

    .MSTR_DATA_WD     (MSTR_DATA_WD ),
    .MSTR_DATAP_WD    (MSTR_DATAP_WD),
    .MSTR_ADDR_WD     (MSTR_ADDR_WD ),
    .MSTR_ADDRP_WD    (MSTR_ADDRP_WD),
    .MSTR_LOCK_WD     (MSTR_LOCK_WD ),
    .MSTR_WSTRB_WD    (MSTR_WSTRB_WD),
    .MSTR_ID_WD       (MSTR_ID_WD_CORE),

     .SLV_NPW_SAB_RAM_DATA_WD    (SLV_NPW_SAB_RAM_DATA_WD ),
     .SLV_NPW_SAB_RAM_ADDR_WD    (SLV_NPW_SAB_RAM_ADDR_WD ),
     .SLV_NPW_SAB_RAM_ADDRP_WD   (SLV_NPW_SAB_RAM_ADDRP_WD),

     .SLV_WRP_RSP_ROB_FIFO_ADDR_WD  (SLV_WRP_RSP_ROB_FIFO_ADDR_WD ),

     .OB_NPDCMP_RAM_DATA_WD           (OB_NPDCMP_RAM_DATA_WD          ),
     .OB_NPDCMP_RAM_ADDR_WD           (OB_NPDCMP_RAM_ADDR_WD          ),
     .OB_NPDCMP_RAM_ADDRP_WD          (OB_NPDCMP_RAM_ADDRP_WD         ),
     .OB_PDCMP_HDR_RAM_DATA_WD        (OB_PDCMP_HDR_RAM_DATA_WD       ),
     .OB_PDCMP_HDR_RAM_ADDR_WD        (OB_PDCMP_HDR_RAM_ADDR_WD       ),
     .OB_PDCMP_HDR_RAM_ADDRP_WD       (OB_PDCMP_HDR_RAM_ADDRP_WD      ),
     .OB_PDCMP_DATA_RAM_DATA_WD       (OB_PDCMP_DATA_RAM_DATA_WD      ),
     .OB_PDCMP_DATA_RAM_ADDR_WD       (OB_PDCMP_DATA_RAM_ADDR_WD      ),
     .OB_PDCMP_DATA_RAM_ADDRP_WD      (OB_PDCMP_DATA_RAM_ADDRP_WD     ),
     .OB_CCMP_DATA_RAM_DATA_WD        (OB_CCMP_DATA_RAM_DATA_WD       ),
     .OB_CCMP_DATA_RAM_ADDR_WD        (OB_CCMP_DATA_RAM_ADDR_WD       ),
     .OB_CCMP_DATA_RAM_ADDRP_WD       (OB_CCMP_DATA_RAM_ADDRP_WD      ),
     .CC_IB_RD_REQ_ORDR_RAM_ADDR_WD   (CC_IB_RD_REQ_ORDR_RAM_ADDR_WD  ),
     .CC_IB_RD_REQ_ORDR_RAM_ADDRP_WD  (CC_IB_RD_REQ_ORDR_RAM_ADDRP_WD ),
     .CC_IB_RD_REQ_ORDR_RAM_DATA_WD   (CC_IB_RD_REQ_ORDR_RAM_DATA_WD  ),
     .CC_IB_RD_REQ_CDC_RAM_ADDR_WD    (CC_IB_RD_REQ_CDC_RAM_ADDR_WD   ),
     .CC_IB_RD_REQ_CDC_RAM_ADDRP_WD   (CC_IB_RD_REQ_CDC_RAM_ADDRP_WD  ),
     .CC_IB_WR_REQ_CDC_RAM_ADDR_WD    (CC_IB_WR_REQ_CDC_RAM_ADDR_WD   ),
     .CC_IB_WR_REQ_CDC_RAM_ADDRP_WD   (CC_IB_WR_REQ_CDC_RAM_ADDRP_WD  ),
     .CC_IB_WR_REQ_CDC_RAM_DATA_WD    (CC_IB_WR_REQ_CDC_RAM_DATA_WD   ),
     .CC_IB_RD_REQ_CDC_RAM_DATA_WD    (CC_IB_RD_REQ_CDC_RAM_DATA_WD   ),
     .CC_IB_MCPL_CDC_RAM_ADDR_WD      (CC_IB_MCPL_CDC_RAM_ADDR_WD     ),
     .CC_IB_MCPL_CDC_RAM_ADDRP_WD     (CC_IB_MCPL_CDC_RAM_ADDRP_WD    ),
     .CC_IB_MCPL_CDC_RAM_DATA_WD      (CC_IB_MCPL_CDC_RAM_DATA_WD     ),
     .CC_IB_MCPL_SEG_BUF_RAM_DATA_WD  (CC_IB_MCPL_SEG_BUF_RAM_DATA_WD ),
     .CC_IB_MCPL_SEG_BUF_RAM_ADDR_WD  (CC_IB_MCPL_SEG_BUF_RAM_ADDR_WD ),
     .CC_IB_MCPL_SEG_BUF_RAM_ADDRP_WD (CC_IB_MCPL_SEG_BUF_RAM_ADDRP_WD),

     .MSTR_MISC_INFO_PW       (MSTR_MISC_INFO_PW     ),
     .SLV_MISC_INFO_PW        (SLV_MISC_INFO_PW      ),
     .MSTR_RESP_MISC_INFO_PW  (MSTR_RESP_MISC_INFO_PW),
     .SLV_RESP_MISC_INFO_PW   (SLV_RESP_MISC_INFO_PW ),
     .MSTR_BURST_LEN_PW       (MSTR_BURST_LEN_PW     ),
     .SLV_BURST_LEN_PW        (SLV_BURST_LEN_PW      ),
     .DBISLV_BURST_LEN_PW     (DBISLV_BURST_LEN_PW   ),

     .MAX_MSTR_TAGS     (MAX_MSTR_TAGS   ),
     .MAX_MSTR_TAG_PW   (MAX_MSTR_TAG_PW ),
     .MAX_WIRE_TAG      (MAX_WIRE_TAG    ),
     .MAX_WIRE_TAG_PW   (MAX_WIRE_TAG_PW ),
     .CORE_ADDR_BUS_WD  (CORE_ADDR_BUS_WD),
     .ADDR_PAR_CALC_WIDTH_NO_ZERO(ADDR_PAR_CALC_WIDTH_NO_ZERO),
     .CORE_ADDR_PAR_WD  (CORE_ADDR_PAR_WD),

     .DMA_CTX_RAM_ADDR_WIDTH (DMA_CTX_RAM_ADDR_WIDTH ),


     .DMA_CTX_RAM_DATA_WIDTH     (DMA_CTX_RAM_DATA_WIDTH   ),
     .DMA_SEG_BUF_NW_ADDR_WIDTH  (DMA_SEG_BUF_NW_ADDR_WIDTH),


     .DMA_SEG_BUF_DATA_WIDTH     (DMA_SEG_BUF_DATA_WIDTH    ),


     .TX_COEF_WD (TX_COEF_WD),
     .RX_PSET_WD  (RX_PSET_WD ),
     .TX_PSET_WD  (TX_PSET_WD ),
     .TX_FSLF_WD  (TX_FSLF_WD ),
     .TX_FS_WD    (TX_FS_WD   ),
     .TX_CRSR_WD  (TX_CRSR_WD ),
     .PHY_RXSB_WD (PHY_RXSB_WD),

     .DIRFEEDBACK_WD (DIRFEEDBACK_WD),
     .FOMFEEDBACK_WD (FOMFEEDBACK_WD),

     .ORIG_DATA_WD   (ORIG_DATA_WD    ),
     .SERDES_DATA_WD (SERDES_DATA_WD),
     .PIPE_DATA_WD   (PIPE_DATA_WD  ),
     .PDWN_WIDTH     (PDWN_WIDTH    ),
     .RATE_WIDTH     (RATE_WIDTH    ),
     .TX_DEEMPH_WD   (TX_DEEMPH_WD  ),
     .PHY_TXEI_WD    (PHY_TXEI_WD   ),

     .ERR_BUS_WD  (ERR_BUS_WD ),
     .RX_TLP      (RX_TLP     ),
     .FX_TLP      (FX_TLP     ),
     .TAG_SIZE    (TAG_SIZE   ),
     .LOOKUPID_WD (LOOKUPID_WD),


     .ATTR_WD (ATTR_WD),


     .LBC_INT_WD   (LBC_INT_WD),

     .MSIX_TABLE_SIZE      (MSIX_TABLE_SIZE     ),
     .MSIX_PBA_SIZE        (MSIX_PBA_SIZE       ),
     .MSIX_TABLE_RAM_DEPTH (MSIX_TABLE_RAM_DEPTH),
     .MSIX_PBA_RAM_DEPTH   (MSIX_PBA_RAM_DEPTH  ),
     .MSIX_PBA_PW          (MSIX_PBA_PW         ),
     .MSIX_TABLE_PW        (MSIX_TABLE_PW       ),

     .RADM_RAM_RD_LATENCY       (RADM_RAM_RD_LATENCY      ),
     .RADM_FORMQ_RAM_RD_LATENCY (RADM_FORMQ_RAM_RD_LATENCY),
     .RETRY_RAM_RD_LATENCY      (RETRY_RAM_RD_LATENCY     ),
     .RETRY_SOT_RAM_RD_LATENCY  (RETRY_SOT_RAM_RD_LATENCY ),
     .NQW                     (NQW                    ),
     .HCRD_WD (HCRD_WD),
     .DCRD_WD (DCRD_WD)
    ,
    .L2NL (L2NL)
    ,
    .PM_SYNC_DEPTH      (CORE_SYNC_DEPTH)
 )
 u_DWC_pcie_core (
    .pm_xdlh_dllp_req               (pm_xdlh_dllp_req),
    .xplh_pm_dllp_ack               (xplh_pm_dllp_ack),






// start xadm ports will present no matter AMBA_POPULATED is defined or not
    .client0_tlp_hv         (pm_xadm_client0_tlp_hv),
    .client1_tlp_hv         (pm_xadm_client1_tlp_hv),
    .client2_tlp_hv        (pm_xadm_client2_tlp_hv),

    .radm_grant_tlp_type   (radm_grant_tlp_type     ),

    .xadm_client2_halt  (xadm_client2_halt),
    .client0_tlp_dv         (client0_tlp_dv       ),
    .client0_tlp_eot        (client0_tlp_eot      ),
    .client0_addr_align_en  (client0_addr_align_en),
    .client0_tlp_byte_en    (client0_tlp_byte_en  ),
    .client0_remote_req_id  (client0_remote_req_id),
    .client0_cpl_byte_cnt   (client0_cpl_byte_cnt ),
    .client0_tlp_tc         (client0_tlp_tc       ),
    .client0_tlp_attr       (client0_tlp_attr     ),
    .client0_cpl_status    (client0_cpl_status  ),
    .client0_cpl_bcm       (client0_cpl_bcm     ),
    .client0_tlp_bad_eot   (client0_tlp_bad_eot ),
    .client0_tlp_fmt       (client0_tlp_fmt     ),
    .client0_tlp_type      (client0_tlp_type    ),
    .client0_tlp_td        (client0_tlp_td      ),
    .client0_tlp_ep        (client0_tlp_ep      ),
    .client0_tlp_byte_len  (client0_tlp_byte_len),
    .client0_tlp_addr      (client0_tlp_addr    ),
    .client0_tlp_tid       (client0_tlp_tid     ),
    .client0_tlp_data      (client0_tlp_data    ),
    .client0_tlp_func_num  (client0_tlp_func_num),
    .xadm_client0_halt (xadm_client0_halt),


    .client0_tlp_atu_bypass (client0_tlp_atu_bypass),

    .client0_cpl_lookup_id  (client0_cpl_lookup_id),
    .client0_tlp_dma         (client0_tlp_dma        ),
    .client0_tlp_dma_channel (client0_tlp_dma_channel),

    .client1_addr_align_en  (client1_addr_align_en),
    .client1_tlp_byte_en    (client1_tlp_byte_en  ),
    .client1_remote_req_id  (client1_remote_req_id),
    .client1_cpl_status     (client1_cpl_status   ),
    .client1_cpl_bcm        (client1_cpl_bcm      ),
    .client1_cpl_byte_cnt   (client1_cpl_byte_cnt ),
    .client1_tlp_dv         (client1_tlp_dv       ),
    .client1_tlp_eot        (client1_tlp_eot      ),
    .client1_tlp_bad_eot    (client1_tlp_bad_eot  ),
    .client1_tlp_fmt        (client1_tlp_fmt      ),
    .client1_tlp_type       (client1_tlp_type     ),
    .client1_tlp_tc         (client1_tlp_tc       ),
    .client1_tlp_td         (client1_tlp_td       ),
    .client1_tlp_ep         (client1_tlp_ep       ),
    .client1_tlp_attr       (client1_tlp_attr     ),
    .client1_tlp_byte_len  (client1_tlp_byte_len),
    .client1_tlp_tid       (client1_tlp_tid     ),
    .client1_tlp_addr      (client1_tlp_addr    ),
    .client1_tlp_data      (client1_tlp_data    ),
    .client1_tlp_func_num  (client1_tlp_func_num),
    .xadm_client1_halt (xadm_client1_halt),
    .client1_cpl_lookup_id (client1_cpl_lookup_id),


    .client1_tlp_atu_bypass (client1_tlp_atu_bypass),

    .radm_bypass_data        (radm_bypass_data      ),
    .radm_bypass_dwen        (radm_bypass_dwen      ),
    .radm_bypass_dv          (radm_bypass_dv        ),
    .radm_bypass_hv          (radm_bypass_hv        ),
    .radm_bypass_eot         (radm_bypass_eot       ),
    .radm_bypass_dllp_abort  (radm_bypass_dllp_abort),
    .radm_bypass_tlp_abort   (radm_bypass_tlp_abort ),
    .radm_bypass_ecrc_err    (radm_bypass_ecrc_err  ),
    .radm_bypass_fmt   (radm_bypass_fmt ),
    .radm_bypass_type  (radm_bypass_type),
    .radm_bypass_tc    (radm_bypass_tc  ),
    .radm_bypass_attr  (radm_bypass_attr),
    .radm_bypass_reqid     (radm_bypass_reqid   ),
    .radm_bypass_tag       (radm_bypass_tag     ),
    .radm_bypass_func_num  (radm_bypass_func_num),
    .radm_bypass_td        (radm_bypass_td      ),
    .radm_bypass_poisoned  (radm_bypass_poisoned),
    .radm_bypass_dw_len    (radm_bypass_dw_len  ),
    .radm_bypass_first_be  (radm_bypass_first_be),
    .radm_bypass_last_be   (radm_bypass_last_be ),
    .radm_bypass_addr      (radm_bypass_addr    ),
    .radm_bypass_rom_in_range     (radm_bypass_rom_in_range   ),
    .radm_bypass_io_req_in_range  (radm_bypass_io_req_in_range),
    .radm_bypass_in_membar_range  (radm_bypass_in_membar_range),
    .radm_bypass_bcm         (radm_bypass_bcm       ),
    .radm_bypass_cpl_last    (radm_bypass_cpl_last  ),
    .radm_bypass_cmpltr_id   (radm_bypass_cmpltr_id ),
    .radm_bypass_byte_cnt    (radm_bypass_byte_cnt  ),
    .radm_bypass_cpl_status  (radm_bypass_cpl_status),


    .client2_tlp_dv        (client2_tlp_dv       ),
    .client2_tlp_eot       (client2_tlp_eot      ),
    .client2_tlp_bad_eot   (client2_tlp_bad_eot  ),
    .client2_tlp_data      (client2_tlp_data    ),
    .client2_tlp_func_num  (client2_tlp_func_num),
    .client2_tlp_attr      (client2_tlp_attr     ),
    .client2_addr_align_en (client2_addr_align_en),
    .client2_tlp_byte_en   (client2_tlp_byte_en  ),
    .client2_remote_req_id (client2_remote_req_id),
    .client2_cpl_status    (client2_cpl_status   ),
    .client2_cpl_bcm       (client2_cpl_bcm      ),
    .client2_cpl_byte_cnt  (client2_cpl_byte_cnt ),
    .client2_tlp_tid       (client2_tlp_tid     ),
    .client2_tlp_byte_len  (client2_tlp_byte_len),
    .client2_tlp_ep        (client2_tlp_ep       ),
    .client2_tlp_td        (client2_tlp_td       ),
    .client2_tlp_tc        (client2_tlp_tc       ),
    .client2_tlp_type      (client2_tlp_type     ),
    .client2_tlp_fmt       (client2_tlp_fmt      ),
    .client2_tlp_addr      (client2_tlp_addr    ),
    .client2_tlp_atu_bypass (client2_tlp_atu_bypass),
    .client2_cpl_lookup_id  (client2_cpl_lookup_id),
  .client2_tlp_dma         (client2_tlp_dma        ),
  .client2_tlp_dma_channel (client2_tlp_dma_channel),



    .radm_cpl_timeout       (radm_cpl_timeout     ),
    .radm_timeout_func_num  (radm_timeout_func_num),
    .radm_timeout_cpl_tc    (radm_timeout_cpl_tc  ),
    .radm_timeout_cpl_attr  (radm_timeout_cpl_attr),
    .radm_timeout_cpl_len   (radm_timeout_cpl_len),
    .radm_timeout_cpl_tag   (radm_timeout_cpl_tag),

    .radm_trgt1_dv          (radm_trgt1_dv        ),
    .radm_trgt1_hv          (radm_trgt1_hv        ),
    .radm_trgt1_eot         (radm_trgt1_eot       ),
    .radm_trgt1_tlp_abort   (radm_trgt1_tlp_abort ),
    .radm_trgt1_dllp_abort  (radm_trgt1_dllp_abort),
    .radm_trgt1_ecrc_err    (radm_trgt1_ecrc_err  ),
    .radm_trgt1_data        (radm_trgt1_data      ),
    .radm_trgt1_dwen        (radm_trgt1_dwen      ),

    .radm_trgt1_fmt   (radm_trgt1_fmt ),
    .radm_trgt1_type  (radm_trgt1_type),
    .radm_trgt1_tc    (radm_trgt1_tc  ),
    .radm_trgt1_attr  (radm_trgt1_attr),

    .radm_trgt1_reqid     (radm_trgt1_reqid   ),
    .radm_trgt1_tag       (radm_trgt1_tag     ),
    .radm_trgt1_func_num  (radm_trgt1_func_num),
    .radm_trgt1_td              (radm_trgt1_td            ),
    .radm_trgt1_poisoned        (radm_trgt1_poisoned      ),
    .radm_trgt1_dw_len          (radm_trgt1_dw_len        ),
    .radm_trgt1_first_be        (radm_trgt1_first_be      ),
    .radm_trgt1_last_be         (radm_trgt1_last_be       ),
    .radm_trgt1_addr            (radm_trgt1_addr          ),
    .radm_trgt1_hdr_uppr_bytes  (radm_trgt1_hdr_uppr_bytes),
    .radm_trgt1_hdr_uppr_bytes_valid  (radm_trgt1_hdr_uppr_bytes_valid),
    .radm_trgt1_rom_in_range     (radm_trgt1_rom_in_range   ),
    .radm_trgt1_in_membar_range  (radm_trgt1_in_membar_range),
    .radm_trgt1_io_req_in_range  (radm_trgt1_io_req_in_range),
    .radm_trgt1_cpl_status       (radm_trgt1_cpl_status     ),

    .radm_trgt1_bcm        (radm_trgt1_bcm      ),
    .radm_trgt1_byte_cnt   (radm_trgt1_byte_cnt ),
    .radm_trgt1_cpl_last   (radm_trgt1_cpl_last ),
    .radm_trgt1_cmpltr_id  (radm_trgt1_cmpltr_id),




    .trgt1_radm_pkt_halt         (trgt1_radm_pkt_halt),          // Input from external input if NO AMBA_POPULATED
    .bridge_trgt1_radm_pkt_halt  (bridge_trgt1_radm_pkt_halt),   // Input from DWC_pcie_edma_amba_bridge/axi_bridge

    .radm_trgt1_dma_grant        (radm_trgt1_dma_grant),         // Input
    .radm_trgt1_dma_cpl_rlsd     (radm_trgt1_dma_cpl_rlsd),      // Input
    .trgt_lut_dma_pkt_halt       (trgt_lut_dma_pkt_halt),        // Output

    .app_dbi_ro_wr_disable          (app_dbi_ro_wr_disable),


    .ext_lbc_ack              (ext_lbc_ack             ),
    .ext_lbc_din              (ext_lbc_din             ),
    .lbc_ext_addr             (lbc_ext_addr            ),
    .lbc_ext_dout             (lbc_ext_dout            ),
    .lbc_ext_cs               (lbc_ext_cs              ),
    .lbc_ext_wr               (lbc_ext_wr              ),
    .lbc_ext_dbi_access       (lbc_ext_dbi_access      ),
    .lbc_ext_rom_access       (lbc_ext_rom_access      ),
    .lbc_ext_io_access        (lbc_ext_io_access       ),
    .lbc_ext_bar_num          (lbc_ext_bar_num         ),
    .ven_msi_req       (ven_msi_req     ),
    .ven_msi_func_num  (ven_msi_func_num),
    .ven_msi_tc      (ven_msi_tc    ),
    .ven_msi_vector  (ven_msi_vector),
    .ven_msi_grant   (ven_msi_grant ),
    .cfg_msi_en      (cfg_msi_en    ),
    .cfg_msi_mask     (cfg_msi_mask   ),
    .cfg_msi_pending  (cfg_msi_pending),


    .dbg_table            (dbg_table          ),
    .dbg_pba              (dbg_pba            ),
    .msix_table_addr      (msix_table_addr    ),
    .msix_table_data_out  (msix_table_data_out),
    .msix_table_we        (msix_table_we      ),
    .msix_table_en        (msix_table_en      ),
    .msix_table_data_in   (msix_table_data_in ),
    .msix_pba_addr        (msix_pba_addr      ),
    .msix_pba_data_out    (msix_pba_data_out  ),
    .msix_pba_we          (msix_pba_we        ),
    .msix_pba_en          (msix_pba_en        ),
    .msix_pba_data_in     (msix_pba_data_in   ),
    .msix_table_par_chk_val  (                      ),
    .msix_table_parerr_in    ({1{1'b0}}             ),
    .msix_table_parerr_out   (                      ),
    .msix_table_ls           (msix_table_ls         ),
    .cfg_msix_table_ds       (cfg_msix_table_ds     ),
    .cfg_msix_table_sd       (cfg_msix_table_sd     ),
    .msix_pba_par_chk_val    (                      ),
    .msix_pba_parerr_in      ({1{1'b0}}             ),
    .msix_pba_parerr_out     (                      ),
    .msix_pba_ls             (msix_pba_ls           ),
    .cfg_msix_pba_ds         (cfg_msix_pba_ds       ),
    .cfg_msix_pba_sd         (cfg_msix_pba_sd       ),






    .cfg_obff_en         (cfg_obff_en       ),
    .app_obff_msg_grant  (app_obff_msg_grant),

    .cfg_ltr_m_en        (cfg_ltr_m_en      ),
    .cfg_ltr_max_latency (cfg_ltr_max_latency),
    .cfg_disable_ltr_clr_msg (cfg_disable_ltr_clr_msg),
    .ven_msg_fmt       (ven_msg_fmt     ),
    .ven_msg_type      (ven_msg_type    ),
    .ven_msg_tc        (ven_msg_tc      ),
    .ven_msg_td        (ven_msg_td      ),
    .ven_msg_ep        (ven_msg_ep      ),
    .ven_msg_attr      (ven_msg_attr    ),
    .ven_msg_len       (ven_msg_len     ),
    .ven_msg_func_num  (ven_msg_func_num),
    .ven_msg_tag    (ven_msg_tag  ),
    .ven_msg_code   (ven_msg_code ),
    .ven_msg_data   (ven_msg_data ),
    .ven_msg_req    (ven_msg_req  ),
    .ven_msg_grant  (ven_msg_grant),


    .tx_lane_flip_en (tx_lane_flip_en),

    .sys_int            (sys_int          ),
    .sys_aux_pwr_det  (sys_aux_pwr_det ),
    .sys_atten_button_pressed   (sys_atten_button_pressed ),
    .sys_pre_det_state          (sys_pre_det_state        ),
    .sys_mrl_sensor_state       (sys_mrl_sensor_state     ),
    .sys_pwr_fault_det          (sys_pwr_fault_det        ),
    .sys_mrl_sensor_chged       (sys_mrl_sensor_chged     ),
    .sys_pre_det_chged          (sys_pre_det_chged        ),
    .sys_cmd_cpled_int          (sys_cmd_cpled_int        ),
    .sys_eml_interlock_engaged  (sys_eml_interlock_engaged),
    .cfg_pwr_ind                (cfg_pwr_ind              ),
    .cfg_atten_ind              (cfg_atten_ind            ),
    .cfg_pwr_ctrler_ctrl        (cfg_pwr_ctrler_ctrl      ),
    .app_unlock_msg             (app_unlock_msg           ),
    .app_obff_idle_msg_req        (app_obff_idle_msg_req      ),
    .app_obff_obff_msg_req        (app_obff_obff_msg_req      ),
    .app_obff_cpu_active_msg_req  (app_obff_cpu_active_msg_req),
    .pm_xtlh_block_tlp  (pm_xtlh_block_tlp),
    .pm_block_all_tlp   (pm_block_all_tlp),
    .cfg_bar0_start  (cfg_bar0_start),
    .cfg_bar1_start  (cfg_bar1_start),
    .cfg_bar0_limit  (cfg_bar0_limit),
    .cfg_bar1_limit  (cfg_bar1_limit),
    .cfg_bar2_start  (cfg_bar2_start),
    .cfg_bar2_limit  (cfg_bar2_limit),
    .cfg_bar3_start  (cfg_bar3_start),
    .cfg_bar3_limit  (cfg_bar3_limit),
    .cfg_bar4_start  (cfg_bar4_start),
    .cfg_bar4_limit  (cfg_bar4_limit),
    .cfg_bar5_start  (cfg_bar5_start),
    .cfg_bar5_limit  (cfg_bar5_limit),
    .cfg_exp_rom_start    (cfg_exp_rom_start  ),
    .cfg_exp_rom_limit    (cfg_exp_rom_limit  ),
    .cfg_bus_master_en    (cfg_bus_master_en  ),
    .cfg_mem_space_en     (cfg_mem_space_en   ),
    .cfg_max_rd_req_size  (cfg_max_rd_req_size),
    .cfg_max_payload_size (cfg_max_payload_size),
    .cfg_ext_tag_en       (cfg_ext_tag_en),
    .cfg_rcb              (cfg_rcb             ),
    .cfg_pm_no_soft_rst   (cfg_pm_no_soft_rst  ),
    .cfg_aer_rc_err_int   (cfg_aer_rc_err_int ),
    .cfg_aer_rc_err_msi   (cfg_aer_rc_err_msi ),
    .cfg_aer_int_msg_num  (cfg_aer_int_msg_num),
    .cfg_sys_err_rc       (cfg_sys_err_rc     ),
    .cfg_pme_int          (cfg_pme_int        ),
    .cfg_pme_msi          (cfg_pme_msi        ),
    .cfg_crs_sw_vis_en    (cfg_crs_sw_vis_en        ),
    .cfg_pcie_cap_int_msg_num  (cfg_pcie_cap_int_msg_num),
    .rdlh_link_up      (rdlh_link_up    ),
    .smlh_ltssm_state  (smlh_ltssm_state),
    .ltssm_cxl_enable  (ltssm_cxl_enable),
    .smlh_ltssm_state_rcvry_eq (smlh_ltssm_state_rcvry_eq),
    .smlh_link_up      (smlh_link_up    ),
    .smlh_req_rst_not  (smlh_req_rst_not),
    .link_req_rst_not  (link_req_rst_not),
    .brdg_slv_xfer_pending  (brdg_slv_xfer_pending),
    .brdg_dbi_xfer_pending  (brdg_dbi_xfer_pending),
    .radm_xfer_pending      (radm_xfer_pending    ),
    .radm_vendor_msg (radm_vendor_msg),
    .radm_msg_ltr  (radm_msg_ltr),
    .radm_msg_payload  (radm_msg_payload),
    .radm_msg_unlock   (radm_msg_unlock),
    .radm_msg_idle        (radm_msg_idle      ),
    .radm_msg_obff        (radm_msg_obff      ),
    .radm_msg_cpu_active  (radm_msg_cpu_active),
    .radm_msg_req_id      (radm_msg_req_id    ),
    .radm_inta_asserted    (radm_inta_asserted  ),
    .radm_intb_asserted    (radm_intb_asserted  ),
    .radm_intc_asserted    (radm_intc_asserted  ),
    .radm_intd_asserted    (radm_intd_asserted  ),
    .radm_inta_deasserted  (radm_inta_deasserted),
    .radm_intb_deasserted  (radm_intb_deasserted),
    .radm_intc_deasserted  (radm_intc_deasserted),
    .radm_intd_deasserted  (radm_intd_deasserted),
    .radm_correctable_err  (radm_correctable_err),
    .radm_nonfatal_err     (radm_nonfatal_err   ),
    .radm_fatal_err        (radm_fatal_err      ),
    .radm_pm_pme           (radm_pm_pme         ),
    .radm_pm_to_ack        (radm_pm_to_ack      ),
    .radm_pm_turnoff  (radm_pm_turnoff  ),
    .rtlh_rfc_upd   (rtlh_rfc_upd ),
    .rtlh_rfc_data  (rtlh_rfc_data),
    .cfg_eml_control  (cfg_eml_control),
    .hp_pme           (hp_pme         ),
    .hp_int           (hp_int         ),
    .hp_msi           (hp_msi         ),
    .app_ltssm_enable  (app_ltssm_enable),
    .cfg_pbus_num      (cfg_pbus_num    ),
    .cfg_pbus_dev_num  (cfg_pbus_dev_num),

    .pm_dstate         (pm_dstate       ),
    .pm_status     (pm_status     ),
    .cfg_link_dis          (cfg_link_dis),
    .cfg_link_auto_bw_int  (cfg_link_auto_bw_int),
    .cfg_link_auto_bw_msi  (cfg_link_auto_bw_msi),
    .cfg_bw_mgt_int        (cfg_bw_mgt_int      ),
    .cfg_bw_mgt_msi        (cfg_bw_mgt_msi      ),
    .cfg_link_eq_req_int  (cfg_link_eq_req_int),
    .usp_g3_eq_redo_executed_int (usp_g3_eq_redo_executed_int),     // USP gen3 eq redo executed interrupt
    .usp_g4_eq_redo_executed_int (usp_g4_eq_redo_executed_int),     // USP gen4 eq redo executed interrupt
    .msi_ctrl_io       (msi_ctrl_io     ),
    .msi_ctrl_int      (msi_ctrl_int    ),
    .msi_ctrl_int_vec  (msi_ctrl_int_vec),
    .app_ltr_msg_req       (app_ltr_msg_req     ),
    .app_ltr_msg_grant     (app_ltr_msg_grant   ),
    .app_ltr_msg_latency   (app_ltr_msg_latency ),
    .app_ltr_msg_func_num  (app_ltr_msg_func_num),
    .app_ltr_latency       (app_ltr_latency     ),
    .radm_q_not_empty  (radm_q_not_empty),
    .radm_qoverflow    (radm_qoverflow  ),

    .trgt_cpl_timeout           (trgt_cpl_timeout         ),
    .trgt_timeout_cpl_func_num  (trgt_timeout_cpl_func_num),
    .trgt_timeout_cpl_tc     (trgt_timeout_cpl_tc   ),
    .trgt_timeout_cpl_attr   (trgt_timeout_cpl_attr ),
    .trgt_timeout_cpl_len    (trgt_timeout_cpl_len  ),
    .trgt_timeout_lookup_id  (trgt_timeout_lookup_id),
    .trgt_lookup_id          (trgt_lookup_id        ),
    .trgt_lookup_empty       (trgt_lookup_empty     ),

    .app_hdr_valid  (app_hdr_valid_int),
    .app_hdr_log    (app_hdr_log_int  ),
    .app_err_bus       (app_err_bus_int     ),
    .app_err_advisory  (app_err_advisory_int),
    .app_poisoned_tlp_type (app_poisoned_tlp_type_int),
    .app_err_func_num  (app_err_func_num_int),

    .mac_phy_powerdown   (mac_phy_powerdown ),
    .mac_phy_txelecidle  (mac_phy_txelecidle),
    .phy_mac_phystatus   (phy_mac_phystatus_int ),
    .phy_mac_rxdata            (phy_mac_rxdata           ),
    .phy_mac_rxdatak           (phy_mac_rxdatak          ),
    .phy_mac_rxvalid           (phy_mac_rxvalid_int      ),
    .phy_mac_rxstatus          (phy_mac_rxstatus_int       ),
    .phy_mac_rxstandbystatus   (phy_mac_rxstandbystatus  ),
    .phy_cfg_status            (phy_cfg_status           ),

    .mac_phy_txdetectrx_loopback  (mac_phy_txdetectrx_loopback),
    .mac_phy_txcompliance         (mac_phy_txcompliance       ),
    .mac_phy_rxpolarity           (mac_phy_rxpolarity         ),
    .mac_phy_rate        (mac_phy_rate      ),
    .mac_phy_txdeemph    (mac_phy_txdeemph  ),
    .cfg_hw_auto_sp_dis  (cfg_hw_auto_sp_dis),

    .phy_mac_rxdatavalid (phy_mac_rxdatavalid_int),

    .phy_mac_rxstartblock  (phy_mac_rxstartblock),
    .phy_mac_rxsyncheader  (phy_mac_rxsyncheader),
    .phy_mac_messagebus  (phy_mac_messagebus),
    .app_margining_ready            (app_margining_ready),
    .app_margining_software_ready   (app_margining_software_ready),
    .cfg_phy_control  (pre_cfg_phy_control),
    .core_clk (core_clk),
    .core_clk_ug (core_clk_ug),
    .aux_clk_g             (aux_clk_g            ),
    .radm_clk_g            (radm_clk_g           ),
    .en_radm_clk_g         (en_radm_clk_g        ),
    .radm_idle             (radm_idle            ),
    .pwr_rst_n             (pwr_rst_n            ),
    .sticky_rst_n          (sticky_rst_n         ),
    .non_sticky_rst_n      (non_sticky_rst_n     ),
    .core_rst_n            (core_rst_n           ),
    .pm_sel_aux_clk        (pm_sel_aux_clk       ),
    .device_type_i          (device_type         ),
    .app_req_retry_en      (app_req_retry_en    ),
    .app_pf_req_retry_en   (app_pf_req_retry_en ),


    .training_rst_n  (training_rst_n ),

    .xdlh_retryram_addr            (xdlh_retryram_addr         ),
    .xdlh_retryram_data            (xdlh_retryram_data          ),
    .xdlh_retryram_we              (xdlh_retryram_we            ),
    .xdlh_retryram_en              (xdlh_retryram_en            ),
    .xdlh_retryram_par_chk_val     (                            ),
    .retryram_xdlh_data            (retryram_xdlh_data          ),
    .xdlh_retrysotram_waddr        (xdlh_retrysotram_waddr      ),
    .xdlh_retrysotram_raddr        (xdlh_retrysotram_raddr      ),
    .xdlh_retrysotram_data         (xdlh_retrysotram_data       ),
    .xdlh_retrysotram_we           (xdlh_retrysotram_we         ),
    .xdlh_retrysotram_en           (xdlh_retrysotram_en         ),
    .xdlh_retrysotram_par_chk_val  (                            ),
    .retrysotram_xdlh_data         (retrysotram_xdlh_data       ),
    .p_hdrq_dataout      (p_hdrq_dataout     ),
    .p_hdrq_par_chk_val  (                   ),
    .p_hdrq_addra        (p_hdrq_addra       ),
    .p_hdrq_addrb        (p_hdrq_addrb       ),
    .p_hdrq_datain       (p_hdrq_datain      ),
    .p_hdrq_ena          (p_hdrq_ena         ),
    .p_hdrq_enb          (p_hdrq_enb         ),
    .p_hdrq_wea          (p_hdrq_wea         ),
    .p_dataq_dataout     (p_dataq_dataout    ),
    .p_dataq_par_chk_val (                   ),
    .p_dataq_addra       (p_dataq_addra      ),
    .p_dataq_addrb       (p_dataq_addrb      ),
    .p_dataq_datain      (p_dataq_datain     ),
    .p_dataq_ena         (p_dataq_ena        ),
    .p_dataq_enb         (p_dataq_enb        ),
    .p_dataq_wea         (p_dataq_wea        ),

















    .cfg_reg_serren              (cfg_reg_serren       ),
    .cfg_cor_err_rpt_en          (cfg_cor_err_rpt_en   ),
    .cfg_nf_err_rpt_en           (cfg_nf_err_rpt_en    ),
    .cfg_f_err_rpt_en            (cfg_f_err_rpt_en     ),

    .diag_ctrl_bus    (diag_ctrl_bus  ),
    .diag_status_bus  (diag_status_bus),

    .exp_rom_validation_status_strobe  (exp_rom_validation_status_strobe ),
    .exp_rom_validation_status         (exp_rom_validation_status        ),
    .exp_rom_validation_details_strobe (exp_rom_validation_details_strobe),
    .exp_rom_validation_details        (exp_rom_validation_details       ),
    .cxpl_debug_info        (cxpl_debug_info      ),
    .cxpl_debug_info_ei     (cxpl_debug_info_ei   )
    ,
    .phy_mac_localfs              (phy_mac_localfs            ),
    .phy_mac_locallf              (phy_mac_locallf            ),
    .phy_mac_dirfeedback          (phy_mac_dirfeedback        ),
    .phy_mac_fomfeedback          (phy_mac_fomfeedback        ),
    .phy_mac_local_tx_pset_coef   (phy_mac_local_tx_pset_coef ),
    .phy_mac_local_tx_coef_valid  (phy_mac_local_tx_coef_valid)
    ,
    .mac_phy_rxeqeval             (mac_phy_rxeqeval           )
    ,
    .assert_inta_grt    (assert_inta_grt  ),
    .assert_intb_grt    (assert_intb_grt  ),
    .assert_intc_grt    (assert_intc_grt  ),
    .assert_intd_grt    (assert_intd_grt  ),
    .deassert_inta_grt  (deassert_inta_grt),
    .deassert_intb_grt  (deassert_intb_grt),
    .deassert_intc_grt  (deassert_intc_grt),
    .deassert_intd_grt  (deassert_intd_grt),
    .cfg_int_pin        (cfg_int_pin      )
   ,
    .cfg_2ndbus_num  (cfg_2ndbus_num),
    .cfg_subbus_num  (cfg_subbus_num)
   ,.cfg_2nd_reset   (cfg_2nd_reset )
    ,
    .cfg_l1sub_en      (cfg_l1sub_en     )
    ,
    .app_clk_pm_en (app_clk_pm_en)
    ,
    .dpa_substate_update (dpa_substate_update)
    ,.aux_clk_active  (aux_clk_active)


    ,.cfg_send_cor_err   (cfg_send_cor_err  )
    ,.cfg_send_nf_err    (cfg_send_nf_err   )
    ,.cfg_send_f_err     (cfg_send_f_err    )
    ,.cfg_int_disable    (cfg_int_disable   )
    ,.cfg_no_snoop_en    (cfg_no_snoop_en   )
    ,.cfg_relax_order_en (cfg_relax_order_en)





    ,.cfg_br_ctrl_serren    (cfg_br_ctrl_serren)

    ,.slv_dbi_addr   (slv_dbi_addr)
    ,.slv_dbi_din    (slv_dbi_din )
    ,.slv_dbi_cs     (slv_dbi_cs  )
    ,.slv_dbi_cs2    (slv_dbi_cs2 )
    ,.slv_dbi_wr     (slv_dbi_wr  )
    ,.slv_dbi_func_num (slv_dbi_func_num)
    ,.slv_dbi_bar_num    (slv_dbi_bar_num   )
    ,.slv_dbi_rom_access (slv_dbi_rom_access)
    ,.slv_dbi_io_access  (slv_dbi_io_access )
    ,.slv_lbc_dbi_ack  (slv_lbc_dbi_ack )
    ,.slv_lbc_dbi_dout (slv_lbc_dbi_dout)
    ,.p_hdrq_parerr            ({RADM_Q_H_CTRLBITS{1'b0}})
    ,.p_dataq_parerr           ({RADM_Q_D_CTRLBITS{1'b0}})
    ,.retryram_xdlh_parerr     ({1{1'b0}}               )
    ,.retrysotram_xdlh_parerr  ({1{1'b0}}               )
    ,.p_hdrq_parerr_out_int    (                        )
    ,.p_dataq_parerr_out_int   (                        )
    ,.pm_aux_clk          (pm_aux_clk         )
    ,.pm_aux_clk_active (pm_aux_clk_active)
    ,.trgt_lookup_id_i        (trgt_lookup_id_i       )
    ,.int_trgt1_radm_halt (int_trgt1_radm_halt)
    ,.int_radm_trgt1_hv   (int_radm_trgt1_hv  )
    ,.int_radm_trgt1_dv   (int_radm_trgt1_dv  )
    ,.int_radm_trgt1_eot  (int_radm_trgt1_eot )

    ,.radm_trgt1_addr_i     (radm_trgt1_addr_i    )
    ,.radm_trgt1_data_i     (radm_trgt1_data_i    )
    ,.radm_trgt1_vc_num_i   (radm_trgt1_vc_num_i   )


    ,.radm_bypass_data_i        (radm_bypass_data_i      )
    ,.radm_bypass_byte_cnt_i    (radm_bypass_byte_cnt_i  )
    ,.radm_bypass_addr_i        (radm_bypass_addr_i      )
    ,.radm_pend_cpl_so          (radm_pend_cpl_so        )
    ,.radm_q_cpl_not_empty      (radm_q_cpl_not_empty    )

    ,.cfg_msi_ctrl_en    (cfg_msi_ctrl_en  )
    ,.cfg_msi_ctrl_addr  (cfg_msi_ctrl_addr)
    ,.msi_int_rcvd       (msi_int_rcvd     )
    ,.msi_int_data       (msi_int_data     )
    ,.cfg_err_resp       (cfg_err_resp     )
    ,.cfg_order_rule_ctrl          (cfg_order_rule_ctrl       )
    ,.cfg_ax_mstr_ordr_p_event_sel (cfg_ax_mstr_ordr_p_event_sel)
    ,.cfg_ax_snp_en                (cfg_ax_snp_en               )
    ,.cfg_mstr_arcache_mode     (cfg_mstr_arcache_mode    )
    ,.cfg_mstr_awcache_mode     (cfg_mstr_awcache_mode    )
    ,.cfg_mstr_arcache_value    (cfg_mstr_arcache_value   )
    ,.cfg_mstr_awcache_value    (cfg_mstr_awcache_value   )
    ,.cfg_aximstr_msg_addr_high (cfg_aximstr_msg_addr_high)
    ,.cfg_aximstr_msg_addr_low  (cfg_aximstr_msg_addr_low )
    ,.cfg_ax_mstr_zeroread_fw  (cfg_ax_mstr_zeroread_fw)
    ,.cfg_axi_clk_gating_en    (cfg_axi_clk_gating_en)
    ,.int_radm_trgt1_mem_type  (int_radm_trgt1_mem_type)
    ,.atu_reg_out_type         (atu_reg_out_type       )
    ,.atu_reg_out_func_num     (atu_reg_out_func_num   )
    ,.atu_reg_out_func_bypass  (atu_reg_out_func_bypass)
    ,.atu_reg_out_snp          (atu_reg_out_snp        )
    ,.atu_reg_out_en        (atu_reg_out_en      )
    ,.atu_reg_out_base      (atu_reg_out_base    )
    ,.atu_reg_out_upr_base  (atu_reg_out_upr_base)
    ,.atu_reg_out_limit     (atu_reg_out_limit   )
    ,.atu_reg_out_uppr_limit (atu_reg_out_uppr_limit)
    ,.atu_reg_out_incr_rgn_size (atu_reg_out_incr_rgn_size)
    ,.cfg_msix_addr_match_low   (cfg_msix_addr_match_low )
    ,.cfg_msix_addr_match_high  (cfg_msix_addr_match_high)
    ,.crgb_cdm_rdata (crgb_cdm_rdata)
    ,.crgb_cdm_cs     (crgb_cdm_cs    )
    ,.crgb_cdm_ack    (crgb_cdm_ack   )
    ,.crgb_cdm_addr   (crgb_cdm_addr  )
    ,.crgb_cdm_wdata  (crgb_cdm_wdata )
    ,.crgb_cdm_wr     (crgb_cdm_wr    )
    ,.crgb_cdm_source (crgb_cdm_source)
    ,.radm_trgt1_cpl_lookup_id_rlsd (radm_trgt1_cpl_lookup_id_rlsd)
    ,.radm_trgt1_lookup_id_consmd (radm_trgt1_lookup_id_consmd)

    ,.radm_grant_tlp_type_i (radm_grant_tlp_type_i)

    ,.brdg_trgt1_p_xfer_done (brdg_trgt1_p_xfer_done)
    ,.brdg_slv_flush_ack    (brdg_slv_flush_ack)
    ,.rstctl_slv_flush_req         (rstctl_slv_flush_req )
    ,.rstctl_mstr_flush_req        (rstctl_mstr_flush_req)
    ,.rstctl_flush_done            (rstctl_flush_done)
    ,.pm_phy_type                  (1'b0)
    ,.current_data_rate            (current_data_rate          )
    ,.pm_current_data_rate_others  (pm_current_data_rate_others)

    ,.client1_tlp_dma          (client1_tlp_dma        )
    ,.client1_tlp_dma_channel  (client1_tlp_dma_channel)
    ,.atu_reg_out_invert       (atu_reg_out_invert)
    ,.cfg_hp_slot_ctrl_access        (cfg_hp_slot_ctrl_access)
    ,.cfg_dll_state_chged_en         (cfg_dll_state_chged_en)
    ,.cfg_cmd_cpled_int_en           (cfg_cmd_cpled_int_en)
    ,.cfg_pre_det_chged_en           (cfg_pre_det_chged_en)
    ,.cfg_mrl_sensor_chged_en        (cfg_mrl_sensor_chged_en)
    ,.cfg_pwr_fault_det_en           (cfg_pwr_fault_det_en)
    ,.cfg_atten_button_pressed_en    (cfg_atten_button_pressed_en)
    ,.cfg_hp_int_en                  (cfg_hp_int_en)

    ,.app_req_flush                  (1'b0)
    ,.cfg_upd_aspm_ctrl              (cfg_upd_aspm_ctrl)
    ,.cfg_aspm_l1_timer_enable       (cfg_aspm_l1_timer_enable)
    ,.cfg_upd_aslk_pmctrl            (cfg_upd_aslk_pmctrl)
    ,.cfg_upd_pme_cap                (cfg_upd_pme_cap)
    ,.cfg_elastic_buffer_mode        (cfg_elastic_buffer_mode)
    ,.rstctl_ltssm_enable            (rstctl_ltssm_enable)
    ,.rstctl_core_flush_req          (rstctl_core_flush_req)
    ,.upstream_port                  (upstream_port)
    ,.xdlh_nodllp_pending            (xdlh_nodllp_pending)
    ,.xdlh_no_acknak_dllp_pending    (xdlh_no_acknak_dllp_pending)
    ,.xdlh_xmt_pme_ack               (xdlh_xmt_pme_ack)
    ,.rdlh_rcvd_as_req_l1            (rdlh_rcvd_as_req_l1)
    ,.rdlh_rcvd_pm_enter_l1          (rdlh_rcvd_pm_enter_l1)
    ,.rdlh_rcvd_pm_enter_l23         (rdlh_rcvd_pm_enter_l23)
    ,.rdlh_rcvd_pm_req_ack           (rdlh_rcvd_pm_req_ack)
    ,.smlh_link_in_training          (smlh_link_in_training)
    ,.xdlh_not_expecting_ack         (xdlh_not_expecting_ack)
    ,.xadm_had_enough_credit         (xadm_had_enough_credit)
    ,.smlh_in_l0                     (smlh_in_l0)
    ,.smlh_in_l0s                    (smlh_in_l0s)
    ,.smlh_in_rl0s                   (smlh_in_rl0s)
    ,.smlh_in_l0_l0s                 (smlh_in_l0_l0s)
    ,.smlh_in_l1                     (smlh_in_l1)
    ,.smlh_in_l1_p1                  (smlh_in_l1_p1)
    ,.smlh_in_l23                    (smlh_in_l23)
    ,.smlh_l123_eidle_timeout        (smlh_l123_eidle_timeout)
    ,.latched_rcvd_eidle_set         (latched_rcvd_eidle_set)
    ,.xadm_tlp_pending               (xadm_tlp_pending)
    ,.xadm_block_tlp_ack             (xadm_block_tlp_ack)
    ,.xtlh_tlp_pending               (xtlh_tlp_pending)
    ,.xdlh_tlp_pending               (xdlh_tlp_pending)
    ,.xdlh_retry_pending             (xdlh_retry_pending)
    ,.xadm_no_fc_credit              (xadm_no_fc_credit)
    ,.cfg_aslk_pmctrl                (cfg_aslk_pmctrl)
    ,.cfg_l0s_entr_latency_timer     (cfg_l0s_entr_latency_timer)
    ,.cfg_l1_entr_latency_timer      (cfg_l1_entr_latency_timer)
    ,.cfg_l1_entr_wo_rl0s            (cfg_l1_entr_wo_rl0s)
    ,.cfg_upd_pmcsr                  (cfg_upd_pmcsr)
    ,.cfg_upd_aux_pm_en              (cfg_upd_aux_pm_en)
    ,.cfg_pmstatus_clr               (cfg_pmstatus_clr)
    ,.cfg_pmstate                    (cfg_pmstate)
    ,.cfg_pme_en                     (cfg_pme_en)
    ,.cfg_aux_pm_en                  (cfg_aux_pm_en)
    ,.cfg_upd_req_id                 (cfg_upd_req_id)
    ,.cfg_clk_pm_en                  (cfg_clk_pm_en)
    ,.radm_pm_asnak                  (radm_pm_asnak)
    ,.int_radm_pm_to_ack             (int_radm_pm_to_ack)
    ,.cfg_pme_cap                    (cfg_pme_cap)
    ,.rmlh_descrambled_even_parity   (rmlh_descrambled_even_parity)
    ,.xmlh_scramble_even_parity      (xmlh_scramble_even_parity)
    ,.pipe_aux_sync_p1_ack           (pipe_aux_sync_p1_ack)
    ,.pipe_aux_sync_block            (pipe_aux_sync_block)
    ,.cfg_l1sub_control              (cfg_l1sub_control)
    ,.cfg_pl_l1sub_control           (cfg_pl_l1sub_control)
    ,.cfg_pl_l1_exit_mode            (cfg_pl_l1_exit_mode)
    ,.pm_cpl_timer_decr              (pm_cpl_timer_decr)
    ,.pm_cpl_timeout_value           (pm_cpl_timeout_value)
    ,.cfg_pl_l1_nowait_p1            (cfg_pl_l1_nowait_p1)
    ,.cfg_pl_l1_clk_sel              (cfg_pl_l1_clk_sel)
    ,.cfg_p2nobeacon_enable          (cfg_p2nobeacon_enable)
    ,.cfg_utility                    (cfg_utility)
    ,.pm_cfg_utility                 (pm_cfg_utility)
    ,.cfg_phy_perst_on_warm_reset    (cfg_phy_perst_on_warm_reset)
    ,.cfg_phy_rst_timer              (cfg_phy_rst_timer)
    ,.cfg_pma_phy_rst_delay_timer    (cfg_pma_phy_rst_delay_timer)
    ,.cfg_dsp_pcipm_l1_enter_delay   (cfg_dsp_pcipm_l1_enter_delay)
    ,.cfg_pl_aux_clk_freq            (cfg_pl_aux_clk_freq)
    ,.cfg_pl_gen3_zrxdc_noncompl     (cfg_pl_gen3_zrxdc_noncompl)
    ,.pme_to_ack_grt                 (pme_to_ack_grt)
    ,.radm_trgt0_pending             (radm_trgt0_pending)
    ,.lbc_active                     (lbc_active)
    ,.pm_pme_grant                   (pm_pme_grant)
    ,.pme_turn_off_grt               (pme_turn_off_grt)
    ,.pre_mac_phy_powerdown          (pre_mac_phy_powerdown)
    ,.int_mac_phy_txelecidle         (int_mac_phy_txelecidle)
    ,.pre_mac_phy_txdata             (pre_mac_phy_txdata)
    ,.pre_mac_phy_txdatak            (pre_mac_phy_txdatak)
    ,.pre_mac_phy_txdetectrx_loopback (core_pre_mac_phy_txdetectrx_loopback)
    ,.glue_mac_phy_txcompliance      (glue_mac_phy_txcompliance)
    ,.pre_mac_phy_rxpolarity         (pre_mac_phy_rxpolarity)
    ,.tmp_mac_phy_rxpolarity         (tmp_mac_phy_rxpolarity)
    ,.pre_mac_phy_width              (pre_mac_phy_width)
    ,.pre_mac_phy_pclk_rate          (pre_mac_phy_pclk_rate)
    ,.pre_mac_phy_rxstandby          (pre_mac_phy_rxstandby)
    ,.pre_mac_phy_rate               (pre_mac_phy_rate)
    ,.pre_mac_phy_txdeemph           (pre_mac_phy_txdeemph)
    ,.pre_mac_phy_txmargin           (pre_mac_phy_txmargin)
    ,.pre_mac_phy_txswing            (pre_mac_phy_txswing)
    ,.pre_mac_phy_txdatavalid        (pre_mac_phy_txdatavalid)
    ,.pre_mac_phy_txsyncheader       (pre_mac_phy_txsyncheader)
    ,.pre_mac_phy_txstartblock       (pre_mac_phy_txstartblock)
    ,.pre_mac_phy_blockaligncontrol  (pre_mac_phy_blockaligncontrol)
    ,.pre_mac_phy_rxpresethint       (pre_mac_phy_rxpresethint)
    ,.int_cfg_pbus_num               (int_cfg_pbus_num)
    ,.int_cfg_pbus_dev_num           (int_cfg_pbus_dev_num)
    ,.pre_mac_phy_fs                 (pre_mac_phy_fs)
    ,.pre_mac_phy_lf                 (pre_mac_phy_lf)
    ,.pre_mac_phy_local_pset_index   (pre_mac_phy_local_pset_index)
    ,.pre_mac_phy_getlocal_pset_coef (pre_mac_phy_getlocal_pset_coef)
    ,.pre_mac_phy_rxeqinprogress     (pre_mac_phy_rxeqinprogress)
    ,.pre_mac_phy_invalid_req        (pre_mac_phy_invalid_req)
    ,.pre_mac_phy_rxeqeval           (pre_mac_phy_rxeqeval)
    ,.pre_mac_phy_dirchange          (pre_mac_phy_dirchange)
    ,.pre_mac_phy_smlh_coef_rtx      (pre_mac_phy_smlh_coef_rtx)
    ,.pre_mac_phy_encodedecodebypass (pre_mac_phy_encodedecodebypass)
    ,.pre_mac_phy_mbus               (pre_mac_phy_mbus)
    ,.msg_gen_asnak_grt              (msg_gen_asnak_grt)
    ,.smlh_lane_flip_ctrl            (smlh_lane_flip_ctrl)
    ,.cfg_link_retrain               (cfg_link_retrain)
    ,.cfg_lpbk_en                    (cfg_lpbk_en)
    ,.cfg_plreg_reset                (cfg_plreg_reset)
    ,.cfg_directed_speed_change      (cfg_directed_speed_change)
    ,.cfg_pl_multilane_control       (cfg_pl_multilane_control)
    ,.msg_gen_unlock_grant           (msg_gen_unlock_grant)
    ,.edma_xfer_pending              (edma_xfer_pending)
    ,.pm_ltssm_enable                (pm_ltssm_enable)
    ,.pm_current_data_rate           (int_pm_current_data_rate)
    ,.pm_rmlh_descrambled_even_parity (pm_rmlh_descrambled_even_parity)
    ,.pm_xmlh_scramble_even_parity   (pm_xmlh_scramble_even_parity)
    ,.pm_smlh_entry_to_l0s           (pm_smlh_entry_to_l0s)
    ,.pm_smlh_entry_to_l1            (pm_smlh_req_l1)
    ,.pm_smlh_entry_to_l2            (pm_smlh_req_l2)
    ,.pm_smlh_prepare4_l123          (pm_smlh_prepare4_l123_s)
    ,.pm_smlh_l0s_exit               (pm_smlh_l0s_exit)
    ,.pm_smlh_l1_exit                (pm_smlh_l1_exit_s)
    ,.pm_smlh_l23_exit               (pm_smlh_l23_exit)
    ,.pm_freeze_fc_timer             (pm_freeze_fc_timer)
    ,.pm_freeze_cpl_timer            (pm_freeze_cpl_timer)
    ,.pm_xmt_asnak                   (pm_xmt_asnak)
    ,.pm_xmt_turnoff                 (pm_xmt_turnoff)
    ,.pm_xmt_to_ack                  (pm_xmt_to_ack)
    ,.pm_xmt_pme                     (pm_xmt_pme)
    ,.pm_turnoff_timeout             (pm_turnoff_timeout)
    ,.pm_bus_num                     (pm_bus_num)
    ,.pm_dev_num                     (pm_dev_num)
    ,.pm_int_phy_powerdown           (pm_int_phy_powerdown)
    ,.pm_smlh_l1_2_latched           (pm_smlh_l1_2_latched)
    ,.pm_smlh_l1_n_latched           (pm_smlh_l1_n_latched)
    ,.pm_cpl_timer                   (pm_cpl_timer)
    ,.l1sub_state                    (pm_l1sub_state)
    ,.pm_master_state                (pm_master_state)
    ,.pm_slave_state                 (pm_slave_state)
    ,.int_phy_txelecidle             (int_phy_txelecidle)
    ,.pm_block_phystatus             (pm_block_phystatus)
    ,.pm_en_pulse_det                (pm_en_pulse_det)
    ,.sqlchd_rxelecidle              (sqlchd_rxelecidle)
    ,.pm_sys_aux_pwr_det             (pm_sys_aux_pwr_det)
    ,.pm_pme_en_split                (pm_pme_en_split)
    ,.pm_aux_pm_en_split             (pm_aux_pm_en_split)
    ,.pm_init_rst                    (pm_init_rst)
    ,.pm_unlock_msg_req              (pm_unlock_msg_req)
    ,.pm_rx_lane_flip_en             (pm_rx_lane_flip_en)
    ,.pm_tx_lane_flip_en             (pm_tx_lane_flip_en)
    ,.pm_rx_pol_lane_flip_ctrl       (pm_rx_pol_lane_flip_ctrl)
    ,.pm_smlh_link_retrain           (pm_smlh_link_retrain)
    ,.pm_l1_aspm_entr                (pm_l1_aspm_entr)
    ,.pm_radm_block_tlp              (pm_radm_block_tlp)
    ,.trgt_cpl_lut_empty             (trgt_cpl_lut_empty)
    ,.msix_msi_req                   (msix_msi_req)
    ,.app_dev_num                    (app_dev_num)
    ,.app_bus_num                    (app_bus_num)
    ,.msg_gen_hv                     (msg_gen_hv)
    ,.lbc_cpl_hv                     (lbc_cpl_hv)
    ,.pm_powerdown_status          (pm_powerdown_status)
    ,.cfg_force_powerdown          (cfg_force_powerdown)
    ,
    .cfg_uncor_internal_err_sts         (cfg_uncor_internal_err_sts        ),
    .cfg_rcvr_overflow_err_sts          (cfg_rcvr_overflow_err_sts         ),
    .cfg_fc_protocol_err_sts            (cfg_fc_protocol_err_sts           ),
    .cfg_mlf_tlp_err_sts                (cfg_mlf_tlp_err_sts               ),
    .cfg_surprise_down_er_sts           (cfg_surprise_down_er_sts          ),
    .cfg_dl_protocol_err_sts            (cfg_dl_protocol_err_sts           ),
    .cfg_ecrc_err_sts                   (cfg_ecrc_err_sts                  ),
    .cfg_corrected_internal_err_sts     (cfg_corrected_internal_err_sts    ),
    .cfg_replay_number_rollover_err_sts (cfg_replay_number_rollover_err_sts),
    .cfg_replay_timer_timeout_err_sts   (cfg_replay_timer_timeout_err_sts  ),
    .cfg_bad_dllp_err_sts               (cfg_bad_dllp_err_sts              ),
    .cfg_bad_tlp_err_sts                (cfg_bad_tlp_err_sts               ),
    .cfg_rcvr_err_sts                   (cfg_rcvr_err_sts                  ),
    .cfg_link_capable                   (cfg_link_capable                  ),
    .cfg_advisory_nf_sts                (cfg_advisory_nf_sts               ),
    .cfg_hdr_log_overflow_sts           (cfg_hdr_log_overflow_sts          )
    ,.radm_trgt1_atu_sloc_match         (radm_trgt1_atu_sloc_match)
    ,.radm_trgt1_atu_cbuf_err           (radm_trgt1_atu_cbuf_err)





    ,.pm_pclkack_timeout             (pm_pclkack_timeout)
    ,.pm_current_powerdown_p1        (pm_current_powerdown_p1)
    ,.pm_current_powerdown_p0        (pm_current_powerdown_p0)
    ,.cfg_neg_link_width            (cfg_neg_link_width             )
    ,.radm_slot_pwr_payload    (radm_slot_pwr_payload)
    ,.radm_slot_pwr_limit      (radm_slot_pwr_limit)
); // u_DWC_pcie_core

assign usp_eq_redo_executed_int = usp_g3_eq_redo_executed_int | usp_g4_eq_redo_executed_int;

// -------------------------------------------------------------------------------------
// DWC CXS Interface Controller Instantiation
// -------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------

// -------------------------------------------------------------------------------------
// DWC CXL Controller Instantiation
// -------------------------------------------------------------------------------------

wire [NL*TX_COEF_WD-1:0] mac_phy_smlh_coef_rtx;

x4_pm_ctrl

#(  .INST           (INST),
    .NL             (NL),
    .L2NL           (L2NL),
    .RXNL           (RXNL),
    .NF             (NF),
    .NFUNC_WD       (PF_WD),
    .NVC            (NVC),
    .BUSNUM_WD      (BUSNUM_WD),
    .DEVNUM_WD      (DEVNUM_WD),
    .PHY_NB         (PHY_NB),
    .RX_PSET_WD     (RX_PSET_WD),
    .TX_FS_WD       (TX_FS_WD),
    .TX_PSET_WD     (TX_PSET_WD),
    .TX_CRSR_WD     (TX_CRSR_WD),
    .TX_COEF_WD     (TX_COEF_WD),
    .PHY_RATE_WD    (RATE_WIDTH),
    .PDWN_WIDTH     (PDWN_WIDTH),
    .ORIG_DATA_WD   (ORIG_DATA_WD),
    .SERDES_DATA_WD (SERDES_DATA_WD),
    .PIPE_DATA_WD   (PIPE_DATA_WD  ),
    .TX_DATAK_WD    (TX_DATAK_WD),
    .TX_DEEMPH_WD   (TX_DEEMPH_WD),
    .PHY_TXEI_WD    (PHY_TXEI_WD   ),
    .L1SUB_CONTROL_WD (L1SUB_CONTROL_WD),
    .PL_L1SUB_CONTROL_WD (PL_L1SUB_CONTROL_WD),
    .PM_CPL_TIMER_WD (PM_CPL_TIMER_WD),
    .PL_AUX_CLK_FREQ_WD (PL_AUX_CLK_FREQ_WD),
    .PM_SYNC_DEPTH  (CORE_SYNC_DEPTH)
) u_pm_ctrl(
    .pm_xdlh_dllp_req_s             (pm_xdlh_dllp_req),
    .xplh_pm_dllp_ack               (xplh_pm_dllp_ack),


    .pm_xdlh_req_ack                (pm_xdlh_req_ack),

    //    ----------------- Inputs ----------------------
    .core_rst_n                     (core_rst_n),
    .cfg_upd_aspm_ctrl              (cfg_upd_aspm_ctrl),
    .cfg_aspm_l1_timer_enable       (cfg_aspm_l1_timer_enable),
    .cfg_upd_aslk_pmctrl            (cfg_upd_aslk_pmctrl),
    .link_req_rst_not               (link_req_rst_not),
    .app_clk_req_n                  (app_clk_req_n),
    .phy_clk_req_n                  (phy_clk_req_n),
    .app_hold_phy_rst               (app_hold_phy_rst),
    .cfg_upd_pme_cap                (cfg_upd_pme_cap),
    .aux_clk                        (aux_clk),
    .pwr_rst_n                      (pwr_rst_n),

// Connect the pipe_clk to the clock which is launching Phystatus
    .pipe_clk                       (core_clk_ug),

    .radm_idle                      (radm_idle),
    .cfg_elastic_buffer_mode        (cfg_elastic_buffer_mode),
    .rstctl_ltssm_enable            (rstctl_ltssm_enable),
    .rstctl_core_flush_req          (rstctl_core_flush_req),
    .trgt_cpl_lut_empty             (trgt_cpl_lut_empty),
    .upstream_port                  (upstream_port),
    .switch_device                  (1'b0),
    .xdlh_nodllp_pending            (xdlh_nodllp_pending),
    .xdlh_no_acknak_dllp_pending    (xdlh_no_acknak_dllp_pending),
    .xdlh_xmt_pme_ack               (xdlh_xmt_pme_ack),
    .rdlh_rcvd_as_req_l1            (rdlh_rcvd_as_req_l1),
    .rdlh_rcvd_pm_enter_l1          (rdlh_rcvd_pm_enter_l1),
    .rdlh_rcvd_pm_enter_l23         (rdlh_rcvd_pm_enter_l23),
    .rdlh_rcvd_pm_req_ack           (rdlh_rcvd_pm_req_ack),
    .smlh_link_up                   (smlh_link_up),
    .smlh_link_in_training          (pm_smlh_link_in_training),
    .all_dwsp_in_l1                 (1'b0),
    .all_dwsp_in_rl0s               (1'b0),                         // Only for SW
    .upsp_in_rl0s                   (1'b0),                         // Only for SW
    .one_dwsp_exit_l1               (1'b0),
    .one_dwsp_exit_l23              (1'b0),
    .app_req_entr_l1                (app_req_entr_l1),
    .app_ready_entr_l23             (app_ready_entr_l23),
    .app_req_exit_l1                (app_req_exit_l1),
    .xdlh_not_expecting_ack         (xdlh_not_expecting_ack),
    .xtlh_had_enough_credit         (xadm_had_enough_credit),
    .smlh_in_l0                     (smlh_in_l0),
    .smlh_in_l0s                    (smlh_in_l0s),
    .smlh_in_rl0s                   (smlh_in_rl0s),
    .smlh_in_l0_l0s                 (smlh_in_l0_l0s),
    .smlh_in_l1                     (smlh_in_l1),
    .smlh_in_l1_p1                  (smlh_in_l1_p1),
    .smlh_in_l23                    (smlh_in_l23),
    .smlh_l123_eidle_timeout        (smlh_l123_eidle_timeout),
    .latched_rcvd_eidle_set         (latched_rcvd_eidle_set),
    .sys_aux_pwr_det                (sys_aux_pwr_det),
    .xadm_tlp_pending               (xadm_tlp_pending),
    .xadm_block_tlp_ack             (xadm_block_tlp_ack),
    .xtlh_tlp_pending               (xtlh_tlp_pending),
    .xdlh_tlp_pending               (xdlh_tlp_pending),
    .xdlh_retry_pending             (xdlh_retry_pending),
    .xtlh_no_fc_credit              (xadm_no_fc_credit),
    .cfg_aslk_pmctrl                (cfg_aslk_pmctrl),
    .cfg_l0s_entr_latency_timer     (cfg_l0s_entr_latency_timer),
    .cfg_l1_entr_latency_timer      (cfg_l1_entr_latency_timer),
    .cfg_l1_entr_wo_rl0s            (cfg_l1_entr_wo_rl0s),
    .all_dwsp_rcvd_toack_msg        (1'b0),
    .outband_pwrup_cmd              (outband_pwrup_cmd),
    .cfg_upd_pmcsr                  (cfg_upd_pmcsr),
    .cfg_upd_aux_pm_en              (cfg_upd_aux_pm_en),
    .cfg_pmstatus_clr               (cfg_pmstatus_clr),
    .cfg_pmstate                    (cfg_pmstate),
    .cfg_pme_en                     (cfg_pme_en),
    .cfg_aux_pm_en                  (cfg_aux_pm_en),
    .cfg_upd_req_id                 (int_cfg_upd_req_id),
    .cfg_pbus_dev_num               (int_cfg_pbus_dev_num),
    .cfg_pbus_num                   (int_cfg_pbus_num),
    .cfg_clk_pm_en                  (cfg_clk_pm_en),
    .radm_pm_turnoff                (radm_pm_turnoff),
    .radm_pm_asnak                  (radm_pm_asnak),
    .radm_pm_to_ack                 (int_radm_pm_to_ack),
    .apps_pm_xmt_turnoff            (apps_pm_xmt_turnoff),
    .apps_pm_xmt_pme                (apps_pm_xmt_pme),              // Only for upstream port
    .nhp_pme_det                    ({NF{1'b0}}),                   // Only for SW upstream
    .cfg_pme_cap                    (cfg_pme_cap),
    .phy_mac_rxelecidle             (phy_mac_rxelecidle_int),
    .current_data_rate              (current_data_rate),
    .rmlh_descrambled_even_parity   (rmlh_descrambled_even_parity),
    .xmlh_scramble_even_parity      (xmlh_scramble_even_parity),
    .aux_clk_active                 (aux_clk_active),
    .phy_mac_phystatus              (phy_mac_phystatus_int),
    .phy_mac_rxstatus               (phy_mac_rxstatus_int),
    .aux_sync_p1_ack                (pipe_aux_sync_p1_ack),
    .phystatus_pc_busy              (pipe_aux_sync_block),
    .cfg_l1sub_control              (cfg_l1sub_control),
    .cfg_pl_l1sub_control           (cfg_pl_l1sub_control),
    .cfg_pl_l1_exit_mode            (cfg_pl_l1_exit_mode),
    .clkreq_in_n                    (clkreq_in_n),
    .pm_cpl_timer_decr              (pm_cpl_timer_decr),
    .pm_cpl_timeout_value           (pm_cpl_timeout_value),
    .cfg_pl_l1_nowait_p1            (cfg_pl_l1_nowait_p1),
    .cfg_pl_l1_clk_sel              (cfg_pl_l1_clk_sel),
    .cfg_p2nobeacon_enable          (cfg_p2nobeacon_enable),
    .cfg_utility                    (cfg_utility),
    .pm_cfg_utility                 (pm_cfg_utility),
    .cfg_phy_perst_on_warm_reset    (cfg_phy_perst_on_warm_reset),
    .cfg_phy_rst_timer              (cfg_phy_rst_timer),
    .cfg_pma_phy_rst_delay_timer    (cfg_pma_phy_rst_delay_timer),
    .cfg_dsp_pcipm_l1_enter_delay   (cfg_dsp_pcipm_l1_enter_delay),
    .cfg_pl_aux_clk_freq            (cfg_pl_aux_clk_freq),
    .cfg_pl_gen3_zrxdc_noncompl     (cfg_pl_gen3_zrxdc_noncompl),
    .pme_to_ack_grt                 (pme_to_ack_grt),
    .radm_trgt0_pending             (radm_trgt0_pending),
    .lbc_active                     (lbc_active),
    .pm_pme_grant                   (pm_pme_grant),
    .pme_turn_off_grt               (pme_turn_off_grt),
    .perst_n                        (perst_n),
    .app_xfer_pending                  (app_xfer_pending),
    .slv_awvalid                    (slv_awvalid),
    .slv_arvalid                    (slv_arvalid),
    .slv_wvalid                     (slv_wvalid),
    .dbi_arvalid                    (dbi_arvalid),
    .dbi_awvalid                    (dbi_awvalid),
    .dbi_wvalid                     (dbi_wvalid),
    .brdg_dbi_xfer_pending          (brdg_dbi_xfer_pending),
    .brdg_slv_xfer_pending          (brdg_slv_xfer_pending),


   .client0_tlp_hv                  (brdg_client0_tlp_hv),
    .client1_tlp_hv                 (brdg_client1_tlp_hv),
    .client2_tlp_hv                 (brdg_client2_tlp_hv),
    .msg_gen_hv                     (msg_gen_hv),
    .lbc_cpl_hv                     (lbc_cpl_hv),

    .app_obff_idle_msg_req          (app_obff_idle_msg_req),
    .app_obff_obff_msg_req          (app_obff_obff_msg_req),
    .app_obff_cpu_active_msg_req    (app_obff_cpu_active_msg_req),

    .cfg_link_capable               (cfg_link_capable),
    .smlh_ltssm_state               (smlh_ltssm_state),
    .mac_phy_powerdown              (pre_mac_phy_powerdown),
    .mac_phy_txelecidle             (int_mac_phy_txelecidle),
    // PHY interface signals
    .mac_phy_txdata                 (pre_mac_phy_txdata),
    .mac_phy_txdatak                (pre_mac_phy_txdatak),
    .mac_phy_txdetectrx_loopback    (pre_mac_phy_txdetectrx_loopback),
    .mac_phy_txcompliance           (glue_mac_phy_txcompliance),
    .mac_phy_rxpolarity             (pre_mac_phy_rxpolarity),
    .ltssm_rxpolarity               (tmp_mac_phy_rxpolarity),
    .mac_phy_width                  (pre_mac_phy_width),
    .mac_phy_pclk_rate              (pre_mac_phy_pclk_rate),
    .mac_phy_rxstandby              (pre_mac_phy_rxstandby),
    .mac_phy_rate                   (pre_mac_phy_rate),
    .mac_phy_txdeemph               (pre_mac_phy_txdeemph),
    .mac_phy_txmargin               (pre_mac_phy_txmargin),
    .mac_phy_txswing                (pre_mac_phy_txswing),
    .mac_phy_txdatavalid            (pre_mac_phy_txdatavalid),
    .mac_phy_txsyncheader           (pre_mac_phy_txsyncheader),
    .mac_phy_txstartblock           (pre_mac_phy_txstartblock),
    .mac_phy_blockaligncontrol      (pre_mac_phy_blockaligncontrol),
    .mac_phy_rxpresethint           (pre_mac_phy_rxpresethint),
    .mac_phy_fs                     (pre_mac_phy_fs),
    .mac_phy_lf                     (pre_mac_phy_lf),
    .mac_phy_local_pset_index       (pre_mac_phy_local_pset_index),
    .mac_phy_getlocal_pset_coef     (pre_mac_phy_getlocal_pset_coef),
    .mac_phy_rxeqinprogress         (pre_mac_phy_rxeqinprogress),
    .mac_phy_invalid_req            (pre_mac_phy_invalid_req),
    .mac_phy_rxeqeval               (pre_mac_phy_rxeqeval),
    .mac_phy_dirchange              (pre_mac_phy_dirchange),
    .mac_phy_smlh_coef_rtx          (pre_mac_phy_smlh_coef_rtx),
    .mac_phy_encodedecodebypass     (pre_mac_phy_encodedecodebypass),
    .mac_phy_mbus                   (pre_mac_phy_mbus),
    .cfg_phy_control                (pre_cfg_phy_control),
    .msg_gen_asnak_grt              (msg_gen_asnak_grt),

    .rx_lane_flip_en                (rx_lane_flip_en),
    .tx_lane_flip_en                (tx_lane_flip_en),
    .smlh_lane_flip_ctrl            (smlh_lane_flip_ctrl),

    .cfg_link_dis                   (cfg_link_dis),
    .cfg_link_retrain               (cfg_link_retrain),
    .cfg_lpbk_en                    (cfg_lpbk_en),
    .cfg_2nd_reset                  (cfg_2nd_reset),
    .cfg_plreg_reset                (cfg_plreg_reset),
    .app_init_rst                   (app_init_rst),
    .cfg_directed_speed_change      (cfg_directed_speed_change),
    .cfg_directed_width_change      (cfg_pl_multilane_control[6]),
    .ven_msg_req                    (ven_msg_req),
    .ven_msi_req                    (ven_msi_req),
    .app_ltr_msg_req                (app_ltr_msg_req),
    .app_unlock_msg                 (app_unlock_msg),
    .msg_gen_unlock_grant           (msg_gen_unlock_grant),
    .edma_xfer_pending              (edma_xfer_pending),
    .app_l1sub_disable              (app_l1sub_disable),
    .msix_msi_req                   (msix_msi_req),
    // ----------------- Outputs -----------------------
    .pm_en_aux_clk_g                (en_aux_clk_g),
    .pm_ltssm_enable                (pm_ltssm_enable),
    .pm_current_data_rate           (int_pm_current_data_rate),
    .pm_rmlh_descrambled_even_parity (pm_rmlh_descrambled_even_parity),
    .pm_xmlh_scramble_even_parity    (pm_xmlh_scramble_even_parity),
    .wake                           (wake),
    .local_ref_clk_req_n            (local_ref_clk_req_n),
    .pm_smlh_entry_to_l0s           (pm_smlh_entry_to_l0s),
    .pm_smlh_entry_to_l1            (pm_smlh_entry_to_l1),
    .pm_smlh_entry_to_l2            (pm_smlh_entry_to_l2),
    .pm_smlh_prepare4_l123          (pm_smlh_prepare4_l123),
    .pm_smlh_l0s_exit               (pm_smlh_l0s_exit),
    .pm_smlh_l1_exit                (pm_smlh_l1_exit),
    .pm_smlh_l23_exit               (pm_smlh_l23_exit),
    .pm_xtlh_block_tlp              (pm_xtlh_block_tlp),
    .pm_block_all_tlp               (pm_block_all_tlp),
    .pm_l1_aspm_entr                (pm_l1_aspm_entr),
    .pm_radm_block_tlp              (pm_radm_block_tlp),
    .pm_freeze_fc_timer             (pm_freeze_fc_timer),
    .pm_freeze_cpl_timer            (pm_freeze_cpl_timer),
    .pm_req_dwsp_turnoff            (),
    .pm_xmt_asnak                   (pm_xmt_asnak),                 // N/A for endpoint
    .pm_xmt_turnoff                 (pm_xmt_turnoff),               // N/A for endpoint
    .pm_xmt_to_ack                  (pm_xmt_to_ack),
    .pm_xmt_pme                     (pm_xmt_pme),
    .pm_turnoff_timeout             (pm_turnoff_timeout),
    .pm_linkst_in_l0                (pm_linkst_in_l0),
    .pm_linkst_in_l1                (pm_linkst_in_l1),
    .pm_linkst_in_l2                (pm_linkst_in_l2),
    .pm_linkst_l2_exit              (pm_linkst_l2_exit),
    .pm_linkst_in_l3                (),
    .pm_linkst_in_l0s               (pm_linkst_in_l0s),
    .pm_pme_en                      (pm_pme_en),
    .pm_status                      (pm_status),
    .pm_aux_pm_en                   (aux_pm_en),
    .pm_bus_num                     (pm_bus_num),
    .pm_dev_num                     (pm_dev_num),
    .pm_int_phy_powerdown           (pm_int_phy_powerdown),
    .pm_curnt_state                 (pm_curnt_state),
    .pm_req_sticky_rst              (pm_req_sticky_rst),
    .pm_req_core_rst                  (pm_req_core_rst),
    .pm_req_non_sticky_rst          (pm_req_non_sticky_rst),
    .pm_sel_aux_clk                 (pm_sel_aux_clk),
    .pm_en_core_clk                 (pm_en_core_clk),
    .pm_req_phy_rst                 (pm_req_phy_rst),
    .pm_req_phy_perst               (pm_req_phy_perst),
    .pm_linkst_in_l1sub             (pm_linkst_in_l1sub),
    .pm_smlh_l1_2_latched           (pm_smlh_l1_2_latched),
    .pm_smlh_l1_n_latched           (pm_smlh_l1_n_latched),
    .pm_cpl_timer                   (pm_cpl_timer),
    .pm_master_state                (pm_master_state),
    .pm_slave_state                 (pm_slave_state),
    .phy_if_cpcie_powerdown         (mac_phy_powerdown),
    .phy_if_cpcie_txelecidle        (mac_phy_txelecidle),
    .pm_int_txelecidle              (int_phy_txelecidle),
    .pm_block_phystatus                 (pm_block_phystatus),
    .gasket_en_pulse_det                (pm_en_pulse_det),
    .phy_if_cpcie_rxelecidle_disable    (mac_phy_rxelecidle_disable),
    .phy_if_cpcie_txcommonmode_disable  (mac_phy_txcommonmode_disable),
    .pm_l1sub_state                     (pm_l1sub_state),
    .phy_if_cpcie_txdata                (mac_phy_txdata),
    .phy_if_cpcie_txdatak               (mac_phy_txdatak),
    .phy_if_cpcie_txdetectrx_loopback   (mac_phy_txdetectrx_loopback),
    .phy_if_cpcie_txcompliance          (mac_phy_txcompliance),
    .phy_if_cpcie_rxpolarity            (mac_phy_rxpolarity),
    .phy_if_cpcie_width                 (mac_phy_width),
    .phy_if_cpcie_pclk_rate             (mac_phy_pclk_rate),
    .phy_if_cpcie_rxstandby             (mac_phy_rxstandby),
    .phy_if_cpcie_txdatavalid           (mac_phy_txdatavalid),
    .phy_if_cpcie_rate                  (mac_phy_rate),
    .phy_if_cpcie_txdeemph              (mac_phy_txdeemph),
    .phy_if_cpcie_txmargin              (mac_phy_txmargin),
    .phy_if_cpcie_txswing               (mac_phy_txswing),
    .phy_if_cpcie_txsyncheader          (mac_phy_txsyncheader_i),
    .phy_if_cpcie_txstartblock          (mac_phy_txstartblock),
    .phy_if_cpcie_blockaligncontrol     (mac_phy_blockaligncontrol),
    .phy_if_cpcie_rxpresethint          (mac_phy_rxpresethint),
    .phy_if_cpcie_fs                    (mac_phy_fs),
    .phy_if_cpcie_lf                    (mac_phy_lf),
    .phy_if_cpcie_local_pset_index      (mac_phy_local_pset_index),
    .phy_if_cpcie_getlocal_pset_coef    (mac_phy_getlocal_pset_coef),
    .phy_if_cpcie_rxeqinprogress        (mac_phy_rxeqinprogress),
    .phy_if_cpcie_invalid_req           (mac_phy_invalid_req),
    .phy_if_cpcie_rxeqeval              (mac_phy_rxeqeval),
    .phy_if_cpcie_dirchange             (mac_phy_dirchange),
    .phy_if_cpcie_smlh_coef_rtx         (mac_phy_smlh_coef_rtx),
    .phy_if_cpcie_encodedecodebypass    (mac_phy_encodedecodebypass),
    .phy_if_cpcie_mbus                  (mac_phy_messagebus),
    .phy_if_cfg_phy_control             (cfg_phy_control),
    .pm_pmstate                         (pm_dstate),
    .sqlchd_rxelecidle                  (sqlchd_rxelecidle),
    .pm_aux_clk_ft                      (pm_aux_clk),
    .pm_sys_aux_pwr_det_ft              (pm_sys_aux_pwr_det),
    .pm_aux_clk_active_ft               (pm_aux_clk_active),

    .pm_xadm_client0_tlp_hv             (pm_xadm_client0_tlp_hv)
    ,
    .pm_xadm_client1_tlp_hv             (pm_xadm_client1_tlp_hv)
    ,
    .pm_xadm_client2_tlp_hv             (pm_xadm_client2_tlp_hv)

    ,
    .pm_pme_en_split                    (pm_pme_en_split),
    .pm_aux_pm_en_split                 (pm_aux_pm_en_split),
    .pm_init_rst                        (pm_init_rst),
    .pm_unlock_msg_req                  (pm_unlock_msg_req)
    ,
    .pm_rx_lane_flip_ctrl               (pm_rx_lane_flip_en),
    .pm_tx_lane_flip_ctrl               (pm_tx_lane_flip_en),
    .pm_rx_pol_lane_flip_ctrl           (pm_rx_pol_lane_flip_ctrl)
    ,
    .pm_smlh_link_retrain               (pm_smlh_link_retrain)
    ,
    .phy_if_elasticbuffermode           (mac_phy_elasticbuffermode)
    ,
    .pm_l1_entry_started                (pm_l1_entry_started)
    ,
    .pm_powerdown_status                (pm_powerdown_status),
    .cfg_force_powerdown                (cfg_force_powerdown)
    ,.pm_pclkack_timeout                (pm_pclkack_timeout)
    ,.pm_current_powerdown_p1           (pm_current_powerdown_p1)
    ,.pm_current_powerdown_p0           (pm_current_powerdown_p0)
    ,.pm_aspm_l1_enter_ready            (pm_aspm_l1_enter_ready)

);

// ----------------------------------------------------------------------
// Instantiate reset request control logic
// ----------------------------------------------------------------------

// Pending Status





endmodule
