
//-----------------------------------------------------------------------------------------------------
//	Module_Name							Instance_Name						ING		DONE
//-----------------------------------------------------------------------------------------------------
//	x2_TOP								u_x2_TOP									DONE(23/11/14)
//	pcie_sub_ctrl						u_pcie_sub_ctrl_x4							DONE(23/11/14)
//	dwc_e16mp_upcs_x4_ns_x4_x4_pipe		PCIE_PHY									DONE
//	x4_DWC_pcie_ctl						DWC_pcie_ctl_x4 							DONE
//	PHY_MEM								PHY_MEM										DONE
//	APB2CR_TOP							u_APB2CR									DONE
//	PCIE_MEM_X4							u_PCIE_MEM_X4								DONE
//	pcie_l12_err						u_pcie_l12_err_inst_0						DONE
//	PIPE_MUX							u_PIPE_MUX									DONE
//	NX_MUX2								TEST_MUX_phy_reset							DONE
//	NX_MUX2								TEST_MUX_pipe_lane0_1_reset_n				DONE
//	NX_MUX2								TEST_MUX_pipe_lane2_3_reset_n				DONE
//-----------------------------------------------------------------------------------------------------

module PCIE_TOP (
	// SOC <---> PCIE_SUB_CON_X4
	PCIE_SUB_CON_x4_TEST_AUXCLK,
	PCIE_SUB_CON_x4_TEST_MODE,
	PCIE_SUB_CON_x4_phy_refclk_in,
	PCIE_SUB_CON_x4_aux_clk_soc,
	PCIE_SUB_CON_x4_power_up_rst_n,
	PCIE_SUB_CON_x4_button_rst_n,
	PCIE_SUB_CON_x4_i_driver_apb_clk,
	PCIE_SUB_CON_x4_i_driver_apb_rstn,
	PCIE_SUB_CON_x4_i_driver_apb_paddr,
	PCIE_SUB_CON_x4_i_driver_apb_psel,
	PCIE_SUB_CON_x4_i_driver_apb_penable,
	PCIE_SUB_CON_x4_i_driver_apb_pwrite,
	PCIE_SUB_CON_x4_i_driver_apb_pwdata,
	PCIE_SUB_CON_x4_o_driver_apb_prdata,
	PCIE_SUB_CON_x4_o_driver_apb_pready,
	PCIE_SUB_CON_x4_o_driver_apb_pslverr,
	PCIE_SUB_CON_x4_pcie_irq,
	PCIE_SUB_CON_x4_QREQn_mstr_aclk_slv_aclk,
	PCIE_SUB_CON_x4_QACCEPTn_mstr_aclk_slv_aclk,
	PCIE_SUB_CON_x4_QDENY_mstr_aclk_slv_aclk,
	PCIE_SUB_CON_x4_QACTIVE_mstr_aclk_slv_aclk,
	PCIE_SUB_CON_x4_QREQn_dbi_aclk,
	PCIE_SUB_CON_x4_QACCEPTn_dbi_aclk,
	PCIE_SUB_CON_x4_QDENY_dbi_aclk,
	PCIE_SUB_CON_x4_QACTIVE_dbi_aclk,
	PCIE_SUB_CON_x4_QREQn_apb_aclk,
	PCIE_SUB_CON_x4_QACCEPTn_apb_aclk,
	PCIE_SUB_CON_x4_QDENY_apb_aclk,
	PCIE_SUB_CON_x4_QACTIVE_apb_aclk,
	PCIE_SUB_CON_x4_slv_awvalid,
	PCIE_SUB_CON_x4_slv_wvalid,
	PCIE_SUB_CON_x4_slv_bready,
	PCIE_SUB_CON_x4_slv_arvalid,
	PCIE_SUB_CON_x4_slv_rready,
	PCIE_SUB_CON_x4_slv_wlast,
	PCIE_SUB_CON_x4_slv_awready,
	PCIE_SUB_CON_x4_slv_wready,
	PCIE_SUB_CON_x4_slv_bvalid,
	PCIE_SUB_CON_x4_slv_arready,
	PCIE_SUB_CON_x4_slv_rvalid,
	PCIE_SUB_CON_x4_slv_rlast,
	PCIE_SUB_CON_x4_dbi_awvalid,
	PCIE_SUB_CON_x4_dbi_wvalid,
	PCIE_SUB_CON_x4_dbi_bready,
	PCIE_SUB_CON_x4_dbi_arvalid,
	PCIE_SUB_CON_x4_dbi_rready,
	PCIE_SUB_CON_x4_dbi_wlast,
	PCIE_SUB_CON_x4_dbi_awready,
	PCIE_SUB_CON_x4_dbi_wready,
	PCIE_SUB_CON_x4_dbi_bvalid,
	PCIE_SUB_CON_x4_dbi_arready,
	PCIE_SUB_CON_x4_dbi_rvalid,
	PCIE_SUB_CON_x4_dbi_rlast,
	PCIE_SUB_CON_x4_mstr_arready,
	PCIE_SUB_CON_x4_mstr_awready,
	PCIE_SUB_CON_x4_mstr_wready,
	PCIE_SUB_CON_x4_mstr_arvalid,
	PCIE_SUB_CON_x4_mstr_awvalid,
	PCIE_SUB_CON_x4_mstr_wvalid,
	PCIE_SUB_CON_x4_mstr_aclk_soc,
	PCIE_SUB_CON_x4_slv_aclk_soc,
	PCIE_SUB_CON_x4_dbi_aclk_soc,
	PCIE_SUB_CON_x4_cr_para_sel,
	PCIE_SUB_CON_x4_phy_lane0_rx2tx_par_lb_en,
	PCIE_SUB_CON_x4_phy_lane1_rx2tx_par_lb_en,
	PCIE_SUB_CON_x4_phy_lane2_rx2tx_par_lb_en,
	PCIE_SUB_CON_x4_phy_lane3_rx2tx_par_lb_en,
	PCIE_SUB_CON_x4_perst_n,
	PCIE_SUB_CON_x4_ext_pclk_req,
	PCIE_SUB_CON_x4_sram_bypass,
	// SOC <---> PCIE_SUB_CON_X2
	PCIE_SUB_CON_x2_phy_refclk_in,
	PCIE_SUB_CON_x2_power_up_rst_n,
	PCIE_SUB_CON_x2_button_rst_n,
	PCIE_SUB_CON_x2_TEST_AUXCLK,
	PCIE_SUB_CON_x2_TEST_MODE,
	PCIE_SUB_CON_x2_i_driver_apb_clk,
	PCIE_SUB_CON_x2_i_driver_apb_rstn,
	PCIE_SUB_CON_x2_i_driver_apb_paddr,
	PCIE_SUB_CON_x2_i_driver_apb_psel,
	PCIE_SUB_CON_x2_i_driver_apb_penable,
	PCIE_SUB_CON_x2_i_driver_apb_pwrite,
	PCIE_SUB_CON_x2_i_driver_apb_pwdata,
	PCIE_SUB_CON_x2_o_driver_apb_prdata,
	PCIE_SUB_CON_x2_o_driver_apb_pready,
	PCIE_SUB_CON_x2_o_driver_apb_pslverr,
	PCIE_SUB_CON_x2_QREQn_mstr_aclk_slv_aclk,
	PCIE_SUB_CON_x2_QACCEPTn_mstr_aclk_slv_aclk,
	PCIE_SUB_CON_x2_QDENY_mstr_aclk_slv_aclk,
	PCIE_SUB_CON_x2_QACTIVE_mstr_aclk_slv_aclk,
	PCIE_SUB_CON_x2_QREQn_dbi_aclk,
	PCIE_SUB_CON_x2_QACCEPTn_dbi_aclk,
	PCIE_SUB_CON_x2_QDENY_dbi_aclk,
	PCIE_SUB_CON_x2_QACTIVE_dbi_aclk,
	PCIE_SUB_CON_x2_QREQn_apb_aclk,
	PCIE_SUB_CON_x2_QACCEPTn_apb_aclk,
	PCIE_SUB_CON_x2_QDENY_apb_aclk,
	PCIE_SUB_CON_x2_QACTIVE_apb_aclk,
	PCIE_SUB_CON_x2_slv_awvalid,
	PCIE_SUB_CON_x2_slv_wvalid,
	PCIE_SUB_CON_x2_slv_bready,
	PCIE_SUB_CON_x2_slv_arvalid,
	PCIE_SUB_CON_x2_slv_rready,
	PCIE_SUB_CON_x2_slv_wlast,
	PCIE_SUB_CON_x2_slv_awready,
	PCIE_SUB_CON_x2_slv_wready,
	PCIE_SUB_CON_x2_slv_bvalid,
	PCIE_SUB_CON_x2_slv_arready,
	PCIE_SUB_CON_x2_slv_rvalid,
	PCIE_SUB_CON_x2_slv_rlast,
	PCIE_SUB_CON_x2_dbi_awvalid,
	PCIE_SUB_CON_x2_dbi_wvalid,
	PCIE_SUB_CON_x2_dbi_bready,
	PCIE_SUB_CON_x2_dbi_arvalid,
	PCIE_SUB_CON_x2_dbi_rready,
	PCIE_SUB_CON_x2_dbi_wlast,
	PCIE_SUB_CON_x2_dbi_awready,
	PCIE_SUB_CON_x2_dbi_wready,
	PCIE_SUB_CON_x2_dbi_bvalid,
	PCIE_SUB_CON_x2_dbi_arready,
	PCIE_SUB_CON_x2_dbi_rvalid,
	PCIE_SUB_CON_x2_dbi_rlast,
	PCIE_SUB_CON_x2_mstr_arready,
	PCIE_SUB_CON_x2_mstr_awready,
	PCIE_SUB_CON_x2_mstr_wready,
	PCIE_SUB_CON_x2_mstr_arvalid,
	PCIE_SUB_CON_x2_mstr_awvalid,
	PCIE_SUB_CON_x2_mstr_wvalid,
	PCIE_SUB_CON_x2_mstr_aclk_soc,
	PCIE_SUB_CON_x2_slv_aclk_soc,
	PCIE_SUB_CON_x2_dbi_aclk_soc,
	PCIE_SUB_CON_x2_aux_clk_soc,
	PCIE_SUB_CON_x2_pcie_irq,
	PCIE_SUB_CON_x2_perst_n,

	// SOC <---> x4_LINK
	DWC_pcie_ctrl_x4_mstr_araddr,
	DWC_pcie_ctrl_x4_mstr_arburst,
	DWC_pcie_ctrl_x4_mstr_arcache,
	DWC_pcie_ctrl_x4_mstr_arid,
	DWC_pcie_ctrl_x4_mstr_arlen,
	DWC_pcie_ctrl_x4_mstr_arlock,
	DWC_pcie_ctrl_x4_mstr_arprot,
	DWC_pcie_ctrl_x4_mstr_arqos,
	DWC_pcie_ctrl_x4_mstr_arsize,
	DWC_pcie_ctrl_x4_mstr_awaddr,
	DWC_pcie_ctrl_x4_mstr_awburst,
	DWC_pcie_ctrl_x4_mstr_awcache,
	DWC_pcie_ctrl_x4_mstr_awid,
	DWC_pcie_ctrl_x4_mstr_awlen,
	DWC_pcie_ctrl_x4_mstr_awlock,
	DWC_pcie_ctrl_x4_mstr_awprot,
	DWC_pcie_ctrl_x4_mstr_awqos,
	DWC_pcie_ctrl_x4_mstr_awsize,
	DWC_pcie_ctrl_x4_mstr_wdata,
	DWC_pcie_ctrl_x4_mstr_wlast,
	DWC_pcie_ctrl_x4_mstr_wstrb,
	DWC_pcie_ctrl_x4_mstr_bid,
	DWC_pcie_ctrl_x4_mstr_bresp,
	DWC_pcie_ctrl_x4_mstr_bvalid,
	DWC_pcie_ctrl_x4_mstr_bready,
	DWC_pcie_ctrl_x4_mstr_rid,
	DWC_pcie_ctrl_x4_mstr_rdata,
	DWC_pcie_ctrl_x4_mstr_rlast,
	DWC_pcie_ctrl_x4_mstr_rresp,
	DWC_pcie_ctrl_x4_mstr_rvalid,
	DWC_pcie_ctrl_x4_mstr_rready,
	DWC_pcie_ctrl_x4_mstr_cactive,
	DWC_pcie_ctrl_x4_mstr_csysack,
	DWC_pcie_ctrl_x4_mstr_csysreq,
	DWC_pcie_ctrl_x4_slv_araddr,
	DWC_pcie_ctrl_x4_slv_arburst,
	DWC_pcie_ctrl_x4_slv_arcache,
	DWC_pcie_ctrl_x4_slv_arid,
	DWC_pcie_ctrl_x4_slv_arlen,
	DWC_pcie_ctrl_x4_slv_arlock,
	DWC_pcie_ctrl_x4_slv_arprot,
	DWC_pcie_ctrl_x4_slv_arqos,
	DWC_pcie_ctrl_x4_slv_arsize,
	DWC_pcie_ctrl_x4_slv_awaddr,
	DWC_pcie_ctrl_x4_slv_awburst,
	DWC_pcie_ctrl_x4_slv_awcache,
	DWC_pcie_ctrl_x4_slv_awid,
	DWC_pcie_ctrl_x4_slv_awlen,
	DWC_pcie_ctrl_x4_slv_awlock,
	DWC_pcie_ctrl_x4_slv_awprot,
	DWC_pcie_ctrl_x4_slv_awqos,
	DWC_pcie_ctrl_x4_slv_awsize,
	DWC_pcie_ctrl_x4_slv_wdata,
	DWC_pcie_ctrl_x4_slv_wstrb,
	DWC_pcie_ctrl_x4_slv_bid,
	DWC_pcie_ctrl_x4_slv_bresp,
	DWC_pcie_ctrl_x4_slv_rid,
	DWC_pcie_ctrl_x4_slv_rdata,
	DWC_pcie_ctrl_x4_slv_rresp,
	DWC_pcie_ctrl_x4_slv_cactive,
	DWC_pcie_ctrl_x4_slv_csysack,
	DWC_pcie_ctrl_x4_slv_csysreq,
	DWC_pcie_ctrl_x4_dbi_araddr,
	DWC_pcie_ctrl_x4_dbi_arburst,
	DWC_pcie_ctrl_x4_dbi_arcache,
	DWC_pcie_ctrl_x4_dbi_arid,
	DWC_pcie_ctrl_x4_dbi_arlen,
	DWC_pcie_ctrl_x4_dbi_arlock,
	DWC_pcie_ctrl_x4_dbi_arprot,
	DWC_pcie_ctrl_x4_dbi_arqos,
	DWC_pcie_ctrl_x4_dbi_arsize,
	DWC_pcie_ctrl_x4_dbi_awaddr,
	DWC_pcie_ctrl_x4_dbi_awburst,
	DWC_pcie_ctrl_x4_dbi_awcache,
	DWC_pcie_ctrl_x4_dbi_awid,
	DWC_pcie_ctrl_x4_dbi_awlen,
	DWC_pcie_ctrl_x4_dbi_awlock,
	DWC_pcie_ctrl_x4_dbi_awprot,
	DWC_pcie_ctrl_x4_dbi_awqos,
	DWC_pcie_ctrl_x4_dbi_awsize,
	DWC_pcie_ctrl_x4_dbi_wdata,
	DWC_pcie_ctrl_x4_dbi_wstrb,
	DWC_pcie_ctrl_x4_dbi_bid,
	DWC_pcie_ctrl_x4_dbi_bresp,
	DWC_pcie_ctrl_x4_dbi_rid,
	DWC_pcie_ctrl_x4_dbi_rdata,
	DWC_pcie_ctrl_x4_dbi_rresp,
	DWC_pcie_ctrl_x4_dbi_cactive,
	DWC_pcie_ctrl_x4_dbi_csysack,
	DWC_pcie_ctrl_x4_dbi_csysreq,
// SOC <---> x2_LINK
	DWC_pcie_ctrl_x2_mstr_araddr,
	DWC_pcie_ctrl_x2_mstr_arburst,
	DWC_pcie_ctrl_x2_mstr_arcache,
	DWC_pcie_ctrl_x2_mstr_arid,
	DWC_pcie_ctrl_x2_mstr_arlen,
	DWC_pcie_ctrl_x2_mstr_arlock,
	DWC_pcie_ctrl_x2_mstr_arprot,
	DWC_pcie_ctrl_x2_mstr_arqos,
	DWC_pcie_ctrl_x2_mstr_arsize,
	DWC_pcie_ctrl_x2_mstr_awaddr,
	DWC_pcie_ctrl_x2_mstr_awburst,
	DWC_pcie_ctrl_x2_mstr_awcache,
	DWC_pcie_ctrl_x2_mstr_awid,
	DWC_pcie_ctrl_x2_mstr_awlen,
	DWC_pcie_ctrl_x2_mstr_awlock,
	DWC_pcie_ctrl_x2_mstr_awprot,
	DWC_pcie_ctrl_x2_mstr_awqos,
	DWC_pcie_ctrl_x2_mstr_awsize,
	DWC_pcie_ctrl_x2_mstr_wdata,
	DWC_pcie_ctrl_x2_mstr_wlast,
	DWC_pcie_ctrl_x2_mstr_wstrb,
	DWC_pcie_ctrl_x2_mstr_bid,
	DWC_pcie_ctrl_x2_mstr_bresp,
	DWC_pcie_ctrl_x2_mstr_bvalid,
	DWC_pcie_ctrl_x2_mstr_bready,
	DWC_pcie_ctrl_x2_mstr_rid,
	DWC_pcie_ctrl_x2_mstr_rdata,
	DWC_pcie_ctrl_x2_mstr_rlast,
	DWC_pcie_ctrl_x2_mstr_rresp,
	DWC_pcie_ctrl_x2_mstr_rvalid,
	DWC_pcie_ctrl_x2_mstr_rready,
	DWC_pcie_ctrl_x2_mstr_cactive,
	DWC_pcie_ctrl_x2_mstr_csysack,
	DWC_pcie_ctrl_x2_mstr_csysreq,
	DWC_pcie_ctrl_x2_slv_araddr,
	DWC_pcie_ctrl_x2_slv_arburst,
	DWC_pcie_ctrl_x2_slv_arcache,
	DWC_pcie_ctrl_x2_slv_arid,
	DWC_pcie_ctrl_x2_slv_arlen,
	DWC_pcie_ctrl_x2_slv_arlock,
	DWC_pcie_ctrl_x2_slv_arprot,
	DWC_pcie_ctrl_x2_slv_arqos,
	DWC_pcie_ctrl_x2_slv_arsize,
	DWC_pcie_ctrl_x2_slv_awaddr,
	DWC_pcie_ctrl_x2_slv_awburst,
	DWC_pcie_ctrl_x2_slv_awcache,
	DWC_pcie_ctrl_x2_slv_awid,
	DWC_pcie_ctrl_x2_slv_awlen,
	DWC_pcie_ctrl_x2_slv_awlock,
	DWC_pcie_ctrl_x2_slv_awprot,
	DWC_pcie_ctrl_x2_slv_awqos,
	DWC_pcie_ctrl_x2_slv_awsize,
	DWC_pcie_ctrl_x2_slv_wdata,
	DWC_pcie_ctrl_x2_slv_wstrb,
	DWC_pcie_ctrl_x2_slv_bid,
	DWC_pcie_ctrl_x2_slv_bresp,
	DWC_pcie_ctrl_x2_slv_rid,
	DWC_pcie_ctrl_x2_slv_rdata,
	DWC_pcie_ctrl_x2_slv_rresp,
	DWC_pcie_ctrl_x2_slv_cactive,
	DWC_pcie_ctrl_x2_slv_csysack,
	DWC_pcie_ctrl_x2_slv_csysreq,
	DWC_pcie_ctrl_x2_dbi_araddr,
	DWC_pcie_ctrl_x2_dbi_arburst,
	DWC_pcie_ctrl_x2_dbi_arcache,
	DWC_pcie_ctrl_x2_dbi_arid,
	DWC_pcie_ctrl_x2_dbi_arlen,
	DWC_pcie_ctrl_x2_dbi_arlock,
	DWC_pcie_ctrl_x2_dbi_arprot,
	DWC_pcie_ctrl_x2_dbi_arqos,
	DWC_pcie_ctrl_x2_dbi_arsize,
	DWC_pcie_ctrl_x2_dbi_awaddr,
	DWC_pcie_ctrl_x2_dbi_awburst,
	DWC_pcie_ctrl_x2_dbi_awcache,
	DWC_pcie_ctrl_x2_dbi_awid,
	DWC_pcie_ctrl_x2_dbi_awlen,
	DWC_pcie_ctrl_x2_dbi_awlock,
	DWC_pcie_ctrl_x2_dbi_awprot,
	DWC_pcie_ctrl_x2_dbi_awqos,
	DWC_pcie_ctrl_x2_dbi_awsize,
	DWC_pcie_ctrl_x2_dbi_wdata,
	DWC_pcie_ctrl_x2_dbi_wstrb,
	DWC_pcie_ctrl_x2_dbi_bid,
	DWC_pcie_ctrl_x2_dbi_bresp,
	DWC_pcie_ctrl_x2_dbi_rid,
	DWC_pcie_ctrl_x2_dbi_rdata,
	DWC_pcie_ctrl_x2_dbi_rresp,
	DWC_pcie_ctrl_x2_dbi_cactive,
	DWC_pcie_ctrl_x2_dbi_csysack,
	DWC_pcie_ctrl_x2_dbi_csysreq,

// SOC <---> PHY
	PCIE_PHY_ext_pclk_req,
	PCIE_PHY_pcs_scan_mode,
	PCIE_PHY_pcs_scan_pclk,
	PCIE_PHY_pcs_scan_pcs_clk,
	PCIE_PHY_pcs_scan_pma_clk,
	PCIE_PHY_pcs_scan_rst,
	PCIE_PHY_pcs_scan_rx_clk_div,
	PCIE_PHY_pcs_scan_shift,
	PCIE_PHY_pcs_scan_shift_cg,
	PCIE_PHY_phy0_bs_acmode,
	PCIE_PHY_phy0_bs_actest,
	PCIE_PHY_phy0_bs_cdr,
	PCIE_PHY_phy0_bs_ce,
	PCIE_PHY_phy0_bs_rx_init,
	PCIE_PHY_phy0_bs_sdr,
	PCIE_PHY_phy0_bs_tdi,
	PCIE_PHY_phy0_bs_tdo,
	PCIE_PHY_phy0_bs_udr,
	PCIE_PHY_phy0_cr_para_sel,
	PCIE_PHY_phy0_dtb_out,
	PCIE_PHY_phy0_jtag_tck,
	PCIE_PHY_phy0_jtag_tdi,
	PCIE_PHY_phy0_jtag_tdo,
	PCIE_PHY_phy0_jtag_tdo_en,
	PCIE_PHY_phy0_jtag_tms,
	PCIE_PHY_phy0_jtag_trst_n,
	PCIE_PHY_phy0_sram_bypass,
	PCIE_REF_DIG_CLK,
	PCIE_PHY_phy0_ref_pad_clk_m,
	PCIE_PHY_phy0_ref_pad_clk_p,
	PCIE_PHY_phy_resref,
	PCIE_PHY_phy0_scan_cr_clk,
	PCIE_PHY_phy0_scan_cr_in,
	PCIE_PHY_phy0_scan_cr_out,
	PCIE_PHY_phy0_scan_mode,
	PCIE_PHY_phy0_scan_mplla_div16p5_clk,
	PCIE_PHY_phy0_scan_mplla_div16p5_in,
	PCIE_PHY_phy0_scan_mplla_div16p5_out,
	PCIE_PHY_phy0_scan_mplla_div33_clk,
	PCIE_PHY_phy0_scan_mplla_div66_clk,
	PCIE_PHY_phy0_scan_mplla_div_clk,
	PCIE_PHY_phy0_scan_mplla_div_in,
	PCIE_PHY_phy0_scan_mplla_div_out,
	PCIE_PHY_phy0_scan_mplla_dword_clk,
	PCIE_PHY_phy0_scan_mplla_dword_in,
	PCIE_PHY_phy0_scan_mplla_dword_out,
	PCIE_PHY_phy0_scan_mplla_fb_clk,
	PCIE_PHY_phy0_scan_mplla_fb_in,
	PCIE_PHY_phy0_scan_mplla_fb_out,
	PCIE_PHY_phy0_scan_mplla_oword_clk,
	PCIE_PHY_phy0_scan_mplla_qword_clk,
	PCIE_PHY_phy0_scan_mplla_ref_clk,
	PCIE_PHY_phy0_scan_mplla_ref_in,
	PCIE_PHY_phy0_scan_mplla_ref_out,
	PCIE_PHY_phy0_scan_mplla_ssc_clk,
	PCIE_PHY_phy0_scan_mplla_ssc_in,
	PCIE_PHY_phy0_scan_mplla_ssc_out,
	PCIE_PHY_phy0_scan_mplla_word_clk,
	PCIE_PHY_phy0_scan_mplla_word_in,
	PCIE_PHY_phy0_scan_mplla_word_out,
	PCIE_PHY_phy0_scan_mpllb_div_clk,
	PCIE_PHY_phy0_scan_mpllb_div_in,
	PCIE_PHY_phy0_scan_mpllb_div_out,
	PCIE_PHY_phy0_scan_mpllb_dword_clk,
	PCIE_PHY_phy0_scan_mpllb_dword_in,
	PCIE_PHY_phy0_scan_mpllb_dword_out,
	PCIE_PHY_phy0_scan_mpllb_fb_clk,
	PCIE_PHY_phy0_scan_mpllb_fb_in,
	PCIE_PHY_phy0_scan_mpllb_fb_out,
	PCIE_PHY_phy0_scan_mpllb_oword_clk,
	PCIE_PHY_phy0_scan_mpllb_qword_clk,
	PCIE_PHY_phy0_scan_mpllb_ref_clk,
	PCIE_PHY_phy0_scan_mpllb_ref_in,
	PCIE_PHY_phy0_scan_mpllb_ref_out,
	PCIE_PHY_phy0_scan_mpllb_ssc_clk,
	PCIE_PHY_phy0_scan_mpllb_ssc_in,
	PCIE_PHY_phy0_scan_mpllb_ssc_out,
	PCIE_PHY_phy0_scan_mpllb_word_clk,
	PCIE_PHY_phy0_scan_mpllb_word_in,
	PCIE_PHY_phy0_scan_mpllb_word_out,
	PCIE_PHY_phy0_scan_phy_ref_dig_clk,
	PCIE_PHY_phy0_scan_phy_ref_dig_in,
	PCIE_PHY_phy0_scan_phy_ref_dig_out,
	PCIE_PHY_phy0_scan_ref_clk,
	PCIE_PHY_phy0_scan_ref_dig_clk,
	PCIE_PHY_phy0_scan_ref_dig_in,
	PCIE_PHY_phy0_scan_ref_dig_out,
	PCIE_PHY_phy0_scan_ref_in,
	PCIE_PHY_phy0_scan_ref_out,
	PCIE_PHY_phy0_scan_ref_range_clk,
	PCIE_PHY_phy0_scan_ref_range_in,
	PCIE_PHY_phy0_scan_ref_range_out,
	PCIE_PHY_phy0_scan_set_rst,
	PCIE_PHY_phy0_scan_shift,
	PCIE_PHY_phy0_scan_shift_cg,
	PCIE_PHY_phy0_test_flyover_en,
	PCIE_PHY_phy_lane0_rx2tx_par_lb_en,
	PCIE_PHY_phy_lane1_rx2tx_par_lb_en,
	PCIE_PHY_phy_lane2_rx2tx_par_lb_en,
	PCIE_PHY_phy_lane3_rx2tx_par_lb_en,
	PCIE_PHY_phy_rx0_flyover_data_m,
	PCIE_PHY_phy_rx0_flyover_data_p,
	PCIE_PHY_phy_rx0_m,
	PCIE_PHY_phy_rx0_p,
	PCIE_PHY_phy_rx1_flyover_data_m,
	PCIE_PHY_phy_rx1_flyover_data_p,
	PCIE_PHY_phy_rx1_m,
	PCIE_PHY_phy_rx1_p,
	PCIE_PHY_phy_rx2_flyover_data_m,
	PCIE_PHY_phy_rx2_flyover_data_p,
	PCIE_PHY_phy_rx2_m,
	PCIE_PHY_phy_rx2_p,
	PCIE_PHY_phy_rx3_flyover_data_m,
	PCIE_PHY_phy_rx3_flyover_data_p,
	PCIE_PHY_phy_rx3_m,
	PCIE_PHY_phy_rx3_p,
	PCIE_PHY_phy_scan_rx0_adpt_clk,
	PCIE_PHY_phy_scan_rx0_adpt_in,
	PCIE_PHY_phy_scan_rx0_adpt_out,
	PCIE_PHY_phy_scan_rx0_asic_clk,
	PCIE_PHY_phy_scan_rx0_asic_in,
	PCIE_PHY_phy_scan_rx0_asic_out,
	PCIE_PHY_phy_scan_rx0_div16p5_clk,
	PCIE_PHY_phy_scan_rx0_div16p5_in,
	PCIE_PHY_phy_scan_rx0_div16p5_out,
	PCIE_PHY_phy_scan_rx0_dpll_clk,
	PCIE_PHY_phy_scan_rx0_dpll_in,
	PCIE_PHY_phy_scan_rx0_dpll_out,
	PCIE_PHY_phy_scan_rx0_dword_clk,
	PCIE_PHY_phy_scan_rx0_dword_in,
	PCIE_PHY_phy_scan_rx0_dword_out,
	PCIE_PHY_phy_scan_rx0_scope_clk,
	PCIE_PHY_phy_scan_rx0_scope_in,
	PCIE_PHY_phy_scan_rx0_scope_out,
	PCIE_PHY_phy_scan_rx0_stat_clk,
	PCIE_PHY_phy_scan_rx0_stat_in,
	PCIE_PHY_phy_scan_rx0_stat_out,
	PCIE_PHY_phy_scan_rx0_word_clk,
	PCIE_PHY_phy_scan_rx0_word_in,
	PCIE_PHY_phy_scan_rx0_word_out,
	PCIE_PHY_phy_scan_rx1_adpt_clk,
	PCIE_PHY_phy_scan_rx1_adpt_in,
	PCIE_PHY_phy_scan_rx1_adpt_out,
	PCIE_PHY_phy_scan_rx1_asic_clk,
	PCIE_PHY_phy_scan_rx1_asic_in,
	PCIE_PHY_phy_scan_rx1_asic_out,
	PCIE_PHY_phy_scan_rx1_div16p5_clk,
	PCIE_PHY_phy_scan_rx1_div16p5_in,
	PCIE_PHY_phy_scan_rx1_div16p5_out,
	PCIE_PHY_phy_scan_rx1_dpll_clk,
	PCIE_PHY_phy_scan_rx1_dpll_in,
	PCIE_PHY_phy_scan_rx1_dpll_out,
	PCIE_PHY_phy_scan_rx1_dword_clk,
	PCIE_PHY_phy_scan_rx1_dword_in,
	PCIE_PHY_phy_scan_rx1_dword_out,
	PCIE_PHY_phy_scan_rx1_scope_clk,
	PCIE_PHY_phy_scan_rx1_scope_in,
	PCIE_PHY_phy_scan_rx1_scope_out,
	PCIE_PHY_phy_scan_rx1_stat_clk,
	PCIE_PHY_phy_scan_rx1_stat_in,
	PCIE_PHY_phy_scan_rx1_stat_out,
	PCIE_PHY_phy_scan_rx1_word_clk,
	PCIE_PHY_phy_scan_rx1_word_in,
	PCIE_PHY_phy_scan_rx1_word_out,
	PCIE_PHY_phy_scan_rx2_adpt_clk,
	PCIE_PHY_phy_scan_rx2_adpt_in,
	PCIE_PHY_phy_scan_rx2_adpt_out,
	PCIE_PHY_phy_scan_rx2_asic_clk,
	PCIE_PHY_phy_scan_rx2_asic_in,
	PCIE_PHY_phy_scan_rx2_asic_out,
	PCIE_PHY_phy_scan_rx2_div16p5_clk,
	PCIE_PHY_phy_scan_rx2_div16p5_in,
	PCIE_PHY_phy_scan_rx2_div16p5_out,
	PCIE_PHY_phy_scan_rx2_dpll_clk,
	PCIE_PHY_phy_scan_rx2_dpll_in,
	PCIE_PHY_phy_scan_rx2_dpll_out,
	PCIE_PHY_phy_scan_rx2_dword_clk,
	PCIE_PHY_phy_scan_rx2_dword_in,
	PCIE_PHY_phy_scan_rx2_dword_out,
	PCIE_PHY_phy_scan_rx2_scope_clk,
	PCIE_PHY_phy_scan_rx2_scope_in,
	PCIE_PHY_phy_scan_rx2_scope_out,
	PCIE_PHY_phy_scan_rx2_stat_clk,
	PCIE_PHY_phy_scan_rx2_stat_in,
	PCIE_PHY_phy_scan_rx2_stat_out,
	PCIE_PHY_phy_scan_rx2_word_clk,
	PCIE_PHY_phy_scan_rx2_word_in,
	PCIE_PHY_phy_scan_rx2_word_out,
	PCIE_PHY_phy_scan_rx3_adpt_clk,
	PCIE_PHY_phy_scan_rx3_adpt_in,
	PCIE_PHY_phy_scan_rx3_adpt_out,
	PCIE_PHY_phy_scan_rx3_asic_clk,
	PCIE_PHY_phy_scan_rx3_asic_in,
	PCIE_PHY_phy_scan_rx3_asic_out,
	PCIE_PHY_phy_scan_rx3_div16p5_clk,
	PCIE_PHY_phy_scan_rx3_div16p5_in,
	PCIE_PHY_phy_scan_rx3_div16p5_out,
	PCIE_PHY_phy_scan_rx3_dpll_clk,
	PCIE_PHY_phy_scan_rx3_dpll_in,
	PCIE_PHY_phy_scan_rx3_dpll_out,
	PCIE_PHY_phy_scan_rx3_dword_clk,
	PCIE_PHY_phy_scan_rx3_dword_in,
	PCIE_PHY_phy_scan_rx3_dword_out,
	PCIE_PHY_phy_scan_rx3_scope_clk,
	PCIE_PHY_phy_scan_rx3_scope_in,
	PCIE_PHY_phy_scan_rx3_scope_out,
	PCIE_PHY_phy_scan_rx3_stat_clk,
	PCIE_PHY_phy_scan_rx3_stat_in,
	PCIE_PHY_phy_scan_rx3_stat_out,
	PCIE_PHY_phy_scan_rx3_word_clk,
	PCIE_PHY_phy_scan_rx3_word_in,
	PCIE_PHY_phy_scan_rx3_word_out,
	PCIE_PHY_phy_scan_tx0_ana_dword_clk,
	PCIE_PHY_phy_scan_tx0_ana_dword_in,
	PCIE_PHY_phy_scan_tx0_ana_dword_out,
	PCIE_PHY_phy_scan_tx0_ana_word_clk,
	PCIE_PHY_phy_scan_tx0_ana_word_in,
	PCIE_PHY_phy_scan_tx0_ana_word_out,
	PCIE_PHY_phy_scan_tx0_in,
	PCIE_PHY_phy_scan_tx0_out,
	PCIE_PHY_phy_scan_tx1_ana_dword_clk,
	PCIE_PHY_phy_scan_tx1_ana_dword_in,
	PCIE_PHY_phy_scan_tx1_ana_dword_out,
	PCIE_PHY_phy_scan_tx1_ana_word_clk,
	PCIE_PHY_phy_scan_tx1_ana_word_in,
	PCIE_PHY_phy_scan_tx1_ana_word_out,
	PCIE_PHY_phy_scan_tx1_in,
	PCIE_PHY_phy_scan_tx1_out,
	PCIE_PHY_phy_scan_tx2_ana_dword_clk,
	PCIE_PHY_phy_scan_tx2_ana_dword_in,
	PCIE_PHY_phy_scan_tx2_ana_dword_out,
	PCIE_PHY_phy_scan_tx2_ana_word_clk,
	PCIE_PHY_phy_scan_tx2_ana_word_in,
	PCIE_PHY_phy_scan_tx2_ana_word_out,
	PCIE_PHY_phy_scan_tx2_in,
	PCIE_PHY_phy_scan_tx2_out,
	PCIE_PHY_phy_scan_tx3_ana_dword_clk,
	PCIE_PHY_phy_scan_tx3_ana_dword_in,
	PCIE_PHY_phy_scan_tx3_ana_dword_out,
	PCIE_PHY_phy_scan_tx3_ana_word_clk,
	PCIE_PHY_phy_scan_tx3_ana_word_in,
	PCIE_PHY_phy_scan_tx3_ana_word_out,
	PCIE_PHY_phy_scan_tx3_in,
	PCIE_PHY_phy_scan_tx3_out,
	PCIE_PHY_phy_test_burnin,
	PCIE_PHY_phy_test_powerdown,
	PCIE_PHY_phy_test_stop_clk_en,
	PCIE_PHY_phy_tx0_flyover_data_m,
	PCIE_PHY_phy_tx0_flyover_data_p,
	PCIE_PHY_phy_tx0_m,
	PCIE_PHY_phy_tx0_p,
	PCIE_PHY_phy_tx1_flyover_data_m,
	PCIE_PHY_phy_tx1_flyover_data_p,
	PCIE_PHY_phy_tx1_m,
	PCIE_PHY_phy_tx1_p,
	PCIE_PHY_phy_tx2_flyover_data_m,
	PCIE_PHY_phy_tx2_flyover_data_p,
	PCIE_PHY_phy_tx2_m,
	PCIE_PHY_phy_tx2_p,
	PCIE_PHY_phy_tx3_flyover_data_m,
	PCIE_PHY_phy_tx3_flyover_data_p,
	PCIE_PHY_phy_tx3_m,
	PCIE_PHY_phy_tx3_p,
	// SOC <---> APB2CR
	PCIE_PHY_APB2CR_pclk_300,
	PCIE_PHY_APB2CR_pclk_100,
	PCIE_PHY_APB2CR_presetn,
	PCIE_PHY_APB2CR_paddr,
	PCIE_PHY_APB2CR_pwrite,
	PCIE_PHY_APB2CR_psel,
	PCIE_PHY_APB2CR_penable,
	PCIE_PHY_APB2CR_pwdata,
	PCIE_PHY_APB2CR_prdata,
	PCIE_PHY_APB2CR_pready,
	PCIE_PHY_APB2CR_pslverr,
	PCIE_PHY_APB2CR_QREQn,
	PCIE_PHY_APB2CR_TEST_MODE,
	PCIE_PHY_APB2CR_TEST_RESETn,
	PCIE_PHY_APB2CR_QACCEPTn,
	PCIE_PHY_APB2CR_QACTIVE,
	PCIE_PHY_APB2CR_QDENY,
	// PIPE_MUX
	PIPE_MUX_PHY_MODE_SEL,
	// SOC -> TEST_MUX
	I_TEST_MODE_PCIE_PHY,
	PCIE_PHY_phy_reset,
	PCIE_PHY_pipe_lane0_1_reset_n,
	PCIE_PHY_pipe_lane2_3_reset_n
);

// SOC <---> PCIE_SUB_CON_x4
input		PCIE_SUB_CON_x4_TEST_AUXCLK;
input		PCIE_SUB_CON_x4_TEST_MODE;
input		PCIE_SUB_CON_x4_phy_refclk_in;
input		PCIE_SUB_CON_x4_aux_clk_soc;
input		PCIE_SUB_CON_x4_power_up_rst_n;
input		PCIE_SUB_CON_x4_button_rst_n;
input		PCIE_SUB_CON_x4_i_driver_apb_clk;
input		PCIE_SUB_CON_x4_i_driver_apb_rstn;
input	[31:0]	PCIE_SUB_CON_x4_i_driver_apb_paddr;
input		PCIE_SUB_CON_x4_i_driver_apb_psel;
input		PCIE_SUB_CON_x4_i_driver_apb_penable;
input		PCIE_SUB_CON_x4_i_driver_apb_pwrite;
input	[31:0]	PCIE_SUB_CON_x4_i_driver_apb_pwdata;
output	[31:0]	PCIE_SUB_CON_x4_o_driver_apb_prdata;
output		PCIE_SUB_CON_x4_o_driver_apb_pready;
output		PCIE_SUB_CON_x4_o_driver_apb_pslverr;
output		PCIE_SUB_CON_x4_pcie_irq;
input		PCIE_SUB_CON_x4_QREQn_mstr_aclk_slv_aclk;
output		PCIE_SUB_CON_x4_QACCEPTn_mstr_aclk_slv_aclk;
output		PCIE_SUB_CON_x4_QDENY_mstr_aclk_slv_aclk;
output		PCIE_SUB_CON_x4_QACTIVE_mstr_aclk_slv_aclk;
input		PCIE_SUB_CON_x4_QREQn_dbi_aclk;
output		PCIE_SUB_CON_x4_QACCEPTn_dbi_aclk;
output		PCIE_SUB_CON_x4_QDENY_dbi_aclk;
output		PCIE_SUB_CON_x4_QACTIVE_dbi_aclk;
input		PCIE_SUB_CON_x4_QREQn_apb_aclk;
output		PCIE_SUB_CON_x4_QACCEPTn_apb_aclk;
output		PCIE_SUB_CON_x4_QDENY_apb_aclk;
output		PCIE_SUB_CON_x4_QACTIVE_apb_aclk;
input		PCIE_SUB_CON_x4_slv_awvalid;
input		PCIE_SUB_CON_x4_slv_wvalid;
input		PCIE_SUB_CON_x4_slv_bready;
input		PCIE_SUB_CON_x4_slv_arvalid;
input		PCIE_SUB_CON_x4_slv_rready;
input		PCIE_SUB_CON_x4_slv_wlast;
output		PCIE_SUB_CON_x4_slv_awready;
output		PCIE_SUB_CON_x4_slv_wready;
output		PCIE_SUB_CON_x4_slv_bvalid;
output		PCIE_SUB_CON_x4_slv_arready;
output		PCIE_SUB_CON_x4_slv_rvalid;
output		PCIE_SUB_CON_x4_slv_rlast;
input		PCIE_SUB_CON_x4_dbi_awvalid;
input		PCIE_SUB_CON_x4_dbi_wvalid;
input		PCIE_SUB_CON_x4_dbi_bready;
input		PCIE_SUB_CON_x4_dbi_arvalid;
input		PCIE_SUB_CON_x4_dbi_rready;
input		PCIE_SUB_CON_x4_dbi_wlast;
output		PCIE_SUB_CON_x4_dbi_awready;
output		PCIE_SUB_CON_x4_dbi_wready;
output		PCIE_SUB_CON_x4_dbi_bvalid;
output		PCIE_SUB_CON_x4_dbi_arready;
output		PCIE_SUB_CON_x4_dbi_rvalid;
output		PCIE_SUB_CON_x4_dbi_rlast;
input		PCIE_SUB_CON_x4_mstr_arready;
input		PCIE_SUB_CON_x4_mstr_awready;
input		PCIE_SUB_CON_x4_mstr_wready;
output		PCIE_SUB_CON_x4_mstr_arvalid;
output		PCIE_SUB_CON_x4_mstr_awvalid;
output		PCIE_SUB_CON_x4_mstr_wvalid;
input		PCIE_SUB_CON_x4_mstr_aclk_soc;
input		PCIE_SUB_CON_x4_slv_aclk_soc;
input		PCIE_SUB_CON_x4_dbi_aclk_soc;
output		PCIE_SUB_CON_x4_cr_para_sel;
output		PCIE_SUB_CON_x4_phy_lane0_rx2tx_par_lb_en;
output		PCIE_SUB_CON_x4_phy_lane1_rx2tx_par_lb_en;
output		PCIE_SUB_CON_x4_phy_lane2_rx2tx_par_lb_en;
output		PCIE_SUB_CON_x4_phy_lane3_rx2tx_par_lb_en;
input		PCIE_SUB_CON_x4_perst_n;
output		PCIE_SUB_CON_x4_ext_pclk_req;
output		PCIE_SUB_CON_x4_sram_bypass;
// SOC <---> PCIE_SUB_CON_x2
input		PCIE_SUB_CON_x2_TEST_AUXCLK;
input		PCIE_SUB_CON_x2_TEST_MODE;
input		PCIE_SUB_CON_x2_phy_refclk_in;
input		PCIE_SUB_CON_x2_aux_clk_soc;
input		PCIE_SUB_CON_x2_power_up_rst_n;
input		PCIE_SUB_CON_x2_button_rst_n;
input		PCIE_SUB_CON_x2_i_driver_apb_clk;
input		PCIE_SUB_CON_x2_i_driver_apb_rstn;
input	[31:0]	PCIE_SUB_CON_x2_i_driver_apb_paddr;
input		PCIE_SUB_CON_x2_i_driver_apb_psel;
input		PCIE_SUB_CON_x2_i_driver_apb_penable;
input		PCIE_SUB_CON_x2_i_driver_apb_pwrite;
input	[31:0]	PCIE_SUB_CON_x2_i_driver_apb_pwdata;
output	[31:0]	PCIE_SUB_CON_x2_o_driver_apb_prdata;
output		PCIE_SUB_CON_x2_o_driver_apb_pready;
output		PCIE_SUB_CON_x2_o_driver_apb_pslverr;
output		PCIE_SUB_CON_x2_pcie_irq;
input		PCIE_SUB_CON_x2_QREQn_mstr_aclk_slv_aclk;
output		PCIE_SUB_CON_x2_QACCEPTn_mstr_aclk_slv_aclk;
output		PCIE_SUB_CON_x2_QDENY_mstr_aclk_slv_aclk;
output		PCIE_SUB_CON_x2_QACTIVE_mstr_aclk_slv_aclk;
input		PCIE_SUB_CON_x2_QREQn_dbi_aclk;
output		PCIE_SUB_CON_x2_QACCEPTn_dbi_aclk;
output		PCIE_SUB_CON_x2_QDENY_dbi_aclk;
output		PCIE_SUB_CON_x2_QACTIVE_dbi_aclk;
input		PCIE_SUB_CON_x2_QREQn_apb_aclk;
output		PCIE_SUB_CON_x2_QACCEPTn_apb_aclk;
output		PCIE_SUB_CON_x2_QDENY_apb_aclk;
output		PCIE_SUB_CON_x2_QACTIVE_apb_aclk;
input		PCIE_SUB_CON_x2_slv_awvalid;
input		PCIE_SUB_CON_x2_slv_wvalid;
input		PCIE_SUB_CON_x2_slv_bready;
input		PCIE_SUB_CON_x2_slv_arvalid;
input		PCIE_SUB_CON_x2_slv_rready;
input		PCIE_SUB_CON_x2_slv_wlast;
output		PCIE_SUB_CON_x2_slv_awready;
output		PCIE_SUB_CON_x2_slv_wready;
output		PCIE_SUB_CON_x2_slv_bvalid;
output		PCIE_SUB_CON_x2_slv_arready;
output		PCIE_SUB_CON_x2_slv_rvalid;
output		PCIE_SUB_CON_x2_slv_rlast;
input		PCIE_SUB_CON_x2_dbi_awvalid;
input		PCIE_SUB_CON_x2_dbi_wvalid;
input		PCIE_SUB_CON_x2_dbi_bready;
input		PCIE_SUB_CON_x2_dbi_arvalid;
input		PCIE_SUB_CON_x2_dbi_rready;
input		PCIE_SUB_CON_x2_dbi_wlast;
output		PCIE_SUB_CON_x2_dbi_awready;
output		PCIE_SUB_CON_x2_dbi_wready;
output		PCIE_SUB_CON_x2_dbi_bvalid;
output		PCIE_SUB_CON_x2_dbi_arready;
output		PCIE_SUB_CON_x2_dbi_rvalid;
output		PCIE_SUB_CON_x2_dbi_rlast;
input		PCIE_SUB_CON_x2_mstr_arready;
input		PCIE_SUB_CON_x2_mstr_awready;
input		PCIE_SUB_CON_x2_mstr_wready;
output		PCIE_SUB_CON_x2_mstr_arvalid;
output		PCIE_SUB_CON_x2_mstr_awvalid;
output		PCIE_SUB_CON_x2_mstr_wvalid;
input		PCIE_SUB_CON_x2_mstr_aclk_soc;
input		PCIE_SUB_CON_x2_slv_aclk_soc;
input		PCIE_SUB_CON_x2_dbi_aclk_soc;
input		PCIE_SUB_CON_x2_perst_n;
// SOC <---> x4_LINK
output	[63:0]	DWC_pcie_ctrl_x4_mstr_araddr;
output	[1:0]	DWC_pcie_ctrl_x4_mstr_arburst;
output	[3:0]	DWC_pcie_ctrl_x4_mstr_arcache;
output	[5:0]	DWC_pcie_ctrl_x4_mstr_arid;
output	[7:0]	DWC_pcie_ctrl_x4_mstr_arlen;
output		DWC_pcie_ctrl_x4_mstr_arlock;
output	[2:0]	DWC_pcie_ctrl_x4_mstr_arprot;
output	[3:0]	DWC_pcie_ctrl_x4_mstr_arqos;
output	[2:0]	DWC_pcie_ctrl_x4_mstr_arsize;
output	[63:0]	DWC_pcie_ctrl_x4_mstr_awaddr;
output	[1:0]	DWC_pcie_ctrl_x4_mstr_awburst;
output	[3:0]	DWC_pcie_ctrl_x4_mstr_awcache;
output	[5:0]	DWC_pcie_ctrl_x4_mstr_awid;
output	[7:0]	DWC_pcie_ctrl_x4_mstr_awlen;
output		DWC_pcie_ctrl_x4_mstr_awlock;
output	[2:0]	DWC_pcie_ctrl_x4_mstr_awprot;
output	[3:0]	DWC_pcie_ctrl_x4_mstr_awqos;
output	[2:0]	DWC_pcie_ctrl_x4_mstr_awsize;
output	[127:0]	DWC_pcie_ctrl_x4_mstr_wdata;
output		DWC_pcie_ctrl_x4_mstr_wlast;
output	[15:0]	DWC_pcie_ctrl_x4_mstr_wstrb;
input	[5:0]	DWC_pcie_ctrl_x4_mstr_bid;
input	[1:0]	DWC_pcie_ctrl_x4_mstr_bresp;
input		DWC_pcie_ctrl_x4_mstr_bvalid;
output		DWC_pcie_ctrl_x4_mstr_bready;
input	[5:0]	DWC_pcie_ctrl_x4_mstr_rid;
input	[127:0]	DWC_pcie_ctrl_x4_mstr_rdata;
input		DWC_pcie_ctrl_x4_mstr_rlast;
input	[1:0]	DWC_pcie_ctrl_x4_mstr_rresp;
input		DWC_pcie_ctrl_x4_mstr_rvalid;
output		DWC_pcie_ctrl_x4_mstr_rready;
output		DWC_pcie_ctrl_x4_mstr_cactive;
output		DWC_pcie_ctrl_x4_mstr_csysack;
input		DWC_pcie_ctrl_x4_mstr_csysreq;
input	[63:0]	DWC_pcie_ctrl_x4_slv_araddr;
input	[1:0]	DWC_pcie_ctrl_x4_slv_arburst;
input	[3:0]	DWC_pcie_ctrl_x4_slv_arcache;
input	[15:0]	DWC_pcie_ctrl_x4_slv_arid;
input	[7:0]	DWC_pcie_ctrl_x4_slv_arlen;
input		DWC_pcie_ctrl_x4_slv_arlock;
input	[2:0]	DWC_pcie_ctrl_x4_slv_arprot;
input	[3:0]	DWC_pcie_ctrl_x4_slv_arqos;
input	[2:0]	DWC_pcie_ctrl_x4_slv_arsize;
input	[63:0]	DWC_pcie_ctrl_x4_slv_awaddr;
input	[1:0]	DWC_pcie_ctrl_x4_slv_awburst;
input	[3:0]	DWC_pcie_ctrl_x4_slv_awcache;
input	[15:0]	DWC_pcie_ctrl_x4_slv_awid;
input	[7:0]	DWC_pcie_ctrl_x4_slv_awlen;
input		DWC_pcie_ctrl_x4_slv_awlock;
input	[2:0]	DWC_pcie_ctrl_x4_slv_awprot;
input	[3:0]	DWC_pcie_ctrl_x4_slv_awqos;
input	[2:0]	DWC_pcie_ctrl_x4_slv_awsize;
input	[127:0]	DWC_pcie_ctrl_x4_slv_wdata;
input	[15:0]	DWC_pcie_ctrl_x4_slv_wstrb;
output	[15:0]	DWC_pcie_ctrl_x4_slv_bid;
output	[1:0]	DWC_pcie_ctrl_x4_slv_bresp;
output	[15:0]	DWC_pcie_ctrl_x4_slv_rid;
output	[127:0]	DWC_pcie_ctrl_x4_slv_rdata;
output	[1:0]	DWC_pcie_ctrl_x4_slv_rresp;
output		DWC_pcie_ctrl_x4_slv_cactive;
output		DWC_pcie_ctrl_x4_slv_csysack;
input		DWC_pcie_ctrl_x4_slv_csysreq;
input	[31:0]	DWC_pcie_ctrl_x4_dbi_araddr;
input	[1:0]	DWC_pcie_ctrl_x4_dbi_arburst;
input	[3:0]	DWC_pcie_ctrl_x4_dbi_arcache;
input	[3:0]	DWC_pcie_ctrl_x4_dbi_arid;
input	[7:0]	DWC_pcie_ctrl_x4_dbi_arlen;
input		DWC_pcie_ctrl_x4_dbi_arlock;
input	[2:0]	DWC_pcie_ctrl_x4_dbi_arprot;
input	[3:0]	DWC_pcie_ctrl_x4_dbi_arqos;
input	[2:0]	DWC_pcie_ctrl_x4_dbi_arsize;
input	[31:0]	DWC_pcie_ctrl_x4_dbi_awaddr;
input	[1:0]	DWC_pcie_ctrl_x4_dbi_awburst;
input	[3:0]	DWC_pcie_ctrl_x4_dbi_awcache;
input	[3:0]	DWC_pcie_ctrl_x4_dbi_awid;
input	[7:0]	DWC_pcie_ctrl_x4_dbi_awlen;
input		DWC_pcie_ctrl_x4_dbi_awlock;
input	[2:0]	DWC_pcie_ctrl_x4_dbi_awprot;
input	[3:0]	DWC_pcie_ctrl_x4_dbi_awqos;
input	[2:0]	DWC_pcie_ctrl_x4_dbi_awsize;
input	[31:0]	DWC_pcie_ctrl_x4_dbi_wdata;
input	[3:0]	DWC_pcie_ctrl_x4_dbi_wstrb;
output	[11:0]	DWC_pcie_ctrl_x4_dbi_bid;
output	[1:0]	DWC_pcie_ctrl_x4_dbi_bresp;
output	[11:0]	DWC_pcie_ctrl_x4_dbi_rid;
output	[31:0]	DWC_pcie_ctrl_x4_dbi_rdata;
output	[1:0]	DWC_pcie_ctrl_x4_dbi_rresp;
output		DWC_pcie_ctrl_x4_dbi_cactive;
output		DWC_pcie_ctrl_x4_dbi_csysack;
input		DWC_pcie_ctrl_x4_dbi_csysreq;
// SOC <---> x2_LINK
output	[63:0]	DWC_pcie_ctrl_x2_mstr_araddr;
output	[1:0]	DWC_pcie_ctrl_x2_mstr_arburst;
output	[3:0]	DWC_pcie_ctrl_x2_mstr_arcache;
output	[5:0]	DWC_pcie_ctrl_x2_mstr_arid;
output	[7:0]	DWC_pcie_ctrl_x2_mstr_arlen;
output		DWC_pcie_ctrl_x2_mstr_arlock;
output	[2:0]	DWC_pcie_ctrl_x2_mstr_arprot;
output	[3:0]	DWC_pcie_ctrl_x2_mstr_arqos;
output	[2:0]	DWC_pcie_ctrl_x2_mstr_arsize;
output	[63:0]	DWC_pcie_ctrl_x2_mstr_awaddr;
output	[1:0]	DWC_pcie_ctrl_x2_mstr_awburst;
output	[3:0]	DWC_pcie_ctrl_x2_mstr_awcache;
output	[5:0]	DWC_pcie_ctrl_x2_mstr_awid;
output	[7:0]	DWC_pcie_ctrl_x2_mstr_awlen;
output		DWC_pcie_ctrl_x2_mstr_awlock;
output	[2:0]	DWC_pcie_ctrl_x2_mstr_awprot;
output	[3:0]	DWC_pcie_ctrl_x2_mstr_awqos;
output	[2:0]	DWC_pcie_ctrl_x2_mstr_awsize;
output	[127:0]	DWC_pcie_ctrl_x2_mstr_wdata;
output		DWC_pcie_ctrl_x2_mstr_wlast;
output	[15:0]	DWC_pcie_ctrl_x2_mstr_wstrb;
input	[5:0]	DWC_pcie_ctrl_x2_mstr_bid;
input	[1:0]	DWC_pcie_ctrl_x2_mstr_bresp;
input		DWC_pcie_ctrl_x2_mstr_bvalid;
output		DWC_pcie_ctrl_x2_mstr_bready;
input	[5:0]	DWC_pcie_ctrl_x2_mstr_rid;
input	[127:0]	DWC_pcie_ctrl_x2_mstr_rdata;
input		DWC_pcie_ctrl_x2_mstr_rlast;
input	[1:0]	DWC_pcie_ctrl_x2_mstr_rresp;
input		DWC_pcie_ctrl_x2_mstr_rvalid;
output		DWC_pcie_ctrl_x2_mstr_rready;
output		DWC_pcie_ctrl_x2_mstr_cactive;
output		DWC_pcie_ctrl_x2_mstr_csysack;
input		DWC_pcie_ctrl_x2_mstr_csysreq;
input	[63:0]	DWC_pcie_ctrl_x2_slv_araddr;
input	[1:0]	DWC_pcie_ctrl_x2_slv_arburst;
input	[3:0]	DWC_pcie_ctrl_x2_slv_arcache;
input	[15:0]	DWC_pcie_ctrl_x2_slv_arid;
input	[7:0]	DWC_pcie_ctrl_x2_slv_arlen;
input		DWC_pcie_ctrl_x2_slv_arlock;
input	[2:0]	DWC_pcie_ctrl_x2_slv_arprot;
input	[3:0]	DWC_pcie_ctrl_x2_slv_arqos;
input	[2:0]	DWC_pcie_ctrl_x2_slv_arsize;
input	[63:0]	DWC_pcie_ctrl_x2_slv_awaddr;
input	[1:0]	DWC_pcie_ctrl_x2_slv_awburst;
input	[3:0]	DWC_pcie_ctrl_x2_slv_awcache;
input	[15:0]	DWC_pcie_ctrl_x2_slv_awid;
input	[7:0]	DWC_pcie_ctrl_x2_slv_awlen;
input		DWC_pcie_ctrl_x2_slv_awlock;
input	[2:0]	DWC_pcie_ctrl_x2_slv_awprot;
input	[3:0]	DWC_pcie_ctrl_x2_slv_awqos;
input	[2:0]	DWC_pcie_ctrl_x2_slv_awsize;
input	[127:0]	DWC_pcie_ctrl_x2_slv_wdata;
input	[15:0]	DWC_pcie_ctrl_x2_slv_wstrb;
output	[15:0]	DWC_pcie_ctrl_x2_slv_bid;
output	[1:0]	DWC_pcie_ctrl_x2_slv_bresp;
output	[15:0]	DWC_pcie_ctrl_x2_slv_rid;
output	[127:0]	DWC_pcie_ctrl_x2_slv_rdata;
output	[1:0]	DWC_pcie_ctrl_x2_slv_rresp;
output		DWC_pcie_ctrl_x2_slv_cactive;
output		DWC_pcie_ctrl_x2_slv_csysack;
input		DWC_pcie_ctrl_x2_slv_csysreq;
input	[31:0]	DWC_pcie_ctrl_x2_dbi_araddr;
input	[1:0]	DWC_pcie_ctrl_x2_dbi_arburst;
input	[3:0]	DWC_pcie_ctrl_x2_dbi_arcache;
input	[3:0]	DWC_pcie_ctrl_x2_dbi_arid;
input	[7:0]	DWC_pcie_ctrl_x2_dbi_arlen;
input		DWC_pcie_ctrl_x2_dbi_arlock;
input	[2:0]	DWC_pcie_ctrl_x2_dbi_arprot;
input	[3:0]	DWC_pcie_ctrl_x2_dbi_arqos;
input	[2:0]	DWC_pcie_ctrl_x2_dbi_arsize;
input	[31:0]	DWC_pcie_ctrl_x2_dbi_awaddr;
input	[1:0]	DWC_pcie_ctrl_x2_dbi_awburst;
input	[3:0]	DWC_pcie_ctrl_x2_dbi_awcache;
input	[3:0]	DWC_pcie_ctrl_x2_dbi_awid;
input	[7:0]	DWC_pcie_ctrl_x2_dbi_awlen;
input		DWC_pcie_ctrl_x2_dbi_awlock;
input	[2:0]	DWC_pcie_ctrl_x2_dbi_awprot;
input	[3:0]	DWC_pcie_ctrl_x2_dbi_awqos;
input	[2:0]	DWC_pcie_ctrl_x2_dbi_awsize;
input	[31:0]	DWC_pcie_ctrl_x2_dbi_wdata;
input	[3:0]	DWC_pcie_ctrl_x2_dbi_wstrb;
output	[3:0]	DWC_pcie_ctrl_x2_dbi_bid;
output	[1:0]	DWC_pcie_ctrl_x2_dbi_bresp;
output	[3:0]	DWC_pcie_ctrl_x2_dbi_rid;
output	[31:0]	DWC_pcie_ctrl_x2_dbi_rdata;
output	[1:0]	DWC_pcie_ctrl_x2_dbi_rresp;
output		DWC_pcie_ctrl_x2_dbi_cactive;
output		DWC_pcie_ctrl_x2_dbi_csysack;
input		DWC_pcie_ctrl_x2_dbi_csysreq;

// SOC <---> PHY
input		PCIE_PHY_ext_pclk_req;
input		PCIE_PHY_pcs_scan_mode;
input		PCIE_PHY_pcs_scan_pclk;
input		PCIE_PHY_pcs_scan_pcs_clk;
input		PCIE_PHY_pcs_scan_pma_clk;
input		PCIE_PHY_pcs_scan_rst;
input		PCIE_PHY_pcs_scan_rx_clk_div;
input		PCIE_PHY_pcs_scan_shift;
input		PCIE_PHY_pcs_scan_shift_cg;
input		PCIE_PHY_phy0_bs_acmode;
input		PCIE_PHY_phy0_bs_actest;
input		PCIE_PHY_phy0_bs_cdr;
input		PCIE_PHY_phy0_bs_ce;
input		PCIE_PHY_phy0_bs_rx_init;
input		PCIE_PHY_phy0_bs_sdr;
input		PCIE_PHY_phy0_bs_tdi;
output		PCIE_PHY_phy0_bs_tdo;
input		PCIE_PHY_phy0_bs_udr;
input		PCIE_PHY_phy0_cr_para_sel;
output	[1:0]	PCIE_PHY_phy0_dtb_out;
input		PCIE_PHY_phy0_jtag_tck;
input		PCIE_PHY_phy0_jtag_tdi;
output		PCIE_PHY_phy0_jtag_tdo;
output		PCIE_PHY_phy0_jtag_tdo_en;
input		PCIE_PHY_phy0_jtag_tms;
input		PCIE_PHY_phy0_jtag_trst_n;
input		PCIE_PHY_phy0_sram_bypass;
output		PCIE_REF_DIG_CLK;
inout		PCIE_PHY_phy0_ref_pad_clk_m;
inout		PCIE_PHY_phy0_ref_pad_clk_p;
inout		PCIE_PHY_phy_resref;
input		PCIE_PHY_phy0_scan_cr_clk;
input	[150:0]	PCIE_PHY_phy0_scan_cr_in;
output	[150:0]	PCIE_PHY_phy0_scan_cr_out;
input		PCIE_PHY_phy0_scan_mode;
input		PCIE_PHY_phy0_scan_mplla_div16p5_clk;
input		PCIE_PHY_phy0_scan_mplla_div16p5_in;
output		PCIE_PHY_phy0_scan_mplla_div16p5_out;
input		PCIE_PHY_phy0_scan_mplla_div33_clk;
input		PCIE_PHY_phy0_scan_mplla_div66_clk;
input		PCIE_PHY_phy0_scan_mplla_div_clk;
input		PCIE_PHY_phy0_scan_mplla_div_in;
output		PCIE_PHY_phy0_scan_mplla_div_out;
input		PCIE_PHY_phy0_scan_mplla_dword_clk;
input		PCIE_PHY_phy0_scan_mplla_dword_in;
output		PCIE_PHY_phy0_scan_mplla_dword_out;
input		PCIE_PHY_phy0_scan_mplla_fb_clk;
input		PCIE_PHY_phy0_scan_mplla_fb_in;
output		PCIE_PHY_phy0_scan_mplla_fb_out;
input		PCIE_PHY_phy0_scan_mplla_oword_clk;
input		PCIE_PHY_phy0_scan_mplla_qword_clk;
input		PCIE_PHY_phy0_scan_mplla_ref_clk;
input		PCIE_PHY_phy0_scan_mplla_ref_in;
output		PCIE_PHY_phy0_scan_mplla_ref_out;
input		PCIE_PHY_phy0_scan_mplla_ssc_clk;
input	[2:0]	PCIE_PHY_phy0_scan_mplla_ssc_in;
output	[2:0]	PCIE_PHY_phy0_scan_mplla_ssc_out;
input		PCIE_PHY_phy0_scan_mplla_word_clk;
input		PCIE_PHY_phy0_scan_mplla_word_in;
output		PCIE_PHY_phy0_scan_mplla_word_out;
input		PCIE_PHY_phy0_scan_mpllb_div_clk;
input		PCIE_PHY_phy0_scan_mpllb_div_in;
output		PCIE_PHY_phy0_scan_mpllb_div_out;
input		PCIE_PHY_phy0_scan_mpllb_dword_clk;
input		PCIE_PHY_phy0_scan_mpllb_dword_in;
output		PCIE_PHY_phy0_scan_mpllb_dword_out;
input		PCIE_PHY_phy0_scan_mpllb_fb_clk;
input		PCIE_PHY_phy0_scan_mpllb_fb_in;
output		PCIE_PHY_phy0_scan_mpllb_fb_out;
input		PCIE_PHY_phy0_scan_mpllb_oword_clk;
input		PCIE_PHY_phy0_scan_mpllb_qword_clk;
input		PCIE_PHY_phy0_scan_mpllb_ref_clk;
input		PCIE_PHY_phy0_scan_mpllb_ref_in;
output		PCIE_PHY_phy0_scan_mpllb_ref_out;
input		PCIE_PHY_phy0_scan_mpllb_ssc_clk;
input	[2:0]	PCIE_PHY_phy0_scan_mpllb_ssc_in;
output	[2:0]	PCIE_PHY_phy0_scan_mpllb_ssc_out;
input		PCIE_PHY_phy0_scan_mpllb_word_clk;
input		PCIE_PHY_phy0_scan_mpllb_word_in;
input		PCIE_PHY_phy0_scan_mpllb_word_out;
input		PCIE_PHY_phy0_scan_phy_ref_dig_clk;
input		PCIE_PHY_phy0_scan_phy_ref_dig_in;
output		PCIE_PHY_phy0_scan_phy_ref_dig_out;
input		PCIE_PHY_phy0_scan_ref_clk;
input		PCIE_PHY_phy0_scan_ref_dig_clk;
input	[10:0]	PCIE_PHY_phy0_scan_ref_dig_in;
output	[10:0]	PCIE_PHY_phy0_scan_ref_dig_out;
input		PCIE_PHY_phy0_scan_ref_in;
output		PCIE_PHY_phy0_scan_ref_out;
input		PCIE_PHY_phy0_scan_ref_range_clk;
input	[22:0]	PCIE_PHY_phy0_scan_ref_range_in;
output	[22:0]	PCIE_PHY_phy0_scan_ref_range_out;
input		PCIE_PHY_phy0_scan_set_rst;
input		PCIE_PHY_phy0_scan_shift;
input		PCIE_PHY_phy0_scan_shift_cg;
input		PCIE_PHY_phy0_test_flyover_en;
input		PCIE_PHY_phy_lane0_rx2tx_par_lb_en;
input		PCIE_PHY_phy_lane1_rx2tx_par_lb_en;
input		PCIE_PHY_phy_lane2_rx2tx_par_lb_en;
input		PCIE_PHY_phy_lane3_rx2tx_par_lb_en;
output		PCIE_PHY_phy_rx0_flyover_data_m;
output		PCIE_PHY_phy_rx0_flyover_data_p;
inout		PCIE_PHY_phy_rx0_m;
inout		PCIE_PHY_phy_rx0_p;
output		PCIE_PHY_phy_rx1_flyover_data_m;
output		PCIE_PHY_phy_rx1_flyover_data_p;
inout		PCIE_PHY_phy_rx1_m;
inout		PCIE_PHY_phy_rx1_p;
output		PCIE_PHY_phy_rx2_flyover_data_m;
output		PCIE_PHY_phy_rx2_flyover_data_p;
inout		PCIE_PHY_phy_rx2_m;
inout		PCIE_PHY_phy_rx2_p;
output		PCIE_PHY_phy_rx3_flyover_data_m;
output		PCIE_PHY_phy_rx3_flyover_data_p;
inout		PCIE_PHY_phy_rx3_m;
inout		PCIE_PHY_phy_rx3_p;
input		PCIE_PHY_phy_scan_rx0_adpt_clk;
input	[5:0]	PCIE_PHY_phy_scan_rx0_adpt_in;
output	[5:0]	PCIE_PHY_phy_scan_rx0_adpt_out;
input		PCIE_PHY_phy_scan_rx0_asic_clk;
input		PCIE_PHY_phy_scan_rx0_asic_in;
output		PCIE_PHY_phy_scan_rx0_asic_out;
input		PCIE_PHY_phy_scan_rx0_div16p5_clk;
input		PCIE_PHY_phy_scan_rx0_div16p5_in;
output		PCIE_PHY_phy_scan_rx0_div16p5_out;
input		PCIE_PHY_phy_scan_rx0_dpll_clk;
input	[1:0]	PCIE_PHY_phy_scan_rx0_dpll_in;
output	[1:0]	PCIE_PHY_phy_scan_rx0_dpll_out;
input		PCIE_PHY_phy_scan_rx0_dword_clk;
input	[9:0]	PCIE_PHY_phy_scan_rx0_dword_in;
output	[9:0]	PCIE_PHY_phy_scan_rx0_dword_out;
input		PCIE_PHY_phy_scan_rx0_scope_clk;
input		PCIE_PHY_phy_scan_rx0_scope_in;
output		PCIE_PHY_phy_scan_rx0_scope_out;
input		PCIE_PHY_phy_scan_rx0_stat_clk;
input	[8:0]	PCIE_PHY_phy_scan_rx0_stat_in;
output	[8:0]	PCIE_PHY_phy_scan_rx0_stat_out;
input		PCIE_PHY_phy_scan_rx0_word_clk;
input		PCIE_PHY_phy_scan_rx0_word_in;
output		PCIE_PHY_phy_scan_rx0_word_out;
input		PCIE_PHY_phy_scan_rx1_adpt_clk;
input	[5:0]	PCIE_PHY_phy_scan_rx1_adpt_in;
output	[5:0]	PCIE_PHY_phy_scan_rx1_adpt_out;
input		PCIE_PHY_phy_scan_rx1_asic_clk;
input		PCIE_PHY_phy_scan_rx1_asic_in;
output		PCIE_PHY_phy_scan_rx1_asic_out;
input		PCIE_PHY_phy_scan_rx1_div16p5_clk;
input		PCIE_PHY_phy_scan_rx1_div16p5_in;
output		PCIE_PHY_phy_scan_rx1_div16p5_out;
input		PCIE_PHY_phy_scan_rx1_dpll_clk;
input	[1:0]	PCIE_PHY_phy_scan_rx1_dpll_in;
output	[1:0]	PCIE_PHY_phy_scan_rx1_dpll_out;
input		PCIE_PHY_phy_scan_rx1_dword_clk;
input	[9:0]	PCIE_PHY_phy_scan_rx1_dword_in;
output	[9:0]	PCIE_PHY_phy_scan_rx1_dword_out;
input		PCIE_PHY_phy_scan_rx1_scope_clk;
input		PCIE_PHY_phy_scan_rx1_scope_in;
output		PCIE_PHY_phy_scan_rx1_scope_out;
input		PCIE_PHY_phy_scan_rx1_stat_clk;
input	[8:0]	PCIE_PHY_phy_scan_rx1_stat_in;
output	[8:0]	PCIE_PHY_phy_scan_rx1_stat_out;
input		PCIE_PHY_phy_scan_rx1_word_clk;
input		PCIE_PHY_phy_scan_rx1_word_in;
output		PCIE_PHY_phy_scan_rx1_word_out;
input		PCIE_PHY_phy_scan_rx2_adpt_clk;
input	[5:0]	PCIE_PHY_phy_scan_rx2_adpt_in;
output	[5:0]	PCIE_PHY_phy_scan_rx2_adpt_out;
input		PCIE_PHY_phy_scan_rx2_asic_clk;
input		PCIE_PHY_phy_scan_rx2_asic_in;
output		PCIE_PHY_phy_scan_rx2_asic_out;
input		PCIE_PHY_phy_scan_rx2_div16p5_clk;
input		PCIE_PHY_phy_scan_rx2_div16p5_in;
output		PCIE_PHY_phy_scan_rx2_div16p5_out;
input		PCIE_PHY_phy_scan_rx2_dpll_clk;
input	[1:0]	PCIE_PHY_phy_scan_rx2_dpll_in;
output	[1:0]	PCIE_PHY_phy_scan_rx2_dpll_out;
input		PCIE_PHY_phy_scan_rx2_dword_clk;
input	[9:0]	PCIE_PHY_phy_scan_rx2_dword_in;
output	[9:0]	PCIE_PHY_phy_scan_rx2_dword_out;
input		PCIE_PHY_phy_scan_rx2_scope_clk;
input		PCIE_PHY_phy_scan_rx2_scope_in;
output		PCIE_PHY_phy_scan_rx2_scope_out;
input		PCIE_PHY_phy_scan_rx2_stat_clk;
input	[8:0]	PCIE_PHY_phy_scan_rx2_stat_in;
output	[8:0]	PCIE_PHY_phy_scan_rx2_stat_out;
input		PCIE_PHY_phy_scan_rx2_word_clk;
input		PCIE_PHY_phy_scan_rx2_word_in;
output		PCIE_PHY_phy_scan_rx2_word_out;
input		PCIE_PHY_phy_scan_rx3_adpt_clk;
input	[5:0]	PCIE_PHY_phy_scan_rx3_adpt_in;
output	[5:0]	PCIE_PHY_phy_scan_rx3_adpt_out;
input		PCIE_PHY_phy_scan_rx3_asic_clk;
input		PCIE_PHY_phy_scan_rx3_asic_in;
output		PCIE_PHY_phy_scan_rx3_asic_out;
input		PCIE_PHY_phy_scan_rx3_div16p5_clk;
input		PCIE_PHY_phy_scan_rx3_div16p5_in;
output		PCIE_PHY_phy_scan_rx3_div16p5_out;
input		PCIE_PHY_phy_scan_rx3_dpll_clk;
input	[1:0]	PCIE_PHY_phy_scan_rx3_dpll_in;
output	[1:0]	PCIE_PHY_phy_scan_rx3_dpll_out;
input		PCIE_PHY_phy_scan_rx3_dword_clk;
input	[9:0]	PCIE_PHY_phy_scan_rx3_dword_in;
output	[9:0]	PCIE_PHY_phy_scan_rx3_dword_out;
input		PCIE_PHY_phy_scan_rx3_scope_clk;
input		PCIE_PHY_phy_scan_rx3_scope_in;
output		PCIE_PHY_phy_scan_rx3_scope_out;
input		PCIE_PHY_phy_scan_rx3_stat_clk;
input	[8:0]	PCIE_PHY_phy_scan_rx3_stat_in;
output	[8:0]	PCIE_PHY_phy_scan_rx3_stat_out;
input		PCIE_PHY_phy_scan_rx3_word_clk;
input		PCIE_PHY_phy_scan_rx3_word_in;
output		PCIE_PHY_phy_scan_rx3_word_out;
input		PCIE_PHY_phy_scan_tx0_ana_dword_clk;
input	[1:0]	PCIE_PHY_phy_scan_tx0_ana_dword_in;
output	[1:0]	PCIE_PHY_phy_scan_tx0_ana_dword_out;
input		PCIE_PHY_phy_scan_tx0_ana_word_clk;
input		PCIE_PHY_phy_scan_tx0_ana_word_in;
output		PCIE_PHY_phy_scan_tx0_ana_word_out;
input	[2:0]	PCIE_PHY_phy_scan_tx0_in;
output	[2:0]	PCIE_PHY_phy_scan_tx0_out;
input		PCIE_PHY_phy_scan_tx1_ana_dword_clk;
input	[1:0]	PCIE_PHY_phy_scan_tx1_ana_dword_in;
output	[1:0]	PCIE_PHY_phy_scan_tx1_ana_dword_out;
input		PCIE_PHY_phy_scan_tx1_ana_word_clk;
input		PCIE_PHY_phy_scan_tx1_ana_word_in;
output		PCIE_PHY_phy_scan_tx1_ana_word_out;
input	[2:0]	PCIE_PHY_phy_scan_tx1_in;
output	[2:0]	PCIE_PHY_phy_scan_tx1_out;
input		PCIE_PHY_phy_scan_tx2_ana_dword_clk;
input	[1:0]	PCIE_PHY_phy_scan_tx2_ana_dword_in;
output	[1:0]	PCIE_PHY_phy_scan_tx2_ana_dword_out;
input		PCIE_PHY_phy_scan_tx2_ana_word_clk;
input		PCIE_PHY_phy_scan_tx2_ana_word_in;
output		PCIE_PHY_phy_scan_tx2_ana_word_out;
input	[2:0]	PCIE_PHY_phy_scan_tx2_in;
output	[2:0]	PCIE_PHY_phy_scan_tx2_out;
input		PCIE_PHY_phy_scan_tx3_ana_dword_clk;
input	[1:0]	PCIE_PHY_phy_scan_tx3_ana_dword_in;
output	[1:0]	PCIE_PHY_phy_scan_tx3_ana_dword_out;
input		PCIE_PHY_phy_scan_tx3_ana_word_clk;
input		PCIE_PHY_phy_scan_tx3_ana_word_in;
output		PCIE_PHY_phy_scan_tx3_ana_word_out;
input	[2:0]	PCIE_PHY_phy_scan_tx3_in;
output	[2:0]	PCIE_PHY_phy_scan_tx3_out;
input		PCIE_PHY_phy_test_burnin;
input		PCIE_PHY_phy_test_powerdown;
input		PCIE_PHY_phy_test_stop_clk_en;
input		PCIE_PHY_phy_tx0_flyover_data_m;
input		PCIE_PHY_phy_tx0_flyover_data_p;
inout		PCIE_PHY_phy_tx0_m;
inout		PCIE_PHY_phy_tx0_p;
input		PCIE_PHY_phy_tx1_flyover_data_m;
input		PCIE_PHY_phy_tx1_flyover_data_p;
inout		PCIE_PHY_phy_tx1_m;
inout		PCIE_PHY_phy_tx1_p;
input		PCIE_PHY_phy_tx2_flyover_data_m;
input		PCIE_PHY_phy_tx2_flyover_data_p;
inout		PCIE_PHY_phy_tx2_m;
inout		PCIE_PHY_phy_tx2_p;
input		PCIE_PHY_phy_tx3_flyover_data_m;
input		PCIE_PHY_phy_tx3_flyover_data_p;
inout		PCIE_PHY_phy_tx3_m;
inout		PCIE_PHY_phy_tx3_p;
// SOC <---> APB2CR
input		PCIE_PHY_APB2CR_pclk_300;
input		PCIE_PHY_APB2CR_pclk_100;
input		PCIE_PHY_APB2CR_presetn;
input	[31:0]	PCIE_PHY_APB2CR_paddr;
input		PCIE_PHY_APB2CR_pwrite;
input		PCIE_PHY_APB2CR_psel;
input		PCIE_PHY_APB2CR_penable;
input	[31:0]	PCIE_PHY_APB2CR_pwdata;
output	[31:0]	PCIE_PHY_APB2CR_prdata;
output		PCIE_PHY_APB2CR_pready;
output		PCIE_PHY_APB2CR_pslverr;
input		PCIE_PHY_APB2CR_QREQn;
input		PCIE_PHY_APB2CR_TEST_MODE;
input		PCIE_PHY_APB2CR_TEST_RESETn;
output		PCIE_PHY_APB2CR_QACCEPTn;
output		PCIE_PHY_APB2CR_QACTIVE;
output		PCIE_PHY_APB2CR_QDENY;
// PIPE_MUX
input		PIPE_MUX_PHY_MODE_SEL;
// SOC -> TEST_MUX
input		I_TEST_MODE_PCIE_PHY;
input		PCIE_PHY_phy_reset;
input		PCIE_PHY_pipe_lane0_1_reset_n;
input		PCIE_PHY_pipe_lane2_3_reset_n;





//------------------------------------------------------------------------
// PCIE_TOP I/O PORT START
//------------------------------------------------------------------------
// SOC <---> PCIE_SUB_CON_x4
wire		PCIE_SUB_CON_x4_TEST_AUXCLK;
wire		PCIE_SUB_CON_x4_TEST_MODE;
wire		PCIE_SUB_CON_x4_phy_refclk_in;
wire		PCIE_SUB_CON_x4_aux_clk_soc;
wire		PCIE_SUB_CON_x4_power_up_rst_n;
wire		PCIE_SUB_CON_x4_button_rst_n;
wire		PCIE_SUB_CON_x4_i_driver_apb_clk;
wire		PCIE_SUB_CON_x4_i_driver_apb_rstn;
wire	[31:0]	PCIE_SUB_CON_x4_i_driver_apb_paddr;
wire		PCIE_SUB_CON_x4_i_driver_apb_psel;
wire		PCIE_SUB_CON_x4_i_driver_apb_penable;
wire		PCIE_SUB_CON_x4_i_driver_apb_pwrite;
wire	[31:0]	PCIE_SUB_CON_x4_i_driver_apb_pwdata;
wire	[31:0]	PCIE_SUB_CON_x4_o_driver_apb_prdata;
wire		PCIE_SUB_CON_x4_o_driver_apb_pready;
wire		PCIE_SUB_CON_x4_o_driver_apb_pslverr;
wire		PCIE_SUB_CON_x4_pcie_irq;
wire		PCIE_SUB_CON_x4_QREQn_mstr_aclk_slv_aclk;
wire		PCIE_SUB_CON_x4_QACCEPTn_mstr_aclk_slv_aclk;
wire		PCIE_SUB_CON_x4_QDENY_mstr_aclk_slv_aclk;
wire		PCIE_SUB_CON_x4_QACTIVE_mstr_aclk_slv_aclk;
wire		PCIE_SUB_CON_x4_QREQn_dbi_aclk;
wire		PCIE_SUB_CON_x4_QACCEPTn_dbi_aclk;
wire		PCIE_SUB_CON_x4_QDENY_dbi_aclk;
wire		PCIE_SUB_CON_x4_QACTIVE_dbi_aclk;
wire		PCIE_SUB_CON_x4_QREQn_apb_aclk;
wire		PCIE_SUB_CON_x4_QACCEPTn_apb_aclk;
wire		PCIE_SUB_CON_x4_QDENY_apb_aclk;
wire		PCIE_SUB_CON_x4_QACTIVE_apb_aclk;
wire  		PCIE_SUB_CON_x4_slv_awvalid;
wire  		PCIE_SUB_CON_x4_slv_wvalid;
wire  		PCIE_SUB_CON_x4_slv_bready;
wire  		PCIE_SUB_CON_x4_slv_arvalid;
wire  		PCIE_SUB_CON_x4_slv_rready;
wire  		PCIE_SUB_CON_x4_slv_wlast;
wire		PCIE_SUB_CON_x4_slv_awready;
wire		PCIE_SUB_CON_x4_slv_wready;
wire		PCIE_SUB_CON_x4_slv_bvalid;
wire		PCIE_SUB_CON_x4_slv_arready;
wire		PCIE_SUB_CON_x4_slv_rvalid;
wire		PCIE_SUB_CON_x4_slv_rlast;
wire  		PCIE_SUB_CON_x4_dbi_awvalid;
wire  		PCIE_SUB_CON_x4_dbi_wvalid;
wire  		PCIE_SUB_CON_x4_dbi_bready;
wire  		PCIE_SUB_CON_x4_dbi_arvalid;
wire  		PCIE_SUB_CON_x4_dbi_rready;
wire  		PCIE_SUB_CON_x4_dbi_wlast;
wire		PCIE_SUB_CON_x4_dbi_awready;
wire		PCIE_SUB_CON_x4_dbi_wready;
wire		PCIE_SUB_CON_x4_dbi_bvalid;
wire		PCIE_SUB_CON_x4_dbi_arready;
wire		PCIE_SUB_CON_x4_dbi_rvalid;
wire		PCIE_SUB_CON_x4_dbi_rlast;
wire  		PCIE_SUB_CON_x4_mstr_arready;
wire  		PCIE_SUB_CON_x4_mstr_awready;
wire  		PCIE_SUB_CON_x4_mstr_wready;
wire		PCIE_SUB_CON_x4_mstr_arvalid;
wire		PCIE_SUB_CON_x4_mstr_awvalid;
wire		PCIE_SUB_CON_x4_mstr_wvalid;
wire  		PCIE_SUB_CON_x4_mstr_aclk_soc;
wire  		PCIE_SUB_CON_x4_slv_aclk_soc;
wire  		PCIE_SUB_CON_x4_dbi_aclk_soc;
wire		PCIE_SUB_CON_x4_cr_para_sel;
wire		PCIE_SUB_CON_x4_phy_lane0_rx2tx_par_lb_en;
wire		PCIE_SUB_CON_x4_phy_lane1_rx2tx_par_lb_en;
wire		PCIE_SUB_CON_x4_phy_lane2_rx2tx_par_lb_en;
wire		PCIE_SUB_CON_x4_phy_lane3_rx2tx_par_lb_en;
wire  		PCIE_SUB_CON_x4_perst_n;
wire		PCIE_SUB_CON_x4_ext_pclk_req;
wire		PCIE_SUB_CON_x4_sram_bypass;
// SOC <---> PCIE_SUB_CON_x2
wire		PCIE_SUB_CON_x2_TEST_AUXCLK;
wire		PCIE_SUB_CON_x2_TEST_MODE;
wire		PCIE_SUB_CON_x2_phy_refclk_in;
wire		PCIE_SUB_CON_x2_aux_clk_soc;
wire		PCIE_SUB_CON_x2_power_up_rst_n;
wire		PCIE_SUB_CON_x2_button_rst_n;
wire		PCIE_SUB_CON_x2_i_driver_apb_clk;
wire		PCIE_SUB_CON_x2_i_driver_apb_rstn;
wire	[31:0]	PCIE_SUB_CON_x2_i_driver_apb_paddr;
wire		PCIE_SUB_CON_x2_i_driver_apb_psel;
wire		PCIE_SUB_CON_x2_i_driver_apb_penable;
wire		PCIE_SUB_CON_x2_i_driver_apb_pwrite;
wire	[31:0]	PCIE_SUB_CON_x2_i_driver_apb_pwdata;
wire	[31:0]	PCIE_SUB_CON_x2_o_driver_apb_prdata;
wire		PCIE_SUB_CON_x2_o_driver_apb_pready;
wire		PCIE_SUB_CON_x2_o_driver_apb_pslverr;
wire		PCIE_SUB_CON_x2_pcie_irq;
wire		PCIE_SUB_CON_x2_QREQn_mstr_aclk_slv_aclk;
wire		PCIE_SUB_CON_x2_QACCEPTn_mstr_aclk_slv_aclk;
wire		PCIE_SUB_CON_x2_QDENY_mstr_aclk_slv_aclk;
wire		PCIE_SUB_CON_x2_QACTIVE_mstr_aclk_slv_aclk;
wire		PCIE_SUB_CON_x2_QREQn_dbi_aclk;
wire		PCIE_SUB_CON_x2_QACCEPTn_dbi_aclk;
wire		PCIE_SUB_CON_x2_QDENY_dbi_aclk;
wire		PCIE_SUB_CON_x2_QACTIVE_dbi_aclk;
wire		PCIE_SUB_CON_x2_QREQn_apb_aclk;
wire		PCIE_SUB_CON_x2_QACCEPTn_apb_aclk;
wire		PCIE_SUB_CON_x2_QDENY_apb_aclk;
wire		PCIE_SUB_CON_x2_QACTIVE_apb_aclk;
wire		PCIE_SUB_CON_x2_slv_awvalid;
wire		PCIE_SUB_CON_x2_slv_wvalid;
wire		PCIE_SUB_CON_x2_slv_bready;
wire		PCIE_SUB_CON_x2_slv_arvalid;
wire		PCIE_SUB_CON_x2_slv_rready;
wire		PCIE_SUB_CON_x2_slv_wlast;
wire		PCIE_SUB_CON_x2_slv_awready;
wire		PCIE_SUB_CON_x2_slv_wready;
wire		PCIE_SUB_CON_x2_slv_bvalid;
wire		PCIE_SUB_CON_x2_slv_arready;
wire		PCIE_SUB_CON_x2_slv_rvalid;
wire		PCIE_SUB_CON_x2_slv_rlast;
wire		PCIE_SUB_CON_x2_dbi_awvalid;
wire		PCIE_SUB_CON_x2_dbi_wvalid;
wire		PCIE_SUB_CON_x2_dbi_bready;
wire		PCIE_SUB_CON_x2_dbi_arvalid;
wire		PCIE_SUB_CON_x2_dbi_rready;
wire		PCIE_SUB_CON_x2_dbi_wlast;
wire		PCIE_SUB_CON_x2_dbi_awready;
wire		PCIE_SUB_CON_x2_dbi_wready;
wire		PCIE_SUB_CON_x2_dbi_bvalid;
wire		PCIE_SUB_CON_x2_dbi_arready;
wire		PCIE_SUB_CON_x2_dbi_rvalid;
wire		PCIE_SUB_CON_x2_dbi_rlast;
wire		PCIE_SUB_CON_x2_mstr_arready;
wire		PCIE_SUB_CON_x2_mstr_awready;
wire		PCIE_SUB_CON_x2_mstr_wready;
wire		PCIE_SUB_CON_x2_mstr_arvalid;
wire		PCIE_SUB_CON_x2_mstr_awvalid;
wire		PCIE_SUB_CON_x2_mstr_wvalid;
wire		PCIE_SUB_CON_x2_mstr_aclk_soc;
wire		PCIE_SUB_CON_x2_slv_aclk_soc;
wire		PCIE_SUB_CON_x2_dbi_aclk_soc;
wire		PCIE_SUB_CON_x2_perst_n;
// SOC <---> x4_LINK
wire	[63:0]	DWC_pcie_ctrl_x4_mstr_araddr;
wire	[1:0]	DWC_pcie_ctrl_x4_mstr_arburst;
wire	[3:0]	DWC_pcie_ctrl_x4_mstr_arcache;
wire	[5:0]	DWC_pcie_ctrl_x4_mstr_arid;
wire	[7:0]	DWC_pcie_ctrl_x4_mstr_arlen;
wire		DWC_pcie_ctrl_x4_mstr_arlock;
wire	[2:0]	DWC_pcie_ctrl_x4_mstr_arprot;
wire	[3:0]	DWC_pcie_ctrl_x4_mstr_arqos;
wire	[2:0]	DWC_pcie_ctrl_x4_mstr_arsize;
wire	[63:0]	DWC_pcie_ctrl_x4_mstr_awaddr;
wire	[1:0]	DWC_pcie_ctrl_x4_mstr_awburst;
wire	[3:0]	DWC_pcie_ctrl_x4_mstr_awcache;
wire	[5:0]	DWC_pcie_ctrl_x4_mstr_awid;
wire	[7:0]	DWC_pcie_ctrl_x4_mstr_awlen;
wire		DWC_pcie_ctrl_x4_mstr_awlock;
wire	[2:0]	DWC_pcie_ctrl_x4_mstr_awprot;
wire	[3:0]	DWC_pcie_ctrl_x4_mstr_awqos;
wire	[2:0]	DWC_pcie_ctrl_x4_mstr_awsize;
wire	[127:0]	DWC_pcie_ctrl_x4_mstr_wdata;
wire		DWC_pcie_ctrl_x4_mstr_wlast;
wire	[15:0]	DWC_pcie_ctrl_x4_mstr_wstrb;
wire	[5:0]	DWC_pcie_ctrl_x4_mstr_bid;
wire	[1:0]	DWC_pcie_ctrl_x4_mstr_bresp;
wire		DWC_pcie_ctrl_x4_mstr_bvalid;
wire		DWC_pcie_ctrl_x4_mstr_bready;
wire	[5:0]	DWC_pcie_ctrl_x4_mstr_rid;
wire	[127:0]	DWC_pcie_ctrl_x4_mstr_rdata;
wire		DWC_pcie_ctrl_x4_mstr_rlast;
wire	[1:0]	DWC_pcie_ctrl_x4_mstr_rresp;
wire		DWC_pcie_ctrl_x4_mstr_rvalid;
wire		DWC_pcie_ctrl_x4_mstr_rready;
wire		DWC_pcie_ctrl_x4_mstr_cactive;
wire		DWC_pcie_ctrl_x4_mstr_csysack;
wire		DWC_pcie_ctrl_x4_mstr_csysreq;
wire	[63:0]	DWC_pcie_ctrl_x4_slv_araddr;
wire	[1:0]	DWC_pcie_ctrl_x4_slv_arburst;
wire	[3:0]	DWC_pcie_ctrl_x4_slv_arcache;
wire	[15:0]	DWC_pcie_ctrl_x4_slv_arid;
wire	[7:0]	DWC_pcie_ctrl_x4_slv_arlen;
wire		DWC_pcie_ctrl_x4_slv_arlock;
wire	[2:0]	DWC_pcie_ctrl_x4_slv_arprot;
wire	[3:0]	DWC_pcie_ctrl_x4_slv_arqos;
wire	[2:0]	DWC_pcie_ctrl_x4_slv_arsize;
wire	[63:0]	DWC_pcie_ctrl_x4_slv_awaddr;
wire	[1:0]	DWC_pcie_ctrl_x4_slv_awburst;
wire	[3:0]	DWC_pcie_ctrl_x4_slv_awcache;
wire	[15:0]	DWC_pcie_ctrl_x4_slv_awid;
wire	[7:0]	DWC_pcie_ctrl_x4_slv_awlen;
wire		DWC_pcie_ctrl_x4_slv_awlock;
wire	[2:0]	DWC_pcie_ctrl_x4_slv_awprot;
wire	[3:0]	DWC_pcie_ctrl_x4_slv_awqos;
wire	[2:0]	DWC_pcie_ctrl_x4_slv_awsize;
wire	[127:0]	DWC_pcie_ctrl_x4_slv_wdata;
wire	[15:0]	DWC_pcie_ctrl_x4_slv_wstrb;
wire	[15:0]	DWC_pcie_ctrl_x4_slv_bid;
wire	[1:0]	DWC_pcie_ctrl_x4_slv_bresp;
wire	[15:0]	DWC_pcie_ctrl_x4_slv_rid;
wire	[127:0]	DWC_pcie_ctrl_x4_slv_rdata;
wire	[1:0]	DWC_pcie_ctrl_x4_slv_rresp;
wire		DWC_pcie_ctrl_x4_slv_cactive;
wire		DWC_pcie_ctrl_x4_slv_csysack;
wire		DWC_pcie_ctrl_x4_slv_csysreq;
wire	[31:0]	DWC_pcie_ctrl_x4_dbi_araddr;
wire	[1:0]	DWC_pcie_ctrl_x4_dbi_arburst;
wire	[3:0]	DWC_pcie_ctrl_x4_dbi_arcache;
wire	[3:0]	DWC_pcie_ctrl_x4_dbi_arid;
wire	[7:0]	DWC_pcie_ctrl_x4_dbi_arlen;
wire		DWC_pcie_ctrl_x4_dbi_arlock;
wire	[2:0]	DWC_pcie_ctrl_x4_dbi_arprot;
wire	[3:0]	DWC_pcie_ctrl_x4_dbi_arqos;
wire	[2:0]	DWC_pcie_ctrl_x4_dbi_arsize;
wire	[31:0]	DWC_pcie_ctrl_x4_dbi_awaddr;
wire	[1:0]	DWC_pcie_ctrl_x4_dbi_awburst;
wire	[3:0]	DWC_pcie_ctrl_x4_dbi_awcache;
wire	[3:0]	DWC_pcie_ctrl_x4_dbi_awid;
wire	[7:0]	DWC_pcie_ctrl_x4_dbi_awlen;
wire		DWC_pcie_ctrl_x4_dbi_awlock;
wire	[2:0]	DWC_pcie_ctrl_x4_dbi_awprot;
wire	[3:0]	DWC_pcie_ctrl_x4_dbi_awqos;
wire	[2:0]	DWC_pcie_ctrl_x4_dbi_awsize;
wire	[31:0]	DWC_pcie_ctrl_x4_dbi_wdata;
wire	[3:0]	DWC_pcie_ctrl_x4_dbi_wstrb;
wire	[11:0]	DWC_pcie_ctrl_x4_dbi_bid;
wire	[1:0]	DWC_pcie_ctrl_x4_dbi_bresp;
wire	[11:0]	DWC_pcie_ctrl_x4_dbi_rid;
wire	[31:0]	DWC_pcie_ctrl_x4_dbi_rdata;
wire	[1:0]	DWC_pcie_ctrl_x4_dbi_rresp;
wire		DWC_pcie_ctrl_x4_dbi_cactive;
wire		DWC_pcie_ctrl_x4_dbi_csysack;
wire		DWC_pcie_ctrl_x4_dbi_csysreq;
// SOC <---> x2_LINK
wire	[63:0]	DWC_pcie_ctrl_x2_mstr_araddr;
wire	[1:0]	DWC_pcie_ctrl_x2_mstr_arburst;
wire	[3:0]	DWC_pcie_ctrl_x2_mstr_arcache;
wire	[5:0]	DWC_pcie_ctrl_x2_mstr_arid;
wire	[7:0]	DWC_pcie_ctrl_x2_mstr_arlen;
wire		DWC_pcie_ctrl_x2_mstr_arlock;
wire	[2:0]	DWC_pcie_ctrl_x2_mstr_arprot;
wire	[3:0]	DWC_pcie_ctrl_x2_mstr_arqos;
wire	[2:0]	DWC_pcie_ctrl_x2_mstr_arsize;
wire	[63:0]	DWC_pcie_ctrl_x2_mstr_awaddr;
wire	[1:0]	DWC_pcie_ctrl_x2_mstr_awburst;
wire	[3:0]	DWC_pcie_ctrl_x2_mstr_awcache;
wire	[5:0]	DWC_pcie_ctrl_x2_mstr_awid;
wire	[7:0]	DWC_pcie_ctrl_x2_mstr_awlen;
wire		DWC_pcie_ctrl_x2_mstr_awlock;
wire	[2:0]	DWC_pcie_ctrl_x2_mstr_awprot;
wire	[3:0]	DWC_pcie_ctrl_x2_mstr_awqos;
wire	[2:0]	DWC_pcie_ctrl_x2_mstr_awsize;
wire	[127:0]	DWC_pcie_ctrl_x2_mstr_wdata;
wire		DWC_pcie_ctrl_x2_mstr_wlast;
wire	[15:0]	DWC_pcie_ctrl_x2_mstr_wstrb;
wire	[5:0]	DWC_pcie_ctrl_x2_mstr_bid;
wire	[1:0]	DWC_pcie_ctrl_x2_mstr_bresp;
wire		DWC_pcie_ctrl_x2_mstr_bvalid;
wire		DWC_pcie_ctrl_x2_mstr_bready;
wire	[5:0]	DWC_pcie_ctrl_x2_mstr_rid;
wire	[127:0]	DWC_pcie_ctrl_x2_mstr_rdata;
wire		DWC_pcie_ctrl_x2_mstr_rlast;
wire	[1:0]	DWC_pcie_ctrl_x2_mstr_rresp;
wire		DWC_pcie_ctrl_x2_mstr_rvalid;
wire		DWC_pcie_ctrl_x2_mstr_rready;
wire		DWC_pcie_ctrl_x2_mstr_cactive;
wire		DWC_pcie_ctrl_x2_mstr_csysack;
wire		DWC_pcie_ctrl_x2_mstr_csysreq;
wire	[63:0]	DWC_pcie_ctrl_x2_slv_araddr;
wire	[1:0]	DWC_pcie_ctrl_x2_slv_arburst;
wire	[3:0]	DWC_pcie_ctrl_x2_slv_arcache;
wire	[15:0]	DWC_pcie_ctrl_x2_slv_arid;
wire	[7:0]	DWC_pcie_ctrl_x2_slv_arlen;
wire		DWC_pcie_ctrl_x2_slv_arlock;
wire	[2:0]	DWC_pcie_ctrl_x2_slv_arprot;
wire	[3:0]	DWC_pcie_ctrl_x2_slv_arqos;
wire	[2:0]	DWC_pcie_ctrl_x2_slv_arsize;
wire	[63:0]	DWC_pcie_ctrl_x2_slv_awaddr;
wire	[1:0]	DWC_pcie_ctrl_x2_slv_awburst;
wire	[3:0]	DWC_pcie_ctrl_x2_slv_awcache;
wire	[15:0]	DWC_pcie_ctrl_x2_slv_awid;
wire	[7:0]	DWC_pcie_ctrl_x2_slv_awlen;
wire		DWC_pcie_ctrl_x2_slv_awlock;
wire	[2:0]	DWC_pcie_ctrl_x2_slv_awprot;
wire	[3:0]	DWC_pcie_ctrl_x2_slv_awqos;
wire	[2:0]	DWC_pcie_ctrl_x2_slv_awsize;
wire	[127:0]	DWC_pcie_ctrl_x2_slv_wdata;
wire	[15:0]	DWC_pcie_ctrl_x2_slv_wstrb;
wire	[15:0]	DWC_pcie_ctrl_x2_slv_bid;
wire	[1:0]	DWC_pcie_ctrl_x2_slv_bresp;
wire	[15:0]	DWC_pcie_ctrl_x2_slv_rid;
wire	[127:0]	DWC_pcie_ctrl_x2_slv_rdata;
wire	[1:0]	DWC_pcie_ctrl_x2_slv_rresp;
wire		DWC_pcie_ctrl_x2_slv_cactive;
wire		DWC_pcie_ctrl_x2_slv_csysack;
wire		DWC_pcie_ctrl_x2_slv_csysreq;
wire	[31:0]	DWC_pcie_ctrl_x2_dbi_araddr;
wire	[1:0]	DWC_pcie_ctrl_x2_dbi_arburst;
wire	[3:0]	DWC_pcie_ctrl_x2_dbi_arcache;
wire	[3:0]	DWC_pcie_ctrl_x2_dbi_arid;
wire	[7:0]	DWC_pcie_ctrl_x2_dbi_arlen;
wire		DWC_pcie_ctrl_x2_dbi_arlock;
wire	[2:0]	DWC_pcie_ctrl_x2_dbi_arprot;
wire	[3:0]	DWC_pcie_ctrl_x2_dbi_arqos;
wire	[2:0]	DWC_pcie_ctrl_x2_dbi_arsize;
wire	[31:0]	DWC_pcie_ctrl_x2_dbi_awaddr;
wire	[1:0]	DWC_pcie_ctrl_x2_dbi_awburst;
wire	[3:0]	DWC_pcie_ctrl_x2_dbi_awcache;
wire	[3:0]	DWC_pcie_ctrl_x2_dbi_awid;
wire	[7:0]	DWC_pcie_ctrl_x2_dbi_awlen;
wire		DWC_pcie_ctrl_x2_dbi_awlock;
wire	[2:0]	DWC_pcie_ctrl_x2_dbi_awprot;
wire	[3:0]	DWC_pcie_ctrl_x2_dbi_awqos;
wire	[2:0]	DWC_pcie_ctrl_x2_dbi_awsize;
wire	[31:0]	DWC_pcie_ctrl_x2_dbi_wdata;
wire	[3:0]	DWC_pcie_ctrl_x2_dbi_wstrb;
wire	[3:0]	DWC_pcie_ctrl_x2_dbi_bid;
wire	[1:0]	DWC_pcie_ctrl_x2_dbi_bresp;
wire	[3:0]	DWC_pcie_ctrl_x2_dbi_rid;
wire	[31:0]	DWC_pcie_ctrl_x2_dbi_rdata;
wire	[1:0]	DWC_pcie_ctrl_x2_dbi_rresp;
wire		DWC_pcie_ctrl_x2_dbi_cactive;
wire		DWC_pcie_ctrl_x2_dbi_csysack;
wire		DWC_pcie_ctrl_x2_dbi_csysreq;

// SOC <---> PHY
wire		PCIE_PHY_ext_pclk_req;
wire		PCIE_PHY_pcs_scan_mode;
wire		PCIE_PHY_pcs_scan_pclk;
wire		PCIE_PHY_pcs_scan_pcs_clk;
wire		PCIE_PHY_pcs_scan_pma_clk;
wire		PCIE_PHY_pcs_scan_rst;
wire		PCIE_PHY_pcs_scan_rx_clk_div;
wire		PCIE_PHY_pcs_scan_shift;
wire		PCIE_PHY_pcs_scan_shift_cg;
wire		PCIE_PHY_phy0_bs_acmode;
wire		PCIE_PHY_phy0_bs_actest;
wire		PCIE_PHY_phy0_bs_cdr;
wire		PCIE_PHY_phy0_bs_ce;
wire		PCIE_PHY_phy0_bs_rx_init;
wire		PCIE_PHY_phy0_bs_sdr;
wire		PCIE_PHY_phy0_bs_tdi;
wire		PCIE_PHY_phy0_bs_tdo;
wire		PCIE_PHY_phy0_bs_udr;
wire		PCIE_PHY_phy0_cr_para_sel;
wire	[1:0]	PCIE_PHY_phy0_dtb_out;
wire		PCIE_PHY_phy0_jtag_tck;
wire		PCIE_PHY_phy0_jtag_tdi;
wire		PCIE_PHY_phy0_jtag_tdo;
wire		PCIE_PHY_phy0_jtag_tdo_en;
wire		PCIE_PHY_phy0_jtag_tms;
wire		PCIE_PHY_phy0_jtag_trst_n;
wire		PCIE_PHY_phy0_sram_bypass;
wire		PCIE_REF_DIG_CLK;
wire		PCIE_PHY_phy0_ref_pad_clk_m;
wire		PCIE_PHY_phy0_ref_pad_clk_p;
wire		PCIE_PHY_phy_resref;
wire		PCIE_PHY_phy0_scan_cr_clk;
wire	[150:0]	PCIE_PHY_phy0_scan_cr_in;
wire	[150:0]	PCIE_PHY_phy0_scan_cr_out;
wire		PCIE_PHY_phy0_scan_mode;
wire		PCIE_PHY_phy0_scan_mplla_div16p5_clk;
wire		PCIE_PHY_phy0_scan_mplla_div16p5_in;
wire		PCIE_PHY_phy0_scan_mplla_div16p5_out;
wire		PCIE_PHY_phy0_scan_mplla_div33_clk;
wire		PCIE_PHY_phy0_scan_mplla_div66_clk;
wire		PCIE_PHY_phy0_scan_mplla_div_clk;
wire		PCIE_PHY_phy0_scan_mplla_div_in;
wire		PCIE_PHY_phy0_scan_mplla_div_out;
wire		PCIE_PHY_phy0_scan_mplla_dword_clk;
wire		PCIE_PHY_phy0_scan_mplla_dword_in;
wire		PCIE_PHY_phy0_scan_mplla_dword_out;
wire		PCIE_PHY_phy0_scan_mplla_fb_clk;
wire		PCIE_PHY_phy0_scan_mplla_fb_in;
wire		PCIE_PHY_phy0_scan_mplla_fb_out;
wire		PCIE_PHY_phy0_scan_mplla_oword_clk;
wire		PCIE_PHY_phy0_scan_mplla_qword_clk;
wire		PCIE_PHY_phy0_scan_mplla_ref_clk;
wire		PCIE_PHY_phy0_scan_mplla_ref_in;
wire		PCIE_PHY_phy0_scan_mplla_ref_out;
wire		PCIE_PHY_phy0_scan_mplla_ssc_clk;
wire	[2:0]	PCIE_PHY_phy0_scan_mplla_ssc_in;
wire	[2:0]	PCIE_PHY_phy0_scan_mplla_ssc_out;
wire		PCIE_PHY_phy0_scan_mplla_word_clk;
wire		PCIE_PHY_phy0_scan_mplla_word_in;
wire		PCIE_PHY_phy0_scan_mplla_word_out;
wire		PCIE_PHY_phy0_scan_mpllb_div_clk;
wire		PCIE_PHY_phy0_scan_mpllb_div_in;
wire		PCIE_PHY_phy0_scan_mpllb_div_out;
wire		PCIE_PHY_phy0_scan_mpllb_dword_clk;
wire		PCIE_PHY_phy0_scan_mpllb_dword_in;
wire		PCIE_PHY_phy0_scan_mpllb_dword_out;
wire		PCIE_PHY_phy0_scan_mpllb_fb_clk;
wire		PCIE_PHY_phy0_scan_mpllb_fb_in;
wire		PCIE_PHY_phy0_scan_mpllb_fb_out;
wire		PCIE_PHY_phy0_scan_mpllb_oword_clk;
wire		PCIE_PHY_phy0_scan_mpllb_qword_clk;
wire		PCIE_PHY_phy0_scan_mpllb_ref_clk;
wire		PCIE_PHY_phy0_scan_mpllb_ref_in;
wire		PCIE_PHY_phy0_scan_mpllb_ref_out;
wire		PCIE_PHY_phy0_scan_mpllb_ssc_clk;
wire	[2:0]	PCIE_PHY_phy0_scan_mpllb_ssc_in;
wire	[2:0]	PCIE_PHY_phy0_scan_mpllb_ssc_out;
wire		PCIE_PHY_phy0_scan_mpllb_word_clk;
wire		PCIE_PHY_phy0_scan_mpllb_word_in;
wire		PCIE_PHY_phy0_scan_mpllb_word_out;
wire		PCIE_PHY_phy0_scan_phy_ref_dig_clk;
wire		PCIE_PHY_phy0_scan_phy_ref_dig_in;
wire		PCIE_PHY_phy0_scan_phy_ref_dig_out;
wire		PCIE_PHY_phy0_scan_ref_clk;
wire		PCIE_PHY_phy0_scan_ref_dig_clk;
wire	[10:0]	PCIE_PHY_phy0_scan_ref_dig_in;
wire	[10:0]	PCIE_PHY_phy0_scan_ref_dig_out;
wire		PCIE_PHY_phy0_scan_ref_in;
wire		PCIE_PHY_phy0_scan_ref_out;
wire		PCIE_PHY_phy0_scan_ref_range_clk;
wire	[22:0]	PCIE_PHY_phy0_scan_ref_range_in;
wire	[22:0]	PCIE_PHY_phy0_scan_ref_range_out;
wire		PCIE_PHY_phy0_scan_set_rst;
wire		PCIE_PHY_phy0_scan_shift;
wire		PCIE_PHY_phy0_scan_shift_cg;
wire		PCIE_PHY_phy0_test_flyover_en;
wire		PCIE_PHY_phy_lane0_rx2tx_par_lb_en;
wire		PCIE_PHY_phy_lane1_rx2tx_par_lb_en;
wire		PCIE_PHY_phy_lane2_rx2tx_par_lb_en;
wire		PCIE_PHY_phy_lane3_rx2tx_par_lb_en;
wire		PCIE_PHY_phy_rx0_flyover_data_m;
wire		PCIE_PHY_phy_rx0_flyover_data_p;
wire		PCIE_PHY_phy_rx0_m;
wire		PCIE_PHY_phy_rx0_p;
wire		PCIE_PHY_phy_rx1_flyover_data_m;
wire		PCIE_PHY_phy_rx1_flyover_data_p;
wire		PCIE_PHY_phy_rx1_m;
wire		PCIE_PHY_phy_rx1_p;
wire		PCIE_PHY_phy_rx2_flyover_data_m;
wire		PCIE_PHY_phy_rx2_flyover_data_p;
wire		PCIE_PHY_phy_rx2_m;
wire		PCIE_PHY_phy_rx2_p;
wire		PCIE_PHY_phy_rx3_flyover_data_m;
wire		PCIE_PHY_phy_rx3_flyover_data_p;
wire		PCIE_PHY_phy_rx3_m;
wire		PCIE_PHY_phy_rx3_p;
wire		PCIE_PHY_phy_scan_rx0_adpt_clk;
wire	[5:0]	PCIE_PHY_phy_scan_rx0_adpt_in;
wire	[5:0]	PCIE_PHY_phy_scan_rx0_adpt_out;
wire		PCIE_PHY_phy_scan_rx0_asic_clk;
wire		PCIE_PHY_phy_scan_rx0_asic_in;
wire		PCIE_PHY_phy_scan_rx0_asic_out;
wire		PCIE_PHY_phy_scan_rx0_div16p5_clk;
wire		PCIE_PHY_phy_scan_rx0_div16p5_in;
wire		PCIE_PHY_phy_scan_rx0_div16p5_out;
wire		PCIE_PHY_phy_scan_rx0_dpll_clk;
wire	[1:0]	PCIE_PHY_phy_scan_rx0_dpll_in;
wire	[1:0]	PCIE_PHY_phy_scan_rx0_dpll_out;
wire		PCIE_PHY_phy_scan_rx0_dword_clk;
wire	[9:0]	PCIE_PHY_phy_scan_rx0_dword_in;
wire	[9:0]	PCIE_PHY_phy_scan_rx0_dword_out;
wire		PCIE_PHY_phy_scan_rx0_scope_clk;
wire		PCIE_PHY_phy_scan_rx0_scope_in;
wire		PCIE_PHY_phy_scan_rx0_scope_out;
wire		PCIE_PHY_phy_scan_rx0_stat_clk;
wire	[8:0]	PCIE_PHY_phy_scan_rx0_stat_in;
wire	[8:0]	PCIE_PHY_phy_scan_rx0_stat_out;
wire		PCIE_PHY_phy_scan_rx0_word_clk;
wire		PCIE_PHY_phy_scan_rx0_word_in;
wire		PCIE_PHY_phy_scan_rx0_word_out;
wire		PCIE_PHY_phy_scan_rx1_adpt_clk;
wire	[5:0]	PCIE_PHY_phy_scan_rx1_adpt_in;
wire	[5:0]	PCIE_PHY_phy_scan_rx1_adpt_out;
wire		PCIE_PHY_phy_scan_rx1_asic_clk;
wire		PCIE_PHY_phy_scan_rx1_asic_in;
wire		PCIE_PHY_phy_scan_rx1_asic_out;
wire		PCIE_PHY_phy_scan_rx1_div16p5_clk;
wire		PCIE_PHY_phy_scan_rx1_div16p5_in;
wire		PCIE_PHY_phy_scan_rx1_div16p5_out;
wire		PCIE_PHY_phy_scan_rx1_dpll_clk;
wire	[1:0]	PCIE_PHY_phy_scan_rx1_dpll_in;
wire	[1:0]	PCIE_PHY_phy_scan_rx1_dpll_out;
wire		PCIE_PHY_phy_scan_rx1_dword_clk;
wire	[9:0]	PCIE_PHY_phy_scan_rx1_dword_in;
wire	[9:0]	PCIE_PHY_phy_scan_rx1_dword_out;
wire		PCIE_PHY_phy_scan_rx1_scope_clk;
wire		PCIE_PHY_phy_scan_rx1_scope_in;
wire		PCIE_PHY_phy_scan_rx1_scope_out;
wire		PCIE_PHY_phy_scan_rx1_stat_clk;
wire	[8:0]	PCIE_PHY_phy_scan_rx1_stat_in;
wire	[8:0]	PCIE_PHY_phy_scan_rx1_stat_out;
wire		PCIE_PHY_phy_scan_rx1_word_clk;
wire		PCIE_PHY_phy_scan_rx1_word_in;
wire		PCIE_PHY_phy_scan_rx1_word_out;
wire		PCIE_PHY_phy_scan_rx2_adpt_clk;
wire	[5:0]	PCIE_PHY_phy_scan_rx2_adpt_in;
wire	[5:0]	PCIE_PHY_phy_scan_rx2_adpt_out;
wire		PCIE_PHY_phy_scan_rx2_asic_clk;
wire		PCIE_PHY_phy_scan_rx2_asic_in;
wire		PCIE_PHY_phy_scan_rx2_asic_out;
wire		PCIE_PHY_phy_scan_rx2_div16p5_clk;
wire		PCIE_PHY_phy_scan_rx2_div16p5_in;
wire		PCIE_PHY_phy_scan_rx2_div16p5_out;
wire		PCIE_PHY_phy_scan_rx2_dpll_clk;
wire	[1:0]	PCIE_PHY_phy_scan_rx2_dpll_in;
wire	[1:0]	PCIE_PHY_phy_scan_rx2_dpll_out;
wire		PCIE_PHY_phy_scan_rx2_dword_clk;
wire	[9:0]	PCIE_PHY_phy_scan_rx2_dword_in;
wire	[9:0]	PCIE_PHY_phy_scan_rx2_dword_out;
wire		PCIE_PHY_phy_scan_rx2_scope_clk;
wire		PCIE_PHY_phy_scan_rx2_scope_in;
wire		PCIE_PHY_phy_scan_rx2_scope_out;
wire		PCIE_PHY_phy_scan_rx2_stat_clk;
wire	[8:0]	PCIE_PHY_phy_scan_rx2_stat_in;
wire	[8:0]	PCIE_PHY_phy_scan_rx2_stat_out;
wire		PCIE_PHY_phy_scan_rx2_word_clk;
wire		PCIE_PHY_phy_scan_rx2_word_in;
wire		PCIE_PHY_phy_scan_rx2_word_out;
wire		PCIE_PHY_phy_scan_rx3_adpt_clk;
wire	[5:0]	PCIE_PHY_phy_scan_rx3_adpt_in;
wire	[5:0]	PCIE_PHY_phy_scan_rx3_adpt_out;
wire		PCIE_PHY_phy_scan_rx3_asic_clk;
wire		PCIE_PHY_phy_scan_rx3_asic_in;
wire		PCIE_PHY_phy_scan_rx3_asic_out;
wire		PCIE_PHY_phy_scan_rx3_div16p5_clk;
wire		PCIE_PHY_phy_scan_rx3_div16p5_in;
wire		PCIE_PHY_phy_scan_rx3_div16p5_out;
wire		PCIE_PHY_phy_scan_rx3_dpll_clk;
wire	[1:0]	PCIE_PHY_phy_scan_rx3_dpll_in;
wire	[1:0]	PCIE_PHY_phy_scan_rx3_dpll_out;
wire		PCIE_PHY_phy_scan_rx3_dword_clk;
wire	[9:0]	PCIE_PHY_phy_scan_rx3_dword_in;
wire	[9:0]	PCIE_PHY_phy_scan_rx3_dword_out;
wire		PCIE_PHY_phy_scan_rx3_scope_clk;
wire		PCIE_PHY_phy_scan_rx3_scope_in;
wire		PCIE_PHY_phy_scan_rx3_scope_out;
wire		PCIE_PHY_phy_scan_rx3_stat_clk;
wire	[8:0]	PCIE_PHY_phy_scan_rx3_stat_in;
wire	[8:0]	PCIE_PHY_phy_scan_rx3_stat_out;
wire		PCIE_PHY_phy_scan_rx3_word_clk;
wire		PCIE_PHY_phy_scan_rx3_word_in;
wire		PCIE_PHY_phy_scan_rx3_word_out;
wire		PCIE_PHY_phy_scan_tx0_ana_dword_clk;
wire	[1:0]	PCIE_PHY_phy_scan_tx0_ana_dword_in;
wire	[1:0]	PCIE_PHY_phy_scan_tx0_ana_dword_out;
wire		PCIE_PHY_phy_scan_tx0_ana_word_clk;
wire		PCIE_PHY_phy_scan_tx0_ana_word_in;
wire		PCIE_PHY_phy_scan_tx0_ana_word_out;
wire	[2:0]	PCIE_PHY_phy_scan_tx0_in;
wire	[2:0]	PCIE_PHY_phy_scan_tx0_out;
wire		PCIE_PHY_phy_scan_tx1_ana_dword_clk;
wire	[1:0]	PCIE_PHY_phy_scan_tx1_ana_dword_in;
wire	[1:0]	PCIE_PHY_phy_scan_tx1_ana_dword_out;
wire		PCIE_PHY_phy_scan_tx1_ana_word_clk;
wire		PCIE_PHY_phy_scan_tx1_ana_word_in;
wire		PCIE_PHY_phy_scan_tx1_ana_word_out;
wire	[2:0]	PCIE_PHY_phy_scan_tx1_in;
wire	[2:0]	PCIE_PHY_phy_scan_tx1_out;
wire		PCIE_PHY_phy_scan_tx2_ana_dword_clk;
wire	[1:0]	PCIE_PHY_phy_scan_tx2_ana_dword_in;
wire	[1:0]	PCIE_PHY_phy_scan_tx2_ana_dword_out;
wire		PCIE_PHY_phy_scan_tx2_ana_word_clk;
wire		PCIE_PHY_phy_scan_tx2_ana_word_in;
wire		PCIE_PHY_phy_scan_tx2_ana_word_out;
wire	[2:0]	PCIE_PHY_phy_scan_tx2_in;
wire	[2:0]	PCIE_PHY_phy_scan_tx2_out;
wire		PCIE_PHY_phy_scan_tx3_ana_dword_clk;
wire	[1:0]	PCIE_PHY_phy_scan_tx3_ana_dword_in;
wire	[1:0]	PCIE_PHY_phy_scan_tx3_ana_dword_out;
wire		PCIE_PHY_phy_scan_tx3_ana_word_clk;
wire		PCIE_PHY_phy_scan_tx3_ana_word_in;
wire		PCIE_PHY_phy_scan_tx3_ana_word_out;
wire	[2:0]	PCIE_PHY_phy_scan_tx3_in;
wire	[2:0]	PCIE_PHY_phy_scan_tx3_out;
wire		PCIE_PHY_phy_test_burnin;
wire		PCIE_PHY_phy_test_powerdown;
wire		PCIE_PHY_phy_test_stop_clk_en;
wire		PCIE_PHY_phy_tx0_flyover_data_m;
wire		PCIE_PHY_phy_tx0_flyover_data_p;
wire		PCIE_PHY_phy_tx0_m;
wire		PCIE_PHY_phy_tx0_p;
wire		PCIE_PHY_phy_tx1_flyover_data_m;
wire		PCIE_PHY_phy_tx1_flyover_data_p;
wire		PCIE_PHY_phy_tx1_m;
wire		PCIE_PHY_phy_tx1_p;
wire		PCIE_PHY_phy_tx2_flyover_data_m;
wire		PCIE_PHY_phy_tx2_flyover_data_p;
wire		PCIE_PHY_phy_tx2_m;
wire		PCIE_PHY_phy_tx2_p;
wire		PCIE_PHY_phy_tx3_flyover_data_m;
wire		PCIE_PHY_phy_tx3_flyover_data_p;
wire		PCIE_PHY_phy_tx3_m;
wire		PCIE_PHY_phy_tx3_p;
// SOC <---> APB2CR
wire		PCIE_PHY_APB2CR_pclk_300;
wire		PCIE_PHY_APB2CR_pclk_100;
wire		PCIE_PHY_APB2CR_presetn;
wire	[31:0]	PCIE_PHY_APB2CR_paddr;
wire		PCIE_PHY_APB2CR_pwrite;
wire		PCIE_PHY_APB2CR_psel;
wire		PCIE_PHY_APB2CR_penable;
wire	[31:0]	PCIE_PHY_APB2CR_pwdata;
wire	[31:0]	PCIE_PHY_APB2CR_prdata;
wire		PCIE_PHY_APB2CR_pready;
wire		PCIE_PHY_APB2CR_pslverr;
wire		PCIE_PHY_APB2CR_QREQn;
wire		PCIE_PHY_APB2CR_TEST_MODE;
wire		PCIE_PHY_APB2CR_TEST_RESETn;
wire		PCIE_PHY_APB2CR_QACCEPTn;
wire		PCIE_PHY_APB2CR_QACTIVE;
wire		PCIE_PHY_APB2CR_QDENY;
// PIPE_MUX
wire		PIPE_MUX_PHY_MODE_SEL;
// SOC -> TEST_MUX
wire		I_TEST_MODE_PCIE_PHY;
wire		PCIE_PHY_phy_reset;
wire		PCIE_PHY_pipe_lane0_1_reset_n;
wire		PCIE_PHY_pipe_lane2_3_reset_n;
//------------------------------------------------------------------------
// PCIE_TOP I/O PORT END
//------------------------------------------------------------------------

//------------------------------------------------------------------------
// x4_LINK START
//------------------------------------------------------------------------
// x4_LINK -> SOC
wire	[63:0]	DWC_pcie_ctrl_x4_mstr_araddr_sig;
wire	[1:0]	DWC_pcie_ctrl_x4_mstr_arburst_sig;
wire	[3:0]	DWC_pcie_ctrl_x4_mstr_arcache_sig;
wire	[5:0]	DWC_pcie_ctrl_x4_mstr_arid_sig;
wire	[7:0]	DWC_pcie_ctrl_x4_mstr_arlen_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_mstr_arlock_sig;
wire	[49:0]	DWC_pcie_ctrl_x4_mstr_armisc_info_sig;
wire	[3:0]	DWC_pcie_ctrl_x4_mstr_armisc_info_dma_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_mstr_armisc_info_zeroread_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_mstr_armisc_info_last_dcmp_tlp_sig;
wire	[2:0]	DWC_pcie_ctrl_x4_mstr_arprot_sig;
wire	[3:0]	DWC_pcie_ctrl_x4_mstr_arqos_sig;
wire	[2:0]	DWC_pcie_ctrl_x4_mstr_arsize_sig;
wire	[63:0]	DWC_pcie_ctrl_x4_mstr_awaddr_sig;
wire	[1:0]	DWC_pcie_ctrl_x4_mstr_awburst_sig;
wire	[3:0]	DWC_pcie_ctrl_x4_mstr_awcache_sig;
wire	[5:0]	DWC_pcie_ctrl_x4_mstr_awid_sig;
wire	[7:0]	DWC_pcie_ctrl_x4_mstr_awlen_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_mstr_awlock_sig;
wire	[49:0]	DWC_pcie_ctrl_x4_mstr_awmisc_info_sig;
wire	[3:0]	DWC_pcie_ctrl_x4_mstr_awmisc_info_dma_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_mstr_awmisc_info_ep_sig;
wire	[63:0]	DWC_pcie_ctrl_x4_mstr_awmisc_info_hdr_34dw_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_mstr_awmisc_info_last_dcmp_tlp_sig;
wire	[2:0]	DWC_pcie_ctrl_x4_mstr_awprot_sig;
wire	[3:0]	DWC_pcie_ctrl_x4_mstr_awqos_sig;
wire	[2:0]	DWC_pcie_ctrl_x4_mstr_awsize_sig;
wire	[127:0]	DWC_pcie_ctrl_x4_mstr_wdata_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_mstr_wlast_sig;
wire	[15:0]	DWC_pcie_ctrl_x4_mstr_wstrb_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_mstr_bready_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_mstr_rready_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_mstr_cactive_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_mstr_csysack_sig;
wire	[15:0]	DWC_pcie_ctrl_x4_slv_bid_sig;
wire	[10:0]	DWC_pcie_ctrl_x4_slv_bmisc_info_sig;
wire	[1:0]	DWC_pcie_ctrl_x4_slv_bresp_sig;
wire	[15:0]	DWC_pcie_ctrl_x4_slv_rid_sig;
wire	[127:0]	DWC_pcie_ctrl_x4_slv_rdata_sig;
wire	[10:0]	DWC_pcie_ctrl_x4_slv_rmisc_info_sig;
wire	[1:0]	DWC_pcie_ctrl_x4_slv_rresp_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_slv_cactive_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_slv_csysack_sig;
wire	[3:0]	DWC_pcie_ctrl_x4_dbi_bid_sig;
wire	[1:0]	DWC_pcie_ctrl_x4_dbi_bresp_sig;
wire	[3:0]	DWC_pcie_ctrl_x4_dbi_rid_sig;
wire	[31:0]	DWC_pcie_ctrl_x4_dbi_rdata_sig;
wire	[1:0]	DWC_pcie_ctrl_x4_dbi_rresp_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_dbi_cactive_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_dbi_csysack_sig;
// x4_LINK -> x4_MEM
wire	[1*10-1:0]		DWC_pcie_ctrl_x4_ib_mcpl_sb_ram_addra_sig;
wire	[1*10-1:0]		DWC_pcie_ctrl_x4_ib_mcpl_sb_ram_addrb_sig;
wire	[1*133-1:0]		DWC_pcie_ctrl_x4_ib_mcpl_sb_ram_dina_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_ib_mcpl_sb_ram_wea_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_ib_mcpl_sb_ram_enb_sig;
wire	[1*133-1:0]		DWC_pcie_ctrl_x4_ib_mcpl_sb_ram_doutb_sig;
wire	[1*4-1:0]		DWC_pcie_ctrl_x4_ib_mcpl_a2c_cdc_ram_addra_sig;
wire	[1*4-1:0]		DWC_pcie_ctrl_x4_ib_mcpl_a2c_cdc_ram_addrb_sig;
wire	[1*192-1:0]		DWC_pcie_ctrl_x4_ib_mcpl_a2c_cdc_ram_dina_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_ib_mcpl_a2c_cdc_ram_wea_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_ib_mcpl_a2c_cdc_ram_enb_sig;
wire	[1*192-1:0]		DWC_pcie_ctrl_x4_ib_mcpl_a2c_cdc_ram_doutb_sig;
wire	[1*5-1:0]		DWC_pcie_ctrl_x4_ib_rreq_ordr_ram_addra_sig;
wire	[1*5-1:0]		DWC_pcie_ctrl_x4_ib_rreq_ordr_ram_addrb_sig;
wire	[1*140-1:0]		DWC_pcie_ctrl_x4_ib_rreq_ordr_ram_dina_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_ib_rreq_ordr_ram_wea_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_ib_rreq_ordr_ram_enb_sig;
wire	[1*140-1:0]		DWC_pcie_ctrl_x4_ib_rreq_ordr_ram_doutb_sig;
wire	[1*4-1:0]		DWC_pcie_ctrl_x4_ib_rreq_c2a_cdc_ram_addra_sig;
wire	[1*4-1:0]		DWC_pcie_ctrl_x4_ib_rreq_c2a_cdc_ram_addrb_sig;
wire	[1*148-1:0]		DWC_pcie_ctrl_x4_ib_rreq_c2a_cdc_ram_dina_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_ib_rreq_c2a_cdc_ram_wea_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_ib_rreq_c2a_cdc_ram_enb_sig;
wire	[1*148-1:0]		DWC_pcie_ctrl_x4_ib_rreq_c2a_cdc_ram_doutb_sig;
wire	[1*4-1:0]		DWC_pcie_ctrl_x4_ib_wreq_c2a_cdc_ram_addra_sig;
wire	[1*4-1:0]		DWC_pcie_ctrl_x4_ib_wreq_c2a_cdc_ram_addrb_sig;
wire	[1*313-1:0]		DWC_pcie_ctrl_x4_ib_wreq_c2a_cdc_ram_dina_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_ib_wreq_c2a_cdc_ram_wea_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_ib_wreq_c2a_cdc_ram_enb_sig;
wire	[1*313-1:0]		DWC_pcie_ctrl_x4_ib_wreq_c2a_cdc_ram_doutb_sig;
wire	[1*10-1:0]		DWC_pcie_ctrl_x4_ob_ccmp_data_ram_addra_sig;
wire	[1*10-1:0]		DWC_pcie_ctrl_x4_ob_ccmp_data_ram_addrb_sig;
wire	[1*133-1:0]		DWC_pcie_ctrl_x4_ob_ccmp_data_ram_dina_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_ob_ccmp_data_ram_wea_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_ob_ccmp_data_ram_enb_sig;
wire	[1*133-1:0]		DWC_pcie_ctrl_x4_ob_ccmp_data_ram_doutb_sig;
wire	[1*5-1:0]		DWC_pcie_ctrl_x4_ob_npdcmp_ram_addra_sig;
wire	[1*5-1:0]		DWC_pcie_ctrl_x4_ob_npdcmp_ram_addrb_sig;
wire	[1*167-1:0]		DWC_pcie_ctrl_x4_ob_npdcmp_ram_dina_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_ob_npdcmp_ram_wea_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_ob_npdcmp_ram_enb_sig;
wire	[1*167-1:0]		DWC_pcie_ctrl_x4_ob_npdcmp_ram_doutb_sig;
wire	[1*5-1:0]		DWC_pcie_ctrl_x4_slv_npw_sab_ram_addra_sig;
wire	[1*5-1:0]		DWC_pcie_ctrl_x4_slv_npw_sab_ram_addrb_sig;
wire	[1*139-1:0]		DWC_pcie_ctrl_x4_slv_npw_sab_ram_dina_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_slv_npw_sab_ram_wea_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_slv_npw_sab_ram_enb_sig;
wire	[1*139-1:0]		DWC_pcie_ctrl_x4_slv_npw_sab_ram_doutb_sig;
wire	[1*6-1:0]		DWC_pcie_ctrl_x4_ob_pdcmp_data_ram_addra_sig;
wire	[1*6-1:0]		DWC_pcie_ctrl_x4_ob_pdcmp_data_ram_addrb_sig;
wire	[1*128-1:0]		DWC_pcie_ctrl_x4_ob_pdcmp_data_ram_dina_sig;
wire	[1-1:0]	   	 	DWC_pcie_ctrl_x4_ob_pdcmp_data_ram_wea_sig;
wire	[1-1:0]	   	 	DWC_pcie_ctrl_x4_ob_pdcmp_data_ram_enb_sig;
wire	[1*128-1:0]		DWC_pcie_ctrl_x4_ob_pdcmp_data_ram_doutb_sig;
wire	[1*4-1:0]		DWC_pcie_ctrl_x4_ob_pdcmp_hdr_ram_addra_sig;
wire	[1*4-1:0]		DWC_pcie_ctrl_x4_ob_pdcmp_hdr_ram_addrb_sig;
wire	[1*125-1:0]		DWC_pcie_ctrl_x4_ob_pdcmp_hdr_ram_dina_sig;
wire	[1-1:0]	   	 	DWC_pcie_ctrl_x4_ob_pdcmp_hdr_ram_wea_sig;
wire	[1-1:0]	   	 	DWC_pcie_ctrl_x4_ob_pdcmp_hdr_ram_enb_sig;
wire	[1*125-1:0]		DWC_pcie_ctrl_x4_ob_pdcmp_hdr_ram_doutb_sig;
wire	[1*3-1:0]		DWC_pcie_ctrl_x4_edma2ram_addra_sig;
wire	[1*3-1:0]		DWC_pcie_ctrl_x4_edma2ram_addrb_sig;
wire	[1*256-1:0]		DWC_pcie_ctrl_x4_edma2ram_dout_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_edma2ram_we_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_edma2ram_re_sig;
wire	[1*256-1:0]		DWC_pcie_ctrl_x4_ram2edma_din_sig;
wire	[1*10-1:0]		DWC_pcie_ctrl_x4_edmarbuff2ram_addra_sig;
wire	[1*10-1:0]		DWC_pcie_ctrl_x4_edmarbuff2ram_addrb_sig;
wire	[1*128-1:0]		DWC_pcie_ctrl_x4_edmarbuff2ram_dout_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_edmarbuff2ram_we_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_edmarbuff2ram_re_sig;
wire	[1*128-1:0]		DWC_pcie_ctrl_x4_ram2edmarbuff_din_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_msix_pba_addr_sig;
wire	[1*64-1:0]		DWC_pcie_ctrl_x4_msix_pba_data_out_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_msix_pba_en_sig;
wire	[8*1-1:0]		DWC_pcie_ctrl_x4_msix_pba_we_sig;
wire	[1*64-1:0]		DWC_pcie_ctrl_x4_msix_pba_data_in_sig;
wire	[7-1:0]			DWC_pcie_ctrl_x4_msix_table_addr_sig;
wire	[1*131-1:0]		DWC_pcie_ctrl_x4_msix_table_data_out_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_msix_table_en_sig;
wire	[17*1-1:0]		DWC_pcie_ctrl_x4_msix_table_we_sig;
wire	[1*131-1:0]		DWC_pcie_ctrl_x4_msix_table_data_in_sig;
wire	[1*10-1:0]		DWC_pcie_ctrl_x4_p_dataq_addra_sig;
wire	[1*10-1:0]		DWC_pcie_ctrl_x4_p_dataq_addrb_sig;
wire	[1*130-1:0]		DWC_pcie_ctrl_x4_p_dataq_datain_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_p_dataq_ena_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_p_dataq_enb_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_p_dataq_wea_sig;
wire	[1*130-1:0]		DWC_pcie_ctrl_x4_p_dataq_dataout_sig;
wire	[1*8-1:0]		DWC_pcie_ctrl_x4_p_hdrq_addra_sig;
wire	[1*8-1:0]		DWC_pcie_ctrl_x4_p_hdrq_addrb_sig;
wire	[1*138-1:0]		DWC_pcie_ctrl_x4_p_hdrq_datain_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_p_hdrq_ena_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_p_hdrq_enb_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_p_hdrq_wea_sig;
wire	[1*138-1:0]		DWC_pcie_ctrl_x4_p_hdrq_dataout_sig;
wire	[9-1:0]			DWC_pcie_ctrl_x4_xdlh_retryram_addr_sig;
wire	[1*135-1:0]		DWC_pcie_ctrl_x4_xdlh_retryram_data_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_xdlh_retryram_en_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_xdlh_retryram_we_sig;
wire	[1*135-1:0]		DWC_pcie_ctrl_x4_retryram_xdlh_data_sig;
wire	[1*9-1:0]		DWC_pcie_ctrl_x4_xdlh_retrysotram_waddr_sig;
wire	[1*9-1:0]		DWC_pcie_ctrl_x4_xdlh_retrysotram_raddr_sig;
wire	[1*9-1:0]		DWC_pcie_ctrl_x4_xdlh_retrysotram_data_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_xdlh_retrysotram_we_sig;
wire	[1-1:0]			DWC_pcie_ctrl_x4_xdlh_retrysotram_en_sig;
wire	[1*9-1:0]		DWC_pcie_ctrl_x4_retrysotram_xdlh_data_sig;
// x4_LINK -> PCIE_SUB_CON_x4
wire	[0:0]	DWC_pcie_ctrl_x4_mstr_aclk_active_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_slv_aclk_active_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_dbi_aclk_active_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_trgt_cpl_timeout_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_trgt_lookup_emptry_sig;
wire	[7:0]	DWC_pcie_ctrl_x4_trgt_lookup_id_sig;
wire	[1:0]	DWC_pcie_ctrl_x4_trgt_timeout_cpl_attr_sig;
wire	[2:0]	DWC_pcie_ctrl_x4_trgt_timeout_cpl_func_num_sig;
wire	[11:0]	DWC_pcie_ctrl_x4_trgt_timeout_cpl_len_sig;
wire	[2:0]	DWC_pcie_ctrl_x4_trgt_timeout_cpl_tc_sig;
wire	[7:0]	DWC_pcie_ctrl_x4_trgt_timeout_lookup_id_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_en_aux_clk_g_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_en_radm_clk_g_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_pm_en_core_clk_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_pm_req_core_rst_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_pm_req_non_sticky_rst_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_pm_req_phy_perst_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_pm_req_phy_rst_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_pm_req_sticky_rst_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_pm_sel_aux_clk_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_pm_linkst_in_l1sub_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_l1sub_en_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_hw_auto_sp_dis_sig;
wire	[31:0]	DWC_pcie_ctrl_x4_cfg_phy_control_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_ven_msg_grant_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_pm_xtlh_block_tlp_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_ven_msi_grant_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_msi_en_sig;
wire	[31:0]	DWC_pcie_ctrl_x4_cfg_msi_mask_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_dpa_substate_update_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_app_ltr_msg_grant_sig;
wire	[31:0]	DWC_pcie_ctrl_x4_app_ltr_latency_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_ltr_m_en_sig;
wire	[31:0]	DWC_pcie_ctrl_x4_cfg_ltr_max_latency_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_disable_ltr_clr_msg_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_msg_ltr_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_q_not_empty_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_qoverflow_sig;
wire	[31:0]	DWC_pcie_ctrl_x4_lbc_ext_addr_sig;
wire	[31:0]	DWC_pcie_ctrl_x4_lbc_ext_dout_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_lbc_ext_cs_sig;
wire	[3:0]	DWC_pcie_ctrl_x4_lbc_ext_wr_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_lbc_ext_rom_access_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_lbc_ext_io_access_sig;
wire	[2:0]	DWC_pcie_ctrl_x4_lbc_ext_bar_num_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_pm_turnoff_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_msg_unlock_sig;
wire	[7:0]	DWC_pcie_ctrl_x4_cfg_pbus_num_sig;
wire	[4:0]	DWC_pcie_ctrl_x4_cfg_pbus_dev_num_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_pm_status_sig;
wire	[2:0]	DWC_pcie_ctrl_x4_pm_curnt_state_sig;
wire	[63:0]	DWC_pcie_ctrl_x4_cxpl_debug_info_sig;
wire	[15:0]	DWC_pcie_ctrl_x4_cxpl_debug_info_ei_sig;
wire	[63:0]	DWC_pcie_ctrl_x4_cfg_bar0_limit_sig;
wire	[63:0]	DWC_pcie_ctrl_x4_cfg_bar0_start_sig;
wire	[31:0]	DWC_pcie_ctrl_x4_cfg_bar1_limit_sig;
wire	[31:0]	DWC_pcie_ctrl_x4_cfg_bar1_start_sig;
wire	[63:0]	DWC_pcie_ctrl_x4_cfg_bar2_limit_sig;
wire	[63:0]	DWC_pcie_ctrl_x4_cfg_bar2_start_sig;
wire	[31:0]	DWC_pcie_ctrl_x4_cfg_bar3_limit_sig;
wire	[31:0]	DWC_pcie_ctrl_x4_cfg_bar3_start_sig;
wire	[63:0]	DWC_pcie_ctrl_x4_cfg_bar4_limit_sig;
wire	[63:0]	DWC_pcie_ctrl_x4_cfg_bar4_start_sig;
wire	[31:0]	DWC_pcie_ctrl_x4_cfg_bar5_limit_sig;
wire	[31:0]	DWC_pcie_ctrl_x4_cfg_bar5_start_sig;
wire	[31:0]	DWC_pcie_ctrl_x4_cfg_exp_rom_limit_sig;
wire	[31:0]	DWC_pcie_ctrl_x4_cfg_exp_rom_start_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_vendor_msg_sig;
wire	[63:0]	DWC_pcie_ctrl_x4_radm_msg_payload_sig;
wire	[15:0]	DWC_pcie_ctrl_x4_radm_msg_req_id_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_smlh_ltssm_state_rcvry_eq_sig;
wire	[7:0]	DWC_pcie_ctrl_x4_cfg_2ndbus_num_sig;
wire	[7:0]	DWC_pcie_ctrl_x4_cfg_subbus_num_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_2nd_reset_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_cpl_timeout_sig;
wire	[2:0]	DWC_pcie_ctrl_x4_radm_timeout_func_num_sig;
wire	[2:0]	DWC_pcie_ctrl_x4_radm_timeout_cpl_tc_sig;
wire	[1:0]	DWC_pcie_ctrl_x4_radm_timeout_cpl_attr_sig;
wire	[11:0]	DWC_pcie_ctrl_x4_radm_timeout_cpl_len_sig;
wire	[9:0]	DWC_pcie_ctrl_x4_radm_timeout_cpl_tag_sig;
wire	[3:0]	DWC_pcie_ctrl_x4_edma_int_sig;
wire	[921:0]	DWC_pcie_ctrl_x4_diag_status_bus_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_idle_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_brdg_slv_xfer_pending_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_brdg_dbi_xfer_pending_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_edma_xfer_pending_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_xfer_pending_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_smlh_req_rst_not_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_link_req_rst_not_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_smlh_link_up_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_rdlh_link_up_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_wake_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_local_ref_clk_req_n_sig;
wire	[2:0]	DWC_pcie_ctrl_x4_cfg_max_rd_req_size_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_bus_master_en_sig;
wire	[2:0]	DWC_pcie_ctrl_x4_cfg_max_payload_size_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_rcb_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_mem_space_en_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_pm_no_soft_rst_sig;
wire	[5:0]	DWC_pcie_ctrl_x4_smlh_ltssm_state_sig;
wire	[2:0]	DWC_pcie_ctrl_x4_pm_dstate_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_aux_pm_en_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_pm_pme_en_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_pm_linkst_in_l0s_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_pm_linkst_in_l1_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_pm_linkst_in_l2_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_pm_linkst_l2_exit_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_link_auto_bw_int_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_link_auto_bw_msi_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_bw_mgt_int_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_bw_mgt_msi_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_link_eq_req_int_sig;
wire	[31:0]	DWC_pcie_ctrl_x4_msi_ctrl_io_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_msi_ctrl_int_sig;
wire	[7:0]	DWC_pcie_ctrl_x4_msi_ctrl_int_vec_sig;
wire	[1:0]	DWC_pcie_ctrl_x4_cfg_pwr_ind_sig;
wire	[1:0]	DWC_pcie_ctrl_x4_cfg_atten_ind_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_pwr_ctrler_ctrl_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_sys_err_rc_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_aer_rc_err_int_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_aer_rc_err_msi_sig;
wire	[4:0]	DWC_pcie_ctrl_x4_cfg_aer_int_msg_num_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_pme_int_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_pme_msi_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_crs_sw_vis_en_sig;
wire	[4:0]	DWC_pcie_ctrl_x4_cfg_pcie_cap_int_msg_num_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_eml_control_sig;
wire	[1:0]	DWC_pcie_ctrl_x4_rtlh_rfc_upd_sig;
wire	[63:0]	DWC_pcie_ctrl_x4_rtlh_rfc_data_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_inta_asserted_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_inta_deasserted_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_intb_asserted_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_intb_deasserted_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_intc_asserted_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_intc_deasserted_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_intd_asserted_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_intd_deasserted_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_correctable_err_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_nonfatal_err_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_fatal_err_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_pm_pme_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_pm_to_ack_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_hp_pme_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_hp_int_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_hp_msi_sig;
wire	[1:0]	DWC_pcie_ctrl_x4_cfg_obff_en_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_msg_idle_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_msg_obff_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_radm_msg_cpu_active_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_app_obff_msg_grant_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_send_cor_err_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_send_nf_err_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_send_f_err_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_int_disable_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_no_snoop_en_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_relax_order_en_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_assert_inta_grt_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_assert_intb_grt_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_assert_intc_grt_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_assert_intd_grt_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_deassert_inta_grt_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_deassert_intb_grt_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_deassert_intc_grt_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_deassert_intd_grt_sig;
wire	[7:0]	DWC_pcie_ctrl_x4_cfg_int_pin_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_hp_slot_ctrl_access_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_dll_state_chged_en_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_cmd_cpled_int_en_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_hp_int_en_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_pre_det_chged_en_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_mrl_sensor_chged_en_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_pwr_fault_det_en_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_atten_button_pressed_en_sig;
wire	[0:0]	DWC_pcie_ctrl_x4_cfg_br_ctrl_serren_sig;	
wire	[5:0]	DWC_pcie_ctrl_x4_cfg_neg_link_width_sig;
wire	[2:0]	DWC_pcie_ctrl_x4_mac_phy_pclk_rate_sig;
wire	[2:0]	DWC_pcie_ctrl_x4_pm_current_data_rate_sig;
//------------------------------------------------------------------------
// x4_LINK END (Done)
//------------------------------------------------------------------------

//------------------------------------------------------------------------
// x2_TOP START
//------------------------------------------------------------------------
// x2_TOP -> SOC
// PCIE_SUB_CON_x2 -> SOC
wire	[31:0]	PCIE_SUB_CON_x2_o_driver_apb_prdata_sig;
wire	[0:0]	PCIE_SUB_CON_x2_o_driver_apb_pready_sig;
wire	[0:0]	PCIE_SUB_CON_x2_o_driver_apb_pslverr_sig;
wire	[0:0]	PCIE_SUB_CON_x2_pcie_irq_sig;
wire	[0:0]	PCIE_SUB_CON_x2_pcie_irq_cp_sig;
wire	[0:0]	PCIE_SUB_CON_x2_pcie_irq_TOE_sig;
wire	[0:0]	PCIE_SUB_CON_x2_QACCEPTn_mstr_aclk_slv_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x2_QDENY_mstr_aclk_slv_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x2_QACTIVE_mstr_aclk_slv_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x2_QACCEPTn_dbi_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x2_QDENY_dbi_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x2_QACTIVE_dbi_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x2_QACCEPTn_apb_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x2_QDENY_apb_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x2_QACTIVE_apb_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x2_mstr_wvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x2_slv_arready_sig;
wire	[0:0]	PCIE_SUB_CON_x2_slv_awready_sig;
wire	[0:0]	PCIE_SUB_CON_x2_slv_bvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x2_slv_rlast_sig;
wire	[0:0]	PCIE_SUB_CON_x2_slv_rvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x2_slv_wready_sig;
wire	[0:0]	PCIE_SUB_CON_x2_dbi_arready_sig;
wire	[0:0]	PCIE_SUB_CON_x2_dbi_awready_sig;
wire	[0:0]	PCIE_SUB_CON_x2_dbi_bvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x2_dbi_rlast_sig;
wire	[0:0]	PCIE_SUB_CON_x2_dbi_rvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x2_dbi_wready_sig;
wire	[63:0]	DWC_pcie_ctrl_x2_mstr_araddr_sig;
wire	[1:0]	DWC_pcie_ctrl_x2_mstr_arburst_sig;
wire	[3:0]	DWC_pcie_ctrl_x2_mstr_arcache_sig;
wire	[5:0]	DWC_pcie_ctrl_x2_mstr_arid_sig;
wire	[7:0]	DWC_pcie_ctrl_x2_mstr_arlen_sig;
wire	[0:0]	DWC_pcie_ctrl_x2_mstr_arlock_sig;
wire	[49:0]	DWC_pcie_ctrl_x2_mstr_armisc_info_sig;
wire	[3:0]	DWC_pcie_ctrl_x2_mstr_armisc_info_dma_sig;
wire	[0:0]	DWC_pcie_ctrl_x2_mstr_armisc_info_zeroread_sig;
wire	[0:0]	DWC_pcie_ctrl_x2_mstr_armisc_info_last_dcmp_tlp_sig;
wire	[2:0]	DWC_pcie_ctrl_x2_mstr_arprot_sig;
wire	[3:0]	DWC_pcie_ctrl_x2_mstr_arqos_sig;
wire	[2:0]	DWC_pcie_ctrl_x2_mstr_arsize_sig;
wire	[63:0]	DWC_pcie_ctrl_x2_mstr_awaddr_sig;
wire	[1:0]	DWC_pcie_ctrl_x2_mstr_awburst_sig;
wire	[3:0]	DWC_pcie_ctrl_x2_mstr_awcache_sig;
wire	[5:0]	DWC_pcie_ctrl_x2_mstr_awid_sig;
wire	[7:0]	DWC_pcie_ctrl_x2_mstr_awlen_sig;
wire	[0:0]	DWC_pcie_ctrl_x2_mstr_awlock_sig;
wire	[49:0]	DWC_pcie_ctrl_x2_mstr_awmisc_info_sig;
wire	[3:0]	DWC_pcie_ctrl_x2_mstr_awmisc_info_dma_sig;
wire	[0:0]	DWC_pcie_ctrl_x2_mstr_awmisc_info_ep_sig;
wire	[63:0]	DWC_pcie_ctrl_x2_mstr_awmisc_info_hdr_34dw_sig;
wire	[0:0]	DWC_pcie_ctrl_x2_mstr_awmisc_info_last_dcmp_tlp_sig;
wire	[2:0]	DWC_pcie_ctrl_x2_mstr_awprot_sig;
wire	[3:0]	DWC_pcie_ctrl_x2_mstr_awqos_sig;
wire	[2:0]	DWC_pcie_ctrl_x2_mstr_awsize_sig;
wire	[127:0]	DWC_pcie_ctrl_x2_mstr_wdata_sig;
wire	[0:0]	DWC_pcie_ctrl_x2_mstr_wlast_sig;
wire	[15:0]	DWC_pcie_ctrl_x2_mstr_wstrb_sig;
wire	[0:0]	DWC_pcie_ctrl_x2_mstr_bready_sig;
wire	[0:0]	DWC_pcie_ctrl_x2_mstr_rready_sig;
wire	[0:0]	DWC_pcie_ctrl_x2_mstr_cactive_sig;
wire	[0:0]	DWC_pcie_ctrl_x2_mstr_csysack_sig;
wire	[15:0]	DWC_pcie_ctrl_x2_slv_bid_sig;
wire	[10:0]	DWC_pcie_ctrl_x2_slv_bmisc_info_sig;
wire	[1:0]	DWC_pcie_ctrl_x2_slv_bresp_sig;
wire	[15:0]	DWC_pcie_ctrl_x2_slv_rid_sig;
wire	[127:0]	DWC_pcie_ctrl_x2_slv_rdata_sig;
wire	[10:0]	DWC_pcie_ctrl_x2_slv_rmisc_info_sig;
wire	[1:0]	DWC_pcie_ctrl_x2_slv_rresp_sig;
wire	[0:0]	DWC_pcie_ctrl_x2_slv_cactive_sig;
wire	[0:0]	DWC_pcie_ctrl_x2_slv_csysack_sig;
wire	[3:0]	DWC_pcie_ctrl_x2_dbi_bid_sig;
wire	[1:0]	DWC_pcie_ctrl_x2_dbi_bresp_sig;
wire	[3:0]	DWC_pcie_ctrl_x2_dbi_rid_sig;
wire	[31:0]	DWC_pcie_ctrl_x2_dbi_rdata_sig;
wire	[1:0]	DWC_pcie_ctrl_x2_dbi_rresp_sig;
wire	[0:0]	DWC_pcie_ctrl_x2_dbi_cactive_sig;
wire	[0:0]	DWC_pcie_ctrl_x2_dbi_csysack_sig;
//------------------------------------------------------------------------
// x2_TOP END (Done)
//------------------------------------------------------------------------


//------------------------------------------------------------------------
// PIPE_MUX START
//------------------------------------------------------------------------
// PIPE_MUX -> PCIE_SUB_CON_x4
wire	[1:0]		PIPE_MUX_x4_phy_mac_rxelecidle_sig;
wire	[0:0]		PIPE_MUX_o_mux_phy_clk_req_n_x4_sig;
// PIPE_MUX -> x4_LINK
wire	[1:0]		PIPE_MUX_x4_phy_mac_phystatus_sig;
wire	[63:0]		PIPE_MUX_x4_phy_mac_rxdata_sig;
wire	[7:0]		PIPE_MUX_x4_phy_mac_rxdatak_sig;
wire	[1:0]		PIPE_MUX_x4_phy_mac_rxvalid_sig;
wire	[5:0]		PIPE_MUX_x4_phy_mac_rxstatus_sig;
wire	[1:0]		PIPE_MUX_x4_phy_mac_rxdatavalid_sig;
wire	[1:0]		PIPE_MUX_x4_phy_mac_rxstartblock_sig;
wire	[3:0]		PIPE_MUX_x4_phy_mac_rxsyncheader_sig;
wire	[11:0]		PIPE_MUX_x4_phy_mac_localfs_sig;
wire	[11:0]		PIPE_MUX_x4_phy_mac_locallf_sig;
wire	[15:0]		PIPE_MUX_x4_phy_mac_messagebus_sig;
wire	[1:0]		PIPE_MUX_x4_phy_mac_rxstandbystatus_sig;
wire	[1:0]		PIPE_MUX_x4_phy_mac_local_tx_coef_valid_sig;
wire	[35:0]		PIPE_MUX_x4_phy_mac_local_tx_pset_coef_sig;
wire	[11:0]		PIPE_MUX_x4_phy_mac_dirfeedback_sig;
wire	[15:0]		PIPE_MUX_x4_phy_mac_fomfeedback_sig;
// PIPE_MUX -> X2_LINK
wire	[1:0]		PIPE_MUX_X2_phy_mac_rxelecidle_sig;
wire	[1:0]		PIPE_MUX_X2_phy_mac_phystatus_sig;
wire	[63:0]		PIPE_MUX_X2_phy_mac_rxdata_sig;
wire	[7:0]		PIPE_MUX_X2_phy_mac_rxdatak_sig;
wire	[1:0]		PIPE_MUX_X2_phy_mac_rxvalid_sig;
wire	[5:0]		PIPE_MUX_X2_phy_mac_rxstatus_sig;
wire	[1:0]		PIPE_MUX_X2_phy_mac_rxdatavalid_sig;
wire	[1:0]		PIPE_MUX_X2_phy_mac_rxstartblock_sig;
wire	[3:0]		PIPE_MUX_X2_phy_mac_rxsyncheader_sig;
wire	[11:0]		PIPE_MUX_X2_phy_mac_localfs_sig;
wire	[11:0]		PIPE_MUX_X2_phy_mac_locallf_sig;
wire	[15:0]		PIPE_MUX_X2_phy_mac_messagebus_sig;
wire	[1:0]		PIPE_MUX_X2_phy_mac_rxstandbystatus_sig;
wire	[1:0]		PIPE_MUX_X2_phy_mac_local_tx_coef_valid_sig;
wire	[35:0]		PIPE_MUX_X2_phy_mac_local_tx_pset_coef_sig;
wire	[11:0]		PIPE_MUX_X2_phy_mac_dirfeedback_sig;
wire	[15:0]		PIPE_MUX_X2_phy_mac_fomfeedback_sig;
// PIPE_MUX -> PHY
wire	[0:0]		PIPE_MUX_pipe_rx3_eq_invld_req_sig;
wire	[0:0]		PIPE_MUX_pipe_rx2_eq_invld_req_sig;
wire	[0:0]		PIPE_MUX_pipe_lane3_tx2rx_loopbk_sig;
wire	[0:0]		PIPE_MUX_pipe_lane2_tx2rx_loopbk_sig;
wire	[0:0]		PIPE_MUX_pipe_rx2_3_blk_align_ctl_sig;
wire	[1:0]		PIPE_MUX_pipe_lane2_3_rate_sig;
wire	[2:0]		PIPE_MUX_pipe_tx2_3_margin_sig;
wire	[0:0]		PIPE_MUX_pipe_tx2_3_swing_sig;
wire	[0:0]		PIPE_MUX_pipe_rx2_3_es_mode_sig;
wire	[0:0]		PIPE_MUX_pipe_rx2_3_disable_sig;
wire	[0:0]		PIPE_MUX_pipe_tx2_3_disable_sig;
wire	[31:0]		PIPE_MUX_x4_pipe_tx3_data_sig;
wire	[31:0]		PIPE_MUX_x4_pipe_tx2_data_sig;
wire	[3:0]		PIPE_MUX_x4_pipe_tx3_datak_sig;
wire	[3:0]		PIPE_MUX_x4_pipe_tx2_datak_sig;
wire	[0:0]		PIPE_MUX_pipe_tx3_detectrx_sig;
wire	[0:0]		PIPE_MUX_pipe_tx2_detectrx_sig;
wire	[0:0]		PIPE_MUX_pipe_tx3_elecidle_sig;
wire	[0:0]		PIPE_MUX_pipe_tx2_elecidle_sig;
wire	[0:0]		PIPE_MUX_pipe_tx3_compliance_sig;
wire	[0:0]		PIPE_MUX_pipe_tx2_compliance_sig;
wire	[0:0]		PIPE_MUX_pipe_rx3_polarity_sig;
wire	[0:0]		PIPE_MUX_pipe_rx2_polarity_sig;
wire	[0:0]		PIPE_MUX_pipe_tx3_datavalid_sig;
wire	[0:0]		PIPE_MUX_pipe_tx2_datavalid_sig;
wire	[0:0]		PIPE_MUX_pipe_tx3_startblock_sig;
wire	[0:0]		PIPE_MUX_pipe_tx2_startblock_sig;
wire	[1:0]		PIPE_MUX_pipe_tx3_syncheader_sig;
wire	[1:0]		PIPE_MUX_pipe_tx2_syncheader_sig;
wire	[17:0]		PIPE_MUX_pipe_tx3_deemph_sig;
wire	[17:0]		PIPE_MUX_pipe_tx2_deemph_sig;
wire	[0:0]		PIPE_MUX_pipe_rx3_eq_eval_sig;
wire	[0:0]		PIPE_MUX_pipe_rx2_eq_eval_sig;
wire	[7:0]		PIPE_MUX_pipe_lane3_m2p_messagebus_sig;
wire	[7:0]		PIPE_MUX_pipe_lane2_m2p_messagebus_sig;
wire	[0:0]		PIPE_MUX_pipe_rx3_standby_sig;
wire	[0:0]		PIPE_MUX_pipe_rx2_standby_sig;
wire	[0:0]		PIPE_MUX_pipe_rx3_eq_in_prog_sig;
wire	[0:0]		PIPE_MUX_pipe_rx2_eq_in_prog_sig;
wire	[0:0]		PIPE_MUX_pipe_tx3_eq_preset_coeff_req_sig;
wire	[0:0]		PIPE_MUX_pipe_tx2_eq_preset_coeff_req_sig;
wire	[4:0]		PIPE_MUX_pipe_tx3_eq_preset_sig;
wire	[4:0]		PIPE_MUX_pipe_tx2_eq_preset_sig;
wire	[0:0]		PIPE_MUX_pipe_lane2_3_encdec_bypass_sig;
wire	[3:0]		PIPE_MUX_pipe_lane2_3_powerdown_sig;
wire	[1:0]		PIPE_MUX_pipe_lane2_3_if_width_sig;
wire	[0:0]		PIPE_MUX_o_mux_pipe_lane2_3_reset_n_sig;
// x4_LINK -> PIPE_MUX
wire	[127:0]		DWC_pcie_ctrl_x4_mac_phy_txdata_sig;
wire	[15:0]		DWC_pcie_ctrl_x4_mac_phy_txdatak_sig;
wire	[3:0]		DWC_pcie_ctrl_x4_mac_phy_txdetectrx_loopback_sig;
wire	[3:0]		DWC_pcie_ctrl_x4_mac_phy_txelecidle_sig;
wire	[3:0]		DWC_pcie_ctrl_x4_mac_phy_txcompliance_sig;
wire	[3:0]		DWC_pcie_ctrl_x4_mac_phy_rxpolarity_sig;
wire	[3:0]		DWC_pcie_ctrl_x4_mac_phy_txdatavalid_sig;
wire	[3:0]		DWC_pcie_ctrl_x4_mac_phy_txstartblock_sig;
wire	[7:0]		DWC_pcie_ctrl_x4_mac_phy_txsyncheader_sig;
wire	[71:0]		DWC_pcie_ctrl_x4_mac_phy_txdeemph_sig;
wire	[3:0]		DWC_pcie_ctrl_x4_mac_phy_rxeqeval_sig;
wire	[31:0]		DWC_pcie_ctrl_x4_mac_phy_messagebus_sig;
wire	[3:0]		DWC_pcie_ctrl_x4_mac_phy_rxstandby_sig;
wire	[3:0]		DWC_pcie_ctrl_x4_mac_phy_rxeqinprogress_sig;
wire	[3:0]		DWC_pcie_ctrl_x4_mac_phy_getlocal_pset_coef_sig;
wire	[19:0]		DWC_pcie_ctrl_x4_mac_phy_local_pset_index_sig;
wire	[0:0]		DWC_pcie_ctrl_x4_mac_phy_encodedecodebypass_sig;
wire	[3:0]		DWC_pcie_ctrl_x4_mac_phy_invalid_req_sig;
wire	[3:0]		DWC_pcie_ctrl_x4_mac_phy_powerdown_sig;
wire	[1:0]		DWC_pcie_ctrl_x4_mac_phy_width_sig;
wire	[0:0]		DWC_pcie_ctrl_x4_mac_phy_blockaligncontrol_sig;
wire	[1:0]		DWC_pcie_ctrl_x4_mac_phy_rate_sig;
wire	[2:0]		DWC_pcie_ctrl_x4_mac_phy_txmargin_sig;
wire	[0:0]		DWC_pcie_ctrl_x4_mac_phy_txswing_sig;
wire	[0:0]		DWC_pcie_ctrl_x4_mac_phy_elasticbuffermode_sig;
wire	[0:0]		DWC_pcie_ctrl_x4_mac_phy_rxelecidle_disable_sig;
wire	[0:0]		DWC_pcie_ctrl_x4_mac_phy_txcommonmode_disable_sig;
// X2_LINK -> PIPE_MUX
wire	[127:64]	DWC_pcie_ctrl_x2_mac_phy_txdata_sig;
wire	[15:8]		DWC_pcie_ctrl_x2_mac_phy_txdatak_sig;
wire	[3:2]		DWC_pcie_ctrl_x2_mac_phy_txdetectrx_loopback_sig;
wire	[3:2]		DWC_pcie_ctrl_x2_mac_phy_txelecidle_sig;
wire	[3:2]		DWC_pcie_ctrl_x2_mac_phy_txcompliance_sig;
wire	[3:2]		DWC_pcie_ctrl_x2_mac_phy_rxpolarity_sig;
wire	[3:2]		DWC_pcie_ctrl_x2_mac_phy_txdatavalid_sig;
wire	[3:2]		DWC_pcie_ctrl_x2_mac_phy_txstartblock_sig;
wire	[7:4]		DWC_pcie_ctrl_x2_mac_phy_txsyncheader_sig;
wire	[71:36]		DWC_pcie_ctrl_x2_mac_phy_txdeemph_sig;
wire	[3:2]		DWC_pcie_ctrl_x2_mac_phy_rxeqeval_sig;
wire	[31:16]		DWC_pcie_ctrl_x2_mac_phy_messagebus_sig;
wire	[3:2]		DWC_pcie_ctrl_x2_mac_phy_rxstandby_sig;
wire	[3:2]		DWC_pcie_ctrl_x2_mac_phy_rxeqinprogress_sig;
wire	[3:2]		DWC_pcie_ctrl_x2_mac_phy_getlocal_pset_coef_sig;
wire	[19:10]		DWC_pcie_ctrl_x2_mac_phy_local_pset_index_sig;
wire	[3:2]		DWC_pcie_ctrl_x2_mac_phy_invalid_req_sig;
wire	[3:0]		DWC_pcie_ctrl_x2_mac_phy_powerdown_sig;
wire	[1:0]		DWC_pcie_ctrl_x2_mac_phy_width_sig;
wire	[0:0]		DWC_pcie_ctrl_x2_mac_phy_blockaligncontrol_sig;
wire	[1:0]		DWC_pcie_ctrl_x2_mac_phy_rate_sig;
wire	[2:0]		DWC_pcie_ctrl_x2_mac_phy_txmargin_sig;
wire	[0:0]		DWC_pcie_ctrl_x2_mac_phy_txswing_sig;
wire	[0:0]		DWC_pcie_ctrl_x2_mac_phy_elasticbuffermode_sig;
wire	[0:0]		DWC_pcie_ctrl_x2_mac_phy_rxelecidle_disable_sig;
wire	[0:0]		DWC_pcie_ctrl_x2_mac_phy_txcommonmode_disable_sig;
wire	[0:0]		DWC_pcie_ctrl_x2_mac_phy_encodedecodebypass_sig;
// PHY -> PIPE_MUX
wire	[0:0]		PCIE_PHY_pipe_rx3_elecidle_sig;
wire	[0:0]		PCIE_PHY_pipe_rx2_elecidle_sig;
wire	[0:0]		PCIE_PHY_pipe_lane3_phystatus_sig;
wire	[0:0]		PCIE_PHY_pipe_lane2_phystatus_sig;
wire	[39:0]		PCIE_PHY_pipe_rx3_data_sig;
wire	[39:0]		PCIE_PHY_pipe_rx2_data_sig;
wire	[3:0]		PCIE_PHY_pipe_rx3_datak_sig;
wire	[3:0]		PCIE_PHY_pipe_rx2_datak_sig;
wire	[0:0]		PCIE_PHY_pipe_rx3_valid_sig;
wire	[0:0]		PCIE_PHY_pipe_rx2_valid_sig;
wire	[2:0]		PCIE_PHY_pipe_rx3_status_sig;
wire	[2:0]		PCIE_PHY_pipe_rx2_status_sig;
wire	[0:0]		PCIE_PHY_pipe_rx3_datavalid_sig;
wire	[0:0]		PCIE_PHY_pipe_rx2_datavalid_sig;
wire	[0:0]		PCIE_PHY_pipe_rx3_startblock_sig;
wire	[0:0]		PCIE_PHY_pipe_rx2_startblock_sig;
wire	[3:0]		PCIE_PHY_pipe_rx3_syncheader_sig;
wire	[3:0]		PCIE_PHY_pipe_rx2_syncheader_sig;
wire	[5:0]		PCIE_PHY_pipe_tx3_eq_fs_sig;
wire	[5:0]		PCIE_PHY_pipe_tx2_eq_fs_sig;
wire	[5:0]		PCIE_PHY_pipe_tx3_eq_lf_sig;
wire	[5:0]		PCIE_PHY_pipe_tx2_eq_lf_sig;
wire	[7:0]		PCIE_PHY_pipe_lane3_p2m_messagebus_sig;
wire	[7:0]		PCIE_PHY_pipe_lane2_p2m_messagebus_sig;
wire	[0:0]		PCIE_PHY_pipe_rx3_standby_status_sig;
wire	[0:0]		PCIE_PHY_pipe_rx2_standby_status_sig;
wire	[0:0]		PCIE_PHY_pipe_tx3_eq_preset_coeff_vld_sig;
wire	[0:0]		PCIE_PHY_pipe_tx2_eq_preset_coeff_vld_sig;
wire	[17:0]		PCIE_PHY_pipe_tx3_eq_preset_coeff_sig;
wire	[17:0]		PCIE_PHY_pipe_tx2_eq_preset_coeff_sig;
wire	[5:0]		PCIE_PHY_pipe_rx3_eq_dir_change_sig;
wire	[5:0]		PCIE_PHY_pipe_rx2_eq_dir_change_sig;
wire	[7:0]		PCIE_PHY_pipe_rx3_eq_fig_merit_sig;
wire	[7:0]		PCIE_PHY_pipe_rx2_eq_fig_merit_sig;
wire	[0:0]		PCIE_PHY_pipe_lane3_ref_clk_req_n_sig;
wire	[0:0]		PCIE_PHY_pipe_lane2_ref_clk_req_n_sig;
wire	[0:0]		PCIE_PHY_pipe_lane1_ref_clk_req_n_sig;
wire	[0:0]		PCIE_PHY_pipe_lane0_ref_clk_req_n_sig;
// TEST_MUX -> PIPE_MUX
wire	[0:0]		TEST_MUX_phy_reset_Y_sig;
wire	[0:0]		TEST_MUX_pipe_lane0_1_reset_n_Y_sig;
wire	[0:0]		TEST_MUX_pipe_lane2_3_reset_n_Y_sig;
//------------------------------------------------------------------------
// PIPE_MUX END (Done)
//------------------------------------------------------------------------
wire	[0:0]		PCIE_PHY_pipe_rx1_elecidle_sig;
wire	[0:0]		PCIE_PHY_pipe_rx0_elecidle_sig;
wire	[0:0]		PCIE_PHY_pipe_lane1_phystatus_sig;
wire	[0:0]		PCIE_PHY_pipe_lane0_phystatus_sig;
wire	[39:0]		PCIE_PHY_pipe_rx1_data_sig;
wire	[39:0]		PCIE_PHY_pipe_rx0_data_sig;
wire	[3:0]		PCIE_PHY_pipe_rx1_datak_sig;
wire	[3:0]		PCIE_PHY_pipe_rx0_datak_sig;
wire	[0:0]		PCIE_PHY_pipe_rx1_valid_sig;
wire	[0:0]		PCIE_PHY_pipe_rx0_valid_sig;
wire	[2:0]		PCIE_PHY_pipe_rx1_status_sig;
wire	[2:0]		PCIE_PHY_pipe_rx0_status_sig;
wire	[0:0]		PCIE_PHY_pipe_rx1_datavalid_sig;
wire	[0:0]		PCIE_PHY_pipe_rx0_datavalid_sig;
wire	[0:0]		PCIE_PHY_pipe_rx1_startblock_sig;
wire	[0:0]		PCIE_PHY_pipe_rx0_startblock_sig;
wire	[3:0]		PCIE_PHY_pipe_rx1_syncheader_sig;
wire	[3:0]		PCIE_PHY_pipe_rx0_syncheader_sig;
wire	[5:0]		PCIE_PHY_pipe_tx1_eq_fs_sig;
wire	[5:0]		PCIE_PHY_pipe_tx0_eq_fs_sig;
wire	[5:0]		PCIE_PHY_pipe_tx1_eq_lf_sig;
wire	[5:0]		PCIE_PHY_pipe_tx0_eq_lf_sig;
wire	[7:0]		PCIE_PHY_pipe_lane1_p2m_messagebus_sig;
wire	[7:0]		PCIE_PHY_pipe_lane0_p2m_messagebus_sig;
wire	[0:0]		PCIE_PHY_pipe_rx1_standby_status_sig;
wire	[0:0]		PCIE_PHY_pipe_rx0_standby_status_sig;
wire	[0:0]		PCIE_PHY_pipe_tx1_eq_preset_coeff_vld_sig;
wire	[0:0]		PCIE_PHY_pipe_tx0_eq_preset_coeff_vld_sig;
wire	[17:0]		PCIE_PHY_pipe_tx1_eq_preset_coeff_sig;
wire	[17:0]		PCIE_PHY_pipe_tx0_eq_preset_coeff_sig;
wire	[5:0]		PCIE_PHY_pipe_rx1_eq_dir_change_sig;
wire	[5:0]		PCIE_PHY_pipe_rx0_eq_dir_change_sig;
wire	[7:0]		PCIE_PHY_pipe_rx1_eq_fig_merit_sig;
wire	[7:0]		PCIE_PHY_pipe_rx0_eq_fig_merit_sig;
//------------------------------------------------------------------------
// PHY START (Done)
//------------------------------------------------------------------------

//------------------------------------------------------------------------
// PHY END (Done)
//------------------------------------------------------------------------

//------------------------------------------------------------------------
// TEST_MUX START
//------------------------------------------------------------------------
// PCIE_SUB_CON_x4 -> TEST_MUX
wire	[0:0]		PCIE_SUB_CON_x4_phy_rst_n_sig;
// PCIE_SUB_CON_x2 -> TEST_MUX
wire	[0:0]		PCIE_SUB_CON_x2_phy_rst_n_sig;
//------------------------------------------------------------------------
// TEST_MUX END (Done)
//------------------------------------------------------------------------
//------------------------------------------------------------------------


//------------------------------------------------------------------------
// PCIE_SUB_CON_x4 START
//------------------------------------------------------------------------
// PCIE_SUB_CON_x4 -> SOC
wire	[31:0]	PCIE_SUB_CON_x4_o_driver_apb_prdata_sig;
wire	[0:0]	PCIE_SUB_CON_x4_o_driver_apb_pready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_o_driver_apb_pslverr_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pcie_irq_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pcie_irq_cp_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pcie_irq_TOE_sig;
wire	[0:0]	PCIE_SUB_CON_x4_QACCEPTn_mstr_aclk_slv_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x4_QDENY_mstr_aclk_slv_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x4_QACTIVE_mstr_aclk_slv_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x4_QACCEPTn_dbi_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x4_QDENY_dbi_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x4_QACTIVE_dbi_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x4_QACCEPTn_apb_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x4_QDENY_apb_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x4_QACTIVE_apb_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x4_mstr_wvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x4_slv_arready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_slv_awready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_slv_bvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x4_slv_rlast_sig;
wire	[0:0]	PCIE_SUB_CON_x4_slv_rvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x4_slv_wready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_dbi_arready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_dbi_awready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_dbi_bvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x4_dbi_rlast_sig;
wire	[0:0]	PCIE_SUB_CON_x4_dbi_rvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x4_dbi_wready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_cr_para_sel_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy_lane0_rx2tx_par_lb_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy_lane1_rx2tx_par_lb_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy_lane2_rx2tx_par_lb_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy_lane3_rx2tx_par_lb_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ext_pclk_req_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy0_sram_bypass_sig;
// PCIE_SUB_CON_x4 -> x4_LINK
wire	[0:0]	PCIE_SUB_CON_x4_ip_slv_awvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_slv_wvalid_sig;	
wire	[0:0]	PCIE_SUB_CON_x4_ip_slv_bready_sig;	
wire	[0:0]	PCIE_SUB_CON_x4_ip_slv_arvalid_sig;	
wire	[0:0]	PCIE_SUB_CON_x4_ip_slv_rready_sig;	
wire	[0:0]	PCIE_SUB_CON_x4_ip_slv_wlast_sig;	
wire	[0:0]	PCIE_SUB_CON_x4_ip_slv_awready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_slv_wready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_slv_bvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_slv_arready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_slv_rvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_slv_rlast_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_dbi_awvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_dbi_wvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_dbi_bready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_dbi_arvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_dbi_rready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_dbi_wlast_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_dbi_awready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_dbi_wready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_dbi_bvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_dbi_arready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_dbi_rvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_dbi_rlast_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_mstr_arready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_mstr_awready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_mstr_wready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_mstr_arvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_mstr_awvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ip_mstr_wvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x4_mstr_arvalid_sig;
wire	[0:0]	PCIE_SUB_CON_x4_mstr_awvalid_sig;
wire	[3:0]	PCIE_SUB_CON_x4_phy_mac_rxelecidle_out_sig;
wire	[0:0]	PCIE_SUB_CON_x4_mstr_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x4_mstr_aresetn_sig;
wire	[2:0]	PCIE_SUB_CON_x4_mstr_bmisc_info_cpl_stat_sig;
wire	[12:0]	PCIE_SUB_CON_x4_mstr_rmisc_info_sig;
wire	[2:0]	PCIE_SUB_CON_x4_mstr_rmisc_info_cpl_stat_sig;
wire	[0:0]	PCIE_SUB_CON_x4_slv_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x4_slv_aresetn_sig;
wire	[21:0]	PCIE_SUB_CON_x4_slv_armisc_info_sig;
wire	[0:0]	PCIE_SUB_CON_x4_slv_armisc_info_atu_bypass_sig;
wire	[21:0]	PCIE_SUB_CON_x4_slv_awmisc_info_sig;
wire	[0:0]	PCIE_SUB_CON_x4_slv_awmisc_info_atu_bypass_sig;
wire	[63:0]	PCIE_SUB_CON_x4_slv_awmisc_info_hdr_34dw_sig;
wire	[9:0]	PCIE_SUB_CON_x4_slv_awmisc_info_p_tag_sig;
wire	[0:0]	PCIE_SUB_CON_x4_slv_wmisc_info_ep_sig;
wire	[0:0]	PCIE_SUB_CON_x4_slv_wmisc_info_silentDrop_sig;
wire	[0:0]	PCIE_SUB_CON_x4_dbi_aclk_sig;
wire	[0:0]	PCIE_SUB_CON_x4_dbi_aresetn_sig;
wire	[0:0]	PCIE_SUB_CON_x4_aux_clk_sig;
wire	[0:0]	PCIE_SUB_CON_x4_aux_clk_active_sig;
wire	[0:0]	PCIE_SUB_CON_x4_aux_clk_g_sig;
wire			PCIE_SUB_CON_x4_radm_clk_g_sig;
wire			PCIE_SUB_CON_x4_core_clk_sig;
wire			PCIE_SUB_CON_x4_core_clk_ug_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pwr_rst_n_sig;
wire	[0:0]	PCIE_SUB_CON_x4_core_rst_n_sig;
wire	[0:0]	PCIE_SUB_CON_x4_sync_perst_n_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy_perst_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy_perst_n_sig;
wire	[0:0]	PCIE_SUB_CON_x4_sticky_rst_n_sig;
wire	[0:0]	PCIE_SUB_CON_x4_non_stiky_rst_n_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_margining_ready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_margining_software_ready_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_clk_pm_en_sig;
wire	[1:0]	PCIE_SUB_CON_x4_ven_msg_fmt_sig;
wire	[4:0]	PCIE_SUB_CON_x4_ven_msg_type_sig;
wire	[2:0]	PCIE_SUB_CON_x4_ven_msg_tc_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ven_msg_td_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ven_msg_eq_sig;
wire	[1:0]	PCIE_SUB_CON_x4_ven_msg_attr_sig;
wire	[9:0]	PCIE_SUB_CON_x4_ven_msg_len_sig;
wire	[2:0]	PCIE_SUB_CON_x4_ven_msg_func_num_sig;
wire	[9:0]	PCIE_SUB_CON_x4_ven_msg_tag_sig;
wire	[7:0]	PCIE_SUB_CON_x4_ven_msg_code_sig;
wire	[63:0]	PCIE_SUB_CON_x4_ven_msg_data_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ven_msg_req_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ven_msi_req_sig;
wire	[2:0]	PCIE_SUB_CON_x4_ven_msi_func_num_sig;
wire	[2:0]	PCIE_SUB_CON_x4_ven_msi_tc_sig;
wire	[4:0]	PCIE_SUB_CON_x4_ven_msi_vector_sig;
wire	[31:0]	PCIE_SUB_CON_x4_cfg_msi_pending_sig;
wire	[0:0]	PCIE_SUB_CON_x4_dbg_table_sig;
wire	[0:0]	PCIE_SUB_CON_x4_dbg_pba_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_ltr_msg_req_sig;
wire	[31:0]	PCIE_SUB_CON_x4_app_ltr_msg_latency_sig;
wire	[2:0]	PCIE_SUB_CON_x4_app_ltr_msg_func_num_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_hdr_valid_sig;
wire	[127:0]	PCIE_SUB_CON_x4_app_hdr_log_sig;
wire	[26:0]	PCIE_SUB_CON_x4_app_err_bus_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_err_advisory_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_poisoned_tlp_type_sig;
wire	[2:0]	PCIE_SUB_CON_x4_app_err_func_num_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_dbi_ro_wr_disable_sig;
wire	[0:0]	PCIE_SUB_CON_x4_ext_lbc_ack_sig;
wire	[31:0]	PCIE_SUB_CON_x4_ext_lbc_din_sig;
wire	[0:0]	PCIE_SUB_CON_x4_outband_pwrup_cmd_sig;
wire	[2:0]	PCIE_SUB_CON_x4_diag_ctrl_bus_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_clk_req_n_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy_clk_req_n_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_init_rst_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_req_entr_l1_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_ready_entr_l23_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_req_exit_l1_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_xfer_pending_sig;
wire	[0:0]	PCIE_SUB_CON_x4_exp_rom_validation_status_strobe_sig;
wire	[2:0]	PCIE_SUB_CON_x4_exp_rom_validation_status_sig;
wire	[0:0]	PCIE_SUB_CON_x4_exp_rom_validation_details_strobe_sig;
wire	[3:0]	PCIE_SUB_CON_x4_exp_rom_validation_details_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_req_retry_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_pf_req_retry_en_sig;
wire	[3:0]	PCIE_SUB_CON_x4_device_type_sig;
wire	[0:0]	PCIE_SUB_CON_x4_rx_lane_flip_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_tx_lane_flip_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_sys_atten_button_pressed_sig;
wire	[0:0]	PCIE_SUB_CON_x4_sys_pre_det_state_sig;
wire	[0:0]	PCIE_SUB_CON_x4_sys_mrl_sensor_state_sig;
wire	[0:0]	PCIE_SUB_CON_x4_sys_pwr_fault_det_sig;
wire	[0:0]	PCIE_SUB_CON_x4_sys_mrl_sensor_chged_sig;
wire	[0:0]	PCIE_SUB_CON_x4_sys_pre_det_chged_sig;
wire	[0:0]	PCIE_SUB_CON_x4_sys_cmd_cpled_int_sig;
wire	[0:0]	PCIE_SUB_CON_x4_sys_eml_interlock_engaged_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_unlock_msg_sig;
wire	[0:0]	PCIE_SUB_CON_x4_apps_pm_xmt_turnoff_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_obff_idle_msg_req_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_obff_obff_msg_req_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_obff_cpu_active_msg_req_sig;
wire	[0:0]	PCIE_SUB_CON_x4_sys_int_sig;
wire	[0:0]	PCIE_SUB_CON_x4_apps_pm_xmt_pme_sig;
wire	[0:0]	PCIE_SUB_CON_x4_sys_aux_pwr_det_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_ltssm_enable_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_hold_phy_rst_sig;
wire	[0:0]	PCIE_SUB_CON_x4_app_l1sub_disable;
wire	[4:0]	PCIE_SUB_CON_x4_app_dev_num_sig;
wire	[7:0]	PCIE_SUB_CON_x4_app_bus_num_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pg_mode_en_sig;
// PCIE_SUB_CON_x4 -> PHY
wire	[0:0]	PCIE_SUB_CON_x4_phy0_sram_ext_ld_done_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy0_mplla_force_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy0_mplla_ssc_en_sig;
wire	[0:0]	PCIE_PHY_phy0_mplla_state_sig;
wire	[0:0]	PCIE_PHY_phy0_mplla_word_sync_clk_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy0_mpllb_force_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy0_mpllb_ssc_en_sig;
wire	[0:0]	PCIE_PHY_phy0_mpllb_state_sig;
wire	[0:0]	PCIE_PHY_phy0_mpllb_word_sync_clk_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy0_pcs_pwr_stable_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy0_pma_pwr_stable_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy0_ref_alt_clk_p_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy0_ref_clkdet_en_sig;
wire	[4:0]	PCIE_SUB_CON_x4_phy0_rx_term_offset_sig;
wire	[8:0]	PCIE_SUB_CON_x4_phy0_txdn_term_offset_sig;
wire	[8:0]	PCIE_SUB_CON_x4_phy0_txup_term_offset_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy_ext_ctrl_sel_sig;
wire	[0:0]	PCIE_PHY_phy_rtune_ack_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy_rtune_req_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy_rx0_term_acdc_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy_rx1_term_acdc_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy_rx2_term_acdc_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy_rx3_term_acdc_sig;
wire	[0:0]	PCIE_SUB_CON_x4_phy0_ref_use_pad_sig;
wire	[1:0]	PCIE_SUB_CON_x4_pipe_lane0_phy_src_sel_sig;
wire	[1:0]	PCIE_SUB_CON_x4_pipe_lane1_phy_src_sel_sig;
wire	[1:0]	PCIE_SUB_CON_x4_pipe_lane2_phy_src_sel_sig;
wire	[1:0]	PCIE_SUB_CON_x4_pipe_lane3_phy_src_sel_sig;
wire	[1:0]	PCIE_SUB_CON_x4_pipe_lane0_protocol_sig;
wire	[1:0]	PCIE_SUB_CON_x4_pipe_lane1_protocol_sig;
wire	[1:0]	PCIE_SUB_CON_x4_pipe_lane2_protocol_sig;
wire	[1:0]	PCIE_SUB_CON_x4_pipe_lane3_protocol_sig;
wire	[0:0]	PCIE_PHY_pipe_lane0_pclk_sig;
wire	[0:0]	PCIE_PHY_pipe_lane2_pclk_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pipe_lane0_cmn_refclk_mode_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pipe_lane1_cmn_refclk_mode_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pipe_lane2_cmn_refclk_mode_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pipe_lane3_cmn_refclk_mode_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pipe_rx0_sris_mode_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pipe_rx1_sris_mode_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pipe_rx2_sris_mode_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pipe_rx3_sris_mode_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pipe_rx0_es0_cmn_refclk_mode_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pipe_rx1_es0_cmn_refclk_mode_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pipe_rx2_es0_cmn_refclk_mode_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pipe_rx3_es0_cmn_refclk_mode_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pipe_rx0_termination_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pipe_rx1_termination_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pipe_rx2_termination_sig;
wire	[0:0]	PCIE_SUB_CON_x4_pipe_rx3_termination_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol0_ext_bs_rx_bigswing_sig;
wire	[4:0]	PCIE_SUB_CON_x4_protocol0_ext_bs_rx_level_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol0_ext_bs_tx_lowswing_sig;
wire	[15:0]	PCIE_SUB_CON_x4_protocol0_ext_mplla_bandwidth_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol0_ext_mplla_div10_clk_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol0_ext_mplla_div16p5_clk_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol0_ext_mplla_div8_clk_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol0_ext_mplla_div_clk_en_sig;
wire	[6:0]	PCIE_SUB_CON_x4_protocol0_ext_mplla_div_multiplier_sig;
wire	[10:0]	PCIE_SUB_CON_x4_protocol0_ext_mplla_fracn_ctrl_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_mplla_multiplier_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol0_ext_mplla_ssc_clk_sel_sig;
wire	[11:0]	PCIE_SUB_CON_x4_protocol0_ext_mplla_ssc_freq_cnt_init_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_mplla_ssc_freq_cnt_peak_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol0_ext_mplla_ssc_up_spread_sig;
wire	[1:0]	PCIE_SUB_CON_x4_protocol0_ext_mplla_tx_clk_div_sig;
wire	[15:0]	PCIE_SUB_CON_x4_protocol0_ext_mpllb_bandwidth_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol0_ext_mpllb_div10_clk_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol0_ext_mpllb_div8_clk_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol0_ext_mpllb_div_clk_en_sig;
wire	[6:0]	PCIE_SUB_CON_x4_protocol0_ext_mpllb_div_multiplier_sig;
wire	[10:0]	PCIE_SUB_CON_x4_protocol0_ext_mpllb_fracn_ctrl_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_mpllb_multiplier_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol0_ext_mpllb_ssc_clk_sel_sig;
wire	[11:0]	PCIE_SUB_CON_x4_protocol0_ext_mpllb_ssc_freq_cnt_init_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_mpllb_ssc_freq_cnt_peak_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol0_ext_mpllb_ssc_up_spread_sig;
wire	[1:0]	PCIE_SUB_CON_x4_protocol0_ext_mpllb_tx_clk_div_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol0_ext_ref_clk_div2_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol0_ext_ref_clk_mplla_div2_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol0_ext_ref_clk_mpllb_div2_en_sig;
wire	[2:0]	PCIE_SUB_CON_x4_protocol0_ext_ref_range_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_mode_g1_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_mode_g2_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_mode_g3_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_mode_g4_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_sel_g1_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_sel_g2_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_sel_g3_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_sel_g4_sig;
wire	[19:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_ppm_max_g1_sig;
wire	[19:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_ppm_max_g2_sig;
wire	[19:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_ppm_max_g3_sig;
wire	[19:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_ppm_max_g4_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_freqband_g1_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_freqband_g2_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_freqband_g3_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_freqband_g4_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_step_ctrl_g1_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_step_ctrl_g2_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_step_ctrl_g3_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_step_ctrl_g4_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_temp_comp_en_g1_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_temp_comp_en_g2_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_temp_comp_en_g3_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_temp_comp_en_g4_sig;
wire	[15:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_delta_iq_g1_sig;
wire	[15:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_delta_iq_g2_sig;
wire	[15:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_delta_iq_g3_sig;
wire	[15:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_delta_iq_g4_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_dfe_bypass_g1_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_dfe_bypass_g2_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_dfe_bypass_g3_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_dfe_bypass_g4_sig;
wire	[11:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_att_lvl_g1_sig;
wire	[11:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_att_lvl_g2_sig;
wire	[11:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_att_lvl_g3_sig;
wire	[11:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_att_lvl_g4_sig;
wire	[19:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_boost_g1_sig;
wire	[19:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_boost_g2_sig;
wire	[19:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_boost_g3_sig;
wire	[19:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_boost_g4_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_pole_g1_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_pole_g2_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_pole_g3_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_pole_g4_sig;
wire	[31:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_dfe_tap1_g1_sig;
wire	[31:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_dfe_tap1_g2_sig;
wire	[31:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_dfe_tap1_g3_sig;
wire	[31:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_dfe_tap1_g4_sig;
wire	[11:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga1_gain_g1_sig;
wire	[11:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga1_gain_g2_sig;
wire	[11:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga1_gain_g3_sig;
wire	[11:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga1_gain_g4_sig;
wire	[11:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga2_gain_g1_sig;
wire	[11:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga2_gain_g2_sig;
wire	[11:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga2_gain_g3_sig;
wire	[11:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga2_gain_g4_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_los_lfps_en_sig;
wire	[10:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_los_pwr_up_cnt_sig;
wire	[11:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_los_threshold_sig;
wire	[31:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_misc_g1_sig;
wire	[31:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_misc_g2_sig;
wire	[31:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_misc_g3_sig;
wire	[31:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_misc_g4_sig;
wire	[6:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_ref_ld_val_g1_sig;
wire	[6:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_ref_ld_val_g2_sig;
wire	[6:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_ref_ld_val_g3_sig;
wire	[6:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_ref_ld_val_g4_sig;
wire	[12:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_vco_ld_val_g1_sig;
wire	[12:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_vco_ld_val_g2_sig;
wire	[12:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_vco_ld_val_g3_sig;
wire	[12:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_vco_ld_val_g4_sig;
wire	[4:0]	PCIE_SUB_CON_x4_protocol0_ext_rx_vref_ctrl_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_sup_misc_g1_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_sup_misc_g2_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_sup_misc_g3_sig;
wire	[7:0]	PCIE_SUB_CON_x4_protocol0_ext_sup_misc_g4_sig;
wire	[23:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_eq_main_g1_sig;
wire	[23:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_eq_main_g2_sig;
wire	[23:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_eq_main_g3_sig;
wire	[23:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_eq_main_g4_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_eq_ovrd_g1_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_eq_ovrd_g2_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_eq_ovrd_g3_sig;
wire	[3:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_eq_ovrd_g4_sig;
wire	[19:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_eq_post_g1_sig;
wire	[19:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_eq_post_g2_sig;
wire	[19:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_eq_post_g3_sig;
wire	[19:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_eq_post_g4_sig;
wire	[19:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_eq_pre_g1_sig;
wire	[19:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_eq_pre_g2_sig;
wire	[19:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_eq_pre_g3_sig;
wire	[19:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_eq_pre_g4_sig;
wire	[15:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_iboost_lvl_sig;
wire	[31:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_misc_g1_sig;
wire	[31:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_misc_g2_sig;
wire	[31:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_misc_g3_sig;
wire	[31:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_misc_g4_sig;
wire	[2:0]	PCIE_SUB_CON_x4_protocol0_ext_tx_vboost_lvl_sig;
wire	[1:0]	PCIE_SUB_CON_x4_protocol_ext_mplla_recal_bank_sel_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol_ext_mplla_recal_bank_sel_ovrd_en_sig;
wire	[1:0]	PCIE_SUB_CON_x4_protocol_ext_mpllb_recal_bank_sel_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol_ext_mpllb_recal_bank_sel_ovrd_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol_ext_rx_misc_ovrd_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_protocol_ext_sup_misc_ovrd_en_sig;
wire	[0:0]	PCIE_SUB_CON_x4_upcs_pwr_stable_sig;


// PHY -> PCIE_SUB_CON_x4
wire	[0:0]	PCIE_PHY_phy0_sram_init_done_sig;
// PCIE_SUB_CON_x4 -> pcie_l12_err_inst_0
wire	[31:0]	PCIE_SUB_CON_x4_pcie_l12err_ctrl_sig;
//------------------------------------------------------------------------
// PCIE_SUB_CON_x4 END
//------------------------------------------------------------------------


//------------------------------------------------------------------------
// pcie_l12_err_inst_0 START
//------------------------------------------------------------------------
// pcie_l12_err_inst_0 -> PCIE_SUB_CON_x4
wire	[0:0]	pcie_l12_err_inst_0_l12err_err_reported_sig;
wire	[0:0]	pcie_l12_err_inst_0_l12err_retry_reported_sig;
wire	[0:0]	pcie_l12_err_inst_0_xiuerr_nclk_off_sig;
wire	[0:0]	pcie_l12_err_inst_0_l12err_nclk_off_sig;
//------------------------------------------------------------------------
// pcie_l12_err_inst_0 END (Done)
//------------------------------------------------------------------------
		



//------------------------------------------------------------------------
// APB2CR START
//------------------------------------------------------------------------
// APB2CR -> SOC
wire	[31:0]	APB2CR_prdata_sig;
wire			APB2CR_pready_sig;
wire			APB2CR_pslverr_sig;
wire			APB2CR_QACTIVE_sig;
wire			APB2CR_QACCEPTn_sig;
wire			APB2CR_QDENY_sig;
// APB2CR -> PCIE_PHY
wire			APB2CR_cr_para_clk_sig;
wire	[15:0]	APB2CR_cr_para_addr_sig;
wire	[15:0]	APB2CR_cr_para_wr_data_sig;
wire			APB2CR_cr_para_wr_en_sig;
wire			APB2CR_cr_para_rd_en_sig;
//------------------------------------------------------------------------
// APB2CR END (Done)
//------------------------------------------------------------------------




//------------------------------------------------------------------------
// PCIE_PHY START
//------------------------------------------------------------------------
// PCIE_PHY -> APB2CR
wire	[0:0]	PCIE_PHY_phy0_cr_para_ack_sig;
wire	[15:0]	PCIE_PHY_phy0_cr_para_rd_data_sig;
// PCIE_PHY -> SOC
wire	[0:0]	PCIE_PHY_phy0_bs_tdo_sig;
wire	[1:0]	PCIE_PHY_phy0_dtb_out_sig;
wire	[0:0]	PCIE_PHY_phy0_jtag_tdo_sig;
wire	[0:0]	PCIE_PHY_phy0_jtag_tdo_en_sig;
wire	[0:0]	PCIE_PHY_phy0_ref_dig_clk_sig;
wire	[150:0]	PCIE_PHY_phy0_scan_cr_out_sig;
wire	[0:0]	PCIE_PHY_phy0_scan_mplla_div16p5_out_sig;
wire	[0:0]	PCIE_PHY_phy0_scan_mplla_div_out_sig;
wire	[0:0]	PCIE_PHY_phy0_scan_mplla_dword_out_sig;
wire	[0:0]	PCIE_PHY_phy0_scan_mplla_fb_out_sig;
wire	[0:0]	PCIE_PHY_phy0_scan_mplla_ref_out_sig;
wire	[2:0]	PCIE_PHY_phy0_scan_mplla_ssc_out_sig;
wire	[0:0]	PCIE_PHY_phy0_scan_mplla_word_out_sig;
wire	[0:0]	PCIE_PHY_phy0_scan_mpllb_div_out_sig;
wire	[0:0]	PCIE_PHY_phy0_scan_mpllb_dword_out_sig;
wire	[0:0]	PCIE_PHY_phy0_scan_mpllb_fb_out_sig;
wire	[0:0]	PCIE_PHY_phy0_scan_mpllb_ref_out_sig;
wire	[2:0]	PCIE_PHY_phy0_scan_mpllb_ssc_out_sig;
wire	[0:0]	PCIE_PHY_phy0_scan_mpllb_word_out_sig;
wire	[0:0]	PCIE_PHY_phy0_scan_phy_ref_dig_out_sig;
wire	[10:0]	PCIE_PHY_phy0_scan_ref_dig_out_sig;
wire	[0:0]	PCIE_PHY_phy0_scan_ref_out_sig;
wire	[22:0]	PCIE_PHY_phy0_scan_ref_range_out_sig;
wire	[0:0]	PCIE_PHY_phy_rx0_flyover_data_m_sig;
wire	[0:0]	PCIE_PHY_phy_rx0_flyover_data_p_sig;
wire	[0:0]	PCIE_PHY_phy_rx1_flyover_data_m_sig;
wire	[0:0]	PCIE_PHY_phy_rx1_flyover_data_p_sig;
wire	[0:0]	PCIE_PHY_phy_rx2_flyover_data_m_sig;
wire	[0:0]	PCIE_PHY_phy_rx2_flyover_data_p_sig;
wire	[0:0]	PCIE_PHY_phy_rx3_flyover_data_m_sig;
wire	[0:0]	PCIE_PHY_phy_rx3_flyover_data_p_sig;
wire	[5:0]	PCIE_PHY_phy_scan_rx0_adpt_out_sig;
wire			PCIE_PHY_phy_scan_rx0_asic_out_sig;
wire			PCIE_PHY_phy_scan_rx0_div16p5_out_sig;
wire	[1:0]	PCIE_PHY_phy_scan_rx0_dpll_out_sig;
wire	[9:0]	PCIE_PHY_phy_scan_rx0_dword_out_sig;
wire			PCIE_PHY_phy_scan_rx0_scope_out_sig;
wire	[8:0]	PCIE_PHY_phy_scan_rx0_stat_out_sig;
wire			PCIE_PHY_phy_scan_rx0_word_out_sig;
wire	[5:0]	PCIE_PHY_phy_scan_rx1_adpt_out_sig;
wire			PCIE_PHY_phy_scan_rx1_asic_out_sig;
wire			PCIE_PHY_phy_scan_rx1_div16p5_out_sig;
wire	[1:0]	PCIE_PHY_phy_scan_rx1_dpll_out_sig;
wire	[9:0]	PCIE_PHY_phy_scan_rx1_dword_out_sig;
wire			PCIE_PHY_phy_scan_rx1_scope_out_sig;
wire	[8:0]	PCIE_PHY_phy_scan_rx1_stat_out_sig;
wire			PCIE_PHY_phy_scan_rx1_word_out_sig;
wire	[5:0]	PCIE_PHY_phy_scan_rx2_adpt_out_sig;
wire			PCIE_PHY_phy_scan_rx2_asic_out_sig;
wire			PCIE_PHY_phy_scan_rx2_div16p5_out_sig;
wire	[1:0]	PCIE_PHY_phy_scan_rx2_dpll_out_sig;
wire	[9:0]	PCIE_PHY_phy_scan_rx2_dword_out_sig;
wire			PCIE_PHY_phy_scan_rx2_scope_out_sig;
wire	[8:0]	PCIE_PHY_phy_scan_rx2_stat_out_sig;
wire			PCIE_PHY_phy_scan_rx2_word_out_sig;
wire	[5:0]	PCIE_PHY_phy_scan_rx3_adpt_out_sig;
wire			PCIE_PHY_phy_scan_rx3_asic_out_sig;
wire			PCIE_PHY_phy_scan_rx3_div16p5_out_sig;
wire	[1:0]	PCIE_PHY_phy_scan_rx3_dpll_out_sig;
wire	[9:0]	PCIE_PHY_phy_scan_rx3_dword_out_sig;
wire			PCIE_PHY_phy_scan_rx3_scope_out_sig;
wire	[8:0]	PCIE_PHY_phy_scan_rx3_stat_out_sig;
wire			PCIE_PHY_phy_scan_rx3_word_out_sig;
wire	[1:0]	PCIE_PHY_phy_scan_tx0_ana_dword_out_sig;
wire			PCIE_PHY_phy_scan_tx0_ana_word_out_sig;
wire	[2:0]	PCIE_PHY_phy_scan_tx0_out_sig;
wire	[1:0]	PCIE_PHY_phy_scan_tx1_ana_dword_out_sig;
wire			PCIE_PHY_phy_scan_tx1_ana_word_out_sig;
wire	[2:0]	PCIE_PHY_phy_scan_tx1_out_sig;
wire	[1:0]	PCIE_PHY_phy_scan_tx2_ana_dword_out_sig;
wire			PCIE_PHY_phy_scan_tx2_ana_word_out_sig;
wire	[2:0]	PCIE_PHY_phy_scan_tx2_out_sig;
wire	[1:0]	PCIE_PHY_phy_scan_tx3_ana_dword_out_sig;
wire			PCIE_PHY_phy_scan_tx3_ana_word_out_sig;
wire	[2:0]	PCIE_PHY_phy_scan_tx3_out_sig;
// PCIE_PHY -> PCIE_PHY
wire	[0:0]	PCIE_PHY_phy_res_req_out_sig;
// PCIE_PHY -> PHY_MEM
wire	[13:0]	PCIE_PHY_phy0_sram_addr_sig;
wire	[0:0]	PCIE_PHY_phy0_sram_clk_sig;
wire	[0:0]	PCIE_PHY_phy0_sram_rd_en_sig;
wire	[0:0]	PCIE_PHY_phy0_sram_wr_en_sig;
wire	[15:0]	PCIE_PHY_phy0_sram_wr_data_sig;
// PHY_MEM -> PHY
wire	[15:0]	PHY_MEM_phy0_sram_rd_data_sig;
// PCIE_PHY -> PCIE_SUB_CON_x4
//------------------------------------------------------------------------
// PCIE_PHY END
//------------------------------------------------------------------------




x2_TOP	u_x2_TOP (
 .PCIE_SUB_CON_x2_phy_refclk_in					(PCIE_SUB_CON_x2_phy_refclk_in)
,.PCIE_SUB_CON_x2_power_up_rst_n				(PCIE_SUB_CON_x2_power_up_rst_n)
,.PCIE_SUB_CON_x2_button_rst_n					(PCIE_SUB_CON_x2_button_rst_n)
,.PCIE_SUB_CON_x2_TEST_AUXCLK					(PCIE_SUB_CON_x2_TEST_AUXCLK)
,.PCIE_SUB_CON_x2_TEST_MODE					(PCIE_SUB_CON_x2_TEST_MODE)
,.PCIE_SUB_CON_x2_i_driver_apb_clk				(PCIE_SUB_CON_x2_i_driver_apb_clk)
,.PCIE_SUB_CON_x2_i_driver_apb_rstn				(PCIE_SUB_CON_x2_i_driver_apb_rstn)
,.PCIE_SUB_CON_x2_i_driver_apb_paddr				(PCIE_SUB_CON_x2_i_driver_apb_paddr)
,.PCIE_SUB_CON_x2_i_driver_apb_psel				(PCIE_SUB_CON_x2_i_driver_apb_psel)
,.PCIE_SUB_CON_x2_i_driver_apb_penable				(PCIE_SUB_CON_x2_i_driver_apb_penable)
,.PCIE_SUB_CON_x2_i_driver_apb_pwrite				(PCIE_SUB_CON_x2_i_driver_apb_pwrite)
,.PCIE_SUB_CON_x2_i_driver_apb_pwdata				(PCIE_SUB_CON_x2_i_driver_apb_pwdata)
,.PCIE_SUB_CON_x2_o_driver_apb_prdata				(PCIE_SUB_CON_x2_o_driver_apb_prdata_sig)
,.PCIE_SUB_CON_x2_o_driver_apb_pready				(PCIE_SUB_CON_x2_o_driver_apb_pready_sig)
,.PCIE_SUB_CON_x2_o_driver_apb_pslverr				(PCIE_SUB_CON_x2_o_driver_apb_pslverr_sig)
,.PCIE_SUB_CON_x2_QACTIVE_mstr_aclk_slv_aclk			(PCIE_SUB_CON_x2_QACTIVE_mstr_aclk_slv_aclk_sig)
,.PCIE_SUB_CON_x2_QREQn_mstr_aclk_slv_aclk			(PCIE_SUB_CON_x2_QREQn_mstr_aclk_slv_aclk)
,.PCIE_SUB_CON_x2_QACCEPTn_mstr_aclk_slv_aclk			(PCIE_SUB_CON_x2_QACCEPTn_mstr_aclk_slv_aclk_sig)
,.PCIE_SUB_CON_x2_QDENY_mstr_aclk_slv_aclk			(PCIE_SUB_CON_x2_QDENY_mstr_aclk_slv_aclk_sig)
,.PCIE_SUB_CON_x2_QACTIVE_dbi_aclk				(PCIE_SUB_CON_x2_QACTIVE_dbi_aclk_sig)
,.PCIE_SUB_CON_x2_QREQn_dbi_aclk				(PCIE_SUB_CON_x2_QREQn_dbi_aclk)
,.PCIE_SUB_CON_x2_QACCEPTn_dbi_aclk				(PCIE_SUB_CON_x2_QACCEPTn_dbi_aclk_sig)
,.PCIE_SUB_CON_x2_QDENY_dbi_aclk				(PCIE_SUB_CON_x2_QDENY_dbi_aclk_sig)
,.PCIE_SUB_CON_x2_QACTIVE_apb_aclk				(PCIE_SUB_CON_x2_QACTIVE_apb_aclk_sig)
,.PCIE_SUB_CON_x2_QREQn_apb_aclk				(PCIE_SUB_CON_x2_QREQn_apb_aclk)
,.PCIE_SUB_CON_x2_QACCEPTn_apb_aclk				(PCIE_SUB_CON_x2_QACCEPTn_apb_aclk_sig)
,.PCIE_SUB_CON_x2_QDENY_apb_aclk				(PCIE_SUB_CON_x2_QDENY_apb_aclk_sig)
,.PCIE_SUB_CON_x2_slv_awvalid					(PCIE_SUB_CON_x2_slv_awvalid)
,.PCIE_SUB_CON_x2_slv_wvalid					(PCIE_SUB_CON_x2_slv_wvalid)
,.PCIE_SUB_CON_x2_slv_bready					(PCIE_SUB_CON_x2_slv_bready)
,.PCIE_SUB_CON_x2_slv_arvalid					(PCIE_SUB_CON_x2_slv_arvalid)
,.PCIE_SUB_CON_x2_slv_rready					(PCIE_SUB_CON_x2_slv_rready)
,.PCIE_SUB_CON_x2_slv_wlast					(PCIE_SUB_CON_x2_slv_wlast)
,.PCIE_SUB_CON_x2_slv_awready					(PCIE_SUB_CON_x2_slv_awready_sig)
,.PCIE_SUB_CON_x2_slv_wready					(PCIE_SUB_CON_x2_slv_wready_sig)
,.PCIE_SUB_CON_x2_slv_bvalid					(PCIE_SUB_CON_x2_slv_bvalid_sig)
,.PCIE_SUB_CON_x2_slv_arready					(PCIE_SUB_CON_x2_slv_arready_sig)
,.PCIE_SUB_CON_x2_slv_rvalid					(PCIE_SUB_CON_x2_slv_rvalid_sig)
,.PCIE_SUB_CON_x2_slv_rlast					(PCIE_SUB_CON_x2_slv_rlast_sig)
,.PCIE_SUB_CON_x2_dbi_awvalid					(PCIE_SUB_CON_x2_dbi_awvalid)
,.PCIE_SUB_CON_x2_dbi_wvalid					(PCIE_SUB_CON_x2_dbi_wvalid)
,.PCIE_SUB_CON_x2_dbi_bready					(PCIE_SUB_CON_x2_dbi_bready)
,.PCIE_SUB_CON_x2_dbi_arvalid					(PCIE_SUB_CON_x2_dbi_arvalid)
,.PCIE_SUB_CON_x2_dbi_rready					(PCIE_SUB_CON_x2_dbi_rready)
,.PCIE_SUB_CON_x2_dbi_wlast					(PCIE_SUB_CON_x2_dbi_wlast)
,.PCIE_SUB_CON_x2_dbi_awready					(PCIE_SUB_CON_x2_dbi_awready_sig)
,.PCIE_SUB_CON_x2_dbi_wready					(PCIE_SUB_CON_x2_dbi_wready_sig)
,.PCIE_SUB_CON_x2_dbi_bvalid					(PCIE_SUB_CON_x2_dbi_bvalid_sig)
,.PCIE_SUB_CON_x2_dbi_arready					(PCIE_SUB_CON_x2_dbi_arready_sig)
,.PCIE_SUB_CON_x2_dbi_rvalid					(PCIE_SUB_CON_x2_dbi_rvalid_sig)
,.PCIE_SUB_CON_x2_dbi_rlast					(PCIE_SUB_CON_x2_dbi_rlast_sig)
,.PCIE_SUB_CON_x2_mstr_arready					(PCIE_SUB_CON_x2_mstr_arready)
,.PCIE_SUB_CON_x2_mstr_awready					(PCIE_SUB_CON_x2_mstr_awready)
,.PCIE_SUB_CON_x2_mstr_wready					(PCIE_SUB_CON_x2_mstr_wready)
,.PCIE_SUB_CON_x2_mstr_arvalid					(PCIE_SUB_CON_x2_mstr_arvalid_sig)
,.PCIE_SUB_CON_x2_mstr_awvalid					(PCIE_SUB_CON_x2_mstr_awvalid_sig)
,.PCIE_SUB_CON_x2_mstr_wvalid					(PCIE_SUB_CON_x2_mstr_wvalid_sig)
,.PCIE_SUB_CON_x2_mstr_aclk_soc					(PCIE_SUB_CON_x2_mstr_aclk_soc)
,.PCIE_SUB_CON_x2_slv_aclk_soc					(PCIE_SUB_CON_x2_slv_aclk_soc)
,.PCIE_SUB_CON_x2_dbi_aclk_soc					(PCIE_SUB_CON_x2_dbi_aclk_soc)
,.PCIE_SUB_CON_x2_aux_clk_soc					(PCIE_SUB_CON_x2_aux_clk_soc)
,.PCIE_SUB_CON_x2_pcie_irq					(PCIE_SUB_CON_x2_pcie_irq_sig)
,.PCIE_SUB_CON_x2_perst_n					(PCIE_SUB_CON_x2_perst_n)
,.PCIE_SUB_CON_x2_vendor_register_0				(/*no connect*/)
,.PCIE_SUB_CON_x2_vendor_register_1				(/*no connect*/)
,.PCIE_SUB_CON_x2_vendor_register_10				(/*no connect*/)
,.PCIE_SUB_CON_x2_vendor_register_11				(/*no connect*/)
,.PCIE_SUB_CON_x2_vendor_register_12				(/*no connect*/)
,.PCIE_SUB_CON_x2_vendor_register_13				(/*no connect*/)
,.PCIE_SUB_CON_x2_vendor_register_14				(/*no connect*/)
,.PCIE_SUB_CON_x2_vendor_register_15				(/*no connect*/)
,.PCIE_SUB_CON_x2_vendor_register_2				(/*no connect*/)
,.PCIE_SUB_CON_x2_vendor_register_3				(/*no connect*/)
,.PCIE_SUB_CON_x2_vendor_register_4				(/*no connect*/)
,.PCIE_SUB_CON_x2_vendor_register_5				(/*no connect*/)
,.PCIE_SUB_CON_x2_vendor_register_6				(/*no connect*/)
,.PCIE_SUB_CON_x2_vendor_register_7				(/*no connect*/)
,.PCIE_SUB_CON_x2_vendor_register_8				(/*no connect*/)
,.PCIE_SUB_CON_x2_vendor_register_9				(/*no connect*/)
,.DWC_pcie_ctrl_x2_mstr_araddr					(DWC_pcie_ctrl_x2_mstr_araddr_sig)
,.DWC_pcie_ctrl_x2_mstr_arburst					(DWC_pcie_ctrl_x2_mstr_arburst_sig)
,.DWC_pcie_ctrl_x2_mstr_arcache					(DWC_pcie_ctrl_x2_mstr_arcache_sig)
,.DWC_pcie_ctrl_x2_mstr_arid					(DWC_pcie_ctrl_x2_mstr_arid_sig)
,.DWC_pcie_ctrl_x2_mstr_arlen					(DWC_pcie_ctrl_x2_mstr_arlen_sig)
,.DWC_pcie_ctrl_x2_mstr_arlock					(DWC_pcie_ctrl_x2_mstr_arlock_sig)
,.DWC_pcie_ctrl_x2_mstr_arprot					(DWC_pcie_ctrl_x2_mstr_arprot_sig)
,.DWC_pcie_ctrl_x2_mstr_arqos					(DWC_pcie_ctrl_x2_mstr_arqos_sig)
,.DWC_pcie_ctrl_x2_mstr_arsize					(DWC_pcie_ctrl_x2_mstr_arsize_sig)
,.DWC_pcie_ctrl_x2_mstr_awaddr					(DWC_pcie_ctrl_x2_mstr_awaddr_sig)
,.DWC_pcie_ctrl_x2_mstr_awburst					(DWC_pcie_ctrl_x2_mstr_awburst_sig)
,.DWC_pcie_ctrl_x2_mstr_awcache					(DWC_pcie_ctrl_x2_mstr_awcache_sig)
,.DWC_pcie_ctrl_x2_mstr_awid					(DWC_pcie_ctrl_x2_mstr_awid_sig)
,.DWC_pcie_ctrl_x2_mstr_awlen					(DWC_pcie_ctrl_x2_mstr_awlen_sig)
,.DWC_pcie_ctrl_x2_mstr_awlock					(DWC_pcie_ctrl_x2_mstr_awlock_sig)
,.DWC_pcie_ctrl_x2_mstr_awprot					(DWC_pcie_ctrl_x2_mstr_awprot_sig)
,.DWC_pcie_ctrl_x2_mstr_awqos					(DWC_pcie_ctrl_x2_mstr_awqos_sig)
,.DWC_pcie_ctrl_x2_mstr_awsize					(DWC_pcie_ctrl_x2_mstr_awsize_sig)
,.DWC_pcie_ctrl_x2_mstr_wdata					(DWC_pcie_ctrl_x2_mstr_wdata_sig)
,.DWC_pcie_ctrl_x2_mstr_wlast					(DWC_pcie_ctrl_x2_mstr_wlast_sig)
,.DWC_pcie_ctrl_x2_mstr_wstrb					(DWC_pcie_ctrl_x2_mstr_wstrb_sig)
,.DWC_pcie_ctrl_x2_mstr_bid					(DWC_pcie_ctrl_x2_mstr_bid)
,.DWC_pcie_ctrl_x2_mstr_bresp					(DWC_pcie_ctrl_x2_mstr_bresp)
,.DWC_pcie_ctrl_x2_mstr_bvalid					(DWC_pcie_ctrl_x2_mstr_bvalid)
,.DWC_pcie_ctrl_x2_mstr_bready					(DWC_pcie_ctrl_x2_mstr_bready_sig)
,.DWC_pcie_ctrl_x2_mstr_rid					(DWC_pcie_ctrl_x2_mstr_rid)
,.DWC_pcie_ctrl_x2_mstr_rdata					(DWC_pcie_ctrl_x2_mstr_rdata)
,.DWC_pcie_ctrl_x2_mstr_rlast					(DWC_pcie_ctrl_x2_mstr_rlast)
,.DWC_pcie_ctrl_x2_mstr_rresp					(DWC_pcie_ctrl_x2_mstr_rresp)
,.DWC_pcie_ctrl_x2_mstr_rvalid					(DWC_pcie_ctrl_x2_mstr_rvalid)
,.DWC_pcie_ctrl_x2_mstr_rready					(DWC_pcie_ctrl_x2_mstr_rready_sig)
,.DWC_pcie_ctrl_x2_mstr_csysreq					(DWC_pcie_ctrl_x2_mstr_csysreq)
,.DWC_pcie_ctrl_x2_mstr_cactive					(DWC_pcie_ctrl_x2_mstr_cactive_sig)
,.DWC_pcie_ctrl_x2_mstr_csysack					(DWC_pcie_ctrl_x2_mstr_csysack_sig)
,.DWC_pcie_ctrl_x2_clkreq_in_n					(1'b0)
,.DWC_pcie_ctrl_x2_slv_araddr					(DWC_pcie_ctrl_x2_slv_araddr)
,.DWC_pcie_ctrl_x2_slv_arburst					(DWC_pcie_ctrl_x2_slv_arburst)
,.DWC_pcie_ctrl_x2_slv_arcache					(DWC_pcie_ctrl_x2_slv_arcache)
,.DWC_pcie_ctrl_x2_slv_arid					(DWC_pcie_ctrl_x2_slv_arid)
,.DWC_pcie_ctrl_x2_slv_arlen					(DWC_pcie_ctrl_x2_slv_arlen)
,.DWC_pcie_ctrl_x2_slv_arlock					(DWC_pcie_ctrl_x2_slv_arlock)
,.DWC_pcie_ctrl_x2_slv_arprot					(DWC_pcie_ctrl_x2_slv_arprot)
,.DWC_pcie_ctrl_x2_slv_arqos					(DWC_pcie_ctrl_x2_slv_arqos)
,.DWC_pcie_ctrl_x2_slv_arsize					(DWC_pcie_ctrl_x2_slv_arsize)
,.DWC_pcie_ctrl_x2_slv_awaddr					(DWC_pcie_ctrl_x2_slv_awaddr)
,.DWC_pcie_ctrl_x2_slv_awburst					(DWC_pcie_ctrl_x2_slv_awburst)
,.DWC_pcie_ctrl_x2_slv_awcache					(DWC_pcie_ctrl_x2_slv_awcache)
,.DWC_pcie_ctrl_x2_slv_awid					(DWC_pcie_ctrl_x2_slv_awid)
,.DWC_pcie_ctrl_x2_slv_awlen					(DWC_pcie_ctrl_x2_slv_awlen)
,.DWC_pcie_ctrl_x2_slv_awlock					(DWC_pcie_ctrl_x2_slv_awlock)
,.DWC_pcie_ctrl_x2_slv_awprot					(DWC_pcie_ctrl_x2_slv_awprot)
,.DWC_pcie_ctrl_x2_slv_awqos					(DWC_pcie_ctrl_x2_slv_awqos)
,.DWC_pcie_ctrl_x2_slv_awsize					(DWC_pcie_ctrl_x2_slv_awsize)
,.DWC_pcie_ctrl_x2_slv_wdata					(DWC_pcie_ctrl_x2_slv_wdata)
,.DWC_pcie_ctrl_x2_slv_wstrb					(DWC_pcie_ctrl_x2_slv_wstrb)
,.DWC_pcie_ctrl_x2_slv_bid					(DWC_pcie_ctrl_x2_slv_bid_sig)
,.DWC_pcie_ctrl_x2_slv_bresp					(DWC_pcie_ctrl_x2_slv_bresp_sig)
,.DWC_pcie_ctrl_x2_slv_rdata					(DWC_pcie_ctrl_x2_slv_rdata_sig)
,.DWC_pcie_ctrl_x2_slv_rid					(DWC_pcie_ctrl_x2_slv_rid_sig)
,.DWC_pcie_ctrl_x2_slv_rresp					(DWC_pcie_ctrl_x2_slv_rresp_sig)
,.DWC_pcie_ctrl_x2_slv_csysreq					(DWC_pcie_ctrl_x2_slv_csysreq)
,.DWC_pcie_ctrl_x2_slv_cactive					(DWC_pcie_ctrl_x2_slv_cactive_sig)
,.DWC_pcie_ctrl_x2_slv_csysack					(DWC_pcie_ctrl_x2_slv_csysack_sig)
,.DWC_pcie_ctrl_x2_dbi_araddr					(DWC_pcie_ctrl_x2_dbi_araddr)
,.DWC_pcie_ctrl_x2_dbi_arburst					(DWC_pcie_ctrl_x2_dbi_arburst)
,.DWC_pcie_ctrl_x2_dbi_arcache					(DWC_pcie_ctrl_x2_dbi_arcache)
,.DWC_pcie_ctrl_x2_dbi_arid						(DWC_pcie_ctrl_x2_dbi_arid)
,.DWC_pcie_ctrl_x2_dbi_arlen					(DWC_pcie_ctrl_x2_dbi_arlen)
,.DWC_pcie_ctrl_x2_dbi_arlock					(DWC_pcie_ctrl_x2_dbi_arlock)
,.DWC_pcie_ctrl_x2_dbi_arprot					(DWC_pcie_ctrl_x2_dbi_arprot)
,.DWC_pcie_ctrl_x2_dbi_arqos					(DWC_pcie_ctrl_x2_dbi_arqos)
,.DWC_pcie_ctrl_x2_dbi_arsize					(DWC_pcie_ctrl_x2_dbi_arsize)
,.DWC_pcie_ctrl_x2_dbi_awaddr					(DWC_pcie_ctrl_x2_dbi_awaddr)
,.DWC_pcie_ctrl_x2_dbi_awburst					(DWC_pcie_ctrl_x2_dbi_awburst)
,.DWC_pcie_ctrl_x2_dbi_awcache					(DWC_pcie_ctrl_x2_dbi_awcache)
,.DWC_pcie_ctrl_x2_dbi_awid					(DWC_pcie_ctrl_x2_dbi_awid)
,.DWC_pcie_ctrl_x2_dbi_awlen					(DWC_pcie_ctrl_x2_dbi_awlen)
,.DWC_pcie_ctrl_x2_dbi_awlock					(DWC_pcie_ctrl_x2_dbi_awlock)
,.DWC_pcie_ctrl_x2_dbi_awprot					(DWC_pcie_ctrl_x2_dbi_awprot)
,.DWC_pcie_ctrl_x2_dbi_awqos					(DWC_pcie_ctrl_x2_dbi_awqos)
,.DWC_pcie_ctrl_x2_dbi_awsize					(DWC_pcie_ctrl_x2_dbi_awsize)
,.DWC_pcie_ctrl_x2_dbi_wdata					(DWC_pcie_ctrl_x2_dbi_wdata)
,.DWC_pcie_ctrl_x2_dbi_wstrb					(DWC_pcie_ctrl_x2_dbi_wstrb)
,.DWC_pcie_ctrl_x2_dbi_bid					(DWC_pcie_ctrl_x2_dbi_bid_sig)
,.DWC_pcie_ctrl_x2_dbi_bresp					(DWC_pcie_ctrl_x2_dbi_bresp_sig)
,.DWC_pcie_ctrl_x2_dbi_rdata					(DWC_pcie_ctrl_x2_dbi_rdata_sig)
,.DWC_pcie_ctrl_x2_dbi_rid					(DWC_pcie_ctrl_x2_dbi_rid_sig)
,.DWC_pcie_ctrl_x2_dbi_rresp					(DWC_pcie_ctrl_x2_dbi_rresp_sig)
,.DWC_pcie_ctrl_x2_dbi_csysreq					(DWC_pcie_ctrl_x2_dbi_csysreq)
,.DWC_pcie_ctrl_x2_dbi_cactive					(DWC_pcie_ctrl_x2_dbi_cactive_sig)
,.DWC_pcie_ctrl_x2_dbi_csysack					(DWC_pcie_ctrl_x2_dbi_csysack_sig)
,.PCIE_SUB_CON_x2_phy_rst_n					(PCIE_SUB_CON_x2_phy_rst_n_sig)			
,.PCIE_SUB_CON_x2_phy_mac_dirfeedback				({12'b0
													,PCIE_PHY_pipe_rx3_eq_dir_change_sig
													,PCIE_PHY_pipe_rx2_eq_dir_change_sig})		
,.PCIE_SUB_CON_x2_phy_mac_phystatus					({2'b0
													,PIPE_MUX_X2_phy_mac_phystatus_sig})		
,.PCIE_SUB_CON_x2_phy_mac_rxelecidle_in				({2'b0
													,PIPE_MUX_X2_phy_mac_rxelecidle_sig})		
,.PCIE_SUB_CON_x2_phy_mac_fomfeedback				({16'b0
													,PCIE_PHY_pipe_rx3_eq_fig_merit_sig
													,PCIE_PHY_pipe_rx2_eq_fig_merit_sig})		
,.DWC_pcie_ctrl_x2_pclk_rate					(/*no connect*/)
,.DWC_pcie_ctrl_x2_phystatus					(PIPE_MUX_X2_phy_mac_phystatus_sig)		
,.DWC_pcie_ctrl_x2_txelecidle					(DWC_pcie_ctrl_x2_mac_phy_txelecidle_sig)	
,.DWC_pcie_ctrl_x2_txcompliance					(DWC_pcie_ctrl_x2_mac_phy_txcompliance_sig)	
,.DWC_pcie_ctrl_x2_rate						(DWC_pcie_ctrl_x2_mac_phy_rate_sig)		
,.DWC_pcie_ctrl_x2_invalidrequest				(DWC_pcie_ctrl_x2_mac_phy_invalid_req_sig)
,.DWC_pcie_ctrl_x2_rxeqeval					(DWC_pcie_ctrl_x2_mac_phy_rxeqeval_sig)
,.DWC_pcie_ctrl_x2_rxeqinprogress				(DWC_pcie_ctrl_x2_mac_phy_rxeqinprogress_sig)
,.DWC_pcie_ctrl_x2_txdata					(DWC_pcie_ctrl_x2_mac_phy_txdata_sig)
,.DWC_pcie_ctrl_x2_txdatak					(DWC_pcie_ctrl_x2_mac_phy_txdatak_sig)
,.DWC_pcie_ctrl_x2_txdatavalid					(DWC_pcie_ctrl_x2_mac_phy_txdatavalid_sig)
,.DWC_pcie_ctrl_x2_txstartblock					(DWC_pcie_ctrl_x2_mac_phy_txstartblock_sig)
,.DWC_pcie_ctrl_x2_rxdata					(PIPE_MUX_X2_phy_mac_rxdata_sig)
,.DWC_pcie_ctrl_x2_rxdatak					(PIPE_MUX_X2_phy_mac_rxdatak_sig)
,.DWC_pcie_ctrl_x2_rxdatavalid					(PIPE_MUX_X2_phy_mac_rxdatavalid_sig)
,.DWC_pcie_ctrl_x2_rxstartblock					(PIPE_MUX_X2_phy_mac_rxstartblock_sig)
,.DWC_pcie_ctrl_x2_elasticbuffermode				(DWC_pcie_ctrl_x2_mac_phy_elasticbuffermode_sig)
,.DWC_pcie_ctrl_x2_txdetectrx_loopback				(DWC_pcie_ctrl_x2_mac_phy_txdetectrx_loopback_sig)
,.DWC_pcie_ctrl_x2_rxpolarity					(DWC_pcie_ctrl_x2_mac_phy_rxpolarity_sig)
,.DWC_pcie_ctrl_x2_powerdown					(DWC_pcie_ctrl_x2_mac_phy_powerdown_sig)
,.DWC_pcie_ctrl_x2_rxeidetectdisable				(DWC_pcie_ctrl_x2_mac_phy_rxelecidle_disable_sig)
,.DWC_pcie_ctrl_x2_txcommonmodedisable				(DWC_pcie_ctrl_x2_mac_phy_txcommonmode_disable_sig)
,.DWC_pcie_ctrl_x2_width					(DWC_pcie_ctrl_x2_mac_phy_width_sig)
,.DWC_pcie_ctrl_x2_localtxpresetcoefficients			(PIPE_MUX_X2_phy_mac_local_tx_pset_coef_sig)
,.DWC_pcie_ctrl_x2_txdeemph					(DWC_pcie_ctrl_x2_mac_phy_txdeemph_sig)
,.DWC_pcie_ctrl_x2_localfs					(PIPE_MUX_X2_phy_mac_localfs_sig)
,.DWC_pcie_ctrl_x2_locallf					(PIPE_MUX_X2_phy_mac_locallf_sig)
,.DWC_pcie_ctrl_x2_localpresetindex				(DWC_pcie_ctrl_x2_mac_phy_local_pset_index_sig)
,.DWC_pcie_ctrl_x2_getlocalpresetcoefficients			(DWC_pcie_ctrl_x2_mac_phy_getlocal_pset_coef_sig)
,.DWC_pcie_ctrl_x2_localtxcoefficientsvalid			(PIPE_MUX_X2_phy_mac_local_tx_coef_valid_sig)
,.DWC_pcie_ctrl_x2_linkevalfeedbackfigmerit			(PIPE_MUX_X2_phy_mac_fomfeedback_sig)		
,.DWC_pcie_ctrl_x2_linkevalfeedbackdirchange			(PIPE_MUX_X2_phy_mac_dirfeedback_sig)		
,.DWC_pcie_ctrl_x2_txmargin					(DWC_pcie_ctrl_x2_mac_phy_txmargin_sig)
,.DWC_pcie_ctrl_x2_txswing					(DWC_pcie_ctrl_x2_mac_phy_txswing_sig)
,.DWC_pcie_ctrl_x2_txsyncheader					(DWC_pcie_ctrl_x2_mac_phy_txsyncheader_sig)
,.DWC_pcie_ctrl_x2_rxsyncheader					(PIPE_MUX_X2_phy_mac_rxsyncheader_sig)
,.DWC_pcie_ctrl_x2_blockaligncontrol				(DWC_pcie_ctrl_x2_mac_phy_blockaligncontrol_sig)
,.DWC_pcie_ctrl_x2_rxstandby					(DWC_pcie_ctrl_x2_mac_phy_rxstandby_sig)
,.DWC_pcie_ctrl_x2_rxstandbystatus				(PIPE_MUX_X2_phy_mac_rxstandbystatus_sig)
,.DWC_pcie_ctrl_x2_encodedecodebypass				(DWC_pcie_ctrl_x2_mac_phy_encodedecodebypass_sig)
,.DWC_pcie_ctrl_x2_rxvalid					(PIPE_MUX_X2_phy_mac_rxvalid_sig)
,.DWC_pcie_ctrl_x2_rxelecidle					(2'b0)
,.DWC_pcie_ctrl_x2_rxstatus					(PIPE_MUX_X2_phy_mac_rxstatus_sig)
,.DWC_pcie_ctrl_x2_m2p_messagebus				(DWC_pcie_ctrl_x2_mac_phy_messagebus_sig)
,.DWC_pcie_ctrl_x2_p2m_messagebus				(PIPE_MUX_X2_phy_mac_messagebus_sig)
,.PCIE_SUB_CON_x2_pclk						(PCIE_PHY_pipe_lane2_pclk_sig)			// from phy.pipe_lane2_pclk
,.PCIE_SUB_CON_x2_phy_clk_req_n_ovrd				(PCIE_PHY_pipe_lane2_ref_clk_req_n_sig)		// from phy.pipe_lane2_phy_clk_req_n
);

x4_DWC_pcie_ctl DWC_pcie_ctl_x4 (
	 .mstr_aclk                    					(PCIE_SUB_CON_x4_mstr_aclk_sig)
	,.mstr_aresetn                 					(PCIE_SUB_CON_x4_mstr_aresetn_sig)
	,.mstr_aclk_ug                 					(PCIE_SUB_CON_x4_mstr_aclk_soc)
	,.mstr_aclk_active             					(DWC_pcie_ctrl_x4_mstr_aclk_active_sig)
	,.mstr_araddr                    				(DWC_pcie_ctrl_x4_mstr_araddr_sig)
	,.mstr_arburst                   				(DWC_pcie_ctrl_x4_mstr_arburst_sig)
	,.mstr_arcache                   				(DWC_pcie_ctrl_x4_mstr_arcache_sig)
	,.mstr_arid                      				(DWC_pcie_ctrl_x4_mstr_arid_sig)
	,.mstr_arlen                     				(DWC_pcie_ctrl_x4_mstr_arlen_sig)
	,.mstr_arlock                    				(DWC_pcie_ctrl_x4_mstr_arlock_sig)
	,.mstr_armisc_info               				(DWC_pcie_ctrl_x4_mstr_armisc_info_sig)
	,.mstr_armisc_info_dma           				(DWC_pcie_ctrl_x4_mstr_armisc_info_dma_sig)
	,.mstr_armisc_info_zeroread      				(DWC_pcie_ctrl_x4_mstr_armisc_info_zeroread_sig)
	,.mstr_armisc_info_last_dcmp_tlp 				(DWC_pcie_ctrl_x4_mstr_armisc_info_last_dcmp_tlp_sig)
	,.mstr_arprot                    				(DWC_pcie_ctrl_x4_mstr_arprot_sig)
	,.mstr_arqos                     				(DWC_pcie_ctrl_x4_mstr_arqos_sig)
	,.mstr_arsize                    				(DWC_pcie_ctrl_x4_mstr_arsize_sig)
	,.mstr_arvalid                   				(PCIE_SUB_CON_x4_ip_mstr_arvalid_sig)
	,.mstr_arready                   				(PCIE_SUB_CON_x4_ip_mstr_arready_sig)
	,.mstr_awaddr                    				(DWC_pcie_ctrl_x4_mstr_awaddr_sig)
	,.mstr_awburst                   				(DWC_pcie_ctrl_x4_mstr_awburst_sig)
	,.mstr_awcache                   				(DWC_pcie_ctrl_x4_mstr_awcache_sig)
	,.mstr_awid                      				(DWC_pcie_ctrl_x4_mstr_awid_sig)
	,.mstr_awlen                     				(DWC_pcie_ctrl_x4_mstr_awlen_sig)
	,.mstr_awlock                    				(DWC_pcie_ctrl_x4_mstr_awlock_sig)
	,.mstr_awmisc_info               				(DWC_pcie_ctrl_x4_mstr_awmisc_info_sig)
	,.mstr_awmisc_info_dma           				(DWC_pcie_ctrl_x4_mstr_awmisc_info_dma_sig)
	,.mstr_awmisc_info_ep            				(DWC_pcie_ctrl_x4_mstr_awmisc_info_ep_sig)
	,.mstr_awmisc_info_hdr_34dw      				(DWC_pcie_ctrl_x4_mstr_awmisc_info_hdr_34dw_sig)
	,.mstr_awmisc_info_last_dcmp_tlp 				(DWC_pcie_ctrl_x4_mstr_awmisc_info_last_dcmp_tlp_sig)
	,.mstr_awprot                    				(DWC_pcie_ctrl_x4_mstr_awprot_sig)
	,.mstr_awqos                     				(DWC_pcie_ctrl_x4_mstr_awqos_sig)
	,.mstr_awsize                    				(DWC_pcie_ctrl_x4_mstr_awsize_sig)
	,.mstr_awvalid                   				(PCIE_SUB_CON_x4_ip_mstr_awvalid_sig)
	,.mstr_awready                   				(PCIE_SUB_CON_x4_ip_mstr_awready_sig)
	,.mstr_wdata                     				(DWC_pcie_ctrl_x4_mstr_wdata_sig)
	,.mstr_wlast                     				(DWC_pcie_ctrl_x4_mstr_wlast_sig)
	,.mstr_wstrb                     				(DWC_pcie_ctrl_x4_mstr_wstrb_sig)
	,.mstr_wvalid                    				(PCIE_SUB_CON_x4_ip_mstr_wvalid_sig)
	,.mstr_wready                    				(PCIE_SUB_CON_x4_ip_mstr_wready_sig)
	,.mstr_bid                       				(DWC_pcie_ctrl_x4_mstr_bid)
	,.mstr_bmisc_info_cpl_stat       				(PCIE_SUB_CON_x4_mstr_bmisc_info_cpl_stat_sig)
	,.mstr_bresp                     				(DWC_pcie_ctrl_x4_mstr_bresp)
	,.mstr_bvalid                    				(DWC_pcie_ctrl_x4_mstr_bvalid)
	,.mstr_bready                    				(DWC_pcie_ctrl_x4_mstr_bready_sig)
	,.mstr_rid                       				(DWC_pcie_ctrl_x4_mstr_rid)
	,.mstr_rdata                     				(DWC_pcie_ctrl_x4_mstr_rdata)
	,.mstr_rlast                     				(DWC_pcie_ctrl_x4_mstr_rlast)
	,.mstr_rmisc_info                				(PCIE_SUB_CON_x4_mstr_rmisc_info_sig)
	,.mstr_rmisc_info_cpl_stat       				(PCIE_SUB_CON_x4_mstr_rmisc_info_cpl_stat_sig)
	,.mstr_rresp                     				(DWC_pcie_ctrl_x4_mstr_rresp)
	,.mstr_rvalid                    				(DWC_pcie_ctrl_x4_mstr_rvalid)
	,.mstr_rready                    				(DWC_pcie_ctrl_x4_mstr_rready_sig)
	,.mstr_csysreq                   				(DWC_pcie_ctrl_x4_mstr_csysreq)
	,.mstr_cactive                   				(DWC_pcie_ctrl_x4_mstr_cactive_sig)
	,.mstr_csysack                   				(DWC_pcie_ctrl_x4_mstr_csysack_sig)
	,.slv_aclk                     					(PCIE_SUB_CON_x4_slv_aclk_sig)
	,.slv_aresetn                  					(PCIE_SUB_CON_x4_slv_aresetn_sig)
	,.slv_aclk_ug                  					(PCIE_SUB_CON_x4_slv_aclk_soc)
	,.slv_aclk_active              					(DWC_pcie_ctrl_x4_slv_aclk_active_sig)
	,.slv_araddr                     				(DWC_pcie_ctrl_x4_slv_araddr)
	,.slv_arburst                    				(DWC_pcie_ctrl_x4_slv_arburst)
	,.slv_arcache                    				(DWC_pcie_ctrl_x4_slv_arcache)
	,.slv_arid                       				(DWC_pcie_ctrl_x4_slv_arid)
	,.slv_arlen                      				(DWC_pcie_ctrl_x4_slv_arlen)
	,.slv_arlock                     				(DWC_pcie_ctrl_x4_slv_arlock)
	,.slv_armisc_info                				(PCIE_SUB_CON_x4_slv_armisc_info_sig)
	,.slv_armisc_info_atu_bypass    				(PCIE_SUB_CON_x4_slv_armisc_info_atu_bypass_sig)
	,.slv_arprot                     				(DWC_pcie_ctrl_x4_slv_arprot)
	,.slv_arqos                      				(DWC_pcie_ctrl_x4_slv_arqos)
	,.slv_arsize                     				(DWC_pcie_ctrl_x4_slv_arsize)
	,.slv_arvalid                    				(PCIE_SUB_CON_x4_ip_slv_arvalid_sig)
	,.slv_arready                    				(PCIE_SUB_CON_x4_ip_slv_arready_sig)
	,.slv_awaddr                     				(DWC_pcie_ctrl_x4_slv_awaddr)
	,.slv_awburst                    				(DWC_pcie_ctrl_x4_slv_awburst)
	,.slv_awcache                    				(DWC_pcie_ctrl_x4_slv_awcache)
	,.slv_awid                       				(DWC_pcie_ctrl_x4_slv_awid)
	,.slv_awlen                      				(DWC_pcie_ctrl_x4_slv_awlen)
	,.slv_awlock                     				(DWC_pcie_ctrl_x4_slv_awlock)
	,.slv_awmisc_info                				(PCIE_SUB_CON_x4_slv_awmisc_info_sig)
	,.slv_awmisc_info_atu_bypass					(PCIE_SUB_CON_x4_slv_awmisc_info_atu_bypass_sig)
	,.slv_awmisc_info_hdr_34dw       				(PCIE_SUB_CON_x4_slv_awmisc_info_hdr_34dw_sig)
	,.slv_awmisc_info_p_tag          				(PCIE_SUB_CON_x4_slv_awmisc_info_p_tag_sig)
	,.slv_awprot                     				(DWC_pcie_ctrl_x4_slv_awprot)
	,.slv_awqos                      				(DWC_pcie_ctrl_x4_slv_awqos)
	,.slv_awsize                     				(DWC_pcie_ctrl_x4_slv_awsize)
	,.slv_awvalid                    				(PCIE_SUB_CON_x4_ip_slv_awvalid_sig)
	,.slv_awready                    				(PCIE_SUB_CON_x4_ip_slv_awready_sig)
	,.slv_wdata                      				(DWC_pcie_ctrl_x4_slv_wdata)
	,.slv_wlast                      				(PCIE_SUB_CON_x4_ip_slv_wlast_sig)
	,.slv_wmisc_info_ep              				(PCIE_SUB_CON_x4_slv_wmisc_info_ep_sig)
	,.slv_wmisc_info_silentDrop      				(PCIE_SUB_CON_x4_slv_wmisc_info_silentDrop_sig)
	,.slv_wstrb                      				(DWC_pcie_ctrl_x4_slv_wstrb)
	,.slv_wvalid                     				(PCIE_SUB_CON_x4_ip_slv_wvalid_sig)
	,.slv_wready                     				(PCIE_SUB_CON_x4_ip_slv_wready_sig)
	,.slv_bid                        				(DWC_pcie_ctrl_x4_slv_bid_sig)
	,.slv_bmisc_info                 				(DWC_pcie_ctrl_x4_slv_bmisc_info_sig)
	,.slv_bresp                      				(DWC_pcie_ctrl_x4_slv_bresp_sig)
	,.slv_bvalid                     				(PCIE_SUB_CON_x4_ip_slv_bvalid_sig)
	,.slv_bready                     				(PCIE_SUB_CON_x4_ip_slv_bready_sig)
	,.slv_rid                      		  			(DWC_pcie_ctrl_x4_slv_rid_sig)
	,.slv_rdata                    		  			(DWC_pcie_ctrl_x4_slv_rdata_sig)
	,.slv_rlast                    		  			(PCIE_SUB_CON_x4_ip_slv_rlast_sig)
	,.slv_rmisc_info               		  			(DWC_pcie_ctrl_x4_slv_rmisc_info_sig)
	,.slv_rresp                    		  			(DWC_pcie_ctrl_x4_slv_rresp_sig)
	,.slv_rvalid                   		  			(PCIE_SUB_CON_x4_ip_slv_rvalid_sig)
	,.slv_rready                   		  			(PCIE_SUB_CON_x4_ip_slv_rready_sig)
	,.slv_csysreq                  		  			(DWC_pcie_ctrl_x4_slv_csysreq)
	,.slv_cactive                  		  			(DWC_pcie_ctrl_x4_slv_cactive_sig)
	,.slv_csysack                  		  			(DWC_pcie_ctrl_x4_slv_csysack_sig)
	,.dbi_aclk                     					(PCIE_SUB_CON_x4_dbi_aclk_sig)
	,.dbi_aresetn                  					(PCIE_SUB_CON_x4_dbi_aresetn_sig)
	,.dbi_aclk_ug                  					(PCIE_SUB_CON_x4_dbi_aclk_soc)
	,.dbi_aclk_active              					(DWC_pcie_ctrl_x4_dbi_aclk_active_sig)
	,.dbi_araddr                   					(DWC_pcie_ctrl_x4_dbi_araddr)
	,.dbi_arburst                  					(DWC_pcie_ctrl_x4_dbi_arburst)
	,.dbi_arcache                  					(DWC_pcie_ctrl_x4_dbi_arcache)
	,.dbi_arid                     					(DWC_pcie_ctrl_x4_dbi_arid)
	,.dbi_arlen                    					(DWC_pcie_ctrl_x4_dbi_arlen)
	,.dbi_arlock                   					(DWC_pcie_ctrl_x4_dbi_arlock)
	,.dbi_arprot                   					(DWC_pcie_ctrl_x4_dbi_arprot)
	,.dbi_arqos                    					(DWC_pcie_ctrl_x4_dbi_arqos)
	,.dbi_arsize                   					(DWC_pcie_ctrl_x4_dbi_arsize)
	,.dbi_arvalid                  					(PCIE_SUB_CON_x4_ip_dbi_arvalid_sig)
	,.dbi_arready                  					(PCIE_SUB_CON_x4_ip_dbi_arready_sig)
	,.dbi_awaddr                   					(DWC_pcie_ctrl_x4_dbi_awaddr)
	,.dbi_awburst                  					(DWC_pcie_ctrl_x4_dbi_awburst)
	,.dbi_awcache                  					(DWC_pcie_ctrl_x4_dbi_awcache)
	,.dbi_awid                     					(DWC_pcie_ctrl_x4_dbi_awid)
	,.dbi_awlen                    					(DWC_pcie_ctrl_x4_dbi_awlen)
	,.dbi_awlock                   					(DWC_pcie_ctrl_x4_dbi_awlock)
	,.dbi_awprot                   					(DWC_pcie_ctrl_x4_dbi_awprot)
	,.dbi_awqos                    					(DWC_pcie_ctrl_x4_dbi_awqos)
	,.dbi_awsize                   					(DWC_pcie_ctrl_x4_dbi_awsize)
	,.dbi_awvalid                  					(PCIE_SUB_CON_x4_ip_dbi_awvalid_sig)
	,.dbi_awready                  					(PCIE_SUB_CON_x4_ip_dbi_awready_sig)
	,.dbi_wdata                    					(DWC_pcie_ctrl_x4_dbi_wdata)
	,.dbi_wlast                    					(PCIE_SUB_CON_x4_ip_dbi_wlast_sig)
	,.dbi_wstrb                    					(DWC_pcie_ctrl_x4_dbi_wstrb)
	,.dbi_wvalid                   					(PCIE_SUB_CON_x4_ip_dbi_wvalid_sig)
	,.dbi_wready                   					(PCIE_SUB_CON_x4_ip_dbi_wready_sig)
	,.dbi_bid                      					(DWC_pcie_ctrl_x4_dbi_bid_sig)
	,.dbi_bresp                    					(DWC_pcie_ctrl_x4_dbi_bresp_sig)
	,.dbi_bvalid                   					(PCIE_SUB_CON_x4_ip_dbi_bvalid_sig)
	,.dbi_bready                   					(PCIE_SUB_CON_x4_ip_dbi_bready_sig)
	,.dbi_csysreq                  					(DWC_pcie_ctrl_x4_dbi_csysreq)
	,.dbi_rid                      					(DWC_pcie_ctrl_x4_dbi_rid_sig)
	,.dbi_rdata                    					(DWC_pcie_ctrl_x4_dbi_rdata_sig)
	,.dbi_rlast                    					(PCIE_SUB_CON_x4_ip_dbi_rlast_sig)
	,.dbi_rresp                    					(DWC_pcie_ctrl_x4_dbi_rresp_sig)
	,.dbi_rvalid                   					(PCIE_SUB_CON_x4_ip_dbi_rvalid_sig)
	,.dbi_rready                   					(PCIE_SUB_CON_x4_ip_dbi_rready_sig)
	,.dbi_cactive                  					(DWC_pcie_ctrl_x4_dbi_cactive_sig)
	,.dbi_csysack                  					(DWC_pcie_ctrl_x4_dbi_csysack_sig)
	,.ib_mcpl_sb_ram_addra           				(DWC_pcie_ctrl_x4_ib_mcpl_sb_ram_addra_sig)
	,.ib_mcpl_sb_ram_addrb           				(DWC_pcie_ctrl_x4_ib_mcpl_sb_ram_addrb_sig)
	,.ib_mcpl_sb_ram_dina            				(DWC_pcie_ctrl_x4_ib_mcpl_sb_ram_dina_sig)
	,.ib_mcpl_sb_ram_wea             				(DWC_pcie_ctrl_x4_ib_mcpl_sb_ram_wea_sig)
	,.ib_mcpl_sb_ram_enb             				(DWC_pcie_ctrl_x4_ib_mcpl_sb_ram_enb_sig)
	,.ib_mcpl_sb_ram_doutb           				(DWC_pcie_ctrl_x4_ib_mcpl_sb_ram_doutb_sig)
	,.ib_mcpl_a2c_cdc_ram_addra   					(DWC_pcie_ctrl_x4_ib_mcpl_a2c_cdc_ram_addra_sig)
	,.ib_mcpl_a2c_cdc_ram_addrb   					(DWC_pcie_ctrl_x4_ib_mcpl_a2c_cdc_ram_addrb_sig)
	,.ib_mcpl_a2c_cdc_ram_dina    					(DWC_pcie_ctrl_x4_ib_mcpl_a2c_cdc_ram_dina_sig)
	,.ib_mcpl_a2c_cdc_ram_wea     					(DWC_pcie_ctrl_x4_ib_mcpl_a2c_cdc_ram_wea_sig)
	,.ib_mcpl_a2c_cdc_ram_enb     					(DWC_pcie_ctrl_x4_ib_mcpl_a2c_cdc_ram_enb_sig)
	,.ib_mcpl_a2c_cdc_ram_doutb   					(DWC_pcie_ctrl_x4_ib_mcpl_a2c_cdc_ram_doutb_sig)
	,.ib_rreq_ordr_ram_addra  						(DWC_pcie_ctrl_x4_ib_rreq_ordr_ram_addra_sig)
	,.ib_rreq_ordr_ram_addrb  						(DWC_pcie_ctrl_x4_ib_rreq_ordr_ram_addrb_sig)
	,.ib_rreq_ordr_ram_dina   						(DWC_pcie_ctrl_x4_ib_rreq_ordr_ram_dina_sig)
	,.ib_rreq_ordr_ram_wea    						(DWC_pcie_ctrl_x4_ib_rreq_ordr_ram_wea_sig)
	,.ib_rreq_ordr_ram_enb    						(DWC_pcie_ctrl_x4_ib_rreq_ordr_ram_enb_sig)
	,.ib_rreq_ordr_ram_doutb  						(DWC_pcie_ctrl_x4_ib_rreq_ordr_ram_doutb_sig)
	,.ib_rreq_c2a_cdc_ram_addra   					(DWC_pcie_ctrl_x4_ib_rreq_c2a_cdc_ram_addra_sig)
	,.ib_rreq_c2a_cdc_ram_addrb   					(DWC_pcie_ctrl_x4_ib_rreq_c2a_cdc_ram_addrb_sig)
	,.ib_rreq_c2a_cdc_ram_dina    					(DWC_pcie_ctrl_x4_ib_rreq_c2a_cdc_ram_dina_sig)
	,.ib_rreq_c2a_cdc_ram_wea     					(DWC_pcie_ctrl_x4_ib_rreq_c2a_cdc_ram_wea_sig)
	,.ib_rreq_c2a_cdc_ram_enb     					(DWC_pcie_ctrl_x4_ib_rreq_c2a_cdc_ram_enb_sig)
	,.ib_rreq_c2a_cdc_ram_doutb   					(DWC_pcie_ctrl_x4_ib_rreq_c2a_cdc_ram_doutb_sig)
	,.ib_wreq_c2a_cdc_ram_addra   					(DWC_pcie_ctrl_x4_ib_wreq_c2a_cdc_ram_addra_sig)
	,.ib_wreq_c2a_cdc_ram_addrb   					(DWC_pcie_ctrl_x4_ib_wreq_c2a_cdc_ram_addrb_sig)
	,.ib_wreq_c2a_cdc_ram_dina    					(DWC_pcie_ctrl_x4_ib_wreq_c2a_cdc_ram_dina_sig)
	,.ib_wreq_c2a_cdc_ram_wea     					(DWC_pcie_ctrl_x4_ib_wreq_c2a_cdc_ram_wea_sig)
	,.ib_wreq_c2a_cdc_ram_enb     					(DWC_pcie_ctrl_x4_ib_wreq_c2a_cdc_ram_enb_sig)
	,.ib_wreq_c2a_cdc_ram_doutb   					(DWC_pcie_ctrl_x4_ib_wreq_c2a_cdc_ram_doutb_sig)
	,.ob_ccmp_data_ram_addra           				(DWC_pcie_ctrl_x4_ob_ccmp_data_ram_addra_sig)
	,.ob_ccmp_data_ram_addrb           				(DWC_pcie_ctrl_x4_ob_ccmp_data_ram_addrb_sig)
	,.ob_ccmp_data_ram_dina            				(DWC_pcie_ctrl_x4_ob_ccmp_data_ram_dina_sig)
	,.ob_ccmp_data_ram_wea             				(DWC_pcie_ctrl_x4_ob_ccmp_data_ram_wea_sig)
	,.ob_ccmp_data_ram_enb             				(DWC_pcie_ctrl_x4_ob_ccmp_data_ram_enb_sig)
	,.ob_ccmp_data_ram_doutb           				(DWC_pcie_ctrl_x4_ob_ccmp_data_ram_doutb_sig)
	,.ob_npdcmp_ram_addra              				(DWC_pcie_ctrl_x4_ob_npdcmp_ram_addra_sig)
	,.ob_npdcmp_ram_addrb              				(DWC_pcie_ctrl_x4_ob_npdcmp_ram_addrb_sig)
	,.ob_npdcmp_ram_dina               				(DWC_pcie_ctrl_x4_ob_npdcmp_ram_dina_sig)
	,.ob_npdcmp_ram_wea                				(DWC_pcie_ctrl_x4_ob_npdcmp_ram_wea_sig)
	,.ob_npdcmp_ram_enb                				(DWC_pcie_ctrl_x4_ob_npdcmp_ram_enb_sig)
	,.ob_npdcmp_ram_doutb              				(DWC_pcie_ctrl_x4_ob_npdcmp_ram_doutb_sig)
	,.slv_npw_sab_ram_addra            				(DWC_pcie_ctrl_x4_slv_npw_sab_ram_addra_sig)
	,.slv_npw_sab_ram_addrb            				(DWC_pcie_ctrl_x4_slv_npw_sab_ram_addrb_sig)
	,.slv_npw_sab_ram_dina             				(DWC_pcie_ctrl_x4_slv_npw_sab_ram_dina_sig)
	,.slv_npw_sab_ram_wea              				(DWC_pcie_ctrl_x4_slv_npw_sab_ram_wea_sig)
	,.slv_npw_sab_ram_enb              				(DWC_pcie_ctrl_x4_slv_npw_sab_ram_enb_sig)
	,.slv_npw_sab_ram_doutb            				(DWC_pcie_ctrl_x4_slv_npw_sab_ram_doutb_sig)
	,.ob_pdcmp_data_ram_addra          				(DWC_pcie_ctrl_x4_ob_pdcmp_data_ram_addra_sig)
	,.ob_pdcmp_data_ram_addrb          				(DWC_pcie_ctrl_x4_ob_pdcmp_data_ram_addrb_sig)
	,.ob_pdcmp_data_ram_dina           				(DWC_pcie_ctrl_x4_ob_pdcmp_data_ram_dina_sig)
	,.ob_pdcmp_data_ram_wea            				(DWC_pcie_ctrl_x4_ob_pdcmp_data_ram_wea_sig)
	,.ob_pdcmp_data_ram_enb            				(DWC_pcie_ctrl_x4_ob_pdcmp_data_ram_enb_sig)
	,.ob_pdcmp_data_ram_doutb          				(DWC_pcie_ctrl_x4_ob_pdcmp_data_ram_doutb_sig)
	,.ob_pdcmp_hdr_ram_addra           				(DWC_pcie_ctrl_x4_ob_pdcmp_hdr_ram_addra_sig)
	,.ob_pdcmp_hdr_ram_addrb           				(DWC_pcie_ctrl_x4_ob_pdcmp_hdr_ram_addrb_sig)
	,.ob_pdcmp_hdr_ram_dina            				(DWC_pcie_ctrl_x4_ob_pdcmp_hdr_ram_dina_sig)
	,.ob_pdcmp_hdr_ram_wea             				(DWC_pcie_ctrl_x4_ob_pdcmp_hdr_ram_wea_sig)
	,.ob_pdcmp_hdr_ram_enb             				(DWC_pcie_ctrl_x4_ob_pdcmp_hdr_ram_enb_sig)
	,.ob_pdcmp_hdr_ram_doutb           				(DWC_pcie_ctrl_x4_ob_pdcmp_hdr_ram_doutb_sig)
	,.edma2ram_addra                     			(DWC_pcie_ctrl_x4_edma2ram_addra_sig)
	,.edma2ram_addrb                     			(DWC_pcie_ctrl_x4_edma2ram_addrb_sig)
	,.edma2ram_dout                      			(DWC_pcie_ctrl_x4_edma2ram_dout_sig)
	,.edma2ram_we                        			(DWC_pcie_ctrl_x4_edma2ram_we_sig)
	,.edma2ram_re                        			(DWC_pcie_ctrl_x4_edma2ram_re_sig)
	,.ram2edma_din                       			(DWC_pcie_ctrl_x4_ram2edma_din_sig)
	,.edmarbuff2ram_addra                			(DWC_pcie_ctrl_x4_edmarbuff2ram_addra_sig)
	,.edmarbuff2ram_addrb                			(DWC_pcie_ctrl_x4_edmarbuff2ram_addrb_sig)
	,.edmarbuff2ram_dout                 			(DWC_pcie_ctrl_x4_edmarbuff2ram_dout_sig)
	,.edmarbuff2ram_we                   			(DWC_pcie_ctrl_x4_edmarbuff2ram_we_sig)
	,.edmarbuff2ram_re                   			(DWC_pcie_ctrl_x4_edmarbuff2ram_re_sig)
	,.ram2edmarbuff_din                  			(DWC_pcie_ctrl_x4_ram2edmarbuff_din_sig)
	,.msix_pba_addr                       			(DWC_pcie_ctrl_x4_msix_pba_addr_sig)
	,.msix_pba_data_out                   			(DWC_pcie_ctrl_x4_msix_pba_data_out_sig)
	,.msix_pba_we                         			(DWC_pcie_ctrl_x4_msix_pba_we_sig)
	,.msix_pba_en                         			(DWC_pcie_ctrl_x4_msix_pba_en_sig)
	,.msix_pba_data_in                    			(DWC_pcie_ctrl_x4_msix_pba_data_in_sig)
	,.msix_pba_ls                         			(/*noconnect*/)
	,.cfg_msix_pba_ds                     			(/*noconnect*/)
	,.cfg_msix_pba_sd                     			(/*noconnect*/)
	,.msix_table_addr                     			(DWC_pcie_ctrl_x4_msix_table_addr_sig)
	,.msix_table_data_out                 			(DWC_pcie_ctrl_x4_msix_table_data_out_sig)
	,.msix_table_we                       			(DWC_pcie_ctrl_x4_msix_table_we_sig)
	,.msix_table_en                       			(DWC_pcie_ctrl_x4_msix_table_en_sig)
	,.msix_table_data_in                  			(DWC_pcie_ctrl_x4_msix_table_data_in_sig)
	,.msix_table_ls									(/*noconnect*/)
	,.cfg_msix_table_ds                   			(/*noconnect*/)
	,.cfg_msix_table_sd                   			(/*noconnect*/)
	,.p_dataq_addra                      			(DWC_pcie_ctrl_x4_p_dataq_addra_sig)
	,.p_dataq_addrb                      			(DWC_pcie_ctrl_x4_p_dataq_addrb_sig)
	,.p_dataq_datain                     			(DWC_pcie_ctrl_x4_p_dataq_datain_sig)
	,.p_dataq_ena                        			(DWC_pcie_ctrl_x4_p_dataq_ena_sig)
	,.p_dataq_enb                        			(DWC_pcie_ctrl_x4_p_dataq_enb_sig)
	,.p_dataq_wea                        			(DWC_pcie_ctrl_x4_p_dataq_wea_sig)
	,.p_dataq_dataout                    			(DWC_pcie_ctrl_x4_p_dataq_dataout_sig)
	,.p_hdrq_addra                       			(DWC_pcie_ctrl_x4_p_hdrq_addra_sig)
	,.p_hdrq_addrb                       			(DWC_pcie_ctrl_x4_p_hdrq_addrb_sig)
	,.p_hdrq_datain                      			(DWC_pcie_ctrl_x4_p_hdrq_datain_sig)
	,.p_hdrq_ena                         			(DWC_pcie_ctrl_x4_p_hdrq_ena_sig)
	,.p_hdrq_enb                         			(DWC_pcie_ctrl_x4_p_hdrq_enb_sig)
	,.p_hdrq_wea                         			(DWC_pcie_ctrl_x4_p_hdrq_wea_sig)
	,.p_hdrq_dataout                     			(DWC_pcie_ctrl_x4_p_hdrq_dataout_sig)
	,.xdlh_retryram_addr                 			(DWC_pcie_ctrl_x4_xdlh_retryram_addr_sig)
	,.xdlh_retryram_data                 			(DWC_pcie_ctrl_x4_xdlh_retryram_data_sig)
	,.xdlh_retryram_en                   			(DWC_pcie_ctrl_x4_xdlh_retryram_en_sig)
	,.xdlh_retryram_we                   			(DWC_pcie_ctrl_x4_xdlh_retryram_we_sig)
	,.retryram_xdlh_data                 			(DWC_pcie_ctrl_x4_retryram_xdlh_data_sig)
	,.xdlh_retrysotram_waddr             			(DWC_pcie_ctrl_x4_xdlh_retrysotram_waddr_sig)
	,.xdlh_retrysotram_raddr             			(DWC_pcie_ctrl_x4_xdlh_retrysotram_raddr_sig)
	,.xdlh_retrysotram_data              			(DWC_pcie_ctrl_x4_xdlh_retrysotram_data_sig)
	,.xdlh_retrysotram_we                			(DWC_pcie_ctrl_x4_xdlh_retrysotram_we_sig)
	,.xdlh_retrysotram_en                			(DWC_pcie_ctrl_x4_xdlh_retrysotram_en_sig)
	,.retrysotram_xdlh_data              			(DWC_pcie_ctrl_x4_retrysotram_xdlh_data_sig)
	,.radm_trgt1_vc                      			(/*no connect*/)
	,.trgt_cpl_timeout                   			(DWC_pcie_ctrl_x4_trgt_cpl_timeout_sig)
	,.trgt_timeout_cpl_func_num          			(DWC_pcie_ctrl_x4_trgt_timeout_cpl_func_num_sig)
	,.trgt_timeout_cpl_tc                			(DWC_pcie_ctrl_x4_trgt_timeout_cpl_tc_sig)
	,.trgt_timeout_cpl_attr              			(DWC_pcie_ctrl_x4_trgt_timeout_cpl_attr_sig)
	,.trgt_timeout_cpl_len               			(DWC_pcie_ctrl_x4_trgt_timeout_cpl_len_sig)
	,.trgt_timeout_lookup_id             			(DWC_pcie_ctrl_x4_trgt_timeout_lookup_id_sig)
	,.trgt_lookup_id                     			(DWC_pcie_ctrl_x4_trgt_lookup_id_sig)
	,.trgt_lookup_empty                  			(DWC_pcie_ctrl_x4_trgt_lookup_emptry_sig)
	,.phy_mac_rxelecidle                 			(PCIE_SUB_CON_x4_phy_mac_rxelecidle_out_sig)
	,.phy_mac_phystatus                  			({PIPE_MUX_x4_phy_mac_phystatus_sig
													 ,PCIE_PHY_pipe_lane1_phystatus_sig
													 ,PCIE_PHY_pipe_lane0_phystatus_sig})
	,.phy_mac_rxdata                     			({PIPE_MUX_x4_phy_mac_rxdata_sig
													 ,PCIE_PHY_pipe_rx1_data_sig[31:0]
	                                                 ,PCIE_PHY_pipe_rx0_data_sig[31:0]})
	,.phy_mac_rxdatak                    			({PIPE_MUX_x4_phy_mac_rxdatak_sig
													 ,PCIE_PHY_pipe_rx1_datak_sig
													 ,PCIE_PHY_pipe_rx0_datak_sig})
	,.phy_mac_rxvalid                    			({PIPE_MUX_x4_phy_mac_rxvalid_sig
													 ,PCIE_PHY_pipe_rx1_valid_sig
													 ,PCIE_PHY_pipe_rx0_valid_sig})
	,.phy_mac_rxstatus                   			({PIPE_MUX_x4_phy_mac_rxstatus_sig
													 ,PCIE_PHY_pipe_rx1_status_sig
													 ,PCIE_PHY_pipe_rx0_status_sig})
	,.phy_mac_rxstandbystatus            			({PIPE_MUX_x4_phy_mac_rxstandbystatus_sig
													 ,PCIE_PHY_pipe_rx1_standby_status_sig
													 ,PCIE_PHY_pipe_rx0_standby_status_sig})
	,.phy_mac_rxdatavalid                			({PIPE_MUX_x4_phy_mac_rxdatavalid_sig
													 ,PCIE_PHY_pipe_rx1_datavalid_sig
													 ,PCIE_PHY_pipe_rx0_datavalid_sig})
	,.phy_mac_rxstartblock               			({PIPE_MUX_x4_phy_mac_rxstartblock_sig
													 ,PCIE_PHY_pipe_rx1_startblock_sig
													 ,PCIE_PHY_pipe_rx0_startblock_sig})
	,.phy_mac_rxsyncheader               			({PIPE_MUX_x4_phy_mac_rxsyncheader_sig
													 ,PCIE_PHY_pipe_rx1_syncheader_sig[1:0]
													 ,PCIE_PHY_pipe_rx0_syncheader_sig[1:0]})
	,.phy_mac_localfs                    			({PIPE_MUX_x4_phy_mac_localfs_sig
													 ,PCIE_PHY_pipe_tx1_eq_fs_sig
													 ,PCIE_PHY_pipe_tx0_eq_fs_sig})
	,.phy_mac_locallf                    			({PIPE_MUX_x4_phy_mac_locallf_sig
													 ,PCIE_PHY_pipe_tx1_eq_lf_sig
													 ,PCIE_PHY_pipe_tx0_eq_lf_sig})
	,.phy_mac_dirfeedback                			({PIPE_MUX_x4_phy_mac_dirfeedback_sig
													 ,PCIE_PHY_pipe_rx1_eq_dir_change_sig
													 ,PCIE_PHY_pipe_rx0_eq_dir_change_sig})
	,.phy_mac_fomfeedback                			({PIPE_MUX_x4_phy_mac_fomfeedback_sig
													 ,PCIE_PHY_pipe_rx1_eq_fig_merit_sig
													 ,PCIE_PHY_pipe_rx0_eq_fig_merit_sig})
	,.phy_mac_local_tx_pset_coef         			({PIPE_MUX_x4_phy_mac_local_tx_pset_coef_sig
													 ,PCIE_PHY_pipe_tx1_eq_preset_coeff_sig
													 ,PCIE_PHY_pipe_tx0_eq_preset_coeff_sig})
	,.phy_mac_local_tx_coef_valid        			({PIPE_MUX_x4_phy_mac_local_tx_coef_valid_sig
													 ,PCIE_PHY_pipe_tx1_eq_preset_coeff_vld_sig
													 ,PCIE_PHY_pipe_tx0_eq_preset_coeff_vld_sig})
	,.mac_phy_invalid_req							(DWC_pcie_ctrl_x4_mac_phy_invalid_req_sig)
	,.mac_phy_rxeqinprogress						(DWC_pcie_ctrl_x4_mac_phy_rxeqinprogress_sig)
	,.mac_phy_rxeqeval								(DWC_pcie_ctrl_x4_mac_phy_rxeqeval_sig)
	,.mac_phy_local_pset_index						(DWC_pcie_ctrl_x4_mac_phy_local_pset_index_sig)
	,.mac_phy_getlocal_pset_coef					(DWC_pcie_ctrl_x4_mac_phy_getlocal_pset_coef_sig)
	,.mac_phy_fs									(/*no connect*/)
	,.mac_phy_lf									(/*no connect*/)
	,.mac_phy_blockaligncontrol						(DWC_pcie_ctrl_x4_mac_phy_blockaligncontrol_sig)
	,.mac_phy_encodedecodebypass					(DWC_pcie_ctrl_x4_mac_phy_encodedecodebypass_sig)
	,.mac_phy_rxpresethint							(/*no connect*/)
	,.mac_phy_dirchange								(/*no connect*/)
	,.app_margining_ready							(PCIE_SUB_CON_x4_app_margining_ready_sig)
	,.app_margining_software_ready					(PCIE_SUB_CON_x4_app_margining_software_ready_sig)
	,.mac_phy_messagebus							(DWC_pcie_ctrl_x4_mac_phy_messagebus_sig)
	,.phy_mac_messagebus							({PIPE_MUX_x4_phy_mac_messagebus_sig
													 ,PCIE_PHY_pipe_lane1_p2m_messagebus_sig
													 ,PCIE_PHY_pipe_lane0_p2m_messagebus_sig})
	,.clkreq_in_n									(1'b0)
	,.pm_linkst_in_l1sub							(DWC_pcie_ctrl_x4_pm_linkst_in_l1sub_sig)
	,.mac_phy_rxelecidle_disable					(DWC_pcie_ctrl_x4_mac_phy_rxelecidle_disable_sig)
	,.mac_phy_txcommonmode_disable					(DWC_pcie_ctrl_x4_mac_phy_txcommonmode_disable_sig)
	,.cfg_l1sub_en									(DWC_pcie_ctrl_x4_cfg_l1sub_en_sig)
	,.phy_cfg_status								(32'b0)
	,.app_clk_pm_en									(PCIE_SUB_CON_x4_app_clk_pm_en_sig)
	,.mac_phy_txdata                    			(DWC_pcie_ctrl_x4_mac_phy_txdata_sig)
	,.mac_phy_txdatak                   			(DWC_pcie_ctrl_x4_mac_phy_txdatak_sig)
	,.mac_phy_txdetectrx_loopback       			(DWC_pcie_ctrl_x4_mac_phy_txdetectrx_loopback_sig)
	,.mac_phy_txelecidle                 			(DWC_pcie_ctrl_x4_mac_phy_txelecidle_sig)
	,.mac_phy_txcompliance               			(DWC_pcie_ctrl_x4_mac_phy_txcompliance_sig)
	,.mac_phy_rxpolarity                			(DWC_pcie_ctrl_x4_mac_phy_rxpolarity_sig)
	,.mac_phy_width                     			(DWC_pcie_ctrl_x4_mac_phy_width_sig)
	,.mac_phy_pclk_rate                  			(DWC_pcie_ctrl_x4_mac_phy_pclk_rate_sig)
	,.mac_phy_rxstandby                 			(DWC_pcie_ctrl_x4_mac_phy_rxstandby_sig)
	,.mac_phy_rate                       			(DWC_pcie_ctrl_x4_mac_phy_rate_sig)
	,.mac_phy_txdeemph                  			(DWC_pcie_ctrl_x4_mac_phy_txdeemph_sig)
	,.mac_phy_txmargin                  			(DWC_pcie_ctrl_x4_mac_phy_txmargin_sig)
	,.mac_phy_txswing                   			(DWC_pcie_ctrl_x4_mac_phy_txswing_sig)
	,.cfg_hw_auto_sp_dis							(DWC_pcie_ctrl_x4_cfg_hw_auto_sp_dis_sig)
	,.mac_phy_elasticbuffermode         			(DWC_pcie_ctrl_x4_mac_phy_elasticbuffermode_sig)
	,.mac_phy_txdatavalid               			(DWC_pcie_ctrl_x4_mac_phy_txdatavalid_sig)
	,.mac_phy_txstartblock              			(DWC_pcie_ctrl_x4_mac_phy_txstartblock_sig)
	,.mac_phy_txsyncheader              			(DWC_pcie_ctrl_x4_mac_phy_txsyncheader_sig)
	,.mac_phy_powerdown                 			(DWC_pcie_ctrl_x4_mac_phy_powerdown_sig)
	,.cfg_phy_control								(DWC_pcie_ctrl_x4_cfg_phy_control_sig)
	,.ven_msg_grant									(DWC_pcie_ctrl_x4_ven_msg_grant_sig)
	,.ven_msg_fmt                        			(PCIE_SUB_CON_x4_ven_msg_fmt_sig)
	,.ven_msg_type                       			(PCIE_SUB_CON_x4_ven_msg_type_sig)
	,.ven_msg_tc                         			(PCIE_SUB_CON_x4_ven_msg_tc_sig)
	,.ven_msg_td                         			(PCIE_SUB_CON_x4_ven_msg_td_sig)
	,.ven_msg_ep                         			(PCIE_SUB_CON_x4_ven_msg_ep_sig)
	,.ven_msg_attr                       			(PCIE_SUB_CON_x4_ven_msg_attr_sig)
	,.ven_msg_len                        			(PCIE_SUB_CON_x4_ven_msg_len_sig)
	,.ven_msg_func_num                   			(PCIE_SUB_CON_x4_ven_msg_func_num_sig)
	,.ven_msg_tag                        			(PCIE_SUB_CON_x4_ven_msg_tag_sig)
	,.ven_msg_code                       			(PCIE_SUB_CON_x4_ven_msg_code_sig)
	,.ven_msg_data                       			(PCIE_SUB_CON_x4_ven_msg_data_sig)
	,.ven_msg_req                        			(PCIE_SUB_CON_x4_ven_msg_req_sig)
	,.pm_xtlh_block_tlp                  			(DWC_pcie_ctrl_x4_pm_xtlh_block_tlp_sig)
	,.ven_msi_req                        			(PCIE_SUB_CON_x4_ven_msi_req_sig)
	,.ven_msi_func_num                   			(PCIE_SUB_CON_x4_ven_msi_func_num_sig)
	,.ven_msi_tc                         			(PCIE_SUB_CON_x4_ven_msi_tc_sig)
	,.ven_msi_vector                     			(PCIE_SUB_CON_x4_ven_msi_vector_sig)
	,.ven_msi_grant                      			(DWC_pcie_ctrl_x4_ven_msi_grant_sig)
	,.cfg_msi_en                         			(DWC_pcie_ctrl_x4_cfg_msi_en_sig)
	,.cfg_msi_mask                       			(DWC_pcie_ctrl_x4_cfg_msi_mask_sig)
	,.cfg_msi_pending                    			(PCIE_SUB_CON_x4_cfg_msi_pending_sig)
	,.dbg_table                           			(PCIE_SUB_CON_x4_dbg_table_sig)
	,.dbg_pba                             			(PCIE_SUB_CON_x4_dbg_pba_sig)
	,.dpa_substate_update                 			(DWC_pcie_ctrl_x4_dpa_substate_update_sig)
	,.app_ltr_msg_req                    			(PCIE_SUB_CON_x4_app_ltr_msg_req_sig)
	,.app_ltr_msg_latency                			(PCIE_SUB_CON_x4_app_ltr_msg_latency_sig)
	,.app_ltr_msg_func_num               			(PCIE_SUB_CON_x4_app_ltr_msg_func_num_sig)
	,.app_ltr_msg_grant                  			(DWC_pcie_ctrl_x4_app_ltr_msg_grant_sig)
	,.cfg_ltr_m_en                       			(DWC_pcie_ctrl_x4_cfg_ltr_m_en_sig)
	,.cfg_ltr_max_latency                			(DWC_pcie_ctrl_x4_cfg_ltr_max_latency_sig)
	,.cfg_disable_ltr_clr_msg            			(DWC_pcie_ctrl_x4_cfg_disable_ltr_clr_msg_sig)
	,.app_ltr_latency                    			(DWC_pcie_ctrl_x4_app_ltr_latency_sig)
	,.radm_msg_ltr                       			(DWC_pcie_ctrl_x4_radm_msg_ltr_sig)
	,.app_hdr_valid                      			(PCIE_SUB_CON_x4_app_hdr_valid_sig)
	,.app_hdr_log                        			(PCIE_SUB_CON_x4_app_hdr_log_sig)
	,.app_err_bus                        			(PCIE_SUB_CON_x4_app_err_bus_sig)
	,.app_err_advisory                   			(PCIE_SUB_CON_x4_app_err_advisory_sig)
	,.app_poisoned_tlp_type              			(PCIE_SUB_CON_x4_app_poisoned_tlp_type_sig)
	,.app_err_func_num                   			(PCIE_SUB_CON_x4_app_err_func_num_sig)
	,.radm_q_not_empty                   			(DWC_pcie_ctrl_x4_radm_q_not_empty_sig)
	,.radm_qoverflow                     			(DWC_pcie_ctrl_x4_radm_qoverflow_sig)
	,.app_dbi_ro_wr_disable              			(PCIE_SUB_CON_x4_app_dbi_ro_wr_disable_sig)
	,.lbc_ext_addr                       			(DWC_pcie_ctrl_x4_lbc_ext_addr_sig)
	,.lbc_ext_dout                       			(DWC_pcie_ctrl_x4_lbc_ext_dout_sig)
	,.lbc_ext_cs                         			(DWC_pcie_ctrl_x4_lbc_ext_cs_sig)
	,.lbc_ext_wr                         			(DWC_pcie_ctrl_x4_lbc_ext_wr_sig)
	,.lbc_ext_dbi_access                 			(/*no connect*/)
	,.lbc_ext_rom_access                 			(DWC_pcie_ctrl_x4_lbc_ext_rom_access_sig)
	,.lbc_ext_io_access                  			(DWC_pcie_ctrl_x4_lbc_ext_io_access_sig)
	,.lbc_ext_bar_num                    			(DWC_pcie_ctrl_x4_lbc_ext_bar_num_sig)
	,.ext_lbc_ack                        			(PCIE_SUB_CON_x4_ext_lbc_ack_sig)
	,.ext_lbc_din                        			(PCIE_SUB_CON_x4_ext_lbc_din_sig)
	,.training_rst_n                     			(/*no connect*/)
	,.radm_pm_turnoff                    			(DWC_pcie_ctrl_x4_radm_pm_turnoff_sig)
	,.radm_msg_unlock                    			(DWC_pcie_ctrl_x4_radm_msg_unlock_sig)
	,.outband_pwrup_cmd                  			(PCIE_SUB_CON_x4_outband_pwrup_cmd_sig)
	,.cfg_pbus_num                       			(DWC_pcie_ctrl_x4_cfg_pbus_num_sig)
	,.cfg_pbus_dev_num                   			(DWC_pcie_ctrl_x4_cfg_pbus_dev_num_sig)
	,.pm_status                          			(DWC_pcie_ctrl_x4_pm_status_sig)
	,.pm_curnt_state                     			(DWC_pcie_ctrl_x4_pm_curnt_state_sig)
	,.cxpl_debug_info                    			(DWC_pcie_ctrl_x4_cxpl_debug_info_sig)
	,.cxpl_debug_info_ei                 			(DWC_pcie_ctrl_x4_cxpl_debug_info_ei_sig)
	,.cfg_bar0_start                     			(DWC_pcie_ctrl_x4_cfg_bar0_start_sig)
	,.cfg_bar0_limit                     			(DWC_pcie_ctrl_x4_cfg_bar0_limit_sig)
	,.cfg_bar1_start                     			(DWC_pcie_ctrl_x4_cfg_bar1_start_sig)
	,.cfg_bar1_limit                     			(DWC_pcie_ctrl_x4_cfg_bar1_limit_sig)
	,.cfg_bar2_start                     			(DWC_pcie_ctrl_x4_cfg_bar2_start_sig)
	,.cfg_bar2_limit                     			(DWC_pcie_ctrl_x4_cfg_bar2_limit_sig)
	,.cfg_bar3_start                     			(DWC_pcie_ctrl_x4_cfg_bar3_start_sig)
	,.cfg_bar3_limit                     			(DWC_pcie_ctrl_x4_cfg_bar3_limit_sig)
	,.cfg_bar4_start                     			(DWC_pcie_ctrl_x4_cfg_bar4_start_sig)
	,.cfg_bar4_limit                     			(DWC_pcie_ctrl_x4_cfg_bar4_limit_sig)
	,.cfg_bar5_start                     			(DWC_pcie_ctrl_x4_cfg_bar5_start_sig)
	,.cfg_bar5_limit                     			(DWC_pcie_ctrl_x4_cfg_bar5_limit_sig)
	,.cfg_exp_rom_start                  			(DWC_pcie_ctrl_x4_cfg_exp_rom_start_sig)
	,.cfg_exp_rom_limit                  			(DWC_pcie_ctrl_x4_cfg_exp_rom_limit_sig)
	,.radm_vendor_msg                    			(DWC_pcie_ctrl_x4_radm_vendor_msg_sig)
	,.radm_msg_payload                   			(DWC_pcie_ctrl_x4_radm_msg_payload_sig)
	,.radm_msg_req_id                    			(DWC_pcie_ctrl_x4_radm_msg_req_id_sig)
	,.smlh_ltssm_state_rcvry_eq          			(DWC_pcie_ctrl_x4_smlh_ltssm_state_rcvry_eq_sig)
	,.cfg_ext_tag_en                     			(/*no connect*/)
	,.cfg_2ndbus_num                     			(DWC_pcie_ctrl_x4_cfg_2ndbus_num_sig)
	,.cfg_subbus_num                     			(DWC_pcie_ctrl_x4_cfg_subbus_num_sig)
	,.cfg_2nd_reset                      			(DWC_pcie_ctrl_x4_cfg_2nd_reset_sig)
	,.radm_cpl_timeout                   			(DWC_pcie_ctrl_x4_radm_cpl_timeout_sig)
	,.radm_timeout_func_num              			(DWC_pcie_ctrl_x4_radm_timeout_func_num_sig)
	,.radm_timeout_cpl_tc                			(DWC_pcie_ctrl_x4_radm_timeout_cpl_tc_sig)
	,.radm_timeout_cpl_attr              			(DWC_pcie_ctrl_x4_radm_timeout_cpl_attr_sig)
	,.radm_timeout_cpl_len               			(DWC_pcie_ctrl_x4_radm_timeout_cpl_len_sig)
	,.radm_timeout_cpl_tag               			(DWC_pcie_ctrl_x4_radm_timeout_cpl_tag_sig)
	,.edma_int                           			(DWC_pcie_ctrl_x4_edma_int_sig)
	,.cfg_reg_serren                     			(/*no connect*/)
	,.cfg_cor_err_rpt_en                 			(/*no connect*/)
	,.cfg_nf_err_rpt_en                  			(/*no connect*/)
	,.cfg_f_err_rpt_en                   			(/*no connect*/)
	,.diag_ctrl_bus                      			(PCIE_SUB_CON_x4_diag_ctrl_bus_sig)
	,.diag_status_bus                    			(DWC_pcie_ctrl_x4_diag_status_bus_sig)
	,.core_clk                           			(PCIE_SUB_CON_x4_core_clk_sig)
	,.core_clk_ug                        			(PCIE_SUB_CON_x4_core_clk_ug_sig)
	,.en_aux_clk_g                       			(DWC_pcie_ctrl_x4_en_aux_clk_g_sig)
	,.aux_clk                            			(PCIE_SUB_CON_x4_aux_clk_sig)
	,.aux_clk_g                          			(PCIE_SUB_CON_x4_aux_clk_g_sig)
	,.aux_clk_active                     			(PCIE_SUB_CON_x4_aux_clk_active_sig)
	,.radm_clk_g                         			(PCIE_SUB_CON_x4_radm_clk_g_sig)
	,.en_radm_clk_g                      			(DWC_pcie_ctrl_x4_en_radm_clk_g_sig)
	,.radm_idle                          			(DWC_pcie_ctrl_x4_radm_idle_sig)
	,.pwr_rst_n                          			(PCIE_SUB_CON_x4_pwr_rst_n_sig)
	,.non_sticky_rst_n                   			(PCIE_SUB_CON_x4_non_stiky_rst_n_sig)
	,.sticky_rst_n                       			(PCIE_SUB_CON_x4_sticky_rst_n_sig)
	,.core_rst_n                         			(PCIE_SUB_CON_x4_core_rst_n_sig)
	,.perst_n                            			(PCIE_SUB_CON_x4_sync_perst_n_sig)
	,.app_clk_req_n                      			(PCIE_SUB_CON_x4_app_clk_req_n_sig)
	,.phy_clk_req_n                      			(PCIE_SUB_CON_x4_phy_clk_req_n_sig)
	,.app_init_rst                       			(PCIE_SUB_CON_x4_app_init_rst_sig)
	,.app_req_entr_l1                    			(PCIE_SUB_CON_x4_app_req_entr_l1_sig)
	,.app_ready_entr_l23                 			(PCIE_SUB_CON_x4_app_ready_entr_l23_sig)
	,.app_req_exit_l1                    			(PCIE_SUB_CON_x4_app_req_exit_l1_sig)
	,.app_xfer_pending                   			(PCIE_SUB_CON_x4_app_xfer_pending_sig)
	,.exp_rom_validation_status_strobe   			(PCIE_SUB_CON_x4_exp_rom_validation_status_strobe_sig)
	,.exp_rom_validation_status          			(PCIE_SUB_CON_x4_exp_rom_validation_status_sig)
	,.exp_rom_validation_details_strobe  			(PCIE_SUB_CON_x4_exp_rom_validation_details_strobe_sig)
	,.exp_rom_validation_details         			(PCIE_SUB_CON_x4_exp_rom_validation_details_sig)
	,.brdg_slv_xfer_pending              			(DWC_pcie_ctrl_x4_brdg_slv_xfer_pending_sig)
	,.brdg_dbi_xfer_pending              			(DWC_pcie_ctrl_x4_brdg_dbi_xfer_pending_sig)
	,.edma_xfer_pending                  			(DWC_pcie_ctrl_x4_edma_xfer_pending_sig)
	,.radm_xfer_pending                  			(DWC_pcie_ctrl_x4_radm_xfer_pending_sig)
	,.smlh_req_rst_not                   			(DWC_pcie_ctrl_x4_smlh_req_rst_not_sig)
	,.link_req_rst_not                   			(DWC_pcie_ctrl_x4_link_req_rst_not_sig)
	,.smlh_link_up                       			(DWC_pcie_ctrl_x4_smlh_link_up_sig)
	,.rdlh_link_up                       			(DWC_pcie_ctrl_x4_rdlh_link_up_sig)
	,.app_req_retry_en                   			(PCIE_SUB_CON_x4_app_req_retry_en_sig)
	,.app_pf_req_retry_en                			(PCIE_SUB_CON_x4_app_pf_req_retry_en_sig)
	,.wake                               			(DWC_pcie_ctrl_x4_wake_sig)
	,.local_ref_clk_req_n                			(DWC_pcie_ctrl_x4_local_ref_clk_req_n_sig)
	,.cfg_max_rd_req_size                			(DWC_pcie_ctrl_x4_cfg_max_rd_req_size_sig)
	,.cfg_bus_master_en                  			(DWC_pcie_ctrl_x4_cfg_bus_master_en_sig)
	,.cfg_max_payload_size               			(DWC_pcie_ctrl_x4_cfg_max_payload_size_sig)
	,.cfg_rcb                            			(DWC_pcie_ctrl_x4_cfg_rcb_sig)
	,.cfg_mem_space_en                   			(DWC_pcie_ctrl_x4_cfg_mem_space_en_sig)
	,.cfg_pm_no_soft_rst                 			(DWC_pcie_ctrl_x4_cfg_pm_no_soft_rst_sig)
	,.smlh_ltssm_state                   			(DWC_pcie_ctrl_x4_smlh_ltssm_state_sig)
	,.pm_dstate                          			(DWC_pcie_ctrl_x4_pm_dstate_sig)
	,.aux_pm_en                          			(DWC_pcie_ctrl_x4_aux_pm_en_sig)
	,.pm_pme_en                          			(DWC_pcie_ctrl_x4_pm_pme_en_sig)
	,.pm_l1_entry_started                			(/*no connect*/)
	,.pm_linkst_in_l0s                   			(DWC_pcie_ctrl_x4_pm_linkst_in_l0s_sig)
	,.pm_linkst_in_l1                    			(DWC_pcie_ctrl_x4_pm_linkst_in_l1_sig)
	,.pm_linkst_in_l2                    			(DWC_pcie_ctrl_x4_pm_linkst_in_l2_sig)
	,.pm_linkst_l2_exit                  			(DWC_pcie_ctrl_x4_pm_linkst_l2_exit_sig)
	,.pm_req_sticky_rst                  			(DWC_pcie_ctrl_x4_pm_req_sticky_rst_sig)
	,.pm_req_core_rst                    			(DWC_pcie_ctrl_x4_pm_req_core_rst_sig)
	,.pm_req_non_sticky_rst              			(DWC_pcie_ctrl_x4_pm_req_non_sticky_rst_sig)
	,.pm_sel_aux_clk                     			(DWC_pcie_ctrl_x4_pm_sel_aux_clk_sig)
	,.pm_en_core_clk                     			(DWC_pcie_ctrl_x4_pm_en_core_clk_sig)
	,.pm_req_phy_rst                     			(DWC_pcie_ctrl_x4_pm_req_phy_rst_sig)
	,.pm_req_phy_perst                   			(DWC_pcie_ctrl_x4_pm_req_phy_perst_sig)
	,.cfg_link_auto_bw_int               			(DWC_pcie_ctrl_x4_cfg_link_auto_bw_int_sig)
	,.cfg_link_auto_bw_msi               			(DWC_pcie_ctrl_x4_cfg_link_auto_bw_msi_sig)
	,.cfg_bw_mgt_int                     			(DWC_pcie_ctrl_x4_cfg_bw_mgt_int_sig)
	,.cfg_bw_mgt_msi                     			(DWC_pcie_ctrl_x4_cfg_bw_mgt_msi_sig)
	,.cfg_link_eq_req_int                			(DWC_pcie_ctrl_x4_cfg_link_eq_req_int_sig)
	,.usp_eq_redo_executed_int           			(/*no connect*/)
	,.msi_ctrl_io                        			(DWC_pcie_ctrl_x4_msi_ctrl_io_sig)
	,.msi_ctrl_int                       			(DWC_pcie_ctrl_x4_msi_ctrl_int_sig)
	,.msi_ctrl_int_vec                   			(DWC_pcie_ctrl_x4_msi_ctrl_int_vec_sig)
	,.device_type                        			(PCIE_SUB_CON_x4_device_type_sig)
	,.rx_lane_flip_en                    			(PCIE_SUB_CON_x4_rx_lane_flip_en_sig)
	,.tx_lane_flip_en                    			(PCIE_SUB_CON_x4_tx_lane_flip_en_sig)
	,.sys_atten_button_pressed           			(PCIE_SUB_CON_x4_sys_atten_button_pressed_sig)
	,.sys_pre_det_state                  			(PCIE_SUB_CON_x4_sys_pre_det_state_sig)
	,.sys_mrl_sensor_state               			(PCIE_SUB_CON_x4_sys_mrl_sensor_state_sig)
	,.sys_pwr_fault_det                  			(PCIE_SUB_CON_x4_sys_pwr_fault_det_sig)
	,.sys_mrl_sensor_chged               			(PCIE_SUB_CON_x4_sys_mrl_sensor_chged_sig)
	,.sys_pre_det_chged                  			(PCIE_SUB_CON_x4_sys_pre_det_chged_sig)
	,.sys_cmd_cpled_int                  			(PCIE_SUB_CON_x4_sys_cmd_cpled_int_sig)
	,.sys_eml_interlock_engaged          			(PCIE_SUB_CON_x4_sys_eml_interlock_engaged_sig)
	,.app_unlock_msg                     			(PCIE_SUB_CON_x4_app_unlock_msg_sig)
	,.apps_pm_xmt_turnoff                			(PCIE_SUB_CON_x4_apps_pm_xmt_turnoff_sig)
	,.cfg_pwr_ind                        			(DWC_pcie_ctrl_x4_cfg_pwr_ind_sig)
	,.cfg_atten_ind                      			(DWC_pcie_ctrl_x4_cfg_atten_ind_sig)
	,.cfg_pwr_ctrler_ctrl                			(DWC_pcie_ctrl_x4_cfg_pwr_ctrler_ctrl_sig)
	,.cfg_sys_err_rc                     			(DWC_pcie_ctrl_x4_cfg_sys_err_rc_sig)
	,.cfg_aer_rc_err_int                 			(DWC_pcie_ctrl_x4_cfg_aer_rc_err_int_sig)
	,.cfg_aer_rc_err_msi                 			(DWC_pcie_ctrl_x4_cfg_aer_rc_err_msi_sig)
	,.cfg_aer_int_msg_num                			(DWC_pcie_ctrl_x4_cfg_aer_int_msg_num_sig)
	,.cfg_pme_int                        			(DWC_pcie_ctrl_x4_cfg_pme_int_sig)
	,.cfg_pme_msi                        			(DWC_pcie_ctrl_x4_cfg_pme_msi_sig)
	,.cfg_crs_sw_vis_en                  			(DWC_pcie_ctrl_x4_cfg_crs_sw_vis_en_sig)
	,.cfg_pcie_cap_int_msg_num           			(DWC_pcie_ctrl_x4_cfg_pcie_cap_int_msg_num_sig)
	,.cfg_eml_control                    			(DWC_pcie_ctrl_x4_cfg_eml_control_sig)
	,.rtlh_rfc_upd                       			(DWC_pcie_ctrl_x4_rtlh_rfc_upd_sig)
	,.rtlh_rfc_data                      			(DWC_pcie_ctrl_x4_rtlh_rfc_data_sig)
	,.radm_inta_asserted                 			(DWC_pcie_ctrl_x4_radm_inta_asserted_sig)
	,.radm_intb_asserted                 			(DWC_pcie_ctrl_x4_radm_intb_asserted_sig)
	,.radm_intc_asserted                 			(DWC_pcie_ctrl_x4_radm_intc_asserted_sig)
	,.radm_intd_asserted                 			(DWC_pcie_ctrl_x4_radm_intd_asserted_sig)
	,.radm_inta_deasserted               			(DWC_pcie_ctrl_x4_radm_inta_deasserted_sig)
	,.radm_intb_deasserted               			(DWC_pcie_ctrl_x4_radm_intb_deasserted_sig)
	,.radm_intc_deasserted               			(DWC_pcie_ctrl_x4_radm_intc_deasserted_sig)
	,.radm_intd_deasserted               			(DWC_pcie_ctrl_x4_radm_intd_deasserted_sig)
	,.radm_correctable_err               			(DWC_pcie_ctrl_x4_radm_correctable_err_sig)
	,.radm_nonfatal_err                  			(DWC_pcie_ctrl_x4_radm_nonfatal_err_sig)
	,.radm_fatal_err                     			(DWC_pcie_ctrl_x4_radm_fatal_err_sig)
	,.radm_pm_pme                        			(DWC_pcie_ctrl_x4_radm_pm_pme_sig)
	,.radm_pm_to_ack                     			(DWC_pcie_ctrl_x4_radm_pm_to_ack_sig)
	,.hp_pme                             			(DWC_pcie_ctrl_x4_hp_pme_sig)
	,.hp_int                             			(DWC_pcie_ctrl_x4_hp_int_sig)
	,.hp_msi                             			(DWC_pcie_ctrl_x4_hp_msi_sig)
	,.cfg_obff_en                        			(DWC_pcie_ctrl_x4_cfg_obff_en_sig)
	,.radm_msg_idle                     			(DWC_pcie_ctrl_x4_radm_msg_idle_sig)
	,.radm_msg_obff                     			(DWC_pcie_ctrl_x4_radm_msg_obff_sig)
	,.radm_msg_cpu_active               			(DWC_pcie_ctrl_x4_radm_msg_cpu_active_sig)
	,.app_obff_idle_msg_req              			(PCIE_SUB_CON_x4_app_obff_idle_msg_req_sig)
	,.app_obff_obff_msg_req              			(PCIE_SUB_CON_x4_app_obff_obff_msg_req_sig)
	,.app_obff_cpu_active_msg_req        			(PCIE_SUB_CON_x4_app_obff_cpu_active_msg_req_sig)
	,.app_obff_msg_grant                 			(DWC_pcie_ctrl_x4_app_obff_msg_grant_sig)
	,.sys_int                            			(PCIE_SUB_CON_x4_sys_int_sig)
	,.apps_pm_xmt_pme                    			(PCIE_SUB_CON_x4_apps_pm_xmt_pme_sig)
	,.sys_aux_pwr_det                    			(PCIE_SUB_CON_x4_sys_aux_pwr_det_sig)
	,.app_ltssm_enable                   			(PCIE_SUB_CON_x4_app_ltssm_enable_sig)
	,.app_hold_phy_rst                   			(PCIE_SUB_CON_x4_app_hold_phy_rst_sig)
	,.cfg_send_cor_err                   			(DWC_pcie_ctrl_x4_cfg_send_cor_err_sig)
	,.cfg_send_nf_err                    			(DWC_pcie_ctrl_x4_cfg_send_nf_err_sig)
	,.cfg_send_f_err                     			(DWC_pcie_ctrl_x4_cfg_send_f_err_sig)
	,.cfg_int_disable                    			(DWC_pcie_ctrl_x4_cfg_int_disable_sig)
	,.cfg_no_snoop_en                    			(DWC_pcie_ctrl_x4_cfg_no_snoop_en_sig)
	,.cfg_relax_order_en                 			(DWC_pcie_ctrl_x4_cfg_relax_order_en_sig)
	,.assert_inta_grt                    			(DWC_pcie_ctrl_x4_assert_inta_grt_sig)
	,.assert_intb_grt                    			(DWC_pcie_ctrl_x4_assert_intb_grt_sig)
	,.assert_intc_grt                    			(DWC_pcie_ctrl_x4_assert_intc_grt_sig)
	,.assert_intd_grt                    			(DWC_pcie_ctrl_x4_assert_intd_grt_sig)
	,.deassert_inta_grt                  			(DWC_pcie_ctrl_x4_deassert_inta_grt_sig)
	,.deassert_intb_grt                  			(DWC_pcie_ctrl_x4_deassert_intb_grt_sig)
	,.deassert_intc_grt                  			(DWC_pcie_ctrl_x4_deassert_intc_grt_sig)
	,.deassert_intd_grt                  			(DWC_pcie_ctrl_x4_deassert_intd_grt_sig)
	,.cfg_int_pin                        			(DWC_pcie_ctrl_x4_cfg_int_pin_sig)
	,.cfg_hp_slot_ctrl_access        				(DWC_pcie_ctrl_x4_cfg_hp_slot_ctrl_access_sig)
	,.cfg_dll_state_chged_en         				(DWC_pcie_ctrl_x4_cfg_dll_state_chged_en_sig)
	,.cfg_cmd_cpled_int_en           				(DWC_pcie_ctrl_x4_cfg_cmd_cpled_int_en_sig)
	,.cfg_hp_int_en                  				(DWC_pcie_ctrl_x4_cfg_hp_int_en_sig)
	,.cfg_pre_det_chged_en           				(DWC_pcie_ctrl_x4_cfg_pre_det_chged_en_sig)
	,.cfg_mrl_sensor_chged_en        				(DWC_pcie_ctrl_x4_cfg_mrl_sensor_chged_en_sig)
	,.cfg_pwr_fault_det_en           				(DWC_pcie_ctrl_x4_cfg_pwr_fault_det_en_sig)
	,.cfg_atten_button_pressed_en    				(DWC_pcie_ctrl_x4_cfg_atten_button_pressed_en_sig)
	,.cfg_br_ctrl_serren             				(DWC_pcie_ctrl_x4_cfg_br_ctrl_serren_sig)
	,.cfg_neg_link_width              				(DWC_pcie_ctrl_x4_cfg_neg_link_width_sig)
	,.pm_l1sub_state                 				(/*no connect*/)
	,.pm_master_state                				(/*no connect*/)
	,.pm_slave_state                 				(/*no connect*/)
	,.app_l1sub_disable              				(PCIE_SUB_CON_x4_app_l1sub_disable)
	,.pm_current_data_rate          				(DWC_pcie_ctrl_x4_pm_current_data_rate_sig)
	,.app_dev_num                       			(PCIE_SUB_CON_x4_app_dev_num_sig)
	,.app_bus_num                       			(PCIE_SUB_CON_x4_app_bus_num_sig)
	,.cfg_uncor_internal_err_sts        			(/*no connect*/)
	,.cfg_rcvr_overflow_err_sts         			(/*no connect*/)
	,.cfg_fc_protocol_err_sts           			(/*no connect*/)
	,.cfg_mlf_tlp_err_sts               			(/*no connect*/)
	,.cfg_surprise_down_er_sts          			(/*no connect*/)
	,.cfg_dl_protocol_err_sts           			(/*no connect*/)
	,.cfg_ecrc_err_sts                  			(/*no connect*/)
	,.cfg_corrected_internal_err_sts    			(/*no connect*/)
	,.cfg_replay_number_rollover_err_sts			(/*no connect*/)
	,.cfg_replay_timer_timeout_err_sts  			(/*no connect*/)
	,.cfg_bad_dllp_err_sts              			(/*no connect*/)
	,.cfg_bad_tlp_err_sts               			(/*no connect*/)
	,.cfg_rcvr_err_sts                  			(/*no connect*/)
	,.cfg_advisory_nf_sts               			(/*no connect*/)
	,.cfg_hdr_log_overflow_sts          			(/*no connect*/)
	,.radm_trgt1_atu_sloc_match         			(/*no connect*/)
	,.radm_trgt1_atu_cbuf_err						(/*no connect*/)
	,.pm_aspm_l1_enter_ready           				(/*no connect*/)
	,.radm_slot_pwr_limit              				(/*no connect*/)
	,.radm_slot_pwr_payload            				(/*no connect*/)
);

pcie_sub_ctrl u_pcie_sub_ctrl_x4 (
// SOC Interface
 .TEST_AUXCLK										(PCIE_SUB_CON_x4_TEST_AUXCLK)
,.TEST_MODE											(PCIE_SUB_CON_x4_TEST_MODE)
,.phy_refclk_in										(PCIE_SUB_CON_x4_phy_refclk_in)
,.aux_clk_soc										(PCIE_SUB_CON_x4_aux_clk_soc)
,.power_up_rst_n									(PCIE_SUB_CON_x4_power_up_rst_n)
,.button_rst_n										(PCIE_SUB_CON_x4_button_rst_n)
,.i_driver_apb_clk									(PCIE_SUB_CON_x4_i_driver_apb_clk)
,.i_driver_apb_rstn									(PCIE_SUB_CON_x4_i_driver_apb_rstn)
,.i_driver_apb_paddr								(PCIE_SUB_CON_x4_i_driver_apb_paddr)
,.i_driver_apb_psel									(PCIE_SUB_CON_x4_i_driver_apb_psel)
,.i_driver_apb_penable								(PCIE_SUB_CON_x4_i_driver_apb_penable)
,.i_driver_apb_pwrite								(PCIE_SUB_CON_x4_i_driver_apb_pwrite)
,.i_driver_apb_pwdata								(PCIE_SUB_CON_x4_i_driver_apb_pwdata)
,.o_driver_apb_prdata								(PCIE_SUB_CON_x4_o_driver_apb_prdata_sig)
,.o_driver_apb_pready								(PCIE_SUB_CON_x4_o_driver_apb_pready_sig)
,.o_driver_apb_pslverr								(PCIE_SUB_CON_x4_o_driver_apb_pslverr_sig)
,.pcie_irq											(PCIE_SUB_CON_x4_pcie_irq_sig)
,.pcie_irq_cp										(PCIE_SUB_CON_x4_pcie_irq_cp_sig)	/*no connect*/
,.pcie_irq_TOE										(PCIE_SUB_CON_x4_pcie_irq_TOE_sig)	/*no connect*/
,.QREQn_mstr_aclk_slv_aclk							(PCIE_SUB_CON_x4_QREQn_mstr_aclk_slv_aclk)
,.QACCEPTn_mstr_aclk_slv_aclk						(PCIE_SUB_CON_x4_QACCEPTn_mstr_aclk_slv_aclk_sig)
,.QDENY_mstr_aclk_slv_aclk							(PCIE_SUB_CON_x4_QDENY_mstr_aclk_slv_aclk_sig)
,.QACTIVE_mstr_aclk_slv_aclk						(PCIE_SUB_CON_x4_QACTIVE_mstr_aclk_slv_aclk_sig)
,.QREQn_dbi_aclk									(PCIE_SUB_CON_x4_QREQn_dbi_aclk)
,.QACCEPTn_dbi_aclk									(PCIE_SUB_CON_x4_QACCEPTn_dbi_aclk_sig)
,.QDENY_dbi_aclk									(PCIE_SUB_CON_x4_QDENY_dbi_aclk_sig)
,.QACTIVE_dbi_aclk									(PCIE_SUB_CON_x4_QACTIVE_dbi_aclk_sig)
,.QREQn_apb_aclk									(PCIE_SUB_CON_x4_QREQn_apb_aclk)
,.QACCEPTn_apb_aclk									(PCIE_SUB_CON_x4_QACCEPTn_apb_aclk_sig)
,.QDENY_apb_aclk									(PCIE_SUB_CON_x4_QDENY_apb_aclk_sig)
,.QACTIVE_apb_aclk									(PCIE_SUB_CON_x4_QACTIVE_apb_aclk_sig)
,.slv_awvalid										(PCIE_SUB_CON_x4_slv_awvalid)
,.slv_wvalid										(PCIE_SUB_CON_x4_slv_wvalid)
,.slv_bready										(PCIE_SUB_CON_x4_slv_bready)
,.slv_arvalid										(PCIE_SUB_CON_x4_slv_arvalid)
,.slv_rready										(PCIE_SUB_CON_x4_slv_rready)
,.slv_wlast											(PCIE_SUB_CON_x4_slv_wlast)
,.ip_slv_awvalid									(PCIE_SUB_CON_x4_ip_slv_awvalid_sig)
,.ip_slv_wvalid										(PCIE_SUB_CON_x4_ip_slv_wvalid_sig)
,.ip_slv_bready										(PCIE_SUB_CON_x4_ip_slv_bready_sig)
,.ip_slv_arvalid									(PCIE_SUB_CON_x4_ip_slv_arvalid_sig)
,.ip_slv_rready										(PCIE_SUB_CON_x4_ip_slv_rready_sig)
,.ip_slv_wlast										(PCIE_SUB_CON_x4_ip_slv_wlast_sig)
,.slv_awready										(PCIE_SUB_CON_x4_slv_awready_sig)
,.slv_wready										(PCIE_SUB_CON_x4_slv_wready_sig)
,.slv_bvalid										(PCIE_SUB_CON_x4_slv_bvalid_sig)
,.slv_arready										(PCIE_SUB_CON_x4_slv_arready_sig)
,.slv_rvalid										(PCIE_SUB_CON_x4_slv_rvalid_sig)
,.slv_rlast											(PCIE_SUB_CON_x4_slv_rlast_sig)
,.ip_slv_awready									(PCIE_SUB_CON_x4_ip_slv_awready_sig)
,.ip_slv_wready										(PCIE_SUB_CON_x4_ip_slv_wready_sig)
,.ip_slv_bvalid										(PCIE_SUB_CON_x4_ip_slv_bvalid_sig)
,.ip_slv_arready									(PCIE_SUB_CON_x4_ip_slv_arready_sig)
,.ip_slv_rvalid										(PCIE_SUB_CON_x4_ip_slv_rvalid_sig)
,.ip_slv_rlast										(PCIE_SUB_CON_x4_ip_slv_rlast_sig)
,.dbi_awvalid										(PCIE_SUB_CON_x4_dbi_awvalid)
,.dbi_wvalid										(PCIE_SUB_CON_x4_dbi_wvalid)
,.dbi_bready										(PCIE_SUB_CON_x4_dbi_bready)
,.dbi_arvalid										(PCIE_SUB_CON_x4_dbi_arvalid)
,.dbi_rready										(PCIE_SUB_CON_x4_dbi_rready)
,.dbi_wlast											(PCIE_SUB_CON_x4_dbi_wlast)
,.ip_dbi_awvalid									(PCIE_SUB_CON_x4_ip_dbi_awvalid_sig)
,.ip_dbi_wvalid										(PCIE_SUB_CON_x4_ip_dbi_wvalid_sig)
,.ip_dbi_bready										(PCIE_SUB_CON_x4_ip_dbi_bready_sig)
,.ip_dbi_arvalid									(PCIE_SUB_CON_x4_ip_dbi_arvalid_sig)
,.ip_dbi_rready										(PCIE_SUB_CON_x4_ip_dbi_rready_sig)
,.ip_dbi_wlast										(PCIE_SUB_CON_x4_ip_dbi_wlast_sig)
,.dbi_awready										(PCIE_SUB_CON_x4_dbi_awready_sig)
,.dbi_wready										(PCIE_SUB_CON_x4_dbi_wready_sig)
,.dbi_bvalid										(PCIE_SUB_CON_x4_dbi_bvalid_sig)
,.dbi_arready										(PCIE_SUB_CON_x4_dbi_arready_sig)
,.dbi_rvalid										(PCIE_SUB_CON_x4_dbi_rvalid_sig)
,.dbi_rlast											(PCIE_SUB_CON_x4_dbi_rlast_sig)
,.ip_dbi_awready									(PCIE_SUB_CON_x4_ip_dbi_awready_sig)
,.ip_dbi_wready										(PCIE_SUB_CON_x4_ip_dbi_wready_sig)
,.ip_dbi_bvalid										(PCIE_SUB_CON_x4_ip_dbi_bvalid_sig)
,.ip_dbi_arready									(PCIE_SUB_CON_x4_ip_dbi_arready_sig)
,.ip_dbi_rvalid										(PCIE_SUB_CON_x4_ip_dbi_rvalid_sig)
,.ip_dbi_rlast										(PCIE_SUB_CON_x4_ip_dbi_rlast_sig)
,.mstr_arready										(PCIE_SUB_CON_x4_mstr_arready)
,.mstr_awready										(PCIE_SUB_CON_x4_mstr_awready)
,.mstr_wready										(PCIE_SUB_CON_x4_mstr_wready)
,.ip_mstr_arready									(PCIE_SUB_CON_x4_ip_mstr_arready_sig)
,.ip_mstr_awready									(PCIE_SUB_CON_x4_ip_mstr_awready_sig)
,.ip_mstr_wready									(PCIE_SUB_CON_x4_ip_mstr_wready_sig)
,.ip_mstr_arvalid									(PCIE_SUB_CON_x4_ip_mstr_arvalid_sig)
,.ip_mstr_awvalid									(PCIE_SUB_CON_x4_ip_mstr_awvalid_sig)
,.ip_mstr_wvalid									(PCIE_SUB_CON_x4_ip_mstr_wvalid_sig)
,.mstr_arvalid										(PCIE_SUB_CON_x4_mstr_arvalid_sig)
,.mstr_awvalid										(PCIE_SUB_CON_x4_mstr_awvalid_sig)
,.mstr_wvalid										(PCIE_SUB_CON_x4_mstr_wvalid_sig)
// x4_LINK
,.mstr_rready										(DWC_pcie_ctrl_x4_mstr_rready_sig)
,.mstr_bready										(DWC_pcie_ctrl_x4_mstr_bready_sig)
,.mstr_bvalid										(DWC_pcie_ctrl_x4_mstr_bvalid)
,.mstr_rvalid										(DWC_pcie_ctrl_x4_mstr_rvalid)
,.mstr_aclk											(PCIE_SUB_CON_x4_mstr_aclk_sig)
,.mstr_aresetn										(PCIE_SUB_CON_x4_mstr_aresetn_sig)
,.mstr_aclk_soc										(PCIE_SUB_CON_x4_mstr_aclk_soc)
,.mstr_aclk_active									(DWC_pcie_ctrl_x4_mstr_aclk_active_sig)
,.mstr_arlen										(DWC_pcie_ctrl_x4_mstr_arlen_sig)
,.mstr_armisc_info									(DWC_pcie_ctrl_x4_mstr_armisc_info_sig)
,.mstr_armisc_info_dma								(DWC_pcie_ctrl_x4_mstr_armisc_info_dma_sig)
,.mstr_armisc_info_zeroread							(DWC_pcie_ctrl_x4_mstr_armisc_info_zeroread_sig)
,.mstr_armisc_info_last_dcmp_tlp					(DWC_pcie_ctrl_x4_mstr_armisc_info_last_dcmp_tlp_sig)
,.mstr_awlen										(DWC_pcie_ctrl_x4_mstr_awlen_sig)
,.mstr_awmisc_info									(DWC_pcie_ctrl_x4_mstr_awmisc_info_sig)
,.mstr_awmisc_info_dma								(DWC_pcie_ctrl_x4_mstr_awmisc_info_dma_sig)
,.mstr_awmisc_info_ep								(DWC_pcie_ctrl_x4_mstr_awmisc_info_ep_sig)
,.mstr_awmisc_info_hdr_34dw							(DWC_pcie_ctrl_x4_mstr_awmisc_info_hdr_34dw_sig)
,.mstr_awmisc_info_last_dcmp_tlp					(DWC_pcie_ctrl_x4_mstr_awmisc_info_last_dcmp_tlp_sig)
,.mstr_wlast										(DWC_pcie_ctrl_x4_mstr_wlast_sig)
,.mstr_bmisc_info_cpl_stat							(PCIE_SUB_CON_x4_mstr_bmisc_info_cpl_stat_sig)
,.mstr_rlast										(DWC_pcie_ctrl_x4_mstr_rlast)
,.mstr_rmisc_info									(PCIE_SUB_CON_x4_mstr_rmisc_info_sig)
,.mstr_rmisc_info_cpl_stat							(PCIE_SUB_CON_x4_mstr_rmisc_info_cpl_stat_sig)
,.slv_aclk											(PCIE_SUB_CON_x4_slv_aclk_sig)
,.slv_aresetn										(PCIE_SUB_CON_x4_slv_aresetn_sig)
,.slv_aclk_soc										(PCIE_SUB_CON_x4_slv_aclk_soc)
,.slv_aclk_active									(DWC_pcie_ctrl_x4_slv_aclk_active_sig)
,.slv_armisc_info									(PCIE_SUB_CON_x4_slv_armisc_info_sig)
,.slv_armisc_info_atu_bypass						(PCIE_SUB_CON_x4_slv_armisc_info_atu_bypass_sig)
,.slv_awmisc_info									(PCIE_SUB_CON_x4_slv_awmisc_info_sig)
,.slv_awmisc_info_atu_bypass						(PCIE_SUB_CON_x4_slv_awmisc_info_atu_bypass_sig)
,.slv_awmisc_info_hdr_34dw							(PCIE_SUB_CON_x4_slv_awmisc_info_hdr_34dw_sig)
,.slv_awmisc_info_p_tag								(PCIE_SUB_CON_x4_slv_awmisc_info_p_tag_sig)
,.slv_wmisc_info_ep									(PCIE_SUB_CON_x4_slv_wmisc_info_ep_sig)
,.slv_wmisc_info_silentDrop							(PCIE_SUB_CON_x4_slv_wmisc_info_silentDrop_sig)
,.slv_bmisc_info									(DWC_pcie_ctrl_x4_slv_bmisc_info_sig)
,.slv_rmisc_info									(DWC_pcie_ctrl_x4_slv_rmisc_info_sig)
,.dbi_aclk											(PCIE_SUB_CON_x4_dbi_aclk_sig)
,.dbi_aresetn										(PCIE_SUB_CON_x4_dbi_aresetn_sig)
,.dbi_aclk_soc										(PCIE_SUB_CON_x4_dbi_aclk_soc)
,.dbi_aclk_active									(DWC_pcie_ctrl_x4_dbi_aclk_active_sig)
,.mac_phy_pclk_rate                  				(DWC_pcie_ctrl_x4_mac_phy_pclk_rate_sig)
,.current_data_rate									(DWC_pcie_ctrl_x4_pm_current_data_rate_sig)
,.phy_mac_phystatus									({PIPE_MUX_x4_phy_mac_phystatus_sig
													 ,PCIE_PHY_pipe_lane1_phystatus_sig
													 ,PCIE_PHY_pipe_lane0_phystatus_sig})
,.mac_phy_txelecidle								(DWC_pcie_ctrl_x4_mac_phy_txelecidle_sig)
,.mac_phy_txcompliance								(DWC_pcie_ctrl_x4_mac_phy_txcompliance_sig)
,.mac_phy_rate										(DWC_pcie_ctrl_x4_mac_phy_rate_sig)
,.mac_phy_invalid_req								(DWC_pcie_ctrl_x4_mac_phy_invalid_req_sig)
,.mac_phy_rxeqeval									(DWC_pcie_ctrl_x4_mac_phy_rxeqeval_sig)
,.mac_phy_rxeqinprogress							(DWC_pcie_ctrl_x4_mac_phy_rxeqinprogress_sig)
,.phy_mac_fomfeedback               				({PIPE_MUX_x4_phy_mac_fomfeedback_sig
													 ,PCIE_PHY_pipe_rx1_eq_fig_merit_sig
													 ,PCIE_PHY_pipe_rx0_eq_fig_merit_sig})
,.phy_mac_dirfeedback       						({PIPE_MUX_x4_phy_mac_dirfeedback_sig
													 ,PCIE_PHY_pipe_rx1_eq_dir_change_sig
													 ,PCIE_PHY_pipe_rx0_eq_dir_change_sig})
,.phy_mac_rxelecidle_in								({PIPE_MUX_x4_phy_mac_rxelecidle_sig
													 ,PCIE_PHY_pipe_rx1_elecidle_sig
													 ,PCIE_PHY_pipe_rx0_elecidle_sig})
,.phy_mac_rxelecidle_out							(PCIE_SUB_CON_x4_phy_mac_rxelecidle_out_sig)
,.pclk												(PCIE_PHY_pipe_lane0_pclk_sig)
,.sync_perst_n										(PCIE_SUB_CON_x4_sync_perst_n_sig)
,.phy_perst_n										(PCIE_SUB_CON_x4_phy_perst_n_sig) // no use
,.trgt_cpl_timeout									(DWC_pcie_ctrl_x4_trgt_cpl_timeout_sig)
,.trgt_timeout_cpl_func_num							(DWC_pcie_ctrl_x4_trgt_timeout_cpl_func_num_sig)
,.trgt_timeout_cpl_tc								(DWC_pcie_ctrl_x4_trgt_timeout_cpl_tc_sig)
,.trgt_timeout_cpl_attr								(DWC_pcie_ctrl_x4_trgt_timeout_cpl_attr_sig)
,.trgt_timeout_cpl_len								(DWC_pcie_ctrl_x4_trgt_timeout_cpl_len_sig)
,.trgt_timeout_lookup_id							(DWC_pcie_ctrl_x4_trgt_timeout_lookup_id_sig)
,.trgt_lookup_id									(DWC_pcie_ctrl_x4_trgt_lookup_id_sig)
,.trgt_lookup_empty									(DWC_pcie_ctrl_x4_trgt_lookup_emptry_sig)
,.app_margining_ready								(PCIE_SUB_CON_x4_app_margining_ready_sig)
,.app_margining_software_ready						(PCIE_SUB_CON_x4_app_margining_software_ready_sig)
,.pm_linkst_in_l1sub								(DWC_pcie_ctrl_x4_pm_linkst_in_l1sub_sig)
,.cfg_l1sub_en										(DWC_pcie_ctrl_x4_cfg_l1sub_en_sig)
,.app_clk_pm_en										(PCIE_SUB_CON_x4_app_clk_pm_en_sig)
,.cfg_hw_auto_sp_dis								(DWC_pcie_ctrl_x4_cfg_hw_auto_sp_dis_sig)
,.cfg_phy_control									(DWC_pcie_ctrl_x4_cfg_phy_control_sig)
,.ven_msg_grant										(DWC_pcie_ctrl_x4_ven_msg_grant_sig)
,.ven_msg_fmt                        				(PCIE_SUB_CON_x4_ven_msg_fmt_sig)
,.ven_msg_type                       				(PCIE_SUB_CON_x4_ven_msg_type_sig)
,.ven_msg_tc                         				(PCIE_SUB_CON_x4_ven_msg_tc_sig)
,.ven_msg_td                         				(PCIE_SUB_CON_x4_ven_msg_td_sig)
,.ven_msg_ep                         				(PCIE_SUB_CON_x4_ven_msg_ep_sig)
,.ven_msg_attr                       				(PCIE_SUB_CON_x4_ven_msg_attr_sig)
,.ven_msg_len                        				(PCIE_SUB_CON_x4_ven_msg_len_sig)
,.ven_msg_func_num                   				(PCIE_SUB_CON_x4_ven_msg_func_num_sig)
,.ven_msg_tag                        				(PCIE_SUB_CON_x4_ven_msg_tag_sig)
,.ven_msg_code                       				(PCIE_SUB_CON_x4_ven_msg_code_sig)
,.ven_msg_data                       				(PCIE_SUB_CON_x4_ven_msg_data_sig)
,.ven_msg_req                        				(PCIE_SUB_CON_x4_ven_msg_req_sig)
,.pm_xtlh_block_tlp                  				(DWC_pcie_ctrl_x4_pm_xtlh_block_tlp_sig)
,.ven_msi_req                        				(PCIE_SUB_CON_x4_ven_msi_req_sig)
,.ven_msi_func_num                   				(PCIE_SUB_CON_x4_ven_msi_func_num_sig)
,.ven_msi_tc                         				(PCIE_SUB_CON_x4_ven_msi_tc_sig)
,.ven_msi_vector                     				(PCIE_SUB_CON_x4_ven_msi_vector_sig)
,.ven_msi_grant                      				(DWC_pcie_ctrl_x4_ven_msi_grant_sig)
,.cfg_msi_en                         				(DWC_pcie_ctrl_x4_cfg_msi_en_sig)
,.cfg_msi_mask                       				(DWC_pcie_ctrl_x4_cfg_msi_mask_sig)
,.cfg_msi_pending                    				(PCIE_SUB_CON_x4_cfg_msi_pending_sig)
,.dbg_table                           				(PCIE_SUB_CON_x4_dbg_table_sig)
,.dbg_pba                             				(PCIE_SUB_CON_x4_dbg_pba_sig)
,.dpa_substate_update                 				(DWC_pcie_ctrl_x4_dpa_substate_update_sig)
,.app_ltr_msg_req                    				(PCIE_SUB_CON_x4_app_ltr_msg_req_sig)
,.app_ltr_msg_latency                				(PCIE_SUB_CON_x4_app_ltr_msg_latency_sig)
,.app_ltr_msg_func_num               				(PCIE_SUB_CON_x4_app_ltr_msg_func_num_sig)
,.app_ltr_msg_grant                  				(DWC_pcie_ctrl_x4_app_ltr_msg_grant_sig)
,.cfg_ltr_m_en                       				(DWC_pcie_ctrl_x4_cfg_ltr_m_en_sig)
,.cfg_ltr_max_latency                				(DWC_pcie_ctrl_x4_cfg_ltr_max_latency_sig)
,.cfg_disable_ltr_clr_msg            				(DWC_pcie_ctrl_x4_cfg_disable_ltr_clr_msg_sig)
,.app_ltr_latency                    				(DWC_pcie_ctrl_x4_app_ltr_latency_sig)
,.radm_msg_ltr                       				(DWC_pcie_ctrl_x4_radm_msg_ltr_sig)
,.app_hdr_valid                      				(PCIE_SUB_CON_x4_app_hdr_valid_sig)
,.app_hdr_log                        				(PCIE_SUB_CON_x4_app_hdr_log_sig)
,.app_err_bus                        				(PCIE_SUB_CON_x4_app_err_bus_sig)
,.app_err_advisory                   				(PCIE_SUB_CON_x4_app_err_advisory_sig)
,.app_poisoned_tlp_type              				(PCIE_SUB_CON_x4_app_poisoned_tlp_type_sig)
,.app_err_func_num                   				(PCIE_SUB_CON_x4_app_err_func_num_sig)
,.radm_q_not_empty                   				(DWC_pcie_ctrl_x4_radm_q_not_empty_sig)
,.radm_qoverflow                     				(DWC_pcie_ctrl_x4_radm_qoverflow_sig)
,.app_dbi_ro_wr_disable              				(PCIE_SUB_CON_x4_app_dbi_ro_wr_disable_sig)
,.lbc_ext_addr                       				(DWC_pcie_ctrl_x4_lbc_ext_addr_sig)
,.lbc_ext_dout                       				(DWC_pcie_ctrl_x4_lbc_ext_dout_sig)
,.lbc_ext_cs                         				(DWC_pcie_ctrl_x4_lbc_ext_cs_sig)
,.lbc_ext_wr                         				(DWC_pcie_ctrl_x4_lbc_ext_wr_sig)
,.lbc_ext_rom_access                 				(DWC_pcie_ctrl_x4_lbc_ext_rom_access_sig)
,.lbc_ext_io_access                  				(DWC_pcie_ctrl_x4_lbc_ext_io_access_sig)
,.lbc_ext_bar_num                    				(DWC_pcie_ctrl_x4_lbc_ext_bar_num_sig)
,.ext_lbc_ack                        				(PCIE_SUB_CON_x4_ext_lbc_ack_sig)
,.ext_lbc_din                        				(PCIE_SUB_CON_x4_ext_lbc_din_sig)
,.radm_pm_turnoff                    				(DWC_pcie_ctrl_x4_radm_pm_turnoff_sig)
,.radm_msg_unlock                    				(DWC_pcie_ctrl_x4_radm_msg_unlock_sig)
,.outband_pwrup_cmd                  				(PCIE_SUB_CON_x4_outband_pwrup_cmd_sig)
,.cfg_pbus_num                       				(DWC_pcie_ctrl_x4_cfg_pbus_num_sig)
,.cfg_pbus_dev_num                   				(DWC_pcie_ctrl_x4_cfg_pbus_dev_num_sig)
,.pm_status                          				(DWC_pcie_ctrl_x4_pm_status_sig)
,.pm_curnt_state                     				(DWC_pcie_ctrl_x4_pm_curnt_state_sig)
,.cxpl_debug_info                    				(DWC_pcie_ctrl_x4_cxpl_debug_info_sig)
,.cxpl_debug_info_ei                 				(DWC_pcie_ctrl_x4_cxpl_debug_info_ei_sig)
,.cfg_bar0_start                     				(DWC_pcie_ctrl_x4_cfg_bar0_start_sig)
,.cfg_bar0_limit                     				(DWC_pcie_ctrl_x4_cfg_bar0_limit_sig)
,.cfg_bar1_start                     				(DWC_pcie_ctrl_x4_cfg_bar1_start_sig)
,.cfg_bar1_limit                     				(DWC_pcie_ctrl_x4_cfg_bar1_limit_sig)
,.cfg_bar2_start                     				(DWC_pcie_ctrl_x4_cfg_bar2_start_sig)
,.cfg_bar2_limit                     				(DWC_pcie_ctrl_x4_cfg_bar2_limit_sig)
,.cfg_bar3_start                     				(DWC_pcie_ctrl_x4_cfg_bar3_start_sig)
,.cfg_bar3_limit                     				(DWC_pcie_ctrl_x4_cfg_bar3_limit_sig)
,.cfg_bar4_start                     				(DWC_pcie_ctrl_x4_cfg_bar4_start_sig)
,.cfg_bar4_limit                     				(DWC_pcie_ctrl_x4_cfg_bar4_limit_sig)
,.cfg_bar5_start                     				(DWC_pcie_ctrl_x4_cfg_bar5_start_sig)
,.cfg_bar5_limit                     				(DWC_pcie_ctrl_x4_cfg_bar5_limit_sig)
,.cfg_exp_rom_start                  				(DWC_pcie_ctrl_x4_cfg_exp_rom_start_sig)
,.cfg_exp_rom_limit                  				(DWC_pcie_ctrl_x4_cfg_exp_rom_limit_sig)
,.radm_vendor_msg                    				(DWC_pcie_ctrl_x4_radm_vendor_msg_sig)
,.radm_msg_payload                   				(DWC_pcie_ctrl_x4_radm_msg_payload_sig)
,.radm_msg_req_id                    				(DWC_pcie_ctrl_x4_radm_msg_req_id_sig)
,.smlh_ltssm_state_rcvry_eq          				(DWC_pcie_ctrl_x4_smlh_ltssm_state_rcvry_eq_sig)
,.cfg_2ndbus_num                     				(DWC_pcie_ctrl_x4_cfg_2ndbus_num_sig)
,.cfg_subbus_num                     				(DWC_pcie_ctrl_x4_cfg_subbus_num_sig)
,.cfg_2nd_reset                      				(DWC_pcie_ctrl_x4_cfg_2nd_reset_sig)
,.radm_cpl_timeout                   				(DWC_pcie_ctrl_x4_radm_cpl_timeout_sig)
,.radm_timeout_func_num              				(DWC_pcie_ctrl_x4_radm_timeout_func_num_sig)
,.radm_timeout_cpl_tc                				(DWC_pcie_ctrl_x4_radm_timeout_cpl_tc_sig)
,.radm_timeout_cpl_attr              				(DWC_pcie_ctrl_x4_radm_timeout_cpl_attr_sig)
,.radm_timeout_cpl_len               				(DWC_pcie_ctrl_x4_radm_timeout_cpl_len_sig)
,.radm_timeout_cpl_tag               				(DWC_pcie_ctrl_x4_radm_timeout_cpl_tag_sig)
,.edma_int                           				(DWC_pcie_ctrl_x4_edma_int_sig)
,.diag_ctrl_bus                      				(PCIE_SUB_CON_x4_diag_ctrl_bus_sig)
,.diag_status_bus                    				(DWC_pcie_ctrl_x4_diag_status_bus_sig)
,.core_clk											(PCIE_SUB_CON_x4_core_clk_sig)
,.core_clk_ug										(PCIE_SUB_CON_x4_core_clk_ug_sig)
,.en_aux_clk_g										(DWC_pcie_ctrl_x4_en_aux_clk_g_sig)
,.aux_clk											(PCIE_SUB_CON_x4_aux_clk_sig)
,.aux_clk_g											(PCIE_SUB_CON_x4_aux_clk_g_sig)
,.aux_clk_active									(PCIE_SUB_CON_x4_aux_clk_active_sig)
,.radm_clk_g										(PCIE_SUB_CON_x4_radm_clk_g_sig)
,.en_radm_clk_g										(DWC_pcie_ctrl_x4_en_radm_clk_g_sig)
,.radm_idle                          				(DWC_pcie_ctrl_x4_radm_idle_sig)
,.pwr_rst_n											(PCIE_SUB_CON_x4_pwr_rst_n_sig)
,.non_sticky_rst_n									(PCIE_SUB_CON_x4_non_stiky_rst_n_sig)
,.sticky_rst_n										(PCIE_SUB_CON_x4_sticky_rst_n_sig)
,.core_rst_n										(PCIE_SUB_CON_x4_core_rst_n_sig)
,.perst_n											(PCIE_SUB_CON_x4_perst_n)
,.app_clk_req_n                      				(PCIE_SUB_CON_x4_app_clk_req_n_sig)
,.phy_clk_req_n                      				(PCIE_SUB_CON_x4_phy_clk_req_n_sig)
,.app_init_rst                       				(PCIE_SUB_CON_x4_app_init_rst_sig)
,.app_req_entr_l1                    				(PCIE_SUB_CON_x4_app_req_entr_l1_sig)
,.app_ready_entr_l23                 				(PCIE_SUB_CON_x4_app_ready_entr_l23_sig)
,.app_req_exit_l1                    				(PCIE_SUB_CON_x4_app_req_exit_l1_sig)
,.app_xfer_pending                   				(PCIE_SUB_CON_x4_app_xfer_pending_sig)
,.exp_rom_validation_status_strobe   				(PCIE_SUB_CON_x4_exp_rom_validation_status_strobe_sig)
,.exp_rom_validation_status          				(PCIE_SUB_CON_x4_exp_rom_validation_status_sig)
,.exp_rom_validation_details_strobe  				(PCIE_SUB_CON_x4_exp_rom_validation_details_strobe_sig)
,.exp_rom_validation_details         				(PCIE_SUB_CON_x4_exp_rom_validation_details_sig)
,.brdg_slv_xfer_pending              				(DWC_pcie_ctrl_x4_brdg_slv_xfer_pending_sig)
,.brdg_dbi_xfer_pending              				(DWC_pcie_ctrl_x4_brdg_dbi_xfer_pending_sig)
,.edma_xfer_pending                  				(DWC_pcie_ctrl_x4_edma_xfer_pending_sig)
,.radm_xfer_pending                  				(DWC_pcie_ctrl_x4_radm_xfer_pending_sig)
,.smlh_req_rst_not                   				(DWC_pcie_ctrl_x4_smlh_req_rst_not_sig)
,.link_req_rst_not                   				(DWC_pcie_ctrl_x4_link_req_rst_not_sig)
,.smlh_link_up                       				(DWC_pcie_ctrl_x4_smlh_link_up_sig)
,.rdlh_link_up                       				(DWC_pcie_ctrl_x4_rdlh_link_up_sig)
,.app_req_retry_en                   				(PCIE_SUB_CON_x4_app_req_retry_en_sig)
,.app_pf_req_retry_en                				(PCIE_SUB_CON_x4_app_pf_req_retry_en_sig)
,.wake                               				(DWC_pcie_ctrl_x4_wake_sig)
,.local_ref_clk_req_n                				(DWC_pcie_ctrl_x4_local_ref_clk_req_n_sig)
,.cfg_max_rd_req_size                				(DWC_pcie_ctrl_x4_cfg_max_rd_req_size_sig)
,.cfg_bus_master_en                  				(DWC_pcie_ctrl_x4_cfg_bus_master_en_sig)
,.cfg_max_payload_size               				(DWC_pcie_ctrl_x4_cfg_max_payload_size_sig)
,.cfg_rcb                            				(DWC_pcie_ctrl_x4_cfg_rcb_sig)
,.cfg_mem_space_en                   				(DWC_pcie_ctrl_x4_cfg_mem_space_en_sig)
,.cfg_pm_no_soft_rst                 				(DWC_pcie_ctrl_x4_cfg_pm_no_soft_rst_sig)
,.smlh_ltssm_state                   				(DWC_pcie_ctrl_x4_smlh_ltssm_state_sig)
,.pm_dstate                          				(DWC_pcie_ctrl_x4_pm_dstate_sig)
,.aux_pm_en                          				(DWC_pcie_ctrl_x4_aux_pm_en_sig)
,.pm_pme_en                          				(DWC_pcie_ctrl_x4_pm_pme_en_sig)
,.pm_linkst_in_l0s                   				(DWC_pcie_ctrl_x4_pm_linkst_in_l0s_sig)
,.pm_linkst_in_l1                    				(DWC_pcie_ctrl_x4_pm_linkst_in_l1_sig)
,.pm_linkst_in_l2                    				(DWC_pcie_ctrl_x4_pm_linkst_in_l2_sig)
,.pm_linkst_l2_exit                  				(DWC_pcie_ctrl_x4_pm_linkst_l2_exit_sig)
,.pm_req_sticky_rst                  				(DWC_pcie_ctrl_x4_pm_req_sticky_rst_sig)
,.pm_req_core_rst                    				(DWC_pcie_ctrl_x4_pm_req_core_rst_sig)
,.pm_req_non_sticky_rst              				(DWC_pcie_ctrl_x4_pm_req_non_sticky_rst_sig)
,.pm_sel_aux_clk                     				(DWC_pcie_ctrl_x4_pm_sel_aux_clk_sig)
,.pm_en_core_clk                     				(DWC_pcie_ctrl_x4_pm_en_core_clk_sig)
,.pm_req_phy_rst                     				(DWC_pcie_ctrl_x4_pm_req_phy_rst_sig)
,.pm_req_phy_perst                   				(DWC_pcie_ctrl_x4_pm_req_phy_perst_sig)
,.cfg_link_auto_bw_int               				(DWC_pcie_ctrl_x4_cfg_link_auto_bw_int_sig)
,.cfg_link_auto_bw_msi               				(DWC_pcie_ctrl_x4_cfg_link_auto_bw_msi_sig)
,.cfg_bw_mgt_int                     				(DWC_pcie_ctrl_x4_cfg_bw_mgt_int_sig)
,.cfg_bw_mgt_msi                     				(DWC_pcie_ctrl_x4_cfg_bw_mgt_msi_sig)
,.cfg_link_eq_req_int                				(DWC_pcie_ctrl_x4_cfg_link_eq_req_int_sig)
,.msi_ctrl_io                        				(DWC_pcie_ctrl_x4_msi_ctrl_io_sig)
,.msi_ctrl_int                       				(DWC_pcie_ctrl_x4_msi_ctrl_int_sig)
,.msi_ctrl_int_vec                   				(DWC_pcie_ctrl_x4_msi_ctrl_int_vec_sig)
,.device_type                        				(PCIE_SUB_CON_x4_device_type_sig)
,.rx_lane_flip_en                    				(PCIE_SUB_CON_x4_rx_lane_flip_en_sig)
,.tx_lane_flip_en                    				(PCIE_SUB_CON_x4_tx_lane_flip_en_sig)
,.sys_atten_button_pressed           				(PCIE_SUB_CON_x4_sys_atten_button_pressed_sig)
,.sys_pre_det_state                  				(PCIE_SUB_CON_x4_sys_pre_det_state_sig)
,.sys_mrl_sensor_state               				(PCIE_SUB_CON_x4_sys_mrl_sensor_state_sig)
,.sys_pwr_fault_det                  				(PCIE_SUB_CON_x4_sys_pwr_fault_det_sig)
,.sys_mrl_sensor_chged               				(PCIE_SUB_CON_x4_sys_mrl_sensor_chged_sig)
,.sys_pre_det_chged                  				(PCIE_SUB_CON_x4_sys_pre_det_chged_sig)
,.sys_cmd_cpled_int                  				(PCIE_SUB_CON_x4_sys_cmd_cpled_int_sig)
,.sys_eml_interlock_engaged          				(PCIE_SUB_CON_x4_sys_eml_interlock_engaged_sig)
,.app_unlock_msg                     				(PCIE_SUB_CON_x4_app_unlock_msg_sig)
,.apps_pm_xmt_turnoff                				(PCIE_SUB_CON_x4_apps_pm_xmt_turnoff_sig)
,.cfg_pwr_ind                        				(DWC_pcie_ctrl_x4_cfg_pwr_ind_sig)
,.cfg_atten_ind                      				(DWC_pcie_ctrl_x4_cfg_atten_ind_sig)
,.cfg_pwr_ctrler_ctrl                				(DWC_pcie_ctrl_x4_cfg_pwr_ctrler_ctrl_sig)
,.cfg_sys_err_rc                     				(DWC_pcie_ctrl_x4_cfg_sys_err_rc_sig)
,.cfg_aer_rc_err_int                 				(DWC_pcie_ctrl_x4_cfg_aer_rc_err_int_sig)
,.cfg_aer_rc_err_msi                 				(DWC_pcie_ctrl_x4_cfg_aer_rc_err_msi_sig)
,.cfg_aer_int_msg_num                				(DWC_pcie_ctrl_x4_cfg_aer_int_msg_num_sig)
,.cfg_pme_int                        				(DWC_pcie_ctrl_x4_cfg_pme_int_sig)
,.cfg_pme_msi                        				(DWC_pcie_ctrl_x4_cfg_pme_msi_sig)
,.cfg_crs_sw_vis_en                  				(DWC_pcie_ctrl_x4_cfg_crs_sw_vis_en_sig)
,.cfg_pcie_cap_int_msg_num           				(DWC_pcie_ctrl_x4_cfg_pcie_cap_int_msg_num_sig)
,.cfg_eml_control                    				(DWC_pcie_ctrl_x4_cfg_eml_control_sig)
,.rtlh_rfc_upd                       				(DWC_pcie_ctrl_x4_rtlh_rfc_upd_sig)
,.rtlh_rfc_data                      				(DWC_pcie_ctrl_x4_rtlh_rfc_data_sig)
,.radm_inta_asserted                 				(DWC_pcie_ctrl_x4_radm_inta_asserted_sig)
,.radm_intb_asserted                 				(DWC_pcie_ctrl_x4_radm_intb_asserted_sig)
,.radm_intc_asserted                 				(DWC_pcie_ctrl_x4_radm_intc_asserted_sig)
,.radm_intd_asserted                 				(DWC_pcie_ctrl_x4_radm_intd_asserted_sig)
,.radm_inta_deasserted               				(DWC_pcie_ctrl_x4_radm_inta_deasserted_sig)
,.radm_intb_deasserted               				(DWC_pcie_ctrl_x4_radm_intb_deasserted_sig)
,.radm_intc_deasserted               				(DWC_pcie_ctrl_x4_radm_intc_deasserted_sig)
,.radm_intd_deasserted               				(DWC_pcie_ctrl_x4_radm_intd_deasserted_sig)
,.radm_correctable_err               				(DWC_pcie_ctrl_x4_radm_correctable_err_sig)
,.radm_nonfatal_err                  				(DWC_pcie_ctrl_x4_radm_nonfatal_err_sig)
,.radm_fatal_err                     				(DWC_pcie_ctrl_x4_radm_fatal_err_sig)
,.radm_pm_pme                        				(DWC_pcie_ctrl_x4_radm_pm_pme_sig)
,.radm_pm_to_ack                     				(DWC_pcie_ctrl_x4_radm_pm_to_ack_sig)
,.hp_pme                             				(DWC_pcie_ctrl_x4_hp_pme_sig)
,.hp_int                             				(DWC_pcie_ctrl_x4_hp_int_sig)
,.hp_msi                             				(DWC_pcie_ctrl_x4_hp_msi_sig)
,.cfg_obff_en                        				(DWC_pcie_ctrl_x4_cfg_obff_en_sig)
,.radm_msg_idle                     				(DWC_pcie_ctrl_x4_radm_msg_idle_sig)
,.radm_msg_obff                     				(DWC_pcie_ctrl_x4_radm_msg_obff_sig)
,.radm_msg_cpu_active               				(DWC_pcie_ctrl_x4_radm_msg_cpu_active_sig)
,.app_obff_idle_msg_req              				(PCIE_SUB_CON_x4_app_obff_idle_msg_req_sig)
,.app_obff_obff_msg_req              				(PCIE_SUB_CON_x4_app_obff_obff_msg_req_sig)
,.app_obff_cpu_active_msg_req        				(PCIE_SUB_CON_x4_app_obff_cpu_active_msg_req_sig)
,.app_obff_msg_grant                 				(DWC_pcie_ctrl_x4_app_obff_msg_grant_sig)
,.sys_int                            				(PCIE_SUB_CON_x4_sys_int_sig)
,.apps_pm_xmt_pme                    				(PCIE_SUB_CON_x4_apps_pm_xmt_pme_sig)
,.sys_aux_pwr_det                    				(PCIE_SUB_CON_x4_sys_aux_pwr_det_sig)
,.app_ltssm_enable                   				(PCIE_SUB_CON_x4_app_ltssm_enable_sig)
,.app_hold_phy_rst                   				(PCIE_SUB_CON_x4_app_hold_phy_rst_sig)
,.cfg_send_cor_err                   				(DWC_pcie_ctrl_x4_cfg_send_cor_err_sig)
,.cfg_send_nf_err                    				(DWC_pcie_ctrl_x4_cfg_send_nf_err_sig)
,.cfg_send_f_err                     				(DWC_pcie_ctrl_x4_cfg_send_f_err_sig)
,.cfg_int_disable                    				(DWC_pcie_ctrl_x4_cfg_int_disable_sig)
,.cfg_no_snoop_en                    				(DWC_pcie_ctrl_x4_cfg_no_snoop_en_sig)
,.cfg_relax_order_en                 				(DWC_pcie_ctrl_x4_cfg_relax_order_en_sig)
,.assert_inta_grt                    				(DWC_pcie_ctrl_x4_assert_inta_grt_sig)
,.assert_intb_grt                    				(DWC_pcie_ctrl_x4_assert_intb_grt_sig)
,.assert_intc_grt                    				(DWC_pcie_ctrl_x4_assert_intc_grt_sig)
,.assert_intd_grt                    				(DWC_pcie_ctrl_x4_assert_intd_grt_sig)
,.deassert_inta_grt                  				(DWC_pcie_ctrl_x4_deassert_inta_grt_sig)
,.deassert_intb_grt                  				(DWC_pcie_ctrl_x4_deassert_intb_grt_sig)
,.deassert_intc_grt                  				(DWC_pcie_ctrl_x4_deassert_intc_grt_sig)
,.deassert_intd_grt                  				(DWC_pcie_ctrl_x4_deassert_intd_grt_sig)
,.cfg_int_pin                        				(DWC_pcie_ctrl_x4_cfg_int_pin_sig)
,.cfg_hp_slot_ctrl_access        					(DWC_pcie_ctrl_x4_cfg_hp_slot_ctrl_access_sig)
,.cfg_dll_state_chged_en         					(DWC_pcie_ctrl_x4_cfg_dll_state_chged_en_sig)
,.cfg_cmd_cpled_int_en           					(DWC_pcie_ctrl_x4_cfg_cmd_cpled_int_en_sig)
,.cfg_hp_int_en                  					(DWC_pcie_ctrl_x4_cfg_hp_int_en_sig)
,.cfg_pre_det_chged_en           					(DWC_pcie_ctrl_x4_cfg_pre_det_chged_en_sig)
,.cfg_mrl_sensor_chged_en        					(DWC_pcie_ctrl_x4_cfg_mrl_sensor_chged_en_sig)
,.cfg_pwr_fault_det_en           					(DWC_pcie_ctrl_x4_cfg_pwr_fault_det_en_sig)
,.cfg_atten_button_pressed_en    					(DWC_pcie_ctrl_x4_cfg_atten_button_pressed_en_sig)
,.cfg_br_ctrl_serren             					(DWC_pcie_ctrl_x4_cfg_br_ctrl_serren_sig)
,.cfg_neg_link_width              					(DWC_pcie_ctrl_x4_cfg_neg_link_width_sig)
,.app_l1sub_disable              					(PCIE_SUB_CON_x4_app_l1sub_disable)
,.app_dev_num                       				(PCIE_SUB_CON_x4_app_dev_num_sig)
,.app_bus_num                       				(PCIE_SUB_CON_x4_app_bus_num_sig)
// PIPE_MUX
,.phy_clk_req_n_ovrd								(PIPE_MUX_o_mux_phy_clk_req_n_x4_sig)
//PCIE_PHY
,.pg_mode_en                            			(PCIE_SUB_CON_x4_pg_mode_en_sig)						//from driver to PHY
,.cr_para_sel										(PCIE_SUB_CON_x4_cr_para_sel_sig)						//from driver to PHY
,.phy_lane0_rx2tx_par_lb_en							(PCIE_SUB_CON_x4_phy_lane0_rx2tx_par_lb_en_sig)			//from driver to PHY
,.phy_lane1_rx2tx_par_lb_en							(PCIE_SUB_CON_x4_phy_lane1_rx2tx_par_lb_en_sig)			//from driver to PHY
,.phy_lane2_rx2tx_par_lb_en							(PCIE_SUB_CON_x4_phy_lane2_rx2tx_par_lb_en_sig)			//from driver to PHY
,.phy_lane3_rx2tx_par_lb_en							(PCIE_SUB_CON_x4_phy_lane3_rx2tx_par_lb_en_sig)			//from driver to PHY
,.ext_pclk_req										(PCIE_SUB_CON_x4_ext_pclk_req_sig)						//from driver to PHY
,.phy0_sram_bypass									(PCIE_SUB_CON_x4_phy0_sram_bypass_sig)					//from driver to PHY
,.phy0_sram_ext_ld_done                 			(PCIE_SUB_CON_x4_phy0_sram_ext_ld_done_sig)				//from driver to PHY
,.phy0_sram_init_done                   			(PCIE_PHY_phy0_sram_init_done_sig)						//from PHY to driver
,.phy0_mplla_force_en                           	(PCIE_SUB_CON_x4_phy0_mplla_force_en_sig)				//from driver to PHY
,.phy0_mplla_ssc_en                             	(PCIE_SUB_CON_x4_phy0_mplla_ssc_en_sig)					//from driver to PHY
,.phy0_mplla_state                              	(PCIE_PHY_phy0_mplla_state_sig)							//from PHY to driver
,.phy0_mplla_word_sync_clk_en                   	(PCIE_PHY_phy0_mplla_word_sync_clk_en_sig)				//from PHY to driver
,.phy0_mpllb_force_en                           	(PCIE_SUB_CON_x4_phy0_mpllb_force_en_sig)				//from driver to PHY
,.phy0_mpllb_ssc_en                             	(PCIE_SUB_CON_x4_phy0_mpllb_ssc_en_sig)					//from driver to PHY
,.phy0_mpllb_state                              	(PCIE_PHY_phy0_mpllb_state_sig)							//from PHY to driver
,.phy0_mpllb_word_sync_clk_en                   	(PCIE_PHY_phy0_mpllb_word_sync_clk_en_sig)				//from PHY to driver
,.phy0_pcs_pwr_stable                           	(PCIE_SUB_CON_x4_phy0_pcs_pwr_stable_sig)				//from driver to PHY
,.phy0_pma_pwr_stable                           	(PCIE_SUB_CON_x4_phy0_pma_pwr_stable_sig)				//from driver to PHY
,.phy_refclk_out									(PCIE_SUB_CON_x4_phy0_ref_alt_clk_p_sig)
,.phy0_ref_clkdet_en                            	(PCIE_SUB_CON_x4_phy0_ref_clkdet_en_sig)
,.phy0_rx_term_offset                           	(PCIE_SUB_CON_x4_phy0_rx_term_offset_sig)
,.phy0_txdn_term_offset                         	(PCIE_SUB_CON_x4_phy0_txdn_term_offset_sig)
,.phy0_txup_term_offset                         	(PCIE_SUB_CON_x4_phy0_txup_term_offset_sig)
,.phy_ext_ctrl_sel                              	(PCIE_SUB_CON_x4_phy_ext_ctrl_sel_sig)
,.phy_rtune_ack                                 	(PCIE_PHY_phy_rtune_ack_sig)
,.phy_rtune_req                                 	(PCIE_SUB_CON_x4_phy_rtune_req_sig)
,.phy_rx0_term_acdc                             	(PCIE_SUB_CON_x4_phy_rx0_term_acdc_sig)
,.phy_rx1_term_acdc                             	(PCIE_SUB_CON_x4_phy_rx1_term_acdc_sig)
,.phy_rx2_term_acdc                             	(PCIE_SUB_CON_x4_phy_rx2_term_acdc_sig)
,.phy_rx3_term_acdc                             	(PCIE_SUB_CON_x4_phy_rx3_term_acdc_sig)
,.pipe_lane0_cmn_refclk_mode                    	(PCIE_SUB_CON_x4_pipe_lane0_cmn_refclk_mode_sig)
,.pipe_lane1_cmn_refclk_mode                    	(PCIE_SUB_CON_x4_pipe_lane1_cmn_refclk_mode_sig)
,.pipe_lane2_cmn_refclk_mode                    	(PCIE_SUB_CON_x4_pipe_lane2_cmn_refclk_mode_sig)
,.pipe_lane3_cmn_refclk_mode                    	(PCIE_SUB_CON_x4_pipe_lane3_cmn_refclk_mode_sig)
,.phy0_ref_use_pad                              	(PCIE_SUB_CON_x4_phy0_ref_use_pad_sig)
,.pipe_lane0_phy_src_sel							(PCIE_SUB_CON_x4_pipe_lane0_phy_src_sel_sig)
,.pipe_lane1_phy_src_sel							(PCIE_SUB_CON_x4_pipe_lane1_phy_src_sel_sig)
,.pipe_lane2_phy_src_sel							(PCIE_SUB_CON_x4_pipe_lane2_phy_src_sel_sig)
,.pipe_lane3_phy_src_sel							(PCIE_SUB_CON_x4_pipe_lane3_phy_src_sel_sig)
,.pipe_lane0_protocol                           	(PCIE_SUB_CON_x4_pipe_lane0_protocol_sig)
,.pipe_lane1_protocol                           	(PCIE_SUB_CON_x4_pipe_lane1_protocol_sig)
,.pipe_lane2_protocol                           	(PCIE_SUB_CON_x4_pipe_lane2_protocol_sig)
,.pipe_lane3_protocol                           	(PCIE_SUB_CON_x4_pipe_lane3_protocol_sig)
,.pipe_rx0_sris_mode_en                         	(PCIE_SUB_CON_x4_pipe_rx0_sris_mode_en_sig)
,.pipe_rx1_sris_mode_en                         	(PCIE_SUB_CON_x4_pipe_rx1_sris_mode_en_sig)
,.pipe_rx2_sris_mode_en                         	(PCIE_SUB_CON_x4_pipe_rx2_sris_mode_en_sig)
,.pipe_rx3_sris_mode_en                         	(PCIE_SUB_CON_x4_pipe_rx3_sris_mode_en_sig)
,.pipe_rx0_es0_cmn_refclk_mode                  	(PCIE_SUB_CON_x4_pipe_rx0_es0_cmn_refclk_mode_sig)
,.pipe_rx1_es0_cmn_refclk_mode                  	(PCIE_SUB_CON_x4_pipe_rx1_es0_cmn_refclk_mode_sig)
,.pipe_rx2_es0_cmn_refclk_mode                  	(PCIE_SUB_CON_x4_pipe_rx2_es0_cmn_refclk_mode_sig)
,.pipe_rx3_es0_cmn_refclk_mode                  	(PCIE_SUB_CON_x4_pipe_rx3_es0_cmn_refclk_mode_sig)
,.pipe_rx0_termination                          	(PCIE_SUB_CON_x4_pipe_rx0_termination_sig)
,.pipe_rx1_termination                          	(PCIE_SUB_CON_x4_pipe_rx1_termination_sig)
,.pipe_rx2_termination                          	(PCIE_SUB_CON_x4_pipe_rx2_termination_sig)
,.pipe_rx3_termination                          	(PCIE_SUB_CON_x4_pipe_rx3_termination_sig)
		,.protocol0_ext_bs_rx_bigswing                  	(PCIE_SUB_CON_x4_protocol0_ext_bs_rx_bigswing_sig)
		,.protocol0_ext_bs_rx_level                     	(PCIE_SUB_CON_x4_protocol0_ext_bs_rx_level_sig)
		,.protocol0_ext_bs_tx_lowswing                  	(PCIE_SUB_CON_x4_protocol0_ext_bs_tx_lowswing_sig)
		,.protocol0_ext_mplla_bandwidth                 	(PCIE_SUB_CON_x4_protocol0_ext_mplla_bandwidth_sig)
		,.protocol0_ext_mplla_div10_clk_en              	(PCIE_SUB_CON_x4_protocol0_ext_mplla_div10_clk_en_sig)
		,.protocol0_ext_mplla_div16p5_clk_en            	(PCIE_SUB_CON_x4_protocol0_ext_mplla_div16p5_clk_en_sig)
		,.protocol0_ext_mplla_div8_clk_en               	(PCIE_SUB_CON_x4_protocol0_ext_mplla_div8_clk_en_sig)
		,.protocol0_ext_mplla_div_clk_en                	(PCIE_SUB_CON_x4_protocol0_ext_mplla_div_clk_en_sig)
		,.protocol0_ext_mplla_div_multiplier            	(PCIE_SUB_CON_x4_protocol0_ext_mplla_div_multiplier_sig)
		,.protocol0_ext_mplla_fracn_ctrl                	(PCIE_SUB_CON_x4_protocol0_ext_mplla_fracn_ctrl_sig)
		,.protocol0_ext_mplla_multiplier                	(PCIE_SUB_CON_x4_protocol0_ext_mplla_multiplier_sig)
		,.protocol0_ext_mplla_ssc_clk_sel               	(PCIE_SUB_CON_x4_protocol0_ext_mplla_ssc_clk_sel_sig)
		,.protocol0_ext_mplla_ssc_freq_cnt_init         	(PCIE_SUB_CON_x4_protocol0_ext_mplla_ssc_freq_cnt_init_sig)
		,.protocol0_ext_mplla_ssc_freq_cnt_peak         	(PCIE_SUB_CON_x4_protocol0_ext_mplla_ssc_freq_cnt_peak_sig)
		,.protocol0_ext_mplla_ssc_up_spread             	(PCIE_SUB_CON_x4_protocol0_ext_mplla_ssc_up_spread_sig)
		,.protocol0_ext_mplla_tx_clk_div                	(PCIE_SUB_CON_x4_protocol0_ext_mplla_tx_clk_div_sig)
		,.protocol0_ext_mpllb_bandwidth                 	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_bandwidth_sig)
		,.protocol0_ext_mpllb_div10_clk_en              	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_div10_clk_en_sig)
		,.protocol0_ext_mpllb_div8_clk_en               	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_div8_clk_en_sig)
		,.protocol0_ext_mpllb_div_clk_en                	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_div_clk_en_sig)
		,.protocol0_ext_mpllb_div_multiplier            	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_div_multiplier_sig)
		,.protocol0_ext_mpllb_fracn_ctrl                	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_fracn_ctrl_sig)
		,.protocol0_ext_mpllb_multiplier                	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_multiplier_sig)
		,.protocol0_ext_mpllb_ssc_clk_sel               	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_ssc_clk_sel_sig)
		,.protocol0_ext_mpllb_ssc_freq_cnt_init         	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_ssc_freq_cnt_init_sig)
		,.protocol0_ext_mpllb_ssc_freq_cnt_peak         	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_ssc_freq_cnt_peak_sig)
		,.protocol0_ext_mpllb_ssc_up_spread             	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_ssc_up_spread_sig)
		,.protocol0_ext_mpllb_tx_clk_div                	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_tx_clk_div_sig)
		,.protocol0_ext_ref_clk_div2_en                 	(PCIE_SUB_CON_x4_protocol0_ext_ref_clk_div2_en_sig)
		,.protocol0_ext_ref_clk_mplla_div2_en           	(PCIE_SUB_CON_x4_protocol0_ext_ref_clk_mplla_div2_en_sig)
		,.protocol0_ext_ref_clk_mpllb_div2_en           	(PCIE_SUB_CON_x4_protocol0_ext_ref_clk_mpllb_div2_en_sig)
		,.protocol0_ext_ref_range                       	(PCIE_SUB_CON_x4_protocol0_ext_ref_range_sig)
		,.protocol0_ext_rx_adapt_mode_g1                	(PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_mode_g1_sig)
		,.protocol0_ext_rx_adapt_mode_g2                	(PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_mode_g2_sig)
		,.protocol0_ext_rx_adapt_mode_g3                	(PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_mode_g3_sig)
		,.protocol0_ext_rx_adapt_mode_g4                	(PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_mode_g4_sig)
		,.protocol0_ext_rx_adapt_sel_g1                 	(PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_sel_g1_sig)
		,.protocol0_ext_rx_adapt_sel_g2                 	(PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_sel_g2_sig)
		,.protocol0_ext_rx_adapt_sel_g3                 	(PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_sel_g3_sig)
		,.protocol0_ext_rx_adapt_sel_g4                 	(PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_sel_g4_sig)
		,.protocol0_ext_rx_cdr_ppm_max_g1               	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_ppm_max_g1_sig)
		,.protocol0_ext_rx_cdr_ppm_max_g2               	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_ppm_max_g2_sig)
		,.protocol0_ext_rx_cdr_ppm_max_g3               	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_ppm_max_g3_sig)
		,.protocol0_ext_rx_cdr_ppm_max_g4               	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_ppm_max_g4_sig)
		,.protocol0_ext_rx_cdr_vco_freqband_g1          	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_freqband_g1_sig)
		,.protocol0_ext_rx_cdr_vco_freqband_g2          	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_freqband_g2_sig)
		,.protocol0_ext_rx_cdr_vco_freqband_g3          	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_freqband_g3_sig)
		,.protocol0_ext_rx_cdr_vco_freqband_g4          	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_freqband_g4_sig)
		,.protocol0_ext_rx_cdr_vco_step_ctrl_g1         	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_step_ctrl_g1_sig)
		,.protocol0_ext_rx_cdr_vco_step_ctrl_g2         	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_step_ctrl_g2_sig)
		,.protocol0_ext_rx_cdr_vco_step_ctrl_g3         	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_step_ctrl_g3_sig)
		,.protocol0_ext_rx_cdr_vco_step_ctrl_g4         	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_step_ctrl_g4_sig)
		,.protocol0_ext_rx_cdr_vco_temp_comp_en_g1      	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_temp_comp_en_g1_sig)
		,.protocol0_ext_rx_cdr_vco_temp_comp_en_g2      	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_temp_comp_en_g2_sig)
		,.protocol0_ext_rx_cdr_vco_temp_comp_en_g3      	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_temp_comp_en_g3_sig)
		,.protocol0_ext_rx_cdr_vco_temp_comp_en_g4      	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_temp_comp_en_g4_sig)
		,.protocol0_ext_rx_delta_iq_g1                  	(PCIE_SUB_CON_x4_protocol0_ext_rx_delta_iq_g1_sig)
		,.protocol0_ext_rx_delta_iq_g2                  	(PCIE_SUB_CON_x4_protocol0_ext_rx_delta_iq_g2_sig)
		,.protocol0_ext_rx_delta_iq_g3                  	(PCIE_SUB_CON_x4_protocol0_ext_rx_delta_iq_g3_sig)
		,.protocol0_ext_rx_delta_iq_g4                  	(PCIE_SUB_CON_x4_protocol0_ext_rx_delta_iq_g4_sig)
		,.protocol0_ext_rx_dfe_bypass_g1                	(PCIE_SUB_CON_x4_protocol0_ext_rx_dfe_bypass_g1_sig)
		,.protocol0_ext_rx_dfe_bypass_g2                	(PCIE_SUB_CON_x4_protocol0_ext_rx_dfe_bypass_g2_sig)
		,.protocol0_ext_rx_dfe_bypass_g3                	(PCIE_SUB_CON_x4_protocol0_ext_rx_dfe_bypass_g3_sig)
		,.protocol0_ext_rx_dfe_bypass_g4                	(PCIE_SUB_CON_x4_protocol0_ext_rx_dfe_bypass_g4_sig)
		,.protocol0_ext_rx_eq_att_lvl_g1                	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_att_lvl_g1_sig)
		,.protocol0_ext_rx_eq_att_lvl_g2                	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_att_lvl_g2_sig)
		,.protocol0_ext_rx_eq_att_lvl_g3                	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_att_lvl_g3_sig)
		,.protocol0_ext_rx_eq_att_lvl_g4                	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_att_lvl_g4_sig)
		,.protocol0_ext_rx_eq_ctle_boost_g1             	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_boost_g1_sig)
		,.protocol0_ext_rx_eq_ctle_boost_g2             	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_boost_g2_sig)
		,.protocol0_ext_rx_eq_ctle_boost_g3             	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_boost_g3_sig)
		,.protocol0_ext_rx_eq_ctle_boost_g4             	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_boost_g4_sig)
		,.protocol0_ext_rx_eq_ctle_pole_g1              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_pole_g1_sig)
		,.protocol0_ext_rx_eq_ctle_pole_g2              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_pole_g2_sig)
		,.protocol0_ext_rx_eq_ctle_pole_g3              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_pole_g3_sig)
		,.protocol0_ext_rx_eq_ctle_pole_g4              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_pole_g4_sig)
		,.protocol0_ext_rx_eq_dfe_tap1_g1               	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_dfe_tap1_g1_sig)
		,.protocol0_ext_rx_eq_dfe_tap1_g2               	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_dfe_tap1_g2_sig)
		,.protocol0_ext_rx_eq_dfe_tap1_g3               	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_dfe_tap1_g3_sig)
		,.protocol0_ext_rx_eq_dfe_tap1_g4               	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_dfe_tap1_g4_sig)
		,.protocol0_ext_rx_eq_vga1_gain_g1              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga1_gain_g1_sig)
		,.protocol0_ext_rx_eq_vga1_gain_g2              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga1_gain_g2_sig)
		,.protocol0_ext_rx_eq_vga1_gain_g3              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga1_gain_g3_sig)
		,.protocol0_ext_rx_eq_vga1_gain_g4              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga1_gain_g4_sig)
		,.protocol0_ext_rx_eq_vga2_gain_g1              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga2_gain_g1_sig)
		,.protocol0_ext_rx_eq_vga2_gain_g2              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga2_gain_g2_sig)
		,.protocol0_ext_rx_eq_vga2_gain_g3              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga2_gain_g3_sig)
		,.protocol0_ext_rx_eq_vga2_gain_g4              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga2_gain_g4_sig)
		,.protocol0_ext_rx_los_lfps_en                  	(PCIE_SUB_CON_x4_protocol0_ext_rx_los_lfps_en_sig)
		,.protocol0_ext_rx_los_pwr_up_cnt               	(PCIE_SUB_CON_x4_protocol0_ext_rx_los_pwr_up_cnt_sig)
		,.protocol0_ext_rx_los_threshold                	(PCIE_SUB_CON_x4_protocol0_ext_rx_los_threshold_sig)
		,.protocol0_ext_rx_misc_g1                      	(PCIE_SUB_CON_x4_protocol0_ext_rx_misc_g1_sig)
		,.protocol0_ext_rx_misc_g2                      	(PCIE_SUB_CON_x4_protocol0_ext_rx_misc_g2_sig)
		,.protocol0_ext_rx_misc_g3                      	(PCIE_SUB_CON_x4_protocol0_ext_rx_misc_g3_sig)
		,.protocol0_ext_rx_misc_g4                      	(PCIE_SUB_CON_x4_protocol0_ext_rx_misc_g4_sig)
		,.protocol0_ext_rx_ref_ld_val_g1                	(PCIE_SUB_CON_x4_protocol0_ext_rx_ref_ld_val_g1_sig)
		,.protocol0_ext_rx_ref_ld_val_g2                	(PCIE_SUB_CON_x4_protocol0_ext_rx_ref_ld_val_g2_sig)
		,.protocol0_ext_rx_ref_ld_val_g3                	(PCIE_SUB_CON_x4_protocol0_ext_rx_ref_ld_val_g3_sig)
		,.protocol0_ext_rx_ref_ld_val_g4                	(PCIE_SUB_CON_x4_protocol0_ext_rx_ref_ld_val_g4_sig)
		,.protocol0_ext_rx_vco_ld_val_g1                	(PCIE_SUB_CON_x4_protocol0_ext_rx_vco_ld_val_g1_sig)
		,.protocol0_ext_rx_vco_ld_val_g2                	(PCIE_SUB_CON_x4_protocol0_ext_rx_vco_ld_val_g2_sig)
		,.protocol0_ext_rx_vco_ld_val_g3                	(PCIE_SUB_CON_x4_protocol0_ext_rx_vco_ld_val_g3_sig)
		,.protocol0_ext_rx_vco_ld_val_g4                	(PCIE_SUB_CON_x4_protocol0_ext_rx_vco_ld_val_g4_sig)
		,.protocol0_ext_rx_vref_ctrl                    	(PCIE_SUB_CON_x4_protocol0_ext_rx_vref_ctrl_sig)
		,.protocol0_ext_sup_misc_g1                     	(PCIE_SUB_CON_x4_protocol0_ext_sup_misc_g1_sig)
		,.protocol0_ext_sup_misc_g2                     	(PCIE_SUB_CON_x4_protocol0_ext_sup_misc_g2_sig)
		,.protocol0_ext_sup_misc_g3                     	(PCIE_SUB_CON_x4_protocol0_ext_sup_misc_g3_sig)
		,.protocol0_ext_sup_misc_g4                     	(PCIE_SUB_CON_x4_protocol0_ext_sup_misc_g4_sig)
		,.protocol0_ext_tx_eq_main_g1                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_main_g1_sig)
		,.protocol0_ext_tx_eq_main_g2                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_main_g2_sig)
		,.protocol0_ext_tx_eq_main_g3                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_main_g3_sig)
		,.protocol0_ext_tx_eq_main_g4                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_main_g4_sig)
		,.protocol0_ext_tx_eq_ovrd_g1                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_ovrd_g1_sig)
		,.protocol0_ext_tx_eq_ovrd_g2                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_ovrd_g2_sig)
		,.protocol0_ext_tx_eq_ovrd_g3                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_ovrd_g3_sig)
		,.protocol0_ext_tx_eq_ovrd_g4                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_ovrd_g4_sig)
		,.protocol0_ext_tx_eq_post_g1                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_post_g1_sig)
		,.protocol0_ext_tx_eq_post_g2                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_post_g2_sig)
		,.protocol0_ext_tx_eq_post_g3                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_post_g3_sig)
		,.protocol0_ext_tx_eq_post_g4                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_post_g4_sig)
		,.protocol0_ext_tx_eq_pre_g1                    	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_pre_g1_sig)
		,.protocol0_ext_tx_eq_pre_g2                    	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_pre_g2_sig)
		,.protocol0_ext_tx_eq_pre_g3                    	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_pre_g3_sig)
		,.protocol0_ext_tx_eq_pre_g4                    	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_pre_g4_sig)
		,.protocol0_ext_tx_iboost_lvl                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_iboost_lvl_sig)
		,.protocol0_ext_tx_misc_g1                      	(PCIE_SUB_CON_x4_protocol0_ext_tx_misc_g1_sig)
		,.protocol0_ext_tx_misc_g2                      	(PCIE_SUB_CON_x4_protocol0_ext_tx_misc_g2_sig)
		,.protocol0_ext_tx_misc_g3                      	(PCIE_SUB_CON_x4_protocol0_ext_tx_misc_g3_sig)
		,.protocol0_ext_tx_misc_g4                      	(PCIE_SUB_CON_x4_protocol0_ext_tx_misc_g4_sig)
		,.protocol0_ext_tx_vboost_lvl                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_vboost_lvl_sig)
,.protocol_ext_mplla_recal_bank_sel             	(PCIE_SUB_CON_x4_protocol_ext_mplla_recal_bank_sel_sig)
,.protocol_ext_mplla_recal_bank_sel_ovrd_en     	(PCIE_SUB_CON_x4_protocol_ext_mplla_recal_bank_sel_ovrd_en_sig)
,.protocol_ext_mpllb_recal_bank_sel             	(PCIE_SUB_CON_x4_protocol_ext_mpllb_recal_bank_sel_sig)
,.protocol_ext_mpllb_recal_bank_sel_ovrd_en     	(PCIE_SUB_CON_x4_protocol_ext_mpllb_recal_bank_sel_ovrd_en_sig)
,.protocol_ext_rx_misc_ovrd_en                  	(PCIE_SUB_CON_x4_protocol_ext_rx_misc_ovrd_en_sig)
,.protocol_ext_sup_misc_ovrd_en                 	(PCIE_SUB_CON_x4_protocol_ext_sup_misc_ovrd_en_sig)
,.upcs_pwr_stable                               	(PCIE_SUB_CON_x4_upcs_pwr_stable_sig)
// TEST_MUX
,.phy_rst_n											(PCIE_SUB_CON_x4_phy_rst_n_sig)
,.phy_perst											(PCIE_SUB_CON_x4_phy_perst_sig)
// pcie_l12_err
	,.pcie_l12err_ctrl				 		(PCIE_SUB_CON_x4_pcie_l12err_ctrl_sig)
	,.pcie_l12err_status					({pcie_l12_err_inst_0_l12err_err_reported_sig
											 ,pcie_l12_err_inst_0_l12err_retry_reported_sig
											 ,8'b0
 											 ,pcie_l12_err_inst_0_xiuerr_nclk_off_sig
											 ,pcie_l12_err_inst_0_l12err_nclk_off_sig
											 ,14'b0})
	,.vendor_register_0			(/*no connect*/)
	,.vendor_register_1			(/*no connect*/)
	,.vendor_register_10			(/*no connect*/)
	,.vendor_register_11			(/*no connect*/)
	,.vendor_register_12			(/*no connect*/)
	,.vendor_register_13			(/*no connect*/)
	,.vendor_register_14			(/*no connect*/)
	,.vendor_register_15			(/*no connect*/)
	,.vendor_register_2			(/*no connect*/)
	,.vendor_register_3			(/*no connect*/)
	,.vendor_register_4			(/*no connect*/)
	,.vendor_register_5			(/*no connect*/)
	,.vendor_register_6			(/*no connect*/)
	,.vendor_register_7			(/*no connect*/)
	,.vendor_register_8			(/*no connect*/)
	,.vendor_register_9			(/*no connect*/)
);

PCIE_MEM_X4 u_PCIE_MEM_X4(
  .ib_mcpl_sb_ram_addra			(DWC_pcie_ctrl_x4_ib_mcpl_sb_ram_addra_sig),
  .ib_mcpl_sb_ram_addrb			(DWC_pcie_ctrl_x4_ib_mcpl_sb_ram_addrb_sig),
  .ib_mcpl_sb_ram_dina 			(DWC_pcie_ctrl_x4_ib_mcpl_sb_ram_dina_sig),
  .ib_mcpl_sb_ram_wea  			(DWC_pcie_ctrl_x4_ib_mcpl_sb_ram_wea_sig),
  .ib_mcpl_sb_ram_enb  			(DWC_pcie_ctrl_x4_ib_mcpl_sb_ram_enb_sig),
  .ib_mcpl_sb_ram_doutb			(DWC_pcie_ctrl_x4_ib_mcpl_sb_ram_doutb_sig),
  .ib_mcpl_a2c_cdc_ram_addra	(DWC_pcie_ctrl_x4_ib_mcpl_a2c_cdc_ram_addra_sig),
  .ib_mcpl_a2c_cdc_ram_addrb	(DWC_pcie_ctrl_x4_ib_mcpl_a2c_cdc_ram_addrb_sig),
  .ib_mcpl_a2c_cdc_ram_dina 	(DWC_pcie_ctrl_x4_ib_mcpl_a2c_cdc_ram_dina_sig),
  .ib_mcpl_a2c_cdc_ram_wea  	(DWC_pcie_ctrl_x4_ib_mcpl_a2c_cdc_ram_wea_sig),
  .ib_mcpl_a2c_cdc_ram_enb  	(DWC_pcie_ctrl_x4_ib_mcpl_a2c_cdc_ram_enb_sig),
  .ib_mcpl_a2c_cdc_ram_doutb	(DWC_pcie_ctrl_x4_ib_mcpl_a2c_cdc_ram_doutb_sig),
  .ib_rreq_ordr_ram_addra		(DWC_pcie_ctrl_x4_ib_rreq_ordr_ram_addra_sig),
  .ib_rreq_ordr_ram_addrb		(DWC_pcie_ctrl_x4_ib_rreq_ordr_ram_addrb_sig),
  .ib_rreq_ordr_ram_dina 		(DWC_pcie_ctrl_x4_ib_rreq_ordr_ram_dina_sig),
  .ib_rreq_ordr_ram_wea  		(DWC_pcie_ctrl_x4_ib_rreq_ordr_ram_wea_sig),
  .ib_rreq_ordr_ram_enb  		(DWC_pcie_ctrl_x4_ib_rreq_ordr_ram_enb_sig),
  .ib_rreq_ordr_ram_doutb		(DWC_pcie_ctrl_x4_ib_rreq_ordr_ram_doutb_sig),
  .ib_rreq_c2a_cdc_ram_addra	(DWC_pcie_ctrl_x4_ib_rreq_c2a_cdc_ram_addra_sig),
  .ib_rreq_c2a_cdc_ram_addrb	(DWC_pcie_ctrl_x4_ib_rreq_c2a_cdc_ram_addrb_sig),
  .ib_rreq_c2a_cdc_ram_dina 	(DWC_pcie_ctrl_x4_ib_rreq_c2a_cdc_ram_dina_sig),
  .ib_rreq_c2a_cdc_ram_wea  	(DWC_pcie_ctrl_x4_ib_rreq_c2a_cdc_ram_wea_sig),
  .ib_rreq_c2a_cdc_ram_enb  	(DWC_pcie_ctrl_x4_ib_rreq_c2a_cdc_ram_enb_sig),
  .ib_rreq_c2a_cdc_ram_doutb	(DWC_pcie_ctrl_x4_ib_rreq_c2a_cdc_ram_doutb_sig),
  .ib_wreq_c2a_cdc_ram_addra	(DWC_pcie_ctrl_x4_ib_wreq_c2a_cdc_ram_addra_sig),
  .ib_wreq_c2a_cdc_ram_addrb	(DWC_pcie_ctrl_x4_ib_wreq_c2a_cdc_ram_addrb_sig),
  .ib_wreq_c2a_cdc_ram_dina 	(DWC_pcie_ctrl_x4_ib_wreq_c2a_cdc_ram_dina_sig),
  .ib_wreq_c2a_cdc_ram_wea  	(DWC_pcie_ctrl_x4_ib_wreq_c2a_cdc_ram_wea_sig),
  .ib_wreq_c2a_cdc_ram_enb  	(DWC_pcie_ctrl_x4_ib_wreq_c2a_cdc_ram_enb_sig),
  .ib_wreq_c2a_cdc_ram_doutb	(DWC_pcie_ctrl_x4_ib_wreq_c2a_cdc_ram_doutb_sig),
  .ob_ccmp_data_ram_addra		(DWC_pcie_ctrl_x4_ob_ccmp_data_ram_addra_sig),
  .ob_ccmp_data_ram_addrb		(DWC_pcie_ctrl_x4_ob_ccmp_data_ram_addrb_sig),
  .ob_ccmp_data_ram_dina 		(DWC_pcie_ctrl_x4_ob_ccmp_data_ram_dina_sig),
  .ob_ccmp_data_ram_wea  		(DWC_pcie_ctrl_x4_ob_ccmp_data_ram_wea_sig),
  .ob_ccmp_data_ram_enb  		(DWC_pcie_ctrl_x4_ob_ccmp_data_ram_enb_sig),
  .ob_ccmp_data_ram_doutb		(DWC_pcie_ctrl_x4_ob_ccmp_data_ram_doutb_sig),
  .ob_npdcmp_ram_addra			(DWC_pcie_ctrl_x4_ob_npdcmp_ram_addra_sig),
  .ob_npdcmp_ram_addrb			(DWC_pcie_ctrl_x4_ob_npdcmp_ram_addrb_sig),
  .ob_npdcmp_ram_dina 			(DWC_pcie_ctrl_x4_ob_npdcmp_ram_dina_sig),
  .ob_npdcmp_ram_wea  			(DWC_pcie_ctrl_x4_ob_npdcmp_ram_wea_sig),
  .ob_npdcmp_ram_enb  			(DWC_pcie_ctrl_x4_ob_npdcmp_ram_enb_sig),
  .ob_npdcmp_ram_doutb			(DWC_pcie_ctrl_x4_ob_npdcmp_ram_doutb_sig),
  .slv_npw_sab_ram_addra		(DWC_pcie_ctrl_x4_slv_npw_sab_ram_addra_sig),
  .slv_npw_sab_ram_addrb		(DWC_pcie_ctrl_x4_slv_npw_sab_ram_addrb_sig),
  .slv_npw_sab_ram_dina 		(DWC_pcie_ctrl_x4_slv_npw_sab_ram_dina_sig),
  .slv_npw_sab_ram_wea  		(DWC_pcie_ctrl_x4_slv_npw_sab_ram_wea_sig),
  .slv_npw_sab_ram_enb  		(DWC_pcie_ctrl_x4_slv_npw_sab_ram_enb_sig),
  .slv_npw_sab_ram_doutb		(DWC_pcie_ctrl_x4_slv_npw_sab_ram_doutb_sig),
  .ob_pdcmp_data_ram_addra		(DWC_pcie_ctrl_x4_ob_pdcmp_data_ram_addra_sig),
  .ob_pdcmp_data_ram_addrb		(DWC_pcie_ctrl_x4_ob_pdcmp_data_ram_addrb_sig),
  .ob_pdcmp_data_ram_dina 		(DWC_pcie_ctrl_x4_ob_pdcmp_data_ram_dina_sig),
  .ob_pdcmp_data_ram_wea  		(DWC_pcie_ctrl_x4_ob_pdcmp_data_ram_wea_sig),
  .ob_pdcmp_data_ram_enb  		(DWC_pcie_ctrl_x4_ob_pdcmp_data_ram_enb_sig),
  .ob_pdcmp_data_ram_doutb		(DWC_pcie_ctrl_x4_ob_pdcmp_data_ram_doutb_sig),
  .ob_pdcmp_hdr_ram_addra		(DWC_pcie_ctrl_x4_ob_pdcmp_hdr_ram_addra_sig),
  .ob_pdcmp_hdr_ram_addrb		(DWC_pcie_ctrl_x4_ob_pdcmp_hdr_ram_addrb_sig),
  .ob_pdcmp_hdr_ram_dina		(DWC_pcie_ctrl_x4_ob_pdcmp_hdr_ram_dina_sig),
  .ob_pdcmp_hdr_ram_wea			(DWC_pcie_ctrl_x4_ob_pdcmp_hdr_ram_wea_sig),
  .ob_pdcmp_hdr_ram_enb			(DWC_pcie_ctrl_x4_ob_pdcmp_hdr_ram_enb_sig),
  .ob_pdcmp_hdr_ram_doutb		(DWC_pcie_ctrl_x4_ob_pdcmp_hdr_ram_doutb_sig),
  .edma2ram_addra				(DWC_pcie_ctrl_x4_edma2ram_addra_sig),
  .edma2ram_addrb				(DWC_pcie_ctrl_x4_edma2ram_addrb_sig),
  .edma2ram_dout				(DWC_pcie_ctrl_x4_edma2ram_dout_sig),
  .edma2ram_we					(DWC_pcie_ctrl_x4_edma2ram_we_sig),
  .edma2ram_re					(DWC_pcie_ctrl_x4_edma2ram_re_sig),
  .ram2edma_din					(DWC_pcie_ctrl_x4_ram2edma_din_sig),
  .edmarbuff2ram_addra			(DWC_pcie_ctrl_x4_edmarbuff2ram_addra_sig),
  .edmarbuff2ram_addrb			(DWC_pcie_ctrl_x4_edmarbuff2ram_addrb_sig),
  .edmarbuff2ram_dout			(DWC_pcie_ctrl_x4_edmarbuff2ram_dout_sig),
  .edmarbuff2ram_we				(DWC_pcie_ctrl_x4_edmarbuff2ram_we_sig),
  .edmarbuff2ram_re				(DWC_pcie_ctrl_x4_edmarbuff2ram_re_sig),
  .ram2edmarbuff_din			(DWC_pcie_ctrl_x4_ram2edmarbuff_din_sig),
  .msix_pba_addr				(DWC_pcie_ctrl_x4_msix_pba_addr_sig),
  .msix_pba_data_out			(DWC_pcie_ctrl_x4_msix_pba_data_out_sig),
  .msix_pba_en					(DWC_pcie_ctrl_x4_msix_pba_en_sig),
  .msix_pba_we					(DWC_pcie_ctrl_x4_msix_pba_we_sig),
  .msix_pba_data_in				(DWC_pcie_ctrl_x4_msix_pba_data_in_sig),
  .msix_table_addr				(DWC_pcie_ctrl_x4_msix_table_addr_sig),
  .msix_table_data_out			(DWC_pcie_ctrl_x4_msix_table_data_out_sig),
  .msix_table_en				(DWC_pcie_ctrl_x4_msix_table_en_sig),
  .msix_table_we				(DWC_pcie_ctrl_x4_msix_table_we_sig),
  .msix_table_data_in			(DWC_pcie_ctrl_x4_msix_table_data_in_sig),
  .p_dataq_addra				(DWC_pcie_ctrl_x4_p_dataq_addra_sig),
  .p_dataq_addrb				(DWC_pcie_ctrl_x4_p_dataq_addrb_sig),
  .p_dataq_datain				(DWC_pcie_ctrl_x4_p_dataq_datain_sig),
  .p_dataq_ena					(DWC_pcie_ctrl_x4_p_dataq_ena_sig),
  .p_dataq_enb					(DWC_pcie_ctrl_x4_p_dataq_enb_sig),
  .p_dataq_wea					(DWC_pcie_ctrl_x4_p_dataq_wea_sig),
  .p_dataq_dataout				(DWC_pcie_ctrl_x4_p_dataq_dataout_sig),
  .p_hdrq_addra					(DWC_pcie_ctrl_x4_p_hdrq_addra_sig),
  .p_hdrq_addrb					(DWC_pcie_ctrl_x4_p_hdrq_addrb_sig),
  .p_hdrq_datain				(DWC_pcie_ctrl_x4_p_hdrq_datain_sig),
  .p_hdrq_ena					(DWC_pcie_ctrl_x4_p_hdrq_ena_sig),
  .p_hdrq_enb					(DWC_pcie_ctrl_x4_p_hdrq_enb_sig),
  .p_hdrq_wea					(DWC_pcie_ctrl_x4_p_hdrq_wea_sig),
  .p_hdrq_dataout				(DWC_pcie_ctrl_x4_p_hdrq_dataout_sig),
  .xdlh_retryram_addr			(DWC_pcie_ctrl_x4_xdlh_retryram_addr_sig),
  .xdlh_retryram_data			(DWC_pcie_ctrl_x4_xdlh_retryram_data_sig),
  .xdlh_retryram_en  			(DWC_pcie_ctrl_x4_xdlh_retryram_en_sig),
  .xdlh_retryram_we  			(DWC_pcie_ctrl_x4_xdlh_retryram_we_sig),
  .retryram_xdlh_data			(DWC_pcie_ctrl_x4_retryram_xdlh_data_sig),
  .xdlh_retrysotram_waddr		(DWC_pcie_ctrl_x4_xdlh_retrysotram_waddr_sig),
  .xdlh_retrysotram_raddr		(DWC_pcie_ctrl_x4_xdlh_retrysotram_raddr_sig),
  .xdlh_retrysotram_data 		(DWC_pcie_ctrl_x4_xdlh_retrysotram_data_sig),
  .xdlh_retrysotram_we  		(DWC_pcie_ctrl_x4_xdlh_retrysotram_we_sig),
  .xdlh_retrysotram_en  		(DWC_pcie_ctrl_x4_xdlh_retrysotram_en_sig),
  .retrysotram_xdlh_data		(DWC_pcie_ctrl_x4_retrysotram_xdlh_data_sig),
                              // Clocks
                                .mstr_aclk_gated          (PCIE_SUB_CON_x4_mstr_aclk_soc),
                                .slv_aclk_gated           (PCIE_SUB_CON_x4_slv_aclk_soc),
                                .radm_clk_g               (PCIE_SUB_CON_x4_radm_clk_g_sig),
                                .muxd_aux_clk_g           (PCIE_SUB_CON_x4_aux_clk_g_sig),
                                .core_clk                 (PCIE_SUB_CON_x4_core_clk_sig)
                               /*AUTOINST*/);  // END LINK_x4 RAM

pcie_l12_err u_pcie_l12_err_inst_0 (
	 .i_driver_apb_clk				(PCIE_SUB_CON_x4_i_driver_apb_clk)
	,.i_driver_apb_rstn				(PCIE_SUB_CON_x4_i_driver_apb_rstn)
	,.pm_linkst_in_l1				(DWC_pcie_ctrl_x4_pm_linkst_in_l1_sig)
	,.l12err_reset_err_reported		(PCIE_SUB_CON_x4_pcie_l12err_ctrl_sig[31])
	,.l12err_reset_retry_reported	(PCIE_SUB_CON_x4_pcie_l12err_ctrl_sig[30])
	,.l12err_override0_nclk_off		(PCIE_SUB_CON_x4_pcie_l12err_ctrl_sig[2])
	,.l12err_override1_nclk_off		(PCIE_SUB_CON_x4_pcie_l12err_ctrl_sig[1])
	,.l12err_enable					(PCIE_SUB_CON_x4_pcie_l12err_ctrl_sig[0])
	,.xiuerr_cmu_busclk_on			(1'b0)
	,.xiuerr_sysreg_lane_en			(1'b0)
	,.xiuerr_keep_nclk_off			(32'b0)
	,.xiuerr_xiu1si_bresp			(2'b0)
	,.xiuerr_xiu1si_bvalid			(1'b0)
	,.xiuerr_xiu1si_bready			(1'b0)
	,.xiuerr_xiu1si_rresp			(2'b0)
	,.xiuerr_xiu1si_rvalid			(1'b0)
	,.xiuerr_xiu1si_rready			(1'b0)
	,.xiuerr_xiu2si_bresp			(2'b0)
	,.xiuerr_xiu2si_bvalid			(1'b0)
	,.xiuerr_xiu2si_bready			(1'b0)
	,.xiuerr_xiu2si_rresp			(2'b0)
	,.xiuerr_xiu2si_rvalid			(1'b0)
	,.xiuerr_xiu2si_rready			(1'b0)
	,.xiuerr_nclk_off				(pcie_l12_err_inst_0_xiuerr_nclk_off_sig)
	,.l12err_nclk_off				(pcie_l12_err_inst_0_l12err_nclk_off_sig)
	,.l12err_err_reported			(pcie_l12_err_inst_0_l12err_err_reported_sig)
	,.l12err_retry_reported			(pcie_l12_err_inst_0_l12err_retry_reported_sig)
	);

dwc_e16mp_upcs_x4_ns_x4_x4_pipe	PCIE_PHY(
 .ext_pclk_req										(PCIE_PHY_ext_pclk_req)
,.pcs_scan_mode                             	    (PCIE_PHY_pcs_scan_mode)
,.pcs_scan_pclk                             	    (PCIE_PHY_pcs_scan_pclk)
,.pcs_scan_pcs_clk                          	    (PCIE_PHY_pcs_scan_pcs_clk)
,.pcs_scan_pma_clk                          	    (PCIE_PHY_pcs_scan_pma_clk)
,.pcs_scan_rst                              	    (PCIE_PHY_pcs_scan_rst)
,.pcs_scan_rx_clk_div                       	    (PCIE_PHY_pcs_scan_rx_clk_div)
,.pcs_scan_shift                            	    (PCIE_PHY_pcs_scan_shift)
,.pcs_scan_shift_cg                         	    (PCIE_PHY_pcs_scan_shift_cg)
,.pg_mode_en                               			(PCIE_SUB_CON_x4_pg_mode_en_sig)
,.phy0_bs_acmode                                	(PCIE_PHY_phy0_bs_acmode)
,.phy0_bs_actest                                	(PCIE_PHY_phy0_bs_actest)
,.phy0_bs_cdr                                   	(PCIE_PHY_phy0_bs_cdr)
,.phy0_bs_ce                                    	(PCIE_PHY_phy0_bs_ce)
,.phy0_bs_rx_init                               	(PCIE_PHY_phy0_bs_rx_init)
,.phy0_bs_sdr                                   	(PCIE_PHY_phy0_bs_sdr)
,.phy0_bs_tdi                                   	(PCIE_PHY_phy0_bs_tdi)
,.phy0_bs_tdo                                   	(PCIE_PHY_phy0_bs_tdo_sig)
,.phy0_bs_udr                                   	(PCIE_PHY_phy0_bs_udr)
,.phy0_cr_para_ack                              	(PCIE_PHY_phy0_cr_para_ack_sig)
,.phy0_cr_para_addr                             	(APB2CR_cr_para_addr_sig)
,.phy0_cr_para_clk                              	(APB2CR_cr_para_clk_sig)
,.phy0_cr_para_rd_data                          	(PCIE_PHY_phy0_cr_para_rd_data_sig)
,.phy0_cr_para_rd_en                            	(APB2CR_cr_para_rd_en_sig)
,.phy0_cr_para_sel                              	(PCIE_PHY_phy0_cr_para_sel)
,.phy0_cr_para_wr_data                          	(APB2CR_cr_para_wr_data_sig)
,.phy0_cr_para_wr_en                            	(APB2CR_cr_para_wr_en_sig)
,.phy0_dtb_out                                  	(PCIE_PHY_phy0_dtb_out_sig)
,.phy0_jtag_tck                                 	(PCIE_PHY_phy0_jtag_tck)
,.phy0_jtag_tdi                                 	(PCIE_PHY_phy0_jtag_tdi)
,.phy0_jtag_tdo                                 	(PCIE_PHY_phy0_jtag_tdo_sig)
,.phy0_jtag_tdo_en                              	(PCIE_PHY_phy0_jtag_tdo_en_sig)
,.phy0_jtag_tms                                 	(PCIE_PHY_phy0_jtag_tms)
,.phy0_jtag_trst_n                              	(PCIE_PHY_phy0_jtag_trst_n)
,.phy0_sram_addr                                	(PCIE_PHY_phy0_sram_addr_sig)
,.phy0_sram_bypass                              	(PCIE_PHY_phy0_sram_bypass)
,.phy0_sram_clk                                 	(PCIE_PHY_phy0_sram_clk_sig)
,.phy0_sram_ext_ld_done                         	(PCIE_SUB_CON_x4_phy0_sram_ext_ld_done_sig)
,.phy0_sram_init_done                           	(PCIE_PHY_phy0_sram_init_done_sig)
,.phy0_sram_rd_data                             	(PHY_MEM_phy0_sram_rd_data_sig)
,.phy0_sram_rd_en                               	(PCIE_PHY_phy0_sram_rd_en_sig)
,.phy0_sram_wr_data                             	(PCIE_PHY_phy0_sram_wr_data_sig)
,.phy0_sram_wr_en                               	(PCIE_PHY_phy0_sram_wr_en_sig)
,.phy0_mplla_div16p5_clk                        	(/*no connect*/)
,.phy0_mplla_div33_clk                          	(/*no connect*/)
,.phy0_mplla_div66_clk                          	(/*no connect*/)
,.phy0_mplla_div_clk                            	(/*no connect*/)
,.phy0_mplla_dword_clk                          	(/*no connect*/)
,.phy0_mplla_force_ack                          	(/*no connect*/)
,.phy0_mplla_force_en                           	(PCIE_SUB_CON_x4_phy0_mplla_force_en_sig)
,.phy0_mplla_oword_clk                          	(/*no connect*/)
,.phy0_mplla_qword_clk                          	(/*no connect*/)
,.phy0_mplla_ssc_en                             	(PCIE_SUB_CON_x4_phy0_mplla_ssc_en_sig)
,.phy0_mplla_state                              	(PCIE_PHY_phy0_mplla_state_sig)
,.phy0_mplla_word_clk                           	(/*no coonect*/)
,.phy0_mplla_word_sync_clk_en                   	(PCIE_PHY_phy0_mplla_word_sync_clk_en_sig)
,.phy0_mpllb_div_clk                            	(/*no connect*/)
,.phy0_mpllb_dword_clk                          	(/*no coonect*/)
,.phy0_mpllb_force_ack                          	(/*no coonect*/)
,.phy0_mpllb_force_en                           	(PCIE_SUB_CON_x4_phy0_mpllb_force_en_sig)
,.phy0_mpllb_oword_clk                          	(/*no coonect*/)
,.phy0_mpllb_qword_clk                          	(/*no coonect*/)
,.phy0_mpllb_ssc_en                             	(PCIE_SUB_CON_x4_phy0_mpllb_ssc_en_sig)
,.phy0_mpllb_state                              	(PCIE_PHY_phy0_mpllb_state_sig)
,.phy0_mpllb_word_clk                           	(/*no coonect*/)
,.phy0_mpllb_word_sync_clk_en                   	(PCIE_PHY_phy0_mpllb_word_sync_clk_en_sig)
,.phy0_nominal_vph_sel                          	(2'b0)
,.phy0_pcs_pwr_en                               	(/*no coonect*/)
,.phy0_pcs_pwr_stable                           	(PCIE_SUB_CON_x4_phy0_pcs_pwr_stable_sig)
,.phy0_pma_pwr_en                               	(/*no coonect*/)
,.phy0_pma_pwr_stable                           	(PCIE_SUB_CON_x4_phy0_pma_pwr_stable_sig)
,.phy0_ref_alt_clk_m                            	(1'b0)
,.phy0_ref_alt_clk_p                            	(PCIE_SUB_CON_x4_phy0_ref_alt_clk_p_sig)
,.phy0_ref_clkdet_en                            	(PCIE_SUB_CON_x4_phy0_ref_clkdet_en_sig)
,.phy0_ref_clkdet_result                        	(/*no coonect*/)
,.phy0_ref_dig_clk                              	(PCIE_PHY_phy0_ref_dig_clk_sig)
,.phy0_ref_dig_fr_clk                           	(/*no coonect*/)
,.phy0_ref_pad_clk_m                            	(PCIE_PHY_phy0_ref_pad_clk_m)
,.phy0_ref_pad_clk_p                            	(PCIE_PHY_phy0_ref_pad_clk_p)
,.phy0_ref_repeat_clk_en                        	(/*no coonect*/)
,.phy0_ref_repeat_clk_m                         	(/*no coonect*/)
,.phy0_ref_repeat_clk_p                         	(/*no coonect*/)
,.phy0_ref_use_pad                              	(PCIE_SUB_CON_x4_phy0_ref_use_pad_sig)
,.phy_resref                                    	(PCIE_PHY_phy_resref)
,.phy0_rx_term_offset                           	(PCIE_SUB_CON_x4_phy0_rx_term_offset_sig)
,.phy0_scan_cr_clk                              	(PCIE_PHY_phy0_scan_cr_clk)
,.phy0_scan_cr_in                               	(PCIE_PHY_phy0_scan_cr_in)
,.phy0_scan_cr_out									(PCIE_PHY_phy0_scan_cr_out_sig)
,.phy0_scan_mode                                	(PCIE_PHY_phy0_scan_mode)
,.phy0_scan_mplla_div16p5_clk                   	(PCIE_PHY_phy0_scan_mplla_div16p5_clk)
,.phy0_scan_mplla_div16p5_in                    	(PCIE_PHY_phy0_scan_mplla_div16p5_in)
,.phy0_scan_mplla_div16p5_out                      (PCIE_PHY_phy0_scan_mplla_div16p5_out_sig)
,.phy0_scan_mplla_div33_clk                     	(PCIE_PHY_phy0_scan_mplla_div33_clk)
,.phy0_scan_mplla_div66_clk                     	(PCIE_PHY_phy0_scan_mplla_div66_clk)
,.phy0_scan_mplla_div_clk                       	(PCIE_PHY_phy0_scan_mplla_div_clk)
,.phy0_scan_mplla_div_in                        	(PCIE_PHY_phy0_scan_mplla_div_in)
,.phy0_scan_mplla_div_out                          (PCIE_PHY_phy0_scan_mplla_div_out_sig)
,.phy0_scan_mplla_dword_clk                     	(PCIE_PHY_phy0_scan_mplla_dword_clk)
,.phy0_scan_mplla_dword_in                      	(PCIE_PHY_phy0_scan_mplla_dword_in)
,.phy0_scan_mplla_dword_out                        (PCIE_PHY_phy0_scan_mplla_dword_out_sig)
,.phy0_scan_mplla_fb_clk                        	(PCIE_PHY_phy0_scan_mplla_fb_clk)
,.phy0_scan_mplla_fb_in                         	(PCIE_PHY_phy0_scan_mplla_fb_in)
,.phy0_scan_mplla_fb_out                           (PCIE_PHY_phy0_scan_mplla_fb_out_sig)
,.phy0_scan_mplla_oword_clk                     	(PCIE_PHY_phy0_scan_mplla_oword_clk)
,.phy0_scan_mplla_qword_clk                     	(PCIE_PHY_phy0_scan_mplla_qword_clk)
,.phy0_scan_mplla_ref_clk                       	(PCIE_PHY_phy0_scan_mplla_ref_clk)
,.phy0_scan_mplla_ref_in                        	(PCIE_PHY_phy0_scan_mplla_ref_in)
,.phy0_scan_mplla_ref_out                          (PCIE_PHY_phy0_scan_mplla_ref_out_sig)
,.phy0_scan_mplla_ssc_clk                       	(PCIE_PHY_phy0_scan_mplla_ssc_clk)
,.phy0_scan_mplla_ssc_in                        	(PCIE_PHY_phy0_scan_mplla_ssc_in)
,.phy0_scan_mplla_ssc_out                          (PCIE_PHY_phy0_scan_mplla_ssc_out_sig)
,.phy0_scan_mplla_word_clk                      	(PCIE_PHY_phy0_scan_mplla_word_clk)
,.phy0_scan_mplla_word_in                       	(PCIE_PHY_phy0_scan_mplla_word_in)
,.phy0_scan_mplla_word_out                         (PCIE_PHY_phy0_scan_mplla_word_out_sig)
,.phy0_scan_mpllb_div_clk                       	(PCIE_PHY_phy0_scan_mpllb_div_clk)
,.phy0_scan_mpllb_div_in                        	(PCIE_PHY_phy0_scan_mpllb_div_in)
,.phy0_scan_mpllb_div_out                          (PCIE_PHY_phy0_scan_mpllb_div_out_sig)
,.phy0_scan_mpllb_dword_clk                     	(PCIE_PHY_phy0_scan_mpllb_dword_clk)
,.phy0_scan_mpllb_dword_in                      	(PCIE_PHY_phy0_scan_mpllb_dword_in)
,.phy0_scan_mpllb_dword_out                        (PCIE_PHY_phy0_scan_mpllb_dword_out_sig)
,.phy0_scan_mpllb_fb_clk                        	(PCIE_PHY_phy0_scan_mpllb_fb_clk)
,.phy0_scan_mpllb_fb_in                         	(PCIE_PHY_phy0_scan_mpllb_fb_in)
,.phy0_scan_mpllb_fb_out                           (PCIE_PHY_phy0_scan_mpllb_fb_out_sig)
,.phy0_scan_mpllb_oword_clk                     	(PCIE_PHY_phy0_scan_mpllb_oword_clk)
,.phy0_scan_mpllb_qword_clk                     	(PCIE_PHY_phy0_scan_mpllb_qword_clk)
,.phy0_scan_mpllb_ref_clk                       	(PCIE_PHY_phy0_scan_mpllb_ref_clk)
,.phy0_scan_mpllb_ref_in                        	(PCIE_PHY_phy0_scan_mpllb_ref_in)
,.phy0_scan_mpllb_ref_out                          (PCIE_PHY_phy0_scan_mpllb_ref_out_sig)
,.phy0_scan_mpllb_ssc_clk                       	(PCIE_PHY_phy0_scan_mpllb_ssc_clk)
,.phy0_scan_mpllb_ssc_in                        	(PCIE_PHY_phy0_scan_mpllb_ssc_in)
,.phy0_scan_mpllb_ssc_out                          (PCIE_PHY_phy0_scan_mpllb_ssc_out_sig)
,.phy0_scan_mpllb_word_clk                      	(PCIE_PHY_phy0_scan_mpllb_word_clk)
,.phy0_scan_mpllb_word_in                       	(PCIE_PHY_phy0_scan_mpllb_word_in)
,.phy0_scan_mpllb_word_out                         (PCIE_PHY_phy0_scan_mpllb_word_out_sig)
,.phy0_scan_phy_ref_dig_clk                     	(PCIE_PHY_phy0_scan_phy_ref_dig_clk)
,.phy0_scan_phy_ref_dig_in                      	(PCIE_PHY_phy0_scan_phy_ref_dig_in)
,.phy0_scan_phy_ref_dig_out                        (PCIE_PHY_phy0_scan_phy_ref_dig_out_sig)
,.phy0_scan_ref_clk                             	(PCIE_PHY_phy0_scan_ref_clk)
,.phy0_scan_ref_dig_clk                         	(PCIE_PHY_phy0_scan_ref_dig_clk)
,.phy0_scan_ref_dig_in                          	(PCIE_PHY_phy0_scan_ref_dig_in)
,.phy0_scan_ref_dig_out                            (PCIE_PHY_phy0_scan_ref_dig_out_sig)
,.phy0_scan_ref_in                              	(PCIE_PHY_phy0_scan_ref_in)
,.phy0_scan_ref_out                                (PCIE_PHY_phy0_scan_ref_out_sig)
,.phy0_scan_ref_range_clk                       	(PCIE_PHY_phy0_scan_ref_range_clk)
,.phy0_scan_ref_range_in                        	(PCIE_PHY_phy0_scan_ref_range_in)
,.phy0_scan_ref_range_out                          (PCIE_PHY_phy0_scan_ref_range_out_sig)
,.phy0_scan_set_rst                             	(PCIE_PHY_phy0_scan_set_rst)
,.phy0_scan_shift                               	(PCIE_PHY_phy0_scan_shift)
,.phy0_scan_shift_cg                            	(PCIE_PHY_phy0_scan_shift_cg)
,.phy0_test_flyover_en                          	(PCIE_PHY_phy0_test_flyover_en)
,.phy0_txdn_term_offset                         	(PCIE_SUB_CON_x4_phy0_txdn_term_offset_sig)
,.phy0_txup_term_offset                         	(PCIE_SUB_CON_x4_phy0_txup_term_offset_sig)
,.phy_ext_ctrl_sel                              	(PCIE_SUB_CON_x4_phy_ext_ctrl_sel_sig)
,.phy_lane0_power_present                       	(1'b0)
,.phy_lane0_rx2tx_par_lb_en                     	(PCIE_PHY_phy_lane0_rx2tx_par_lb_en)
,.phy_lane1_power_present                       	(1'b0)
,.phy_lane1_rx2tx_par_lb_en                     	(PCIE_PHY_phy_lane1_rx2tx_par_lb_en)
,.phy_lane2_power_present                       	(1'b0)
,.phy_lane2_rx2tx_par_lb_en                     	(PCIE_PHY_phy_lane2_rx2tx_par_lb_en)
,.phy_lane3_power_present                       	(1'b0)
,.phy_lane3_rx2tx_par_lb_en                     	(PCIE_PHY_phy_lane3_rx2tx_par_lb_en)
,.phy_res_ack_in                                	(PCIE_PHY_phy_res_req_out_sig)
,.phy_res_ack_out                               	(/*no connect*/)
,.phy_res_req_in                                	(1'b0)
,.phy_res_req_out                               	(PCIE_PHY_phy_res_req_out_sig)
,.phy_reset                                     	(TEST_MUX_phy_reset_Y_sig)
,.phy_rtune_ack                                 	(PCIE_PHY_phy_rtune_ack_sig)
,.phy_rtune_req                                 	(PCIE_SUB_CON_x4_phy_rtune_req_sig)
,.phy_rx0_flyover_data_m                        	(PCIE_PHY_phy_rx0_flyover_data_m_sig)
,.phy_rx0_flyover_data_p                        	(PCIE_PHY_phy_rx0_flyover_data_p_sig)
,.phy_rx0_m                                     	(PCIE_PHY_phy_rx0_m)
,.phy_rx0_p                                     	(PCIE_PHY_phy_rx0_p)
,.phy_rx0_ppm_drift                             	(/*no connect*/)
,.phy_rx0_ppm_drift_vld                         	(/*no connect*/)
,.phy_rx0_term_acdc                             	(PCIE_SUB_CON_x4_phy_rx0_term_acdc_sig)
,.phy_rx1_flyover_data_m                        	(PCIE_PHY_phy_rx1_flyover_data_m_sig)
,.phy_rx1_flyover_data_p                        	(PCIE_PHY_phy_rx1_flyover_data_p_sig)
,.phy_rx1_m                                     	(PCIE_PHY_phy_rx1_m)
,.phy_rx1_p                                     	(PCIE_PHY_phy_rx1_p)
,.phy_rx1_ppm_drift                             	(/*no connect*/)
,.phy_rx1_ppm_drift_vld                         	(/*no connect*/)
,.phy_rx1_term_acdc                             	(PCIE_SUB_CON_x4_phy_rx1_term_acdc_sig)
,.phy_rx2_flyover_data_m                        	(PCIE_PHY_phy_rx2_flyover_data_m_sig)
,.phy_rx2_flyover_data_p                        	(PCIE_PHY_phy_rx2_flyover_data_p_sig)
,.phy_rx2_m                                     	(PCIE_PHY_phy_rx2_m)
,.phy_rx2_p                                     	(PCIE_PHY_phy_rx2_p)
,.phy_rx2_ppm_drift                             	(/*no connect*/)
,.phy_rx2_ppm_drift_vld                         	(/*no connect*/)
,.phy_rx2_term_acdc                             	(PCIE_SUB_CON_x4_phy_rx2_term_acdc_sig)
,.phy_rx3_flyover_data_m                        	(PCIE_PHY_phy_rx3_flyover_data_m_sig)
,.phy_rx3_flyover_data_p                        	(PCIE_PHY_phy_rx3_flyover_data_p_sig)
,.phy_rx3_m                                     	(PCIE_PHY_phy_rx3_m)
,.phy_rx3_p                                     	(PCIE_PHY_phy_rx3_p)
,.phy_rx3_ppm_drift                             	(/*no connect*/)
,.phy_rx3_ppm_drift_vld                         	(/*no connect*/)
,.phy_rx3_term_acdc                             	(PCIE_SUB_CON_x4_phy_rx3_term_acdc_sig)
,.phy_scan_rx0_adpt_clk                         	(PCIE_PHY_phy_scan_rx0_adpt_clk)
,.phy_scan_rx0_adpt_in                          	(PCIE_PHY_phy_scan_rx0_adpt_in)
,.phy_scan_rx0_adpt_out                         	(PCIE_PHY_phy_scan_rx0_adpt_out_sig)
,.phy_scan_rx0_asic_clk                         	(PCIE_PHY_phy_scan_rx0_asic_clk)
,.phy_scan_rx0_asic_in                          	(PCIE_PHY_phy_scan_rx0_asic_in)
,.phy_scan_rx0_asic_out                         	(PCIE_PHY_phy_scan_rx0_asic_out_sig)
,.phy_scan_rx0_div16p5_clk                      	(PCIE_PHY_phy_scan_rx0_div16p5_clk)
,.phy_scan_rx0_div16p5_in                       	(PCIE_PHY_phy_scan_rx0_div16p5_in)
,.phy_scan_rx0_div16p5_out                      	(PCIE_PHY_phy_scan_rx0_div16p5_out_sig)
,.phy_scan_rx0_dpll_clk                         	(PCIE_PHY_phy_scan_rx0_dpll_clk)
,.phy_scan_rx0_dpll_in                          	(PCIE_PHY_phy_scan_rx0_dpll_in)
,.phy_scan_rx0_dpll_out                         	(PCIE_PHY_phy_scan_rx0_dpll_out_sig)
,.phy_scan_rx0_dword_clk                        	(PCIE_PHY_phy_scan_rx0_dword_clk)
,.phy_scan_rx0_dword_in                         	(PCIE_PHY_phy_scan_rx0_dword_in)
,.phy_scan_rx0_dword_out                        	(PCIE_PHY_phy_scan_rx0_dword_out_sig)
,.phy_scan_rx0_scope_clk                        	(PCIE_PHY_phy_scan_rx0_scope_clk)
,.phy_scan_rx0_scope_in                         	(PCIE_PHY_phy_scan_rx0_scope_in)
,.phy_scan_rx0_scope_out                        	(PCIE_PHY_phy_scan_rx0_scope_out_sig)
,.phy_scan_rx0_stat_clk                         	(PCIE_PHY_phy_scan_rx0_stat_clk)
,.phy_scan_rx0_stat_in                          	(PCIE_PHY_phy_scan_rx0_stat_in)
,.phy_scan_rx0_stat_out                         	(PCIE_PHY_phy_scan_rx0_stat_out_sig)
,.phy_scan_rx0_word_clk                         	(PCIE_PHY_phy_scan_rx0_word_clk)
,.phy_scan_rx0_word_in                          	(PCIE_PHY_phy_scan_rx0_word_in)
,.phy_scan_rx0_word_out                         	(PCIE_PHY_phy_scan_rx0_word_out_sig)
,.phy_scan_rx1_adpt_clk                         	(PCIE_PHY_phy_scan_rx1_adpt_clk)
,.phy_scan_rx1_adpt_in                          	(PCIE_PHY_phy_scan_rx1_adpt_in)
,.phy_scan_rx1_adpt_out                         	(PCIE_PHY_phy_scan_rx1_adpt_out_sig)
,.phy_scan_rx1_asic_clk                         	(PCIE_PHY_phy_scan_rx1_asic_clk)
,.phy_scan_rx1_asic_in                          	(PCIE_PHY_phy_scan_rx1_asic_in)
,.phy_scan_rx1_asic_out                         	(PCIE_PHY_phy_scan_rx1_asic_out_sig)
,.phy_scan_rx1_div16p5_clk                      	(PCIE_PHY_phy_scan_rx1_div16p5_clk)
,.phy_scan_rx1_div16p5_in                       	(PCIE_PHY_phy_scan_rx1_div16p5_in)
,.phy_scan_rx1_div16p5_out                      	(PCIE_PHY_phy_scan_rx1_div16p5_out_sig)
,.phy_scan_rx1_dpll_clk                         	(PCIE_PHY_phy_scan_rx1_dpll_clk)
,.phy_scan_rx1_dpll_in                          	(PCIE_PHY_phy_scan_rx1_dpll_in)
,.phy_scan_rx1_dpll_out                         	(PCIE_PHY_phy_scan_rx1_dpll_out_sig)
,.phy_scan_rx1_dword_clk                        	(PCIE_PHY_phy_scan_rx1_dword_clk)
,.phy_scan_rx1_dword_in                         	(PCIE_PHY_phy_scan_rx1_dword_in)
,.phy_scan_rx1_dword_out                        	(PCIE_PHY_phy_scan_rx1_dword_out_sig)
,.phy_scan_rx1_scope_clk                        	(PCIE_PHY_phy_scan_rx1_scope_clk)
,.phy_scan_rx1_scope_in                         	(PCIE_PHY_phy_scan_rx1_scope_in)
,.phy_scan_rx1_scope_out                        	(PCIE_PHY_phy_scan_rx1_scope_out_sig)
,.phy_scan_rx1_stat_clk                         	(PCIE_PHY_phy_scan_rx1_stat_clk)
,.phy_scan_rx1_stat_in                          	(PCIE_PHY_phy_scan_rx1_stat_in)
,.phy_scan_rx1_stat_out                         	(PCIE_PHY_phy_scan_rx1_stat_out_sig)
,.phy_scan_rx1_word_clk                         	(PCIE_PHY_phy_scan_rx1_word_clk)
,.phy_scan_rx1_word_in                          	(PCIE_PHY_phy_scan_rx1_word_in)
,.phy_scan_rx1_word_out                         	(PCIE_PHY_phy_scan_rx1_word_out_sig)
,.phy_scan_rx2_adpt_clk                         	(PCIE_PHY_phy_scan_rx2_adpt_clk)
,.phy_scan_rx2_adpt_in                          	(PCIE_PHY_phy_scan_rx2_adpt_in)
,.phy_scan_rx2_adpt_out                         	(PCIE_PHY_phy_scan_rx2_adpt_out_sig)
,.phy_scan_rx2_asic_clk                         	(PCIE_PHY_phy_scan_rx2_asic_clk)
,.phy_scan_rx2_asic_in                          	(PCIE_PHY_phy_scan_rx2_asic_in)
,.phy_scan_rx2_asic_out                         	(PCIE_PHY_phy_scan_rx2_asic_out_sig)
,.phy_scan_rx2_div16p5_clk                      	(PCIE_PHY_phy_scan_rx2_div16p5_clk)
,.phy_scan_rx2_div16p5_in                       	(PCIE_PHY_phy_scan_rx2_div16p5_in)
,.phy_scan_rx2_div16p5_out                      	(PCIE_PHY_phy_scan_rx2_div16p5_out_sig)
,.phy_scan_rx2_dpll_clk                         	(PCIE_PHY_phy_scan_rx2_dpll_clk)
,.phy_scan_rx2_dpll_in                          	(PCIE_PHY_phy_scan_rx2_dpll_in)
,.phy_scan_rx2_dpll_out                         	(PCIE_PHY_phy_scan_rx2_dpll_out_sig)
,.phy_scan_rx2_dword_clk                        	(PCIE_PHY_phy_scan_rx2_dword_clk)
,.phy_scan_rx2_dword_in                         	(PCIE_PHY_phy_scan_rx2_dword_in)
,.phy_scan_rx2_dword_out                        	(PCIE_PHY_phy_scan_rx2_dword_out_sig)
,.phy_scan_rx2_scope_clk                        	(PCIE_PHY_phy_scan_rx2_scope_clk)
,.phy_scan_rx2_scope_in                         	(PCIE_PHY_phy_scan_rx2_scope_in)
,.phy_scan_rx2_scope_out                        	(PCIE_PHY_phy_scan_rx2_scope_out_sig)
,.phy_scan_rx2_stat_clk                         	(PCIE_PHY_phy_scan_rx2_stat_clk)
,.phy_scan_rx2_stat_in                          	(PCIE_PHY_phy_scan_rx2_stat_in)
,.phy_scan_rx2_stat_out                         	(PCIE_PHY_phy_scan_rx2_stat_out_sig)
,.phy_scan_rx2_word_clk                         	(PCIE_PHY_phy_scan_rx2_word_clk)
,.phy_scan_rx2_word_in                          	(PCIE_PHY_phy_scan_rx2_word_in)
,.phy_scan_rx2_word_out                         	(PCIE_PHY_phy_scan_rx2_word_out_sig)
,.phy_scan_rx3_adpt_clk                         	(PCIE_PHY_phy_scan_rx3_adpt_clk)
,.phy_scan_rx3_adpt_in                          	(PCIE_PHY_phy_scan_rx3_adpt_in)
,.phy_scan_rx3_adpt_out                         	(PCIE_PHY_phy_scan_rx3_adpt_out_sig)
,.phy_scan_rx3_asic_clk                         	(PCIE_PHY_phy_scan_rx3_asic_clk)
,.phy_scan_rx3_asic_in                          	(PCIE_PHY_phy_scan_rx3_asic_in)
,.phy_scan_rx3_asic_out                         	(PCIE_PHY_phy_scan_rx3_asic_out_sig)
,.phy_scan_rx3_div16p5_clk                      	(PCIE_PHY_phy_scan_rx3_div16p5_clk)
,.phy_scan_rx3_div16p5_in                       	(PCIE_PHY_phy_scan_rx3_div16p5_in)
,.phy_scan_rx3_div16p5_out                      	(PCIE_PHY_phy_scan_rx3_div16p5_out_sig)
,.phy_scan_rx3_dpll_clk                         	(PCIE_PHY_phy_scan_rx3_dpll_clk)
,.phy_scan_rx3_dpll_in                          	(PCIE_PHY_phy_scan_rx3_dpll_in)
,.phy_scan_rx3_dpll_out                         	(PCIE_PHY_phy_scan_rx3_dpll_out_sig)
,.phy_scan_rx3_dword_clk                        	(PCIE_PHY_phy_scan_rx3_dword_clk)
,.phy_scan_rx3_dword_in                         	(PCIE_PHY_phy_scan_rx3_dword_in)
,.phy_scan_rx3_dword_out                        	(PCIE_PHY_phy_scan_rx3_dword_out_sig)
,.phy_scan_rx3_scope_clk                        	(PCIE_PHY_phy_scan_rx3_scope_clk)
,.phy_scan_rx3_scope_in                         	(PCIE_PHY_phy_scan_rx3_scope_in)
,.phy_scan_rx3_scope_out                        	(PCIE_PHY_phy_scan_rx3_scope_out_sig)
,.phy_scan_rx3_stat_clk                         	(PCIE_PHY_phy_scan_rx3_stat_clk)
,.phy_scan_rx3_stat_in                          	(PCIE_PHY_phy_scan_rx3_stat_in)
,.phy_scan_rx3_stat_out                         	(PCIE_PHY_phy_scan_rx3_stat_out_sig)
,.phy_scan_rx3_word_clk                         	(PCIE_PHY_phy_scan_rx3_word_clk)
,.phy_scan_rx3_word_in                          	(PCIE_PHY_phy_scan_rx3_word_in)
,.phy_scan_rx3_word_out                         	(PCIE_PHY_phy_scan_rx3_word_out_sig)
,.phy_scan_tx0_ana_dword_clk                    	(PCIE_PHY_phy_scan_tx0_ana_dword_clk)
,.phy_scan_tx0_ana_dword_in                     	(PCIE_PHY_phy_scan_tx0_ana_dword_in)
,.phy_scan_tx0_ana_dword_out                    	(PCIE_PHY_phy_scan_tx0_ana_dword_out_sig)
,.phy_scan_tx0_ana_word_clk                     	(PCIE_PHY_phy_scan_tx0_ana_word_clk)
,.phy_scan_tx0_ana_word_in                      	(PCIE_PHY_phy_scan_tx0_ana_word_in)
,.phy_scan_tx0_ana_word_out                     	(PCIE_PHY_phy_scan_tx0_ana_word_out_sig)
,.phy_scan_tx0_in                               	(PCIE_PHY_phy_scan_tx0_in)
,.phy_scan_tx0_out                              	(PCIE_PHY_phy_scan_tx0_out_sig)
,.phy_scan_tx1_ana_dword_clk                    	(PCIE_PHY_phy_scan_tx1_ana_dword_clk)
,.phy_scan_tx1_ana_dword_in                     	(PCIE_PHY_phy_scan_tx1_ana_dword_in)
,.phy_scan_tx1_ana_dword_out                    	(PCIE_PHY_phy_scan_tx1_ana_dword_out_sig)
,.phy_scan_tx1_ana_word_clk                     	(PCIE_PHY_phy_scan_tx1_ana_word_clk)
,.phy_scan_tx1_ana_word_in                      	(PCIE_PHY_phy_scan_tx1_ana_word_in)
,.phy_scan_tx1_ana_word_out                     	(PCIE_PHY_phy_scan_tx1_ana_word_out_sig)
,.phy_scan_tx1_in                               	(PCIE_PHY_phy_scan_tx1_in)
,.phy_scan_tx1_out                              	(PCIE_PHY_phy_scan_tx1_out_sig)
,.phy_scan_tx2_ana_dword_clk                    	(PCIE_PHY_phy_scan_tx2_ana_dword_clk)
,.phy_scan_tx2_ana_dword_in                     	(PCIE_PHY_phy_scan_tx2_ana_dword_in)
,.phy_scan_tx2_ana_dword_out                    	(PCIE_PHY_phy_scan_tx2_ana_dword_out_sig)
,.phy_scan_tx2_ana_word_clk                     	(PCIE_PHY_phy_scan_tx2_ana_word_clk)
,.phy_scan_tx2_ana_word_in                      	(PCIE_PHY_phy_scan_tx2_ana_word_in)
,.phy_scan_tx2_ana_word_out                     	(PCIE_PHY_phy_scan_tx2_ana_word_out_sig)
,.phy_scan_tx2_in                               	(PCIE_PHY_phy_scan_tx2_in)
,.phy_scan_tx2_out                              	(PCIE_PHY_phy_scan_tx2_out_sig)
,.phy_scan_tx3_ana_dword_clk                    	(PCIE_PHY_phy_scan_tx3_ana_dword_clk)
,.phy_scan_tx3_ana_dword_in                     	(PCIE_PHY_phy_scan_tx3_ana_dword_in)
,.phy_scan_tx3_ana_dword_out                    	(PCIE_PHY_phy_scan_tx3_ana_dword_out_sig)
,.phy_scan_tx3_ana_word_clk                     	(PCIE_PHY_phy_scan_tx3_ana_word_clk)
,.phy_scan_tx3_ana_word_in                      	(PCIE_PHY_phy_scan_tx3_ana_word_in)
,.phy_scan_tx3_ana_word_out                     	(PCIE_PHY_phy_scan_tx3_ana_word_out_sig)
,.phy_scan_tx3_in                               	(PCIE_PHY_phy_scan_tx3_in)
,.phy_scan_tx3_out                              	(PCIE_PHY_phy_scan_tx3_out_sig)
,.phy_test_burnin                               	(PCIE_PHY_phy_test_burnin)
,.phy_test_powerdown                            	(PCIE_PHY_phy_test_powerdown)
,.phy_test_stop_clk_en                          	(PCIE_PHY_phy_test_stop_clk_en)	
,.phy_tx0_flyover_data_m                        	(PCIE_PHY_phy_tx0_flyover_data_m)
,.phy_tx0_flyover_data_p                        	(PCIE_PHY_phy_tx0_flyover_data_p)
,.phy_tx0_m                                     	(PCIE_PHY_phy_tx0_m)
,.phy_tx0_p                                     	(PCIE_PHY_phy_tx0_p)
,.phy_tx1_flyover_data_m                        	(PCIE_PHY_phy_tx1_flyover_data_m)
,.phy_tx1_flyover_data_p                        	(PCIE_PHY_phy_tx1_flyover_data_p)
,.phy_tx1_m                                     	(PCIE_PHY_phy_tx1_m)
,.phy_tx1_p                                     	(PCIE_PHY_phy_tx1_p)
,.phy_tx2_flyover_data_m                        	(PCIE_PHY_phy_tx2_flyover_data_m)
,.phy_tx2_flyover_data_p                        	(PCIE_PHY_phy_tx2_flyover_data_p)
,.phy_tx2_m                                     	(PCIE_PHY_phy_tx2_m)
,.phy_tx2_p                                     	(PCIE_PHY_phy_tx2_p)
,.phy_tx3_flyover_data_m                        	(PCIE_PHY_phy_tx3_flyover_data_m)
,.phy_tx3_flyover_data_p                        	(PCIE_PHY_phy_tx3_flyover_data_p)
,.phy_tx3_m                                     	(PCIE_PHY_phy_tx3_m)
,.phy_tx3_p                                     	(PCIE_PHY_phy_tx3_p)
,.pipe_lane0_asyncpowerchangeack                	(1'b0)
,.pipe_lane0_clkack_n                           	(/*no connect*/)
,.pipe_lane0_clkreq_n                           	(1'b0)
,.pipe_lane0_cmn_refclk_mode                    	(PCIE_SUB_CON_x4_pipe_lane0_cmn_refclk_mode_sig)
,.pipe_lane0_databuswidth                       	(/*no connect*/)
,.pipe_lane0_encdec_bypass                      	(DWC_pcie_ctrl_x4_mac_phy_encodedecodebypass_sig)
,.pipe_lane0_if_width                           	(DWC_pcie_ctrl_x4_mac_phy_width_sig)
,.pipe_lane0_m2p_messagebus                     	(DWC_pcie_ctrl_x4_mac_phy_messagebus_sig[7:0])
,.pipe_lane0_max_pclk                           	(/*no connect*/)
,.pipe_lane0_p2m_messagebus                     	(PCIE_PHY_pipe_lane0_p2m_messagebus_sig)
,.pipe_lane0_pclk                               	(PCIE_PHY_pipe_lane0_pclk_sig)
,.pipe_lane0_phy_src_sel                        	(PCIE_SUB_CON_x4_pipe_lane0_phy_src_sel_sig)
,.pipe_lane0_phystatus                          	(PCIE_PHY_pipe_lane0_phystatus_sig)
,.pipe_lane0_power_present                      	(/*no connect*/)
,.pipe_lane0_powerdown                          	(DWC_pcie_ctrl_x4_mac_phy_powerdown_sig)
,.pipe_lane0_protocol                           	(PCIE_SUB_CON_x4_pipe_lane0_protocol_sig)
,.pipe_lane0_rate                               	(DWC_pcie_ctrl_x4_mac_phy_rate_sig)
,.pipe_lane0_ref_clk_req_n                      	(PCIE_PHY_pipe_lane0_ref_clk_req_n_sig)
,.pipe_lane0_reset_n                            	(TEST_MUX_pipe_lane0_1_reset_n_Y_sig)
,.pipe_lane0_tx2rx_loopbk                       	(DWC_pcie_ctrl_x4_mac_phy_txdetectrx_loopback_sig[0])
,.pipe_lane1_asyncpowerchangeack                	(1'b0)
,.pipe_lane1_clkack_n                           	(/*no connect*/)
,.pipe_lane1_clkreq_n                           	(1'b0)
,.pipe_lane1_cmn_refclk_mode                    	(PCIE_SUB_CON_x4_pipe_lane1_cmn_refclk_mode_sig)
,.pipe_lane1_databuswidth                       	(/*no connect*/)
,.pipe_lane1_encdec_bypass                      	(DWC_pcie_ctrl_x4_mac_phy_encodedecodebypass_sig)
,.pipe_lane1_if_width                           	(DWC_pcie_ctrl_x4_mac_phy_width_sig)
,.pipe_lane1_m2p_messagebus                     	(DWC_pcie_ctrl_x4_mac_phy_messagebus_sig[15:8])
,.pipe_lane1_max_pclk                           	(/*no connect*/)
,.pipe_lane1_p2m_messagebus                     	(PCIE_PHY_pipe_lane1_p2m_messagebus_sig)
,.pipe_lane1_pclk                               	(/*no connect*/)
,.pipe_lane1_phy_src_sel                        	(PCIE_SUB_CON_x4_pipe_lane1_phy_src_sel_sig)
,.pipe_lane1_phystatus                          	(PCIE_PHY_pipe_lane1_phystatus_sig)
,.pipe_lane1_power_present                      	(/*no connect*/)
,.pipe_lane1_powerdown                          	(DWC_pcie_ctrl_x4_mac_phy_powerdown_sig)
,.pipe_lane1_protocol                           	(PCIE_SUB_CON_x4_pipe_lane1_protocol_sig)
,.pipe_lane1_rate                               	(DWC_pcie_ctrl_x4_mac_phy_rate_sig)
,.pipe_lane1_ref_clk_req_n                      	(PCIE_PHY_pipe_lane1_ref_clk_req_n_sig)
,.pipe_lane1_reset_n                            	(TEST_MUX_pipe_lane0_1_reset_n_Y_sig)
,.pipe_lane1_tx2rx_loopbk                       	(DWC_pcie_ctrl_x4_mac_phy_txdetectrx_loopback_sig[1])
,.pipe_lane2_asyncpowerchangeack                	(1'b0)
,.pipe_lane2_clkack_n                           	(/*no connect*/)
,.pipe_lane2_clkreq_n                           	(1'b0)
,.pipe_lane2_cmn_refclk_mode                    	(PCIE_SUB_CON_x4_pipe_lane2_cmn_refclk_mode_sig)
,.pipe_lane2_databuswidth                       	(/*no connect*/)
,.pipe_lane2_encdec_bypass                      	(PIPE_MUX_pipe_lane2_3_encdec_bypass_sig)
,.pipe_lane2_if_width                           	(PIPE_MUX_pipe_lane2_3_if_width_sig)
,.pipe_lane2_m2p_messagebus                     	(PIPE_MUX_pipe_lane2_m2p_messagebus_sig)
,.pipe_lane2_max_pclk                           	(/*no connect*/)
,.pipe_lane2_p2m_messagebus                     	(PCIE_PHY_pipe_lane2_p2m_messagebus_sig)
,.pipe_lane2_pclk                               	(PCIE_PHY_pipe_lane2_pclk_sig)
,.pipe_lane2_phy_src_sel                        	(PCIE_SUB_CON_x4_pipe_lane2_phy_src_sel_sig)
,.pipe_lane2_phystatus                          	(PCIE_PHY_pipe_lane2_phystatus_sig)
,.pipe_lane2_power_present                      	(/*no connect*/)
,.pipe_lane2_powerdown                          	(PIPE_MUX_pipe_lane2_3_powerdown_sig)
,.pipe_lane2_protocol                           	(PCIE_SUB_CON_x4_pipe_lane2_protocol_sig)
,.pipe_lane2_rate                               	(PIPE_MUX_pipe_lane2_3_rate_sig)
,.pipe_lane2_ref_clk_req_n                      	(PCIE_PHY_pipe_lane2_ref_clk_req_n_sig)
,.pipe_lane2_reset_n                            	(PIPE_MUX_o_mux_pipe_lane2_3_reset_n_sig)
,.pipe_lane2_tx2rx_loopbk                       	(PIPE_MUX_pipe_lane2_tx2rx_loopbk_sig)
,.pipe_lane3_asyncpowerchangeack                	(1'b0)
,.pipe_lane3_clkack_n                           	(/*no connect*/)
,.pipe_lane3_clkreq_n                           	(1'b0)
,.pipe_lane3_cmn_refclk_mode                    	(PCIE_SUB_CON_x4_pipe_lane3_cmn_refclk_mode_sig)
,.pipe_lane3_databuswidth                       	(/*no connect*/)
,.pipe_lane3_encdec_bypass                      	(PIPE_MUX_pipe_lane2_3_encdec_bypass_sig)
,.pipe_lane3_if_width                           	(PIPE_MUX_pipe_lane2_3_if_width_sig)
,.pipe_lane3_m2p_messagebus                     	(PIPE_MUX_pipe_lane3_m2p_messagebus_sig)
,.pipe_lane3_max_pclk                           	(/*no connect*/)
,.pipe_lane3_p2m_messagebus                     	(PCIE_PHY_pipe_lane3_p2m_messagebus_sig)
,.pipe_lane3_pclk                               	(/*no connect*/)
,.pipe_lane3_phy_src_sel                        	(PCIE_SUB_CON_x4_pipe_lane3_phy_src_sel_sig)
,.pipe_lane3_phystatus                          	(PCIE_PHY_pipe_lane3_phystatus_sig)
,.pipe_lane3_power_present                      	(/*no connect*/)
,.pipe_lane3_powerdown                          	(PIPE_MUX_pipe_lane2_3_powerdown_sig)
,.pipe_lane3_protocol                           	(PCIE_SUB_CON_x4_pipe_lane3_protocol_sig)
,.pipe_lane3_rate                               	(PIPE_MUX_pipe_lane2_3_rate_sig)
,.pipe_lane3_ref_clk_req_n                      	(PCIE_PHY_pipe_lane3_ref_clk_req_n_sig)
,.pipe_lane3_reset_n                            	(PIPE_MUX_o_mux_pipe_lane2_3_reset_n_sig)
,.pipe_lane3_tx2rx_loopbk                       	(PIPE_MUX_pipe_lane3_tx2rx_loopbk_sig)
,.pipe_rx0_align_detect                         	(/*no connect*/)
,.pipe_rx0_blk_align_ctl                        	(DWC_pcie_ctrl_x4_mac_phy_blockaligncontrol_sig)
,.pipe_rx0_data                                 	(PCIE_PHY_pipe_rx0_data_sig)
,.pipe_rx0_datak                                	(PCIE_PHY_pipe_rx0_datak_sig)
,.pipe_rx0_datavalid                            	(PCIE_PHY_pipe_rx0_datavalid_sig)
,.pipe_rx0_disable                              	(DWC_pcie_ctrl_x4_mac_phy_rxelecidle_disable_sig)
,.pipe_rx0_ebuff_location                       	(/*no connect*/)
,.pipe_rx0_elecidle                             	(PCIE_PHY_pipe_rx0_elecidle_sig)
,.pipe_rx0_eq_dir_change                        	(PCIE_PHY_pipe_rx0_eq_dir_change_sig)
,.pipe_rx0_eq_eval                              	(DWC_pcie_ctrl_x4_mac_phy_rxeqeval_sig[0])
,.pipe_rx0_eq_fig_merit                         	(PCIE_PHY_pipe_rx0_eq_fig_merit_sig)
,.pipe_rx0_eq_in_prog                           	(DWC_pcie_ctrl_x4_mac_phy_rxeqinprogress_sig[0])
,.pipe_rx0_eq_invld_req                         	(DWC_pcie_ctrl_x4_mac_phy_invalid_req_sig[0])
,.pipe_rx0_eq_training                          	(1'b0)
,.pipe_rx0_es0_cmn_refclk_mode                  	(PCIE_SUB_CON_x4_pipe_rx0_es0_cmn_refclk_mode_sig)
,.pipe_rx0_es_mode                              	(DWC_pcie_ctrl_x4_mac_phy_elasticbuffermode_sig)
,.pipe_rx0_polarity                             	(DWC_pcie_ctrl_x4_mac_phy_rxpolarity_sig[0])
,.pipe_rx0_sris_mode_en                         	(PCIE_SUB_CON_x4_pipe_rx0_sris_mode_en_sig)
,.pipe_rx0_standby                              	(DWC_pcie_ctrl_x4_mac_phy_rxstandby_sig[0])
,.pipe_rx0_standby_status                       	(PCIE_PHY_pipe_rx0_standby_status_sig)
,.pipe_rx0_startblock                           	(PCIE_PHY_pipe_rx0_startblock_sig)
,.pipe_rx0_status                               	(PCIE_PHY_pipe_rx0_status_sig)
,.pipe_rx0_syncheader                           	(PCIE_PHY_pipe_rx0_syncheader_sig)
,.pipe_rx0_termination                          	(PCIE_SUB_CON_x4_pipe_rx0_termination_sig)
,.pipe_rx0_valid                                	(PCIE_PHY_pipe_rx0_valid_sig)
,.pipe_rx1_align_detect                         	(/*no connect*/)
,.pipe_rx1_blk_align_ctl                        	(DWC_pcie_ctrl_x4_mac_phy_blockaligncontrol_sig)
,.pipe_rx1_data                                 	(PCIE_PHY_pipe_rx1_data_sig)
,.pipe_rx1_datak                                	(PCIE_PHY_pipe_rx1_datak_sig)
,.pipe_rx1_datavalid                            	(PCIE_PHY_pipe_rx1_datavalid_sig)
,.pipe_rx1_disable                              	(DWC_pcie_ctrl_x4_mac_phy_rxelecidle_disable_sig)
,.pipe_rx1_ebuff_location                       	(/*no connect*/)
,.pipe_rx1_elecidle                             	(PCIE_PHY_pipe_rx1_elecidle_sig)
,.pipe_rx1_eq_dir_change                        	(PCIE_PHY_pipe_rx1_eq_dir_change_sig)
,.pipe_rx1_eq_eval                              	(DWC_pcie_ctrl_x4_mac_phy_rxeqeval_sig[1])
,.pipe_rx1_eq_fig_merit                         	(PCIE_PHY_pipe_rx1_eq_fig_merit_sig)
,.pipe_rx1_eq_in_prog                           	(DWC_pcie_ctrl_x4_mac_phy_rxeqinprogress_sig[1])
,.pipe_rx1_eq_invld_req                         	(DWC_pcie_ctrl_x4_mac_phy_invalid_req_sig[1])
,.pipe_rx1_eq_training                          	(1'b0)
,.pipe_rx1_es0_cmn_refclk_mode                  	(PCIE_SUB_CON_x4_pipe_rx1_es0_cmn_refclk_mode_sig)
,.pipe_rx1_es_mode                              	(DWC_pcie_ctrl_x4_mac_phy_elasticbuffermode_sig)
,.pipe_rx1_polarity                             	(DWC_pcie_ctrl_x4_mac_phy_rxpolarity_sig[1])
,.pipe_rx1_sris_mode_en                         	(PCIE_SUB_CON_x4_pipe_rx1_sris_mode_en_sig)
,.pipe_rx1_standby                              	(DWC_pcie_ctrl_x4_mac_phy_rxstandby_sig[1])
,.pipe_rx1_standby_status                       	(PCIE_PHY_pipe_rx1_standby_status_sig)
,.pipe_rx1_startblock                           	(PCIE_PHY_pipe_rx1_startblock_sig)
,.pipe_rx1_status                               	(PCIE_PHY_pipe_rx1_status_sig)
,.pipe_rx1_syncheader                           	(PCIE_PHY_pipe_rx1_syncheader_sig)
,.pipe_rx1_termination                          	(PCIE_SUB_CON_x4_pipe_rx1_termination_sig)
,.pipe_rx1_valid                                	(PCIE_PHY_pipe_rx1_valid_sig)
,.pipe_rx2_align_detect                         	(/*no connect*/)
,.pipe_rx2_blk_align_ctl                        	(PIPE_MUX_pipe_rx2_3_blk_align_ctl_sig)
,.pipe_rx2_data                                 	(PCIE_PHY_pipe_rx2_data_sig)
,.pipe_rx2_datak                                	(PCIE_PHY_pipe_rx2_datak_sig)
,.pipe_rx2_datavalid                            	(PCIE_PHY_pipe_rx2_datavalid_sig)
,.pipe_rx2_disable                              	(PIPE_MUX_pipe_rx2_3_disable_sig)
,.pipe_rx2_ebuff_location                       	(/*no connect*/)
,.pipe_rx2_elecidle                             	(PCIE_PHY_pipe_rx2_elecidle_sig)
,.pipe_rx2_eq_dir_change                        	(PCIE_PHY_pipe_rx2_eq_dir_change_sig)
,.pipe_rx2_eq_eval                              	(PIPE_MUX_pipe_rx2_eq_eval_sig)
,.pipe_rx2_eq_fig_merit                         	(PCIE_PHY_pipe_rx2_eq_fig_merit_sig)
,.pipe_rx2_eq_in_prog                           	(PIPE_MUX_pipe_rx2_eq_in_prog_sig)
,.pipe_rx2_eq_invld_req                         	(PIPE_MUX_pipe_rx2_eq_invld_req_sig)
,.pipe_rx2_eq_training                          	(1'b0)
,.pipe_rx2_es0_cmn_refclk_mode                  	(PCIE_SUB_CON_x4_pipe_rx2_es0_cmn_refclk_mode_sig)
,.pipe_rx2_es_mode                              	(PIPE_MUX_pipe_rx2_3_es_mode_sig)
,.pipe_rx2_polarity                             	(PIPE_MUX_pipe_rx2_polarity_sig)
,.pipe_rx2_sris_mode_en                         	(PCIE_SUB_CON_x4_pipe_rx2_sris_mode_en_sig)
,.pipe_rx2_standby                              	(PIPE_MUX_pipe_rx2_standby_sig)
,.pipe_rx2_standby_status                       	(PCIE_PHY_pipe_rx2_standby_status_sig)
,.pipe_rx2_startblock                           	(PCIE_PHY_pipe_rx2_startblock_sig)
,.pipe_rx2_status                               	(PCIE_PHY_pipe_rx2_status_sig)
,.pipe_rx2_syncheader                           	(PCIE_PHY_pipe_rx2_syncheader_sig)
,.pipe_rx2_termination                          	(PCIE_SUB_CON_x4_pipe_rx2_termination_sig)
,.pipe_rx2_valid                                	(PCIE_PHY_pipe_rx2_valid_sig)
,.pipe_rx3_align_detect                         	(/*no connect*/)
,.pipe_rx3_blk_align_ctl                        	(PIPE_MUX_pipe_rx2_3_blk_align_ctl_sig)
,.pipe_rx3_data                                 	(PCIE_PHY_pipe_rx3_data_sig)
,.pipe_rx3_datak                                	(PCIE_PHY_pipe_rx3_datak_sig)
,.pipe_rx3_datavalid                            	(PCIE_PHY_pipe_rx3_datavalid_sig)
,.pipe_rx3_disable                              	(PIPE_MUX_pipe_rx2_3_disable_sig)
,.pipe_rx3_ebuff_location                       	(/*no connect*/)
,.pipe_rx3_elecidle                             	(PCIE_PHY_pipe_rx3_elecidle_sig)
,.pipe_rx3_eq_dir_change                        	(PCIE_PHY_pipe_rx3_eq_dir_change_sig)
,.pipe_rx3_eq_eval                              	(PIPE_MUX_pipe_rx3_eq_eval_sig)
,.pipe_rx3_eq_fig_merit                         	(PCIE_PHY_pipe_rx3_eq_fig_merit_sig)
,.pipe_rx3_eq_in_prog                           	(PIPE_MUX_pipe_rx3_eq_in_prog_sig)
,.pipe_rx3_eq_invld_req                         	(PIPE_MUX_pipe_rx3_eq_invld_req_sig)
,.pipe_rx3_eq_training                          	(1'b0)
,.pipe_rx3_es0_cmn_refclk_mode                  	(PCIE_SUB_CON_x4_pipe_rx3_es0_cmn_refclk_mode_sig)
,.pipe_rx3_es_mode                              	(PIPE_MUX_pipe_rx2_3_es_mode_sig)
,.pipe_rx3_polarity                             	(PIPE_MUX_pipe_rx3_polarity_sig)
,.pipe_rx3_sris_mode_en                         	(PCIE_SUB_CON_x4_pipe_rx3_sris_mode_en_sig)
,.pipe_rx3_standby                              	(PIPE_MUX_pipe_rx3_standby_sig)
,.pipe_rx3_standby_status                       	(PCIE_PHY_pipe_rx3_standby_status_sig)
,.pipe_rx3_startblock                           	(PCIE_PHY_pipe_rx3_startblock_sig)
,.pipe_rx3_status                               	(PCIE_PHY_pipe_rx3_status_sig)
,.pipe_rx3_syncheader                           	(PCIE_PHY_pipe_rx3_syncheader_sig)
,.pipe_rx3_termination                          	(PCIE_SUB_CON_x4_pipe_rx3_termination_sig)
,.pipe_rx3_valid                                	(PCIE_PHY_pipe_rx3_valid_sig)
,.pipe_tx0_compliance                           	(DWC_pcie_ctrl_x4_mac_phy_txcompliance_sig[0])
,.pipe_tx0_data                                 	({8'b0
													 ,DWC_pcie_ctrl_x4_mac_phy_txdata_sig[31:0]})
,.pipe_tx0_datak                                	(DWC_pcie_ctrl_x4_mac_phy_txdatak_sig[3:0])
,.pipe_tx0_datavalid                            	(DWC_pcie_ctrl_x4_mac_phy_txdatavalid_sig[0])
,.pipe_tx0_deemph                               	(DWC_pcie_ctrl_x4_mac_phy_txdeemph_sig[35:18])
,.pipe_tx0_detectrx                             	(DWC_pcie_ctrl_x4_mac_phy_txdetectrx_loopback_sig[0])
,.pipe_tx0_disable                              	(DWC_pcie_ctrl_x4_mac_phy_txcommonmode_disable_sig)
,.pipe_tx0_elecidle                             	(DWC_pcie_ctrl_x4_mac_phy_txelecidle_sig[0])
,.pipe_tx0_eq_preset_coeff                      	(PCIE_PHY_pipe_tx0_eq_preset_coeff_sig)
,.pipe_tx0_eq_preset_coeff_vld                  	(PCIE_PHY_pipe_tx0_eq_preset_coeff_vld_sig)
,.pipe_tx0_eq_fs                                	(PCIE_PHY_pipe_tx0_eq_fs_sig)
,.pipe_tx0_eq_lf                                	(PCIE_PHY_pipe_tx0_eq_lf_sig)
,.pipe_tx0_eq_preset                            	(DWC_pcie_ctrl_x4_mac_phy_local_pset_index_sig[4:0])
,.pipe_tx0_eq_preset_coeff_req                  	(DWC_pcie_ctrl_x4_mac_phy_getlocal_pset_coef_sig[0])
,.pipe_tx0_margin                               	(DWC_pcie_ctrl_x4_mac_phy_txmargin_sig)
,.pipe_tx0_ones_zeros                           	(1'b0)
,.pipe_tx0_pattern                              	(2'b0)
,.pipe_tx0_startblock                           	(DWC_pcie_ctrl_x4_mac_phy_txstartblock_sig[0])
,.pipe_tx0_swing                                	(DWC_pcie_ctrl_x4_mac_phy_txswing_sig)
,.pipe_tx0_syncheader                           	({2'b0
													 ,DWC_pcie_ctrl_x4_mac_phy_txsyncheader_sig[1:0]})
,.pipe_tx1_compliance                           	(DWC_pcie_ctrl_x4_mac_phy_txcompliance_sig[1])
,.pipe_tx1_data                                 	({8'b0
													 ,DWC_pcie_ctrl_x4_mac_phy_txdata_sig[63:32]})
,.pipe_tx1_datak                                	(DWC_pcie_ctrl_x4_mac_phy_txdatak_sig[7:4])
,.pipe_tx1_datavalid                            	(DWC_pcie_ctrl_x4_mac_phy_txdatavalid_sig[1])
,.pipe_tx1_deemph                               	(DWC_pcie_ctrl_x4_mac_phy_txdeemph_sig[17:0])
,.pipe_tx1_detectrx                             	(DWC_pcie_ctrl_x4_mac_phy_txdetectrx_loopback_sig[1])
,.pipe_tx1_disable                              	(DWC_pcie_ctrl_x4_mac_phy_txcommonmode_disable_sig)
,.pipe_tx1_elecidle                             	(DWC_pcie_ctrl_x4_mac_phy_txelecidle_sig[1])
,.pipe_tx1_eq_preset_coeff                      	(PCIE_PHY_pipe_tx1_eq_preset_coeff_sig)
,.pipe_tx1_eq_preset_coeff_vld                  	(PCIE_PHY_pipe_tx1_eq_preset_coeff_vld_sig)
,.pipe_tx1_eq_fs                                	(PCIE_PHY_pipe_tx1_eq_fs_sig)
,.pipe_tx1_eq_lf                                	(PCIE_PHY_pipe_tx1_eq_lf_sig)
,.pipe_tx1_eq_preset                            	(DWC_pcie_ctrl_x4_mac_phy_local_pset_index_sig[9:5])
,.pipe_tx1_eq_preset_coeff_req                  	(DWC_pcie_ctrl_x4_mac_phy_getlocal_pset_coef_sig[1])
,.pipe_tx1_margin                               	(DWC_pcie_ctrl_x4_mac_phy_txmargin_sig)
,.pipe_tx1_ones_zeros                           	(1'b0)
,.pipe_tx1_pattern                              	(2'b0)
,.pipe_tx1_startblock                           	(DWC_pcie_ctrl_x4_mac_phy_txstartblock_sig[1])
,.pipe_tx1_swing                                	(DWC_pcie_ctrl_x4_mac_phy_txswing_sig)
,.pipe_tx1_syncheader                           	({2'b0
													 ,DWC_pcie_ctrl_x4_mac_phy_txsyncheader_sig[3:2]})
,.pipe_tx2_compliance                           	(PIPE_MUX_pipe_tx2_compliance_sig)
,.pipe_tx2_data                                 	({8'b0
													 ,PIPE_MUX_x4_pipe_tx2_data_sig})
,.pipe_tx2_datak                                	(PIPE_MUX_x4_pipe_tx2_datak_sig)
,.pipe_tx2_datavalid                            	(PIPE_MUX_pipe_tx2_datavalid_sig)
,.pipe_tx2_deemph                               	(PIPE_MUX_pipe_tx2_deemph_sig)
,.pipe_tx2_detectrx                             	(PIPE_MUX_pipe_tx2_detectrx_sig)
,.pipe_tx2_disable                              	(PIPE_MUX_pipe_tx2_3_disable_sig)
,.pipe_tx2_elecidle                             	(PIPE_MUX_pipe_tx2_elecidle_sig)
,.pipe_tx2_eq_preset_coeff                      	(PCIE_PHY_pipe_tx2_eq_preset_coeff_sig)
,.pipe_tx2_eq_preset_coeff_vld                  	(PCIE_PHY_pipe_tx2_eq_preset_coeff_vld_sig)
,.pipe_tx2_eq_fs                                	(PCIE_PHY_pipe_tx2_eq_fs_sig)
,.pipe_tx2_eq_lf                                	(PCIE_PHY_pipe_tx2_eq_lf_sig)
,.pipe_tx2_eq_preset                            	(PIPE_MUX_pipe_tx2_eq_preset_sig)
,.pipe_tx2_eq_preset_coeff_req                  	(PIPE_MUX_pipe_tx2_eq_preset_coeff_req_sig)
,.pipe_tx2_margin                               	(PIPE_MUX_pipe_tx2_3_margin_sig)
,.pipe_tx2_ones_zeros                           	(1'b0)
,.pipe_tx2_pattern                              	(2'b0)
,.pipe_tx2_startblock                           	(PIPE_MUX_pipe_tx2_startblock_sig)
,.pipe_tx2_swing                                	(PIPE_MUX_pipe_tx2_3_swing_sig)
,.pipe_tx2_syncheader                           	({2'b0
													 ,PIPE_MUX_pipe_tx2_syncheader_sig})
,.pipe_tx3_compliance                           	(PIPE_MUX_pipe_tx3_compliance_sig)
,.pipe_tx3_data                                 	({8'b0
													 ,PIPE_MUX_x4_pipe_tx3_data_sig})
,.pipe_tx3_datak                                	(PIPE_MUX_x4_pipe_tx3_datak_sig)
,.pipe_tx3_datavalid                            	(PIPE_MUX_pipe_tx3_datavalid_sig)
,.pipe_tx3_deemph                               	(PIPE_MUX_pipe_tx3_deemph_sig)
,.pipe_tx3_detectrx                             	(PIPE_MUX_pipe_tx3_detectrx_sig)
,.pipe_tx3_disable                              	(PIPE_MUX_pipe_tx2_3_disable_sig)
,.pipe_tx3_elecidle                             	(PIPE_MUX_pipe_tx3_elecidle_sig)
,.pipe_tx3_eq_preset_coeff                      	(PCIE_PHY_pipe_tx3_eq_preset_coeff_sig)
,.pipe_tx3_eq_preset_coeff_vld                  	(PCIE_PHY_pipe_tx3_eq_preset_coeff_vld_sig)
,.pipe_tx3_eq_fs                                	(PCIE_PHY_pipe_tx3_eq_fs_sig)
,.pipe_tx3_eq_lf                                	(PCIE_PHY_pipe_tx3_eq_lf_sig)
,.pipe_tx3_eq_preset                            	(PIPE_MUX_pipe_tx3_eq_preset_sig)
,.pipe_tx3_eq_preset_coeff_req                  	(PIPE_MUX_pipe_tx3_eq_preset_coeff_req_sig)
,.pipe_tx3_margin                               	(PIPE_MUX_pipe_tx2_3_margin_sig)
,.pipe_tx3_ones_zeros                           	(1'b0)
,.pipe_tx3_pattern                              	(2'b0)
,.pipe_tx3_startblock                           	(PIPE_MUX_pipe_tx3_startblock_sig)
,.pipe_tx3_swing                                	(PIPE_MUX_pipe_tx2_3_swing_sig)
,.pipe_tx3_syncheader                           	({2'b0
													 ,PIPE_MUX_pipe_tx3_syncheader_sig})
,.protocol0_ext_bs_rx_bigswing                  	(PCIE_SUB_CON_x4_protocol0_ext_bs_rx_bigswing_sig)
,.protocol0_ext_bs_rx_level                     	(PCIE_SUB_CON_x4_protocol0_ext_bs_rx_level_sig)
,.protocol0_ext_bs_tx_lowswing                  	(PCIE_SUB_CON_x4_protocol0_ext_bs_tx_lowswing_sig)
,.protocol0_ext_mplla_bandwidth                 	(PCIE_SUB_CON_x4_protocol0_ext_mplla_bandwidth_sig)
,.protocol0_ext_mplla_div10_clk_en              	(PCIE_SUB_CON_x4_protocol0_ext_mplla_div10_clk_en_sig)
,.protocol0_ext_mplla_div16p5_clk_en            	(PCIE_SUB_CON_x4_protocol0_ext_mplla_div16p5_clk_en_sig)
,.protocol0_ext_mplla_div8_clk_en               	(PCIE_SUB_CON_x4_protocol0_ext_mplla_div8_clk_en_sig)
,.protocol0_ext_mplla_div_clk_en                	(PCIE_SUB_CON_x4_protocol0_ext_mplla_div_clk_en_sig)
,.protocol0_ext_mplla_div_multiplier            	(PCIE_SUB_CON_x4_protocol0_ext_mplla_div_multiplier_sig)
,.protocol0_ext_mplla_fracn_ctrl                	(PCIE_SUB_CON_x4_protocol0_ext_mplla_fracn_ctrl_sig)
,.protocol0_ext_mplla_multiplier                	(PCIE_SUB_CON_x4_protocol0_ext_mplla_multiplier_sig)
,.protocol0_ext_mplla_ssc_clk_sel               	(PCIE_SUB_CON_x4_protocol0_ext_mplla_ssc_clk_sel_sig)
,.protocol0_ext_mplla_ssc_freq_cnt_init         	(PCIE_SUB_CON_x4_protocol0_ext_mplla_ssc_freq_cnt_init_sig)
,.protocol0_ext_mplla_ssc_freq_cnt_peak         	(PCIE_SUB_CON_x4_protocol0_ext_mplla_ssc_freq_cnt_peak_sig)
,.protocol0_ext_mplla_ssc_up_spread             	(PCIE_SUB_CON_x4_protocol0_ext_mplla_ssc_up_spread_sig)
,.protocol0_ext_mplla_tx_clk_div                	(PCIE_SUB_CON_x4_protocol0_ext_mplla_tx_clk_div_sig)
,.protocol0_ext_mpllb_bandwidth                 	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_bandwidth_sig)
,.protocol0_ext_mpllb_div10_clk_en              	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_div10_clk_en_sig)
,.protocol0_ext_mpllb_div8_clk_en               	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_div8_clk_en_sig)
,.protocol0_ext_mpllb_div_clk_en                	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_div_clk_en_sig)
,.protocol0_ext_mpllb_div_multiplier            	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_div_multiplier_sig)
,.protocol0_ext_mpllb_fracn_ctrl                	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_fracn_ctrl_sig)
,.protocol0_ext_mpllb_multiplier                	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_multiplier_sig)
,.protocol0_ext_mpllb_ssc_clk_sel               	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_ssc_clk_sel_sig)
,.protocol0_ext_mpllb_ssc_freq_cnt_init         	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_ssc_freq_cnt_init_sig)
,.protocol0_ext_mpllb_ssc_freq_cnt_peak         	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_ssc_freq_cnt_peak_sig)
,.protocol0_ext_mpllb_ssc_up_spread             	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_ssc_up_spread_sig)
,.protocol0_ext_mpllb_tx_clk_div                	(PCIE_SUB_CON_x4_protocol0_ext_mpllb_tx_clk_div_sig)
,.protocol0_ext_ref_clk_div2_en                 	(PCIE_SUB_CON_x4_protocol0_ext_ref_clk_div2_en_sig)
,.protocol0_ext_ref_clk_mplla_div2_en           	(PCIE_SUB_CON_x4_protocol0_ext_ref_clk_mplla_div2_en_sig)
,.protocol0_ext_ref_clk_mpllb_div2_en           	(PCIE_SUB_CON_x4_protocol0_ext_ref_clk_mpllb_div2_en_sig)
,.protocol0_ext_ref_range                       	(PCIE_SUB_CON_x4_protocol0_ext_ref_range_sig)
,.protocol0_ext_rx_adapt_mode_g1                	(PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_mode_g1_sig)
,.protocol0_ext_rx_adapt_mode_g2                	(PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_mode_g2_sig)
,.protocol0_ext_rx_adapt_mode_g3                	(PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_mode_g3_sig)
,.protocol0_ext_rx_adapt_mode_g4                	(PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_mode_g4_sig)
,.protocol0_ext_rx_adapt_sel_g1                 	(PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_sel_g1_sig)
,.protocol0_ext_rx_adapt_sel_g2                 	(PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_sel_g2_sig)
,.protocol0_ext_rx_adapt_sel_g3                 	(PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_sel_g3_sig)
,.protocol0_ext_rx_adapt_sel_g4                 	(PCIE_SUB_CON_x4_protocol0_ext_rx_adapt_sel_g4_sig)
,.protocol0_ext_rx_cdr_ppm_max_g1               	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_ppm_max_g1_sig)
,.protocol0_ext_rx_cdr_ppm_max_g2               	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_ppm_max_g2_sig)
,.protocol0_ext_rx_cdr_ppm_max_g3               	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_ppm_max_g3_sig)
,.protocol0_ext_rx_cdr_ppm_max_g4               	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_ppm_max_g4_sig)
,.protocol0_ext_rx_cdr_vco_freqband_g1          	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_freqband_g1_sig)
,.protocol0_ext_rx_cdr_vco_freqband_g2          	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_freqband_g2_sig)
,.protocol0_ext_rx_cdr_vco_freqband_g3          	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_freqband_g3_sig)
,.protocol0_ext_rx_cdr_vco_freqband_g4          	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_freqband_g4_sig)
,.protocol0_ext_rx_cdr_vco_step_ctrl_g1         	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_step_ctrl_g1_sig)
,.protocol0_ext_rx_cdr_vco_step_ctrl_g2         	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_step_ctrl_g2_sig)
,.protocol0_ext_rx_cdr_vco_step_ctrl_g3         	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_step_ctrl_g3_sig)
,.protocol0_ext_rx_cdr_vco_step_ctrl_g4         	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_step_ctrl_g4_sig)
,.protocol0_ext_rx_cdr_vco_temp_comp_en_g1      	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_temp_comp_en_g1_sig)
,.protocol0_ext_rx_cdr_vco_temp_comp_en_g2      	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_temp_comp_en_g2_sig)
,.protocol0_ext_rx_cdr_vco_temp_comp_en_g3      	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_temp_comp_en_g3_sig)
,.protocol0_ext_rx_cdr_vco_temp_comp_en_g4      	(PCIE_SUB_CON_x4_protocol0_ext_rx_cdr_vco_temp_comp_en_g4_sig)
,.protocol0_ext_rx_delta_iq_g1                  	(PCIE_SUB_CON_x4_protocol0_ext_rx_delta_iq_g1_sig)
,.protocol0_ext_rx_delta_iq_g2                  	(PCIE_SUB_CON_x4_protocol0_ext_rx_delta_iq_g2_sig)
,.protocol0_ext_rx_delta_iq_g3                  	(PCIE_SUB_CON_x4_protocol0_ext_rx_delta_iq_g3_sig)
,.protocol0_ext_rx_delta_iq_g4                  	(PCIE_SUB_CON_x4_protocol0_ext_rx_delta_iq_g4_sig)
,.protocol0_ext_rx_dfe_bypass_g1                	(PCIE_SUB_CON_x4_protocol0_ext_rx_dfe_bypass_g1_sig)
,.protocol0_ext_rx_dfe_bypass_g2                	(PCIE_SUB_CON_x4_protocol0_ext_rx_dfe_bypass_g2_sig)
,.protocol0_ext_rx_dfe_bypass_g3                	(PCIE_SUB_CON_x4_protocol0_ext_rx_dfe_bypass_g3_sig)
,.protocol0_ext_rx_dfe_bypass_g4                	(PCIE_SUB_CON_x4_protocol0_ext_rx_dfe_bypass_g4_sig)
,.protocol0_ext_rx_eq_att_lvl_g1                	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_att_lvl_g1_sig)
,.protocol0_ext_rx_eq_att_lvl_g2                	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_att_lvl_g2_sig)
,.protocol0_ext_rx_eq_att_lvl_g3                	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_att_lvl_g3_sig)
,.protocol0_ext_rx_eq_att_lvl_g4                	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_att_lvl_g4_sig)
,.protocol0_ext_rx_eq_ctle_boost_g1             	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_boost_g1_sig)
,.protocol0_ext_rx_eq_ctle_boost_g2             	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_boost_g2_sig)
,.protocol0_ext_rx_eq_ctle_boost_g3             	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_boost_g3_sig)
,.protocol0_ext_rx_eq_ctle_boost_g4             	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_boost_g4_sig)
,.protocol0_ext_rx_eq_ctle_pole_g1              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_pole_g1_sig)
,.protocol0_ext_rx_eq_ctle_pole_g2              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_pole_g2_sig)
,.protocol0_ext_rx_eq_ctle_pole_g3              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_pole_g3_sig)
,.protocol0_ext_rx_eq_ctle_pole_g4              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_ctle_pole_g4_sig)
,.protocol0_ext_rx_eq_dfe_tap1_g1               	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_dfe_tap1_g1_sig)
,.protocol0_ext_rx_eq_dfe_tap1_g2               	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_dfe_tap1_g2_sig)
,.protocol0_ext_rx_eq_dfe_tap1_g3               	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_dfe_tap1_g3_sig)
,.protocol0_ext_rx_eq_dfe_tap1_g4               	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_dfe_tap1_g4_sig)
,.protocol0_ext_rx_eq_vga1_gain_g1              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga1_gain_g1_sig)
,.protocol0_ext_rx_eq_vga1_gain_g2              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga1_gain_g2_sig)
,.protocol0_ext_rx_eq_vga1_gain_g3              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga1_gain_g3_sig)
,.protocol0_ext_rx_eq_vga1_gain_g4              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga1_gain_g4_sig)
,.protocol0_ext_rx_eq_vga2_gain_g1              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga2_gain_g1_sig)
,.protocol0_ext_rx_eq_vga2_gain_g2              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga2_gain_g2_sig)
,.protocol0_ext_rx_eq_vga2_gain_g3              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga2_gain_g3_sig)
,.protocol0_ext_rx_eq_vga2_gain_g4              	(PCIE_SUB_CON_x4_protocol0_ext_rx_eq_vga2_gain_g4_sig)
,.protocol0_ext_rx_los_lfps_en                  	(PCIE_SUB_CON_x4_protocol0_ext_rx_los_lfps_en_sig)
,.protocol0_ext_rx_los_pwr_up_cnt               	(PCIE_SUB_CON_x4_protocol0_ext_rx_los_pwr_up_cnt_sig)
,.protocol0_ext_rx_los_threshold                	(PCIE_SUB_CON_x4_protocol0_ext_rx_los_threshold_sig)
,.protocol0_ext_rx_misc_g1                      	(PCIE_SUB_CON_x4_protocol0_ext_rx_misc_g1_sig)
,.protocol0_ext_rx_misc_g2                      	(PCIE_SUB_CON_x4_protocol0_ext_rx_misc_g2_sig)
,.protocol0_ext_rx_misc_g3                      	(PCIE_SUB_CON_x4_protocol0_ext_rx_misc_g3_sig)
,.protocol0_ext_rx_misc_g4                      	(PCIE_SUB_CON_x4_protocol0_ext_rx_misc_g4_sig)
,.protocol0_ext_rx_ref_ld_val_g1                	(PCIE_SUB_CON_x4_protocol0_ext_rx_ref_ld_val_g1_sig)
,.protocol0_ext_rx_ref_ld_val_g2                	(PCIE_SUB_CON_x4_protocol0_ext_rx_ref_ld_val_g2_sig)
,.protocol0_ext_rx_ref_ld_val_g3                	(PCIE_SUB_CON_x4_protocol0_ext_rx_ref_ld_val_g3_sig)
,.protocol0_ext_rx_ref_ld_val_g4                	(PCIE_SUB_CON_x4_protocol0_ext_rx_ref_ld_val_g4_sig)
,.protocol0_ext_rx_vco_ld_val_g1                	(PCIE_SUB_CON_x4_protocol0_ext_rx_vco_ld_val_g1_sig)
,.protocol0_ext_rx_vco_ld_val_g2                	(PCIE_SUB_CON_x4_protocol0_ext_rx_vco_ld_val_g2_sig)
,.protocol0_ext_rx_vco_ld_val_g3                	(PCIE_SUB_CON_x4_protocol0_ext_rx_vco_ld_val_g3_sig)
,.protocol0_ext_rx_vco_ld_val_g4                	(PCIE_SUB_CON_x4_protocol0_ext_rx_vco_ld_val_g4_sig)
,.protocol0_ext_rx_vref_ctrl                    	(PCIE_SUB_CON_x4_protocol0_ext_rx_vref_ctrl_sig)
,.protocol0_ext_sup_misc_g1                     	(PCIE_SUB_CON_x4_protocol0_ext_sup_misc_g1_sig)
,.protocol0_ext_sup_misc_g2                     	(PCIE_SUB_CON_x4_protocol0_ext_sup_misc_g2_sig)
,.protocol0_ext_sup_misc_g3                     	(PCIE_SUB_CON_x4_protocol0_ext_sup_misc_g3_sig)
,.protocol0_ext_sup_misc_g4                     	(PCIE_SUB_CON_x4_protocol0_ext_sup_misc_g4_sig)
,.protocol0_ext_tx_eq_main_g1                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_main_g1_sig)
,.protocol0_ext_tx_eq_main_g2                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_main_g2_sig)
,.protocol0_ext_tx_eq_main_g3                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_main_g3_sig)
,.protocol0_ext_tx_eq_main_g4                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_main_g4_sig)
,.protocol0_ext_tx_eq_ovrd_g1                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_ovrd_g1_sig)
,.protocol0_ext_tx_eq_ovrd_g2                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_ovrd_g2_sig)
,.protocol0_ext_tx_eq_ovrd_g3                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_ovrd_g3_sig)
,.protocol0_ext_tx_eq_ovrd_g4                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_ovrd_g4_sig)
,.protocol0_ext_tx_eq_post_g1                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_post_g1_sig)
,.protocol0_ext_tx_eq_post_g2                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_post_g2_sig)
,.protocol0_ext_tx_eq_post_g3                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_post_g3_sig)
,.protocol0_ext_tx_eq_post_g4                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_post_g4_sig)
,.protocol0_ext_tx_eq_pre_g1                    	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_pre_g1_sig)
,.protocol0_ext_tx_eq_pre_g2                    	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_pre_g2_sig)
,.protocol0_ext_tx_eq_pre_g3                    	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_pre_g3_sig)
,.protocol0_ext_tx_eq_pre_g4                    	(PCIE_SUB_CON_x4_protocol0_ext_tx_eq_pre_g4_sig)
,.protocol0_ext_tx_iboost_lvl                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_iboost_lvl_sig)
,.protocol0_ext_tx_misc_g1                      	(PCIE_SUB_CON_x4_protocol0_ext_tx_misc_g1_sig)
,.protocol0_ext_tx_misc_g2                      	(PCIE_SUB_CON_x4_protocol0_ext_tx_misc_g2_sig)
,.protocol0_ext_tx_misc_g3                      	(PCIE_SUB_CON_x4_protocol0_ext_tx_misc_g3_sig)
,.protocol0_ext_tx_misc_g4                      	(PCIE_SUB_CON_x4_protocol0_ext_tx_misc_g4_sig)
,.protocol0_ext_tx_vboost_lvl                   	(PCIE_SUB_CON_x4_protocol0_ext_tx_vboost_lvl_sig)
,.protocol1_ext_bs_rx_bigswing                  	(1'b0)
,.protocol1_ext_bs_rx_level                     	(5'b0)
,.protocol1_ext_bs_tx_lowswing                  	(1'b0)
,.protocol1_ext_mplla_bandwidth                 	(16'b0)
,.protocol1_ext_mplla_div10_clk_en              	(1'b0)
,.protocol1_ext_mplla_div16p5_clk_en            	(1'b0)
,.protocol1_ext_mplla_div8_clk_en               	(1'b0)
,.protocol1_ext_mplla_div_clk_en                	(1'b0)
,.protocol1_ext_mplla_div_multiplier            	(7'b0)
,.protocol1_ext_mplla_fracn_ctrl                	(11'b0)
,.protocol1_ext_mplla_multiplier                	(8'b0)
,.protocol1_ext_mplla_ssc_clk_sel               	(1'b0)
,.protocol1_ext_mplla_ssc_freq_cnt_init         	(12'b0)
,.protocol1_ext_mplla_ssc_freq_cnt_peak         	(8'b0)
,.protocol1_ext_mplla_ssc_up_spread             	(1'b0)
,.protocol1_ext_mplla_tx_clk_div                	(2'b0)
,.protocol1_ext_mpllb_bandwidth                 	(16'b0)
,.protocol1_ext_mpllb_div10_clk_en              	(1'b0)
,.protocol1_ext_mpllb_div8_clk_en               	(1'b0)
,.protocol1_ext_mpllb_div_clk_en                	(1'b0)
,.protocol1_ext_mpllb_div_multiplier            	(7'b0)
,.protocol1_ext_mpllb_fracn_ctrl                	(11'b0)
,.protocol1_ext_mpllb_multiplier                	(8'b0)
,.protocol1_ext_mpllb_ssc_clk_sel               	(1'b0)
,.protocol1_ext_mpllb_ssc_freq_cnt_init         	(12'b0)
,.protocol1_ext_mpllb_ssc_freq_cnt_peak         	(8'b0)
,.protocol1_ext_mpllb_ssc_up_spread             	(1'b0)
,.protocol1_ext_mpllb_tx_clk_div                	(2'b0)
,.protocol1_ext_ref_clk_div2_en                 	(1'b0)
,.protocol1_ext_ref_clk_mplla_div2_en           	(1'b0)
,.protocol1_ext_ref_clk_mpllb_div2_en           	(1'b0)
,.protocol1_ext_ref_range                       	(3'b0)
,.protocol1_ext_rx_adapt_mode_g1                	(8'b0)
,.protocol1_ext_rx_adapt_mode_g2                	(8'b0)
,.protocol1_ext_rx_adapt_sel_g1                 	(4'b0)
,.protocol1_ext_rx_adapt_sel_g2                 	(4'b0)
,.protocol1_ext_rx_cdr_ppm_max_g1               	(20'b0)
,.protocol1_ext_rx_cdr_ppm_max_g2               	(20'b0)
,.protocol1_ext_rx_cdr_vco_freqband_g1          	(8'b0)
,.protocol1_ext_rx_cdr_vco_freqband_g2          	(8'b0)
,.protocol1_ext_rx_cdr_vco_step_ctrl_g1         	(4'b0)
,.protocol1_ext_rx_cdr_vco_step_ctrl_g2         	(4'b0)
,.protocol1_ext_rx_cdr_vco_temp_comp_en_g1      	(4'b0)
,.protocol1_ext_rx_cdr_vco_temp_comp_en_g2      	(4'b0)
,.protocol1_ext_rx_delta_iq_g1                  	(16'b0)
,.protocol1_ext_rx_delta_iq_g2                  	(16'b0)
,.protocol1_ext_rx_dfe_bypass_g1                	(4'b0)
,.protocol1_ext_rx_dfe_bypass_g2                	(4'b0)
,.protocol1_ext_rx_eq_att_lvl_g1                	(12'b0)
,.protocol1_ext_rx_eq_att_lvl_g2                	(12'b0)
,.protocol1_ext_rx_eq_ctle_boost_g1             	(20'b0)
,.protocol1_ext_rx_eq_ctle_boost_g2             	(20'b0)
,.protocol1_ext_rx_eq_ctle_pole_g1              	(8'b0)
,.protocol1_ext_rx_eq_ctle_pole_g2              	(8'b0)
,.protocol1_ext_rx_eq_dfe_tap1_g1               	(32'b0)
,.protocol1_ext_rx_eq_dfe_tap1_g2               	(32'b0)
,.protocol1_ext_rx_eq_vga1_gain_g1              	(12'b0)
,.protocol1_ext_rx_eq_vga1_gain_g2              	(12'b0)
,.protocol1_ext_rx_eq_vga2_gain_g1              	(12'b0)
,.protocol1_ext_rx_eq_vga2_gain_g2              	(12'b0)
,.protocol1_ext_rx_los_lfps_en                  	(1'b0)
,.protocol1_ext_rx_los_pwr_up_cnt               	(11'b0)
,.protocol1_ext_rx_los_threshold                	(12'b0)
,.protocol1_ext_rx_misc_g1                      	(32'b0)
,.protocol1_ext_rx_misc_g2                      	(32'b0)
,.protocol1_ext_rx_ref_ld_val_g1                	(7'b0)
,.protocol1_ext_rx_ref_ld_val_g2                	(7'b0)
,.protocol1_ext_rx_vco_ld_val_g1                	(13'b0)
,.protocol1_ext_rx_vco_ld_val_g2                	(13'b0)
,.protocol1_ext_rx_vref_ctrl                    	(5'b0)
,.protocol1_ext_sup_misc_g1                     	(8'b0)
,.protocol1_ext_sup_misc_g2                     	(8'b0)
,.protocol1_ext_tx_eq_main_g1                   	(24'b0)
,.protocol1_ext_tx_eq_main_g2                   	(24'b0)
,.protocol1_ext_tx_eq_ovrd_g1                   	(4'b0)
,.protocol1_ext_tx_eq_ovrd_g2                   	(4'b0)
,.protocol1_ext_tx_eq_post_g1                   	(20'b0)
,.protocol1_ext_tx_eq_post_g2                   	(20'b0)
,.protocol1_ext_tx_eq_pre_g1                    	(20'b0)
,.protocol1_ext_tx_eq_pre_g2                    	(20'b0)
,.protocol1_ext_tx_iboost_lvl                   	(16'b0)
,.protocol1_ext_tx_misc_g1                      	(32'b0)
,.protocol1_ext_tx_misc_g2                      	(32'b0)
,.protocol1_ext_tx_vboost_lvl                   	(3'b0)
,.protocol2_ext_bs_rx_bigswing_g1               	(1'b0)
,.protocol2_ext_bs_rx_bigswing_g2               	(1'b0)
,.protocol2_ext_bs_rx_bigswing_g3               	(1'b0)
,.protocol2_ext_bs_rx_level                     	(5'b0)
,.protocol2_ext_bs_tx_lowswing_g1               	(1'b0)
,.protocol2_ext_bs_tx_lowswing_g2               	(1'b0)
,.protocol2_ext_bs_tx_lowswing_g3               	(1'b0)
,.protocol2_ext_mplla_bandwidth                 	(16'b0)
,.protocol2_ext_mplla_div10_clk_en              	(1'b0)
,.protocol2_ext_mplla_div16p5_clk_en            	(1'b0)
,.protocol2_ext_mplla_div8_clk_en               	(1'b0)
,.protocol2_ext_mplla_div_clk_en                	(1'b0)
,.protocol2_ext_mplla_div_multiplier            	(7'b0)
,.protocol2_ext_mplla_fracn_ctrl                	(11'b0)
,.protocol2_ext_mplla_multiplier                	(8'b0)
,.protocol2_ext_mplla_ssc_clk_sel               	(1'b0)
,.protocol2_ext_mplla_ssc_freq_cnt_init         	(12'b0)
,.protocol2_ext_mplla_ssc_freq_cnt_peak         	(8'b0)
,.protocol2_ext_mplla_ssc_up_spread             	(1'b0)
,.protocol2_ext_mplla_tx_clk_div                	(2'b0)
,.protocol2_ext_mpllb_bandwidth                 	(16'b0)
,.protocol2_ext_mpllb_div10_clk_en              	(1'b0)
,.protocol2_ext_mpllb_div8_clk_en               	(1'b0)
,.protocol2_ext_mpllb_div_clk_en                	(1'b0)
,.protocol2_ext_mpllb_div_multiplier            	(7'b0)
,.protocol2_ext_mpllb_fracn_ctrl                	(11'b0)
,.protocol2_ext_mpllb_multiplier                	(8'b0)
,.protocol2_ext_mpllb_ssc_clk_sel               	(1'b0)
,.protocol2_ext_mpllb_ssc_freq_cnt_init         	(12'b0)
,.protocol2_ext_mpllb_ssc_freq_cnt_peak         	(8'b0)
,.protocol2_ext_mpllb_ssc_up_spread             	(1'b0)
,.protocol2_ext_mpllb_tx_clk_div                	(2'b0)
,.protocol2_ext_ref_clk_div2_en                 	(1'b0)
,.protocol2_ext_ref_clk_mplla_div2_en           	(1'b0)
,.protocol2_ext_ref_clk_mpllb_div2_en           	(1'b0)
,.protocol2_ext_ref_range                       	(3'b0)
,.protocol2_ext_rx_adapt_mode_g1                	(8'b0)
,.protocol2_ext_rx_adapt_mode_g2                	(8'b0)
,.protocol2_ext_rx_adapt_mode_g3                	(8'b0)
,.protocol2_ext_rx_adapt_sel_g1                 	(4'b0)
,.protocol2_ext_rx_adapt_sel_g2                 	(4'b0)
,.protocol2_ext_rx_adapt_sel_g3                 	(4'b0)
,.protocol2_ext_rx_cdr_ppm_max_g1               	(20'b0)
,.protocol2_ext_rx_cdr_ppm_max_g2               	(20'b0)
,.protocol2_ext_rx_cdr_ppm_max_g3               	(20'b0)
,.protocol2_ext_rx_cdr_vco_freqband_g1          	(8'b0)
,.protocol2_ext_rx_cdr_vco_freqband_g2          	(8'b0)
,.protocol2_ext_rx_cdr_vco_freqband_g3          	(8'b0)
,.protocol2_ext_rx_cdr_vco_step_ctrl_g1         	(4'b0)
,.protocol2_ext_rx_cdr_vco_step_ctrl_g2         	(4'b0)
,.protocol2_ext_rx_cdr_vco_step_ctrl_g3         	(4'b0)
,.protocol2_ext_rx_cdr_vco_temp_comp_en_g1      	(4'b0)
,.protocol2_ext_rx_cdr_vco_temp_comp_en_g2      	(4'b0)
,.protocol2_ext_rx_cdr_vco_temp_comp_en_g3      	(4'b0)
,.protocol2_ext_rx_delta_iq_g1                  	(16'b0)
,.protocol2_ext_rx_delta_iq_g2                  	(16'b0)
,.protocol2_ext_rx_delta_iq_g3                  	(16'b0)
,.protocol2_ext_rx_dfe_bypass_g1                	(4'b0)
,.protocol2_ext_rx_dfe_bypass_g2                	(4'b0)
,.protocol2_ext_rx_dfe_bypass_g3                	(4'b0)
,.protocol2_ext_rx_eq_att_lvl_g1                	(12'b0)
,.protocol2_ext_rx_eq_att_lvl_g2                	(12'b0)
,.protocol2_ext_rx_eq_att_lvl_g3                	(12'b0)
,.protocol2_ext_rx_eq_ctle_boost_g1             	(20'b0)
,.protocol2_ext_rx_eq_ctle_boost_g2             	(20'b0)
,.protocol2_ext_rx_eq_ctle_boost_g3             	(20'b0)
,.protocol2_ext_rx_eq_ctle_pole_g1              	(8'b0)
,.protocol2_ext_rx_eq_ctle_pole_g2              	(8'b0)
,.protocol2_ext_rx_eq_ctle_pole_g3              	(8'b0)
,.protocol2_ext_rx_eq_dfe_tap1_g1               	(32'b0)
,.protocol2_ext_rx_eq_dfe_tap1_g2               	(32'b0)
,.protocol2_ext_rx_eq_dfe_tap1_g3               	(32'b0)
,.protocol2_ext_rx_eq_vga1_gain_g1              	(12'b0)
,.protocol2_ext_rx_eq_vga1_gain_g2              	(12'b0)
,.protocol2_ext_rx_eq_vga1_gain_g3              	(12'b0)
,.protocol2_ext_rx_eq_vga2_gain_g1              	(12'b0)
,.protocol2_ext_rx_eq_vga2_gain_g2              	(12'b0)
,.protocol2_ext_rx_eq_vga2_gain_g3              	(12'b0)
,.protocol2_ext_rx_los_lfps_en                  	(1'b0)
,.protocol2_ext_rx_los_pwr_up_cnt               	(11'b0)
,.protocol2_ext_rx_los_threshold                	(12'b0)
,.protocol2_ext_rx_misc_g1                      	(32'b0)
,.protocol2_ext_rx_misc_g2                      	(32'b0)
,.protocol2_ext_rx_misc_g3                      	(32'b0)
,.protocol2_ext_rx_ref_ld_val_g1                	(7'b0)
,.protocol2_ext_rx_ref_ld_val_g2                	(7'b0)
,.protocol2_ext_rx_ref_ld_val_g3                	(7'b0)
,.protocol2_ext_rx_vco_ld_val_g1                	(13'b0)
,.protocol2_ext_rx_vco_ld_val_g2                	(13'b0)
,.protocol2_ext_rx_vco_ld_val_g3                	(13'b0)
,.protocol2_ext_rx_vref_ctrl                    	(5'b0)
,.protocol2_ext_sup_misc_g1                     	(8'b0)
,.protocol2_ext_sup_misc_g2                     	(8'b0)
,.protocol2_ext_sup_misc_g3                     	(8'b0)
,.protocol2_ext_tx_eq_main_g1                   	(24'b0)
,.protocol2_ext_tx_eq_main_g2                   	(24'b0)
,.protocol2_ext_tx_eq_main_g3                   	(24'b0)
,.protocol2_ext_tx_eq_ovrd_g1                   	(4'b0)
,.protocol2_ext_tx_eq_ovrd_g2                   	(4'b0)
,.protocol2_ext_tx_eq_ovrd_g3                   	(4'b0)
,.protocol2_ext_tx_eq_post_g1                   	(20'b0)
,.protocol2_ext_tx_eq_post_g2                   	(20'b0)
,.protocol2_ext_tx_eq_post_g3                   	(20'b0)
,.protocol2_ext_tx_eq_pre_g1                    	(20'b0)
,.protocol2_ext_tx_eq_pre_g2                    	(20'b0)
,.protocol2_ext_tx_eq_pre_g3                    	(20'b0)
,.protocol2_ext_tx_iboost_lvl                   	(16'b0)
,.protocol2_ext_tx_misc_g1                      	(32'b0)
,.protocol2_ext_tx_misc_g2                      	(32'b0)
,.protocol2_ext_tx_misc_g3                      	(32'b0)
,.protocol2_ext_tx_vboost_lvl                   	(3'b0)
,.protocol_ext_mplla_recal_bank_sel             	(PCIE_SUB_CON_x4_protocol_ext_mplla_recal_bank_sel_sig)
,.protocol_ext_mplla_recal_bank_sel_ovrd_en     	(PCIE_SUB_CON_x4_protocol_ext_mplla_recal_bank_sel_ovrd_en_sig)
,.protocol_ext_mpllb_recal_bank_sel             	(PCIE_SUB_CON_x4_protocol_ext_mpllb_recal_bank_sel_sig)
,.protocol_ext_mpllb_recal_bank_sel_ovrd_en     	(PCIE_SUB_CON_x4_protocol_ext_mpllb_recal_bank_sel_ovrd_en_sig)
,.protocol_ext_rx_misc_ovrd_en                  	(PCIE_SUB_CON_x4_protocol_ext_rx_misc_ovrd_en_sig)
,.protocol_ext_sup_misc_ovrd_en                 	(PCIE_SUB_CON_x4_protocol_ext_sup_misc_ovrd_en_sig)
,.upcs_max_payload_size_supt                    	(/*no connect*/)
,.upcs_pipe_config                              	(DWC_pcie_ctrl_x4_cfg_phy_control_sig[15:0])
,.upcs_pwr_en                                   	(/*no connect*/)
,.upcs_pwr_stable                               	(PCIE_SUB_CON_x4_upcs_pwr_stable_sig)
);


PHY_MEM PHY_MEM (
	.phy0_sram_addr		(PCIE_PHY_phy0_sram_addr_sig),
	.phy0_sram_clk		(PCIE_PHY_phy0_sram_clk_sig),
	.phy0_sram_rd_en	(PCIE_PHY_phy0_sram_rd_en_sig),
	.phy0_sram_wr_en	(PCIE_PHY_phy0_sram_wr_en_sig),
	.phy0_sram_wr_data	(PCIE_PHY_phy0_sram_wr_data_sig),
	.phy0_sram_rd_data	(PHY_MEM_phy0_sram_rd_data_sig)
);

APB2CR_TOP	u_APB2CR (
		 .pclk_300        			(PCIE_PHY_APB2CR_pclk_300)
		,.pclk_100        			(PCIE_PHY_APB2CR_pclk_100)
		,.presetn         			(PCIE_PHY_APB2CR_presetn)
		,.paddr           			(PCIE_PHY_APB2CR_paddr)
		,.pwrite          			(PCIE_PHY_APB2CR_pwrite)
		,.psel            			(PCIE_PHY_APB2CR_psel)
		,.penable         			(PCIE_PHY_APB2CR_penable)
		,.pwdata          			(PCIE_PHY_APB2CR_pwdata)
		,.QREQn           			(PCIE_PHY_APB2CR_QREQn)
		,.TEST_MODE       			(PCIE_PHY_APB2CR_TEST_MODE)
		,.TEST_RESETn     			(PCIE_PHY_APB2CR_TEST_RESETn)
		,.prdata          			(APB2CR_prdata_sig)
		,.pready          			(APB2CR_pready_sig)
		,.pslverr         			(APB2CR_pslverr_sig)
		,.cr_para_clk     			(APB2CR_cr_para_clk_sig)
		,.cr_para_addr    			(APB2CR_cr_para_addr_sig)
		,.cr_para_wr_data 			(APB2CR_cr_para_wr_data_sig)
		,.cr_para_wr_en   			(APB2CR_cr_para_wr_en_sig)
		,.cr_para_rd_en   			(APB2CR_cr_para_rd_en_sig)
		,.cr_para_ack     			(PCIE_PHY_phy0_cr_para_ack_sig)
		,.cr_para_rd_data			(PCIE_PHY_phy0_cr_para_rd_data_sig)
		,.QACTIVE         			(APB2CR_QACTIVE_sig)
		,.QACCEPTn        			(APB2CR_QACCEPTn_sig)
		,.QDENY           			(APB2CR_QDENY_sig)
);



PIPE_MUX u_PIPE_MUX (
	 .PHY_MODE_SEL                 		(PIPE_MUX_PHY_MODE_SEL)	
	,.i_mux_rxelecidle             		({PCIE_PHY_pipe_rx3_elecidle_sig
										 ,PCIE_PHY_pipe_rx2_elecidle_sig})	
	,.o_mux_rxelecidle_x4          		(PIPE_MUX_x4_phy_mac_rxelecidle_sig)	
	,.o_mux_rxelecidle_x2          		(PIPE_MUX_X2_phy_mac_rxelecidle_sig)
	,.i_mux_phystatus              		({PCIE_PHY_pipe_lane3_phystatus_sig
										 ,PCIE_PHY_pipe_lane2_phystatus_sig})	
	,.o_mux_phystatus_x4           		(PIPE_MUX_x4_phy_mac_phystatus_sig)	
	,.o_mux_phystatus_x2           		(PIPE_MUX_X2_phy_mac_phystatus_sig)	
	,.i_mux_rxdata                 		({PCIE_PHY_pipe_rx3_data_sig[31:0]
										 ,PCIE_PHY_pipe_rx2_data_sig[31:0]})
	,.o_mux_rxdata_x4              		(PIPE_MUX_x4_phy_mac_rxdata_sig)	
	,.o_mux_rxdata_x2              		(PIPE_MUX_X2_phy_mac_rxdata_sig)	
	,.i_mux_rxdatak                		({PCIE_PHY_pipe_rx3_datak_sig
										 ,PCIE_PHY_pipe_rx2_datak_sig})
	,.o_mux_rxdatak_x4             		(PIPE_MUX_x4_phy_mac_rxdatak_sig)	
	,.o_mux_rxdatak_x2             		(PIPE_MUX_X2_phy_mac_rxdatak_sig)	
	,.i_mux_rxvalid                		({PCIE_PHY_pipe_rx3_valid_sig
										 ,PCIE_PHY_pipe_rx2_valid_sig})
	,.o_mux_rxvalid_x4             		(PIPE_MUX_x4_phy_mac_rxvalid_sig)	
	,.o_mux_rxvalid_x2             		(PIPE_MUX_X2_phy_mac_rxvalid_sig)
	,.i_mux_rxstatus               		({PCIE_PHY_pipe_rx3_status_sig
										 ,PCIE_PHY_pipe_rx2_status_sig})	
	,.o_mux_rxstatus_x4            		(PIPE_MUX_x4_phy_mac_rxstatus_sig[5:0])	
	,.o_mux_rxstatus_x2            		(PIPE_MUX_X2_phy_mac_rxstatus_sig[5:0])
	,.i_mux_rxdatavalid            		({PCIE_PHY_pipe_rx3_datavalid_sig
										 ,PCIE_PHY_pipe_rx2_datavalid_sig})
	,.o_mux_rxdatavalid_x4         		(PIPE_MUX_x4_phy_mac_rxdatavalid_sig[1:0])	
	,.o_mux_rxdatavalid_x2         		(PIPE_MUX_X2_phy_mac_rxdatavalid_sig[1:0])
	,.i_mux_rxstartblock           		({PCIE_PHY_pipe_rx3_startblock_sig
										 ,PCIE_PHY_pipe_rx2_startblock_sig})	
	,.o_mux_rxstartblock_x4        		(PIPE_MUX_x4_phy_mac_rxstartblock_sig[1:0])	
	,.o_mux_rxstartblock_x2        		(PIPE_MUX_X2_phy_mac_rxstartblock_sig[1:0])	
	,.i_mux_rxsyncheader           		({PCIE_PHY_pipe_rx3_syncheader_sig[1:0]
										 ,PCIE_PHY_pipe_rx2_syncheader_sig[1:0]})	
	,.o_mux_rxsyncheader_x4        		(PIPE_MUX_x4_phy_mac_rxsyncheader_sig[3:0])	
	,.o_mux_rxsyncheader_x2        		(PIPE_MUX_X2_phy_mac_rxsyncheader_sig[3:0])	
	,.i_mux_localfs                		({PCIE_PHY_pipe_tx3_eq_fs_sig
										 ,PCIE_PHY_pipe_tx2_eq_fs_sig})	
	,.o_mux_localfs_x4             		(PIPE_MUX_x4_phy_mac_localfs_sig[11:0])	
	,.o_mux_localfs_x2             		(PIPE_MUX_X2_phy_mac_localfs_sig[11:0])	
	,.i_mux_locallf                		({PCIE_PHY_pipe_tx3_eq_lf_sig
										 ,PCIE_PHY_pipe_tx2_eq_lf_sig})	
	,.o_mux_locallf_x4             		(PIPE_MUX_x4_phy_mac_locallf_sig[11:0])	
	,.o_mux_locallf_x2             		(PIPE_MUX_X2_phy_mac_locallf_sig[11:0])	
	,.i_mux_messagebus             		({PCIE_PHY_pipe_lane3_p2m_messagebus_sig
										 ,PCIE_PHY_pipe_lane2_p2m_messagebus_sig})	
	,.o_mux_messagebus_x4          		(PIPE_MUX_x4_phy_mac_messagebus_sig[15:0])	
	,.o_mux_messagebus_x2          		(PIPE_MUX_X2_phy_mac_messagebus_sig[15:0])	
	,.i_mux_rxstandbystatus        		({PCIE_PHY_pipe_rx3_standby_status_sig
										 ,PCIE_PHY_pipe_rx2_standby_status_sig})	
	,.o_mux_rxstandbystatus_x4     		(PIPE_MUX_x4_phy_mac_rxstandbystatus_sig[1:0])	
	,.o_mux_rxstandbystatus_x2     		(PIPE_MUX_X2_phy_mac_rxstandbystatus_sig[1:0])	
	,.i_mux_txdata_x4              		(DWC_pcie_ctrl_x4_mac_phy_txdata_sig[127:64])	
	,.i_mux_txdata_x2              		(DWC_pcie_ctrl_x2_mac_phy_txdata_sig[127:64])	
	,.o_mux_txdata                 		({PIPE_MUX_x4_pipe_tx3_data_sig
										 ,PIPE_MUX_x4_pipe_tx2_data_sig})	
	,.i_mux_txdatak_x4             		(DWC_pcie_ctrl_x4_mac_phy_txdatak_sig[15:8])	
	,.i_mux_txdatak_x2             		(DWC_pcie_ctrl_x2_mac_phy_txdatak_sig[15:8])	
	,.o_mux_txdatak                		({PIPE_MUX_x4_pipe_tx3_datak_sig
										 ,PIPE_MUX_x4_pipe_tx2_datak_sig})	
	,.i_mux_txdetectrx_loopback_x4 		(DWC_pcie_ctrl_x4_mac_phy_txdetectrx_loopback_sig[3:2])	
	,.i_mux_txdetectrx_loopback_x2 		(DWC_pcie_ctrl_x2_mac_phy_txdetectrx_loopback_sig[3:2])	
	,.o_mux_txdetectrx_loopback    		({PIPE_MUX_pipe_tx3_detectrx_sig
										 ,PIPE_MUX_pipe_tx2_detectrx_sig})
	,.i_mux_txelecidle_x4          		(DWC_pcie_ctrl_x4_mac_phy_txelecidle_sig[3:2])	
	,.i_mux_txelecidle_x2          		(DWC_pcie_ctrl_x2_mac_phy_txelecidle_sig[3:2])	
	,.o_mux_txelecidle             		({PIPE_MUX_pipe_tx3_elecidle_sig
										 ,PIPE_MUX_pipe_tx2_elecidle_sig})	
	,.i_mux_txcompliance_x4        		(DWC_pcie_ctrl_x4_mac_phy_txcompliance_sig[3:2])	
	,.i_mux_txcompliance_x2        		(DWC_pcie_ctrl_x2_mac_phy_txcompliance_sig[3:2])			
	,.o_mux_txcompliance           		({PIPE_MUX_pipe_tx3_compliance_sig
										 ,PIPE_MUX_pipe_tx2_compliance_sig})	
	,.i_mux_rxpolarity_x4          		(DWC_pcie_ctrl_x4_mac_phy_rxpolarity_sig[3:2])	
	,.i_mux_rxpolarity_x2          		(DWC_pcie_ctrl_x2_mac_phy_rxpolarity_sig[3:2])	
	,.o_mux_rxpolarity             		({PIPE_MUX_pipe_rx3_polarity_sig
										 ,PIPE_MUX_pipe_rx2_polarity_sig})	
	,.i_mux_txdatavalid_x4         		(DWC_pcie_ctrl_x4_mac_phy_txdatavalid_sig[3:2])	
	,.i_mux_txdatavalid_x2         		(DWC_pcie_ctrl_x2_mac_phy_txdatavalid_sig[3:2])	
	,.o_mux_txdatavalid            		({PIPE_MUX_pipe_tx3_datavalid_sig
										 ,PIPE_MUX_pipe_tx2_datavalid_sig})	
	,.i_mux_txstartblock_x4        		(DWC_pcie_ctrl_x4_mac_phy_txstartblock_sig[3:2])	
	,.i_mux_txstartblock_x2        		(DWC_pcie_ctrl_x2_mac_phy_txstartblock_sig[3:2])	
	,.o_mux_txstartblock           		({PIPE_MUX_pipe_tx3_startblock_sig
										 ,PIPE_MUX_pipe_tx2_startblock_sig})	
	,.i_mux_txsyncheader_x4        		(DWC_pcie_ctrl_x4_mac_phy_txsyncheader_sig[7:4])	
	,.i_mux_txsyncheader_x2        		(DWC_pcie_ctrl_x2_mac_phy_txsyncheader_sig[7:4])	
	,.o_mux_txsyncheader           		({PIPE_MUX_pipe_tx3_syncheader_sig
										 ,PIPE_MUX_pipe_tx2_syncheader_sig})	
	,.i_mux_txdeemph_x4            		(DWC_pcie_ctrl_x4_mac_phy_txdeemph_sig[71:36])	
	,.i_mux_txdeemph_x2            		(DWC_pcie_ctrl_x2_mac_phy_txdeemph_sig[71:36])	
	,.o_mux_txdeemph               		({PIPE_MUX_pipe_tx3_deemph_sig
										 ,PIPE_MUX_pipe_tx2_deemph_sig})	
	,.i_mux_rxeqeval_x4            		(DWC_pcie_ctrl_x4_mac_phy_rxeqeval_sig[3:2])	
	,.i_mux_rxeqeval_x2            		(DWC_pcie_ctrl_x2_mac_phy_rxeqeval_sig[3:2])					
	,.o_mux_rxeqeval               		({PIPE_MUX_pipe_rx3_eq_eval_sig
										 ,PIPE_MUX_pipe_rx2_eq_eval_sig})	
	,.i_mux_messagebus_2phy_x4     		(DWC_pcie_ctrl_x4_mac_phy_messagebus_sig[31:16])	
	,.i_mux_messagebus_2phy_x2     		(DWC_pcie_ctrl_x2_mac_phy_messagebus_sig[31:16])	
	,.o_mux_messagebus_2phy        		({PIPE_MUX_pipe_lane3_m2p_messagebus_sig
										 ,PIPE_MUX_pipe_lane2_m2p_messagebus_sig})	
	,.i_mux_rxstandby_x4           		(DWC_pcie_ctrl_x4_mac_phy_rxstandby_sig[3:2])	
	,.i_mux_rxstandby_x2           		(DWC_pcie_ctrl_x2_mac_phy_rxstandby_sig[3:2])	
	,.o_mux_rxstandby              		({PIPE_MUX_pipe_rx3_standby_sig
										 ,PIPE_MUX_pipe_rx2_standby_sig})	
	,.i_mux_rxeqinprogress_x4      		(DWC_pcie_ctrl_x4_mac_phy_rxeqinprogress_sig[3:2])	
	,.i_mux_rxeqinprogress_x2      		(DWC_pcie_ctrl_x2_mac_phy_rxeqinprogress_sig[3:2])	
	,.o_mux_rxeqinprogress         		({PIPE_MUX_pipe_rx3_eq_in_prog_sig
										 ,PIPE_MUX_pipe_rx2_eq_in_prog_sig})	
	,.i_mux_getlocal_pset_coef_x4  		(DWC_pcie_ctrl_x4_mac_phy_getlocal_pset_coef_sig[3:2])	
	,.i_mux_getlocal_pset_coef_x2  		(DWC_pcie_ctrl_x2_mac_phy_getlocal_pset_coef_sig[3:2])	
	,.o_mux_getlocal_pset_coef     		({PIPE_MUX_pipe_tx3_eq_preset_coeff_req_sig
										 ,PIPE_MUX_pipe_tx2_eq_preset_coeff_req_sig})	
	,.i_mux_local_pset_index_x4    		(DWC_pcie_ctrl_x4_mac_phy_local_pset_index_sig[19:10])	
	,.i_mux_local_pset_index_x2    		(DWC_pcie_ctrl_x2_mac_phy_local_pset_index_sig[19:10])	
	,.o_mux_local_pset_index       		({PIPE_MUX_pipe_tx3_eq_preset_sig
										 ,PIPE_MUX_pipe_tx2_eq_preset_sig})	
	,.o_mux_local_tx_coef_valid_x4 		(PIPE_MUX_x4_phy_mac_local_tx_coef_valid_sig[1:0])	
	,.o_mux_local_tx_coef_valid_x2 		(PIPE_MUX_X2_phy_mac_local_tx_coef_valid_sig[1:0])	
	,.i_mux_local_tx_coef_valid    		({PCIE_PHY_pipe_tx3_eq_preset_coeff_vld_sig
										 ,PCIE_PHY_pipe_tx2_eq_preset_coeff_vld_sig})	
	,.i_mux_local_tx_pset_coef     		({PCIE_PHY_pipe_tx3_eq_preset_coeff_sig
										 ,PCIE_PHY_pipe_tx2_eq_preset_coeff_sig})	
	,.o_mux_local_tx_pset_coef_x4  		(PIPE_MUX_x4_phy_mac_local_tx_pset_coef_sig[35:0])
	,.o_mux_local_tx_pset_coef_x2  		(PIPE_MUX_X2_phy_mac_local_tx_pset_coef_sig[35:0])
	,.i_mux_dirfeedback            		({PCIE_PHY_pipe_rx3_eq_dir_change_sig
										 ,PCIE_PHY_pipe_rx2_eq_dir_change_sig})
	,.o_mux_dirfeedback_x4         		(PIPE_MUX_x4_phy_mac_dirfeedback_sig[11:0])
	,.o_mux_dirfeedback_x2         		(PIPE_MUX_X2_phy_mac_dirfeedback_sig[11:0])
	,.i_mux_fomfeedback            		({PCIE_PHY_pipe_rx3_eq_fig_merit_sig
										 ,PCIE_PHY_pipe_rx2_eq_fig_merit_sig})
	,.o_mux_fomfeedback_x4         		(PIPE_MUX_x4_phy_mac_fomfeedback_sig[15:0])
	,.o_mux_fomfeedback_x2         		(PIPE_MUX_X2_phy_mac_fomfeedback_sig[15:0])
	,.i_mux_encodedecodebypass_x4  		(DWC_pcie_ctrl_x4_mac_phy_encodedecodebypass_sig)	
	,.i_mux_encodedecodebypass_x2  		(DWC_pcie_ctrl_x2_mac_phy_encodedecodebypass_sig)	
	,.o_mux_encodedecodebypass     		(PIPE_MUX_pipe_lane2_3_encdec_bypass_sig)	
	,.i_mux_invalid_req_x4         		(DWC_pcie_ctrl_x4_mac_phy_invalid_req_sig[3:2])	
	,.i_mux_invalid_req_x2         		(DWC_pcie_ctrl_x2_mac_phy_invalid_req_sig[3:2])					
	,.o_mux_invalid_req            		({PIPE_MUX_pipe_rx3_eq_invld_req_sig
										 ,PIPE_MUX_pipe_rx2_eq_invld_req_sig})	
	,.o_mux_tx2rx_loopbk           		({PIPE_MUX_pipe_lane3_tx2rx_loopbk_sig
										 ,PIPE_MUX_pipe_lane2_tx2rx_loopbk_sig})	
	,.i_mux_tx2rx_loopbk_x4        		(DWC_pcie_ctrl_x4_mac_phy_txdetectrx_loopback_sig[3:2])	
	,.i_mux_tx2rx_loopbk_x2        		(DWC_pcie_ctrl_x2_mac_phy_txdetectrx_loopback_sig[3:2])	
	,.o_mux_powerdown              		(PIPE_MUX_pipe_lane2_3_powerdown_sig)	
	,.i_mux_powerdown_x4           		(DWC_pcie_ctrl_x4_mac_phy_powerdown_sig[3:0])	
	,.i_mux_powerdown_x2           		(DWC_pcie_ctrl_x2_mac_phy_powerdown_sig[3:0])	
	,.o_mux_width                  		(PIPE_MUX_pipe_lane2_3_if_width_sig)	
	,.i_mux_width_x4               		(DWC_pcie_ctrl_x4_mac_phy_width_sig[1:0])	
	,.i_mux_width_x2               		(DWC_pcie_ctrl_x2_mac_phy_width_sig[1:0])	
	,.o_mux_blockaligncontrol      		(PIPE_MUX_pipe_rx2_3_blk_align_ctl_sig)	
	,.i_mux_blockaligncontrol_x4   		(DWC_pcie_ctrl_x4_mac_phy_blockaligncontrol_sig)	
	,.i_mux_blockaligncontrol_x2   		(DWC_pcie_ctrl_x2_mac_phy_blockaligncontrol_sig)	
	,.o_mux_rate                   		(PIPE_MUX_pipe_lane2_3_rate_sig)	
	,.i_mux_rate_x4                		(DWC_pcie_ctrl_x4_mac_phy_rate_sig)	
	,.i_mux_rate_x2                		(DWC_pcie_ctrl_x2_mac_phy_rate_sig)						
	,.o_mux_txmargin               		(PIPE_MUX_pipe_tx2_3_margin_sig)	
	,.i_mux_txmargin_x4            		(DWC_pcie_ctrl_x4_mac_phy_txmargin_sig)	
	,.i_mux_txmargin_x2            		(DWC_pcie_ctrl_x2_mac_phy_txmargin_sig)	
	,.o_mux_txswing                		(PIPE_MUX_pipe_tx2_3_swing_sig)	
	,.i_mux_txswing_x4             		(DWC_pcie_ctrl_x4_mac_phy_txswing_sig)	
	,.i_mux_txswing_x2             		(DWC_pcie_ctrl_x2_mac_phy_txswing_sig)	
	,.o_mux_elasticbuffermode      		(PIPE_MUX_pipe_rx2_3_es_mode_sig)	
	,.i_mux_elasticbuffermode_x4   		(DWC_pcie_ctrl_x4_mac_phy_elasticbuffermode_sig)	
	,.i_mux_elasticbuffermode_x2   		(DWC_pcie_ctrl_x2_mac_phy_elasticbuffermode_sig)	
	,.o_mux_rxelecidle_disable     		(PIPE_MUX_pipe_rx2_3_disable_sig)	
	,.i_mux_rxelecidle_disable_x4  		(DWC_pcie_ctrl_x4_mac_phy_rxelecidle_disable_sig)	
	,.i_mux_rxelecidle_disable_x2  		(DWC_pcie_ctrl_x2_mac_phy_rxelecidle_disable_sig)	
	,.o_mux_txcommonmode_disable   		(PIPE_MUX_pipe_tx2_3_disable_sig)	
	,.i_mux_txcommonmode_disable_x4		(DWC_pcie_ctrl_x4_mac_phy_txcommonmode_disable_sig)	
	,.i_mux_txcommonmode_disable_x2		(DWC_pcie_ctrl_x2_mac_phy_txcommonmode_disable_sig)	
	//NWP
	,.o_mux_phy_clk_req_n_x4       		(PIPE_MUX_o_mux_phy_clk_req_n_x4_sig)
	,.i_mux_lane0_ref_clk_req_n    		(PCIE_PHY_pipe_lane0_ref_clk_req_n_sig)	                        
	,.i_mux_lane1_ref_clk_req_n    		(PCIE_PHY_pipe_lane1_ref_clk_req_n_sig)	
	,.i_mux_lane2_ref_clk_req_n    		(PCIE_PHY_pipe_lane2_ref_clk_req_n_sig)	
	,.i_mux_lane3_ref_clk_req_n    		(PCIE_PHY_pipe_lane3_ref_clk_req_n_sig)	
	,.i_mux_SUB_CON_x4_phy_rst_n   		(TEST_MUX_pipe_lane0_1_reset_n_Y_sig)
	,.i_mux_SUB_CON_x2_phy_rst_n   		(TEST_MUX_pipe_lane2_3_reset_n_Y_sig)
	,.o_mux_pipe_lane2_3_reset_n    	(PIPE_MUX_o_mux_pipe_lane2_3_reset_n_sig)	
);

// TEST_MUX to PHY (phy_reset)
NX_MXT2 TEST_MUX_phy_reset (
	 .Y		(TEST_MUX_phy_reset_Y_sig)
	,.D0	(PCIE_SUB_CON_x4_phy_perst_sig)
	,.D1	(PCIE_PHY_phy_reset)
	,.S		(I_TEST_MODE_PCIE_PHY)
);

// TESET MUX to PCIE MUX (phy_rst_n)
NX_MXT2 TEST_MUX_pipe_lane0_1_reset_n (
	 .Y		(TEST_MUX_pipe_lane0_1_reset_n_Y_sig)
	,.D0	(PCIE_SUB_CON_x4_phy_rst_n_sig)
	,.D1	(PCIE_PHY_pipe_lane0_1_reset_n)
	,.S		(I_TEST_MODE_PCIE_PHY)
);

// TESET MUX to PCIE MUX (phy_rst_n)
NX_MXT2 TEST_MUX_pipe_lane2_3_reset_n (
	 .Y		(TEST_MUX_pipe_lane2_3_reset_n_Y_sig)
	,.D0	(PCIE_SUB_CON_x2_phy_rst_n_sig)
	,.D1	(PCIE_PHY_pipe_lane2_3_reset_n)
	,.S		(I_TEST_MODE_PCIE_PHY)
);

//------------------------------------------------------------------------
// PCIE_TOP ports extraction to SOC
//------------------------------------------------------------------------
// x4_LINK -> SOC
assign	DWC_pcie_ctrl_x4_mstr_araddr							=	DWC_pcie_ctrl_x4_mstr_araddr_sig;
assign	DWC_pcie_ctrl_x4_mstr_arburst							=	DWC_pcie_ctrl_x4_mstr_arburst_sig;
assign	DWC_pcie_ctrl_x4_mstr_arcache							=	DWC_pcie_ctrl_x4_mstr_arcache_sig;
assign	DWC_pcie_ctrl_x4_mstr_arid							=	DWC_pcie_ctrl_x4_mstr_arid_sig;
assign	DWC_pcie_ctrl_x4_mstr_arlen							=	DWC_pcie_ctrl_x4_mstr_arlen_sig;
assign	DWC_pcie_ctrl_x4_mstr_arlock							=	DWC_pcie_ctrl_x4_mstr_arlock_sig;
assign	DWC_pcie_ctrl_x4_mstr_arprot							=	DWC_pcie_ctrl_x4_mstr_arprot_sig;
assign	DWC_pcie_ctrl_x4_mstr_arqos							=	DWC_pcie_ctrl_x4_mstr_arqos_sig;
assign	DWC_pcie_ctrl_x4_mstr_arsize							=	DWC_pcie_ctrl_x4_mstr_arsize_sig;
assign	DWC_pcie_ctrl_x4_mstr_awaddr							=	DWC_pcie_ctrl_x4_mstr_awaddr_sig;
assign	DWC_pcie_ctrl_x4_mstr_awburst							=	DWC_pcie_ctrl_x4_mstr_awburst_sig;
assign	DWC_pcie_ctrl_x4_mstr_awcache							=	DWC_pcie_ctrl_x4_mstr_awcache_sig;
assign	DWC_pcie_ctrl_x4_mstr_awid							=	DWC_pcie_ctrl_x4_mstr_awid_sig;
assign	DWC_pcie_ctrl_x4_mstr_awlen							=	DWC_pcie_ctrl_x4_mstr_awlen_sig;
assign	DWC_pcie_ctrl_x4_mstr_awlock							=	DWC_pcie_ctrl_x4_mstr_awlock_sig;
assign	DWC_pcie_ctrl_x4_mstr_awprot							=	DWC_pcie_ctrl_x4_mstr_awprot_sig;
assign	DWC_pcie_ctrl_x4_mstr_awqos							=	DWC_pcie_ctrl_x4_mstr_awqos_sig;
assign	DWC_pcie_ctrl_x4_mstr_awsize							=	DWC_pcie_ctrl_x4_mstr_awsize_sig;
assign	DWC_pcie_ctrl_x4_mstr_wdata							=	DWC_pcie_ctrl_x4_mstr_wdata_sig;
assign	DWC_pcie_ctrl_x4_mstr_wlast							=	DWC_pcie_ctrl_x4_mstr_wlast_sig;
assign	DWC_pcie_ctrl_x4_mstr_wstrb							=	DWC_pcie_ctrl_x4_mstr_wstrb_sig;
assign	DWC_pcie_ctrl_x4_mstr_bready							=	DWC_pcie_ctrl_x4_mstr_bready_sig;
assign	DWC_pcie_ctrl_x4_mstr_rready							=	DWC_pcie_ctrl_x4_mstr_rready_sig;
assign	DWC_pcie_ctrl_x4_mstr_cactive							=	DWC_pcie_ctrl_x4_mstr_cactive_sig;
assign	DWC_pcie_ctrl_x4_mstr_csysack							=	DWC_pcie_ctrl_x4_mstr_csysack_sig;
assign	DWC_pcie_ctrl_x4_slv_bid							=	DWC_pcie_ctrl_x4_slv_bid_sig;
assign	DWC_pcie_ctrl_x4_slv_bresp							=	DWC_pcie_ctrl_x4_slv_bresp_sig;
assign	DWC_pcie_ctrl_x4_slv_rid							=	DWC_pcie_ctrl_x4_slv_rid_sig;
assign	DWC_pcie_ctrl_x4_slv_rdata							=	DWC_pcie_ctrl_x4_slv_rdata_sig;
assign	DWC_pcie_ctrl_x4_slv_rresp							=	DWC_pcie_ctrl_x4_slv_rresp_sig;
assign	DWC_pcie_ctrl_x4_slv_cactive							=	DWC_pcie_ctrl_x4_slv_cactive_sig;
assign	DWC_pcie_ctrl_x4_slv_csysack							=	DWC_pcie_ctrl_x4_slv_csysack_sig;
assign	DWC_pcie_ctrl_x4_dbi_bid							=	DWC_pcie_ctrl_x4_dbi_bid_sig;
assign	DWC_pcie_ctrl_x4_dbi_bresp							=	DWC_pcie_ctrl_x4_dbi_bresp_sig; // update 2024/03/14
assign	DWC_pcie_ctrl_x4_dbi_rid							=	DWC_pcie_ctrl_x4_dbi_rid_sig;
assign	DWC_pcie_ctrl_x4_dbi_rdata							=	DWC_pcie_ctrl_x4_dbi_rdata_sig;
assign	DWC_pcie_ctrl_x4_dbi_rresp							=	DWC_pcie_ctrl_x4_dbi_rresp_sig;
assign	DWC_pcie_ctrl_x4_dbi_cactive							=	DWC_pcie_ctrl_x4_dbi_cactive_sig;
assign	DWC_pcie_ctrl_x4_dbi_csysack							=	DWC_pcie_ctrl_x4_dbi_csysack_sig;
// x2_LINK -> SOC
assign	DWC_pcie_ctrl_x2_mstr_araddr							=	DWC_pcie_ctrl_x2_mstr_araddr_sig;
assign	DWC_pcie_ctrl_x2_mstr_arburst							=	DWC_pcie_ctrl_x2_mstr_arburst_sig;
assign	DWC_pcie_ctrl_x2_mstr_arcache							=	DWC_pcie_ctrl_x2_mstr_arcache_sig;
assign	DWC_pcie_ctrl_x2_mstr_arid							=	DWC_pcie_ctrl_x2_mstr_arid_sig;
assign	DWC_pcie_ctrl_x2_mstr_arlen							=	DWC_pcie_ctrl_x2_mstr_arlen_sig;
assign	DWC_pcie_ctrl_x2_mstr_arlock							=	DWC_pcie_ctrl_x2_mstr_arlock_sig;
assign	DWC_pcie_ctrl_x2_mstr_arprot							=	DWC_pcie_ctrl_x2_mstr_arprot_sig;
assign	DWC_pcie_ctrl_x2_mstr_arqos							=	DWC_pcie_ctrl_x2_mstr_arqos_sig;
assign	DWC_pcie_ctrl_x2_mstr_arsize							=	DWC_pcie_ctrl_x2_mstr_arsize_sig;
assign	DWC_pcie_ctrl_x2_mstr_awaddr							=	DWC_pcie_ctrl_x2_mstr_awaddr_sig;
assign	DWC_pcie_ctrl_x2_mstr_awburst							=	DWC_pcie_ctrl_x2_mstr_awburst_sig;
assign	DWC_pcie_ctrl_x2_mstr_awcache							=	DWC_pcie_ctrl_x2_mstr_awcache_sig;
assign	DWC_pcie_ctrl_x2_mstr_awid							=	DWC_pcie_ctrl_x2_mstr_awid_sig;
assign	DWC_pcie_ctrl_x2_mstr_awlen							=	DWC_pcie_ctrl_x2_mstr_awlen_sig;
assign	DWC_pcie_ctrl_x2_mstr_awlock							=	DWC_pcie_ctrl_x2_mstr_awlock_sig;
assign	DWC_pcie_ctrl_x2_mstr_awprot							=	DWC_pcie_ctrl_x2_mstr_awprot_sig;
assign	DWC_pcie_ctrl_x2_mstr_awqos							=	DWC_pcie_ctrl_x2_mstr_awqos_sig;
assign	DWC_pcie_ctrl_x2_mstr_awsize							=	DWC_pcie_ctrl_x2_mstr_awsize_sig;
assign	DWC_pcie_ctrl_x2_mstr_wdata							=	DWC_pcie_ctrl_x2_mstr_wdata_sig;
assign	DWC_pcie_ctrl_x2_mstr_wlast							=	DWC_pcie_ctrl_x2_mstr_wlast_sig;
assign	DWC_pcie_ctrl_x2_mstr_wstrb							=	DWC_pcie_ctrl_x2_mstr_wstrb_sig;
assign	DWC_pcie_ctrl_x2_mstr_bready							=	DWC_pcie_ctrl_x2_mstr_bready_sig;
assign	DWC_pcie_ctrl_x2_mstr_rready							=	DWC_pcie_ctrl_x2_mstr_rready_sig;
assign	DWC_pcie_ctrl_x2_mstr_cactive							=	DWC_pcie_ctrl_x2_mstr_cactive_sig;
assign	DWC_pcie_ctrl_x2_mstr_csysack							=	DWC_pcie_ctrl_x2_mstr_csysack_sig;
assign	DWC_pcie_ctrl_x2_slv_bid							=	DWC_pcie_ctrl_x2_slv_bid_sig;
assign	DWC_pcie_ctrl_x2_slv_bresp							=	DWC_pcie_ctrl_x2_slv_bresp_sig;
assign	DWC_pcie_ctrl_x2_slv_rid							=	DWC_pcie_ctrl_x2_slv_rid_sig;
assign	DWC_pcie_ctrl_x2_slv_rdata							=	DWC_pcie_ctrl_x2_slv_rdata_sig;
assign	DWC_pcie_ctrl_x2_slv_rresp							=	DWC_pcie_ctrl_x2_slv_rresp_sig;
assign	DWC_pcie_ctrl_x2_slv_cactive							=	DWC_pcie_ctrl_x2_slv_cactive_sig;
assign	DWC_pcie_ctrl_x2_slv_csysack							=	DWC_pcie_ctrl_x2_slv_csysack_sig;
assign	DWC_pcie_ctrl_x2_dbi_bid							=	DWC_pcie_ctrl_x2_dbi_bid_sig;
assign	DWC_pcie_ctrl_x2_dbi_bresp							=	DWC_pcie_ctrl_x2_dbi_bresp;
assign	DWC_pcie_ctrl_x2_dbi_rid							=	DWC_pcie_ctrl_x2_dbi_rid_sig;
assign	DWC_pcie_ctrl_x2_dbi_rdata							=	DWC_pcie_ctrl_x2_dbi_rdata_sig;
assign	DWC_pcie_ctrl_x2_dbi_rresp							=	DWC_pcie_ctrl_x2_dbi_rresp_sig;
assign	DWC_pcie_ctrl_x2_dbi_cactive							=	DWC_pcie_ctrl_x2_dbi_cactive_sig;
assign	DWC_pcie_ctrl_x2_dbi_csysack							=	DWC_pcie_ctrl_x2_dbi_csysack_sig;

//PHY -> SOC
assign	PCIE_PHY_phy0_bs_tdo								=	PCIE_PHY_phy0_bs_tdo_sig;
assign	PCIE_PHY_phy0_dtb_out								=	PCIE_PHY_phy0_dtb_out_sig;
assign	PCIE_PHY_phy0_jtag_tdo								=	PCIE_PHY_phy0_jtag_tdo_sig;
assign	PCIE_PHY_phy0_jtag_tdo_en							=	PCIE_PHY_phy0_jtag_tdo_en_sig;
assign	PCIE_REF_DIG_CLK								=	PCIE_PHY_phy0_ref_dig_clk_sig;
assign	PCIE_PHY_phy0_scan_cr_out							=	PCIE_PHY_phy0_scan_cr_out_sig;
assign	PCIE_PHY_phy0_scan_mplla_div16p5_out						=	PCIE_PHY_phy0_scan_mplla_div16p5_out_sig;
assign	PCIE_PHY_phy0_scan_mplla_div_out						=	PCIE_PHY_phy0_scan_mplla_div_out_sig;	
assign	PCIE_PHY_phy0_scan_mplla_dword_out						=	PCIE_PHY_phy0_scan_mplla_dword_out_sig;
assign	PCIE_PHY_phy0_scan_mplla_fb_out							=	PCIE_PHY_phy0_scan_mplla_fb_out_sig;
assign	PCIE_PHY_phy0_scan_mplla_ref_out						=	PCIE_PHY_phy0_scan_mplla_ref_out_sig;
assign	PCIE_PHY_phy0_scan_mplla_ssc_out						=	PCIE_PHY_phy0_scan_mplla_ssc_out_sig;
assign	PCIE_PHY_phy0_scan_mplla_word_out						=	PCIE_PHY_phy0_scan_mplla_word_out_sig;
assign	PCIE_PHY_phy0_scan_mpllb_div_out						=	PCIE_PHY_phy0_scan_mpllb_div_out_sig;
assign	PCIE_PHY_phy0_scan_mpllb_dword_out						=	PCIE_PHY_phy0_scan_mpllb_dword_out_sig;
assign	PCIE_PHY_phy0_scan_mpllb_fb_out							=	PCIE_PHY_phy0_scan_mpllb_fb_out_sig;
assign	PCIE_PHY_phy0_scan_mpllb_ref_out						=	PCIE_PHY_phy0_scan_mpllb_ref_out_sig;
assign	PCIE_PHY_phy0_scan_mpllb_ssc_out						=	PCIE_PHY_phy0_scan_mpllb_ssc_out_sig;
assign	PCIE_PHY_phy0_scan_mpllb_word_out						=	PCIE_PHY_phy0_scan_mpllb_word_out_sig;
assign	PCIE_PHY_phy0_scan_phy_ref_dig_out						=	PCIE_PHY_phy0_scan_phy_ref_dig_out_sig;
assign	PCIE_PHY_phy0_scan_ref_dig_out							=	PCIE_PHY_phy0_scan_ref_dig_out_sig;
assign	PCIE_PHY_phy0_scan_ref_out							=	PCIE_PHY_phy0_scan_ref_out_sig;
assign	PCIE_PHY_phy0_scan_ref_range_out						=	PCIE_PHY_phy0_scan_ref_range_out_sig;
assign	PCIE_PHY_phy_rx0_flyover_data_m							=	PCIE_PHY_phy_rx0_flyover_data_m_sig;
assign	PCIE_PHY_phy_rx0_flyover_data_p							=	PCIE_PHY_phy_rx0_flyover_data_p_sig;
assign	PCIE_PHY_phy_rx1_flyover_data_m							=	PCIE_PHY_phy_rx1_flyover_data_m_sig;
assign	PCIE_PHY_phy_rx1_flyover_data_p							=	PCIE_PHY_phy_rx1_flyover_data_p_sig;
assign	PCIE_PHY_phy_rx2_flyover_data_m							=	PCIE_PHY_phy_rx2_flyover_data_m_sig;
assign	PCIE_PHY_phy_rx2_flyover_data_m							=	PCIE_PHY_phy_rx2_flyover_data_m_sig;
assign	PCIE_PHY_phy_rx3_flyover_data_p							=	PCIE_PHY_phy_rx3_flyover_data_p_sig;
assign	PCIE_PHY_phy_rx3_flyover_data_p							=	PCIE_PHY_phy_rx3_flyover_data_p_sig;
assign	PCIE_PHY_phy_scan_rx0_adpt_out     						=	PCIE_PHY_phy_scan_rx0_adpt_out_sig;
assign	PCIE_PHY_phy_scan_rx0_asic_out     						=	PCIE_PHY_phy_scan_rx0_asic_out_sig;
assign	PCIE_PHY_phy_scan_rx0_div16p5_out  						=	PCIE_PHY_phy_scan_rx0_div16p5_out_sig;
assign	PCIE_PHY_phy_scan_rx0_dpll_out     						=	PCIE_PHY_phy_scan_rx0_dpll_out_sig;
assign	PCIE_PHY_phy_scan_rx0_dword_out    						=	PCIE_PHY_phy_scan_rx0_dword_out_sig;
assign	PCIE_PHY_phy_scan_rx0_scope_out    						=	PCIE_PHY_phy_scan_rx0_scope_out_sig;
assign	PCIE_PHY_phy_scan_rx0_stat_out     						=	PCIE_PHY_phy_scan_rx0_stat_out_sig;
assign	PCIE_PHY_phy_scan_rx0_word_out     						=	PCIE_PHY_phy_scan_rx0_word_out_sig;
assign	PCIE_PHY_phy_scan_rx1_adpt_out     						=	PCIE_PHY_phy_scan_rx1_adpt_out_sig;
assign	PCIE_PHY_phy_scan_rx1_asic_out     						=	PCIE_PHY_phy_scan_rx1_asic_out_sig;
assign	PCIE_PHY_phy_scan_rx1_div16p5_out  						=	PCIE_PHY_phy_scan_rx1_div16p5_out_sig;
assign	PCIE_PHY_phy_scan_rx1_dpll_out     						=	PCIE_PHY_phy_scan_rx1_dpll_out_sig;
assign	PCIE_PHY_phy_scan_rx1_dword_out    						=	PCIE_PHY_phy_scan_rx1_dword_out_sig;
assign	PCIE_PHY_phy_scan_rx1_scope_out    						=	PCIE_PHY_phy_scan_rx1_scope_out_sig;
assign	PCIE_PHY_phy_scan_rx1_stat_out     						=	PCIE_PHY_phy_scan_rx1_stat_out_sig;
assign	PCIE_PHY_phy_scan_rx1_word_out     						=	PCIE_PHY_phy_scan_rx1_word_out_sig;
assign	PCIE_PHY_phy_scan_rx2_adpt_out     						=	PCIE_PHY_phy_scan_rx2_adpt_out_sig;
assign	PCIE_PHY_phy_scan_rx2_asic_out     						=	PCIE_PHY_phy_scan_rx2_asic_out_sig;
assign	PCIE_PHY_phy_scan_rx2_div16p5_out  						=	PCIE_PHY_phy_scan_rx2_div16p5_out_sig;
assign	PCIE_PHY_phy_scan_rx2_dpll_out     						=	PCIE_PHY_phy_scan_rx2_dpll_out_sig;
assign	PCIE_PHY_phy_scan_rx2_dword_out    						=	PCIE_PHY_phy_scan_rx2_dword_out_sig;
assign	PCIE_PHY_phy_scan_rx2_scope_out    						=	PCIE_PHY_phy_scan_rx2_scope_out_sig;
assign	PCIE_PHY_phy_scan_rx2_stat_out     						=	PCIE_PHY_phy_scan_rx2_stat_out_sig;
assign	PCIE_PHY_phy_scan_rx2_word_out     						=	PCIE_PHY_phy_scan_rx2_word_out_sig;
assign	PCIE_PHY_phy_scan_rx3_adpt_out     						=	PCIE_PHY_phy_scan_rx3_adpt_out_sig;
assign	PCIE_PHY_phy_scan_rx3_asic_out     						=	PCIE_PHY_phy_scan_rx3_asic_out_sig;
assign	PCIE_PHY_phy_scan_rx3_div16p5_out  						=	PCIE_PHY_phy_scan_rx3_div16p5_out_sig;
assign	PCIE_PHY_phy_scan_rx3_dpll_out     						=	PCIE_PHY_phy_scan_rx3_dpll_out_sig;
assign	PCIE_PHY_phy_scan_rx3_dword_out    						=	PCIE_PHY_phy_scan_rx3_dword_out_sig;
assign	PCIE_PHY_phy_scan_rx3_scope_out    						=	PCIE_PHY_phy_scan_rx3_scope_out_sig;
assign	PCIE_PHY_phy_scan_rx3_stat_out     						=	PCIE_PHY_phy_scan_rx3_stat_out_sig;
assign	PCIE_PHY_phy_scan_rx3_word_out     						=	PCIE_PHY_phy_scan_rx3_word_out_sig;
assign	PCIE_PHY_phy_scan_tx0_ana_dword_out						=	PCIE_PHY_phy_scan_tx0_ana_dword_out_sig;
assign	PCIE_PHY_phy_scan_tx0_ana_word_out 						=	PCIE_PHY_phy_scan_tx0_ana_word_out_sig;
assign	PCIE_PHY_phy_scan_tx0_out          						=	PCIE_PHY_phy_scan_tx0_out_sig;
assign	PCIE_PHY_phy_scan_tx1_ana_dword_out						=	PCIE_PHY_phy_scan_tx1_ana_dword_out_sig;
assign	PCIE_PHY_phy_scan_tx1_ana_word_out 						=	PCIE_PHY_phy_scan_tx1_ana_word_out_sig;
assign	PCIE_PHY_phy_scan_tx1_out          						=	PCIE_PHY_phy_scan_tx1_out_sig;
assign	PCIE_PHY_phy_scan_tx2_ana_dword_out						=	PCIE_PHY_phy_scan_tx2_ana_dword_out_sig;
assign	PCIE_PHY_phy_scan_tx2_ana_word_out 						=	PCIE_PHY_phy_scan_tx2_ana_word_out_sig;
assign	PCIE_PHY_phy_scan_tx2_out          						=	PCIE_PHY_phy_scan_tx2_out_sig;
assign	PCIE_PHY_phy_scan_tx3_ana_dword_out						=	PCIE_PHY_phy_scan_tx3_ana_dword_out_sig;
assign	PCIE_PHY_phy_scan_tx3_ana_word_out 						=	PCIE_PHY_phy_scan_tx3_ana_word_out_sig;
assign	PCIE_PHY_phy_scan_tx3_out          						=	PCIE_PHY_phy_scan_tx3_out_sig;
// PCIE_SUB_CON_x4 -> SOC
assign	PCIE_SUB_CON_x4_o_driver_apb_prdata						=	PCIE_SUB_CON_x4_o_driver_apb_prdata_sig;
assign	PCIE_SUB_CON_x4_o_driver_apb_pready						=	PCIE_SUB_CON_x4_o_driver_apb_pready_sig;
assign	PCIE_SUB_CON_x4_o_driver_apb_pslverr						=	PCIE_SUB_CON_x4_o_driver_apb_pslverr_sig;
assign	PCIE_SUB_CON_x4_pcie_irq							=	PCIE_SUB_CON_x4_pcie_irq_sig;
assign	PCIE_SUB_CON_x4_QACCEPTn_mstr_aclk_slv_aclk					=	PCIE_SUB_CON_x4_QACCEPTn_mstr_aclk_slv_aclk_sig;
assign	PCIE_SUB_CON_x4_QDENY_mstr_aclk_slv_aclk					=	PCIE_SUB_CON_x4_QDENY_mstr_aclk_slv_aclk_sig;
assign	PCIE_SUB_CON_x4_QACTIVE_mstr_aclk_slv_aclk					=	PCIE_SUB_CON_x4_QACTIVE_mstr_aclk_slv_aclk_sig;
assign	PCIE_SUB_CON_x4_QACCEPTn_dbi_aclk						=	PCIE_SUB_CON_x4_QACCEPTn_dbi_aclk_sig;
assign	PCIE_SUB_CON_x4_QDENY_dbi_aclk							=	PCIE_SUB_CON_x4_QDENY_dbi_aclk_sig;
assign	PCIE_SUB_CON_x4_QACTIVE_dbi_aclk						=	PCIE_SUB_CON_x4_QACTIVE_dbi_aclk_sig;
assign	PCIE_SUB_CON_x4_QACCEPTn_apb_aclk						=	PCIE_SUB_CON_x4_QACCEPTn_apb_aclk_sig;
assign	PCIE_SUB_CON_x4_QDENY_apb_aclk							=	PCIE_SUB_CON_x4_QDENY_apb_aclk_sig;
assign	PCIE_SUB_CON_x4_QACTIVE_apb_aclk						=	PCIE_SUB_CON_x4_QACTIVE_apb_aclk_sig;
assign	PCIE_SUB_CON_x4_mstr_arvalid							=	PCIE_SUB_CON_x4_mstr_arvalid_sig;
assign	PCIE_SUB_CON_x4_mstr_awvalid							=	PCIE_SUB_CON_x4_mstr_awvalid_sig;
assign	PCIE_SUB_CON_x4_mstr_wvalid							=	PCIE_SUB_CON_x4_mstr_wvalid_sig;
assign	PCIE_SUB_CON_x4_slv_arready							=	PCIE_SUB_CON_x4_slv_arready_sig;
assign	PCIE_SUB_CON_x4_slv_awready							=	PCIE_SUB_CON_x4_slv_awready_sig;
assign	PCIE_SUB_CON_x4_slv_bvalid							=	PCIE_SUB_CON_x4_slv_bvalid_sig;
assign	PCIE_SUB_CON_x4_slv_rlast							=	PCIE_SUB_CON_x4_slv_rlast_sig;
assign	PCIE_SUB_CON_x4_slv_rvalid							=	PCIE_SUB_CON_x4_slv_rvalid_sig;
assign	PCIE_SUB_CON_x4_slv_wready							=	PCIE_SUB_CON_x4_slv_wready_sig;
assign	PCIE_SUB_CON_x4_dbi_arready							=	PCIE_SUB_CON_x4_dbi_arready_sig;
assign	PCIE_SUB_CON_x4_dbi_awready							=	PCIE_SUB_CON_x4_dbi_awready_sig;
assign	PCIE_SUB_CON_x4_dbi_bvalid							=	PCIE_SUB_CON_x4_dbi_bvalid_sig;
assign	PCIE_SUB_CON_x4_dbi_rlast							=	PCIE_SUB_CON_x4_dbi_rlast_sig;
assign	PCIE_SUB_CON_x4_dbi_rvalid							=	PCIE_SUB_CON_x4_dbi_rvalid_sig;
assign	PCIE_SUB_CON_x4_dbi_wready							=	PCIE_SUB_CON_x4_dbi_wready_sig;
assign	PCIE_SUB_CON_x4_cr_para_sel							=	PCIE_SUB_CON_x4_cr_para_sel_sig;
assign	PCIE_SUB_CON_x4_phy_lane0_rx2tx_par_lb_en					=	PCIE_SUB_CON_x4_phy_lane0_rx2tx_par_lb_en_sig;
assign	PCIE_SUB_CON_x4_phy_lane1_rx2tx_par_lb_en					=	PCIE_SUB_CON_x4_phy_lane1_rx2tx_par_lb_en_sig;
assign	PCIE_SUB_CON_x4_phy_lane2_rx2tx_par_lb_en					=	PCIE_SUB_CON_x4_phy_lane2_rx2tx_par_lb_en_sig;
assign	PCIE_SUB_CON_x4_phy_lane3_rx2tx_par_lb_en					=	PCIE_SUB_CON_x4_phy_lane3_rx2tx_par_lb_en_sig;
assign	PCIE_SUB_CON_x4_ext_pclk_req							=	PCIE_SUB_CON_x4_ext_pclk_req_sig;
assign	PCIE_SUB_CON_x4_sram_bypass							=	PCIE_SUB_CON_x4_phy0_sram_bypass_sig;
// PCIE_SUB_CON_x2 -> SOC
assign	PCIE_SUB_CON_x2_o_driver_apb_prdata						=	PCIE_SUB_CON_x2_o_driver_apb_prdata_sig;
assign	PCIE_SUB_CON_x2_o_driver_apb_pready						=	PCIE_SUB_CON_x2_o_driver_apb_pready_sig;
assign	PCIE_SUB_CON_x2_o_driver_apb_pslverr						=	PCIE_SUB_CON_x2_o_driver_apb_pslverr_sig;
assign	PCIE_SUB_CON_x2_pcie_irq							=	PCIE_SUB_CON_x2_pcie_irq_sig;
assign	PCIE_SUB_CON_x2_QACCEPTn_mstr_aclk_slv_aclk					=	PCIE_SUB_CON_x2_QACCEPTn_mstr_aclk_slv_aclk_sig;
assign	PCIE_SUB_CON_x2_QDENY_mstr_aclk_slv_aclk					=	PCIE_SUB_CON_x2_QDENY_mstr_aclk_slv_aclk_sig;
assign	PCIE_SUB_CON_x2_QACTIVE_mstr_aclk_slv_aclk					=	PCIE_SUB_CON_x2_QACTIVE_mstr_aclk_slv_aclk_sig;
assign	PCIE_SUB_CON_x2_QACCEPTn_dbi_aclk						=	PCIE_SUB_CON_x2_QACCEPTn_dbi_aclk_sig;
assign	PCIE_SUB_CON_x2_QDENY_dbi_aclk							=	PCIE_SUB_CON_x2_QDENY_dbi_aclk_sig;
assign	PCIE_SUB_CON_x2_QACTIVE_dbi_aclk						=	PCIE_SUB_CON_x2_QACTIVE_dbi_aclk_sig;
assign	PCIE_SUB_CON_x2_QACCEPTn_apb_aclk						=	PCIE_SUB_CON_x2_QACCEPTn_apb_aclk_sig;
assign	PCIE_SUB_CON_x2_QDENY_apb_aclk							=	PCIE_SUB_CON_x2_QDENY_apb_aclk_sig;
assign	PCIE_SUB_CON_x2_QACTIVE_apb_aclk						=	PCIE_SUB_CON_x2_QACTIVE_apb_aclk_sig;
assign	PCIE_SUB_CON_x2_mstr_arvalid							=	PCIE_SUB_CON_x2_mstr_arvalid_sig;
assign	PCIE_SUB_CON_x2_mstr_awvalid							=	PCIE_SUB_CON_x2_mstr_awvalid_sig;
assign	PCIE_SUB_CON_x2_mstr_wvalid							=	PCIE_SUB_CON_x2_mstr_wvalid_sig;
assign	PCIE_SUB_CON_x2_slv_arready							=	PCIE_SUB_CON_x2_slv_arready_sig;
assign	PCIE_SUB_CON_x2_slv_awready							=	PCIE_SUB_CON_x2_slv_awready_sig;
assign	PCIE_SUB_CON_x2_slv_bvalid							=	PCIE_SUB_CON_x2_slv_bvalid_sig;
assign	PCIE_SUB_CON_x2_slv_rlast							=	PCIE_SUB_CON_x2_slv_rlast_sig;
assign	PCIE_SUB_CON_x2_slv_rvalid							=	PCIE_SUB_CON_x2_slv_rvalid_sig;
assign	PCIE_SUB_CON_x2_slv_wready							=	PCIE_SUB_CON_x2_slv_wready_sig;
assign	PCIE_SUB_CON_x2_dbi_arready							=	PCIE_SUB_CON_x2_dbi_arready_sig;
assign	PCIE_SUB_CON_x2_dbi_awready							=	PCIE_SUB_CON_x2_dbi_awready_sig;
assign	PCIE_SUB_CON_x2_dbi_bvalid							=	PCIE_SUB_CON_x2_dbi_bvalid_sig;
assign	PCIE_SUB_CON_x2_dbi_rlast							=	PCIE_SUB_CON_x2_dbi_rlast_sig;
assign	PCIE_SUB_CON_x2_dbi_rvalid							=	PCIE_SUB_CON_x2_dbi_rvalid_sig;
assign	PCIE_SUB_CON_x2_dbi_wready							=	PCIE_SUB_CON_x2_dbi_wready_sig;
// APB2CR -> SOC 
assign	PCIE_PHY_APB2CR_prdata								=	APB2CR_prdata_sig;
assign	PCIE_PHY_APB2CR_pready								=	APB2CR_pready_sig;
assign	PCIE_PHY_APB2CR_pslverr								=	APB2CR_pslverr_sig;
assign	PCIE_PHY_APB2CR_QACCEPTn							=	APB2CR_QACCEPTn_sig;
assign	PCIE_PHY_APB2CR_QACTIVE								=	APB2CR_QACTIVE_sig;
assign	PCIE_PHY_APB2CR_QDENY								=	APB2CR_QDENY_sig;

endmodule
