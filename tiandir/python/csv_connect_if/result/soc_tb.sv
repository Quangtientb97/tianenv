`define AXI_ADDR_WIDTH 64
`define AXI_ADDR_WIDTH 64
`define AXI_ID_WIDTH   4
`define AXI_USER_WIDTH 4
`define APB_ADDR_WIDTH 32
`define APB_ADDR_WIDTH 32
`define AHB_DATA_WIDTH 32
`define AHB_DATA_WIDTH 32

// Connect apb_x2_driver_m
cdn_apb2_m_if #(
    .ADDR_WIDTH(`APB_ADDR_WIDTH),
    .DATA_WIDTH(`APB_DATA_WIDTH)
) apb_x2_driver_m();

    assign apb_x2_driver_m.clk            = top.PCIE_SUB_CON_x4_i_driver_apb_clk;
    assign apb_x2_driver_m.resetn         = top.//FIXME;
    assign #10ps apb_x2_driver_m.pslverr        = top.PCIE_SUB_CON_x4_o_driver_apb_pslverr;
    assign #10ps apb_x2_driver_m.prdata         = top.PCIE_SUB_CON_x4_o_driver_apb_prdata;
    assign #10ps apb_x2_driver_m.pready         = top.PCIE_SUB_CON_x4_o_driver_apb_pready;
    assign #10ps top.PCIE_SUB_CON_x4_i_driver_apb_paddr             = apb_x2_driver_m.paddr;
    assign #10ps top.PCIE_SUB_CON_x4_i_driver_apb_penable           = apb_x2_driver_m.penable;
    assign #10ps top.PCIE_SUB_CON_x4_i_driver_apb_psel              = apb_x2_driver_m.psel0;
    assign #10ps top.PCIE_SUB_CON_x4_i_driver_apb_pwdata            = apb_x2_driver_m.pwdata;
    assign #10ps top.PCIE_SUB_CON_x4_i_driver_apb_pwrite            = apb_x2_driver_m.pwrite;

// Connect axi_x2_slv_m
cdn_axi4_active_master_if #(
    .P_ADDR_WIDTH(`AXI_ADDR_WIDTH),
    .P_DATA_WIDTH(`AXI_DATA_WIDTH),
    .P_ID_WIDTH  (`AXI_ID_WIDTH),
    .P_USER_WIDTH(`AXI_USER_WIDTH)
) axi_x2_slv_m();

    assign axi_x2_slv_m.aclk              = top.PCIE_SUB_CON_x2_slv_aclk_soc;
    assign axi_x2_slv_m.aresetn           = top.//FIXME;
    assign #10ps axi_x2_slv_m.arready           = top.PCIE_SUB_CON_x2_slv_arready;
    assign #10ps axi_x2_slv_m.awready           = top.PCIE_SUB_CON_x2_slv_awready;
    assign #10ps axi_x2_slv_m.bid               = top.DWC_pcie_ctrl_x2_slv_bid;
    assign #10ps axi_x2_slv_m.bresp             = top.DWC_pcie_ctrl_x2_slv_bresp;
    assign #10ps axi_x2_slv_m.bvalid            = top.PCIE_SUB_CON_x2_slv_bvalid;
    assign #10ps axi_x2_slv_m.cactive           = top.DWC_pcie_ctrl_x2_slv_cactive;
    assign #10ps axi_x2_slv_m.rdata             = top.DWC_pcie_ctrl_x2_slv_rdata;
    assign #10ps axi_x2_slv_m.rid               = top.DWC_pcie_ctrl_x2_slv_rid;
    assign #10ps axi_x2_slv_m.rlast             = top.PCIE_SUB_CON_x2_slv_rlast;
    assign #10ps axi_x2_slv_m.rresp             = top.DWC_pcie_ctrl_x2_slv_rresp;
    assign #10ps axi_x2_slv_m.rvalid            = top.PCIE_SUB_CON_x2_slv_rvalid;
    assign #10ps axi_x2_slv_m.wready            = top.PCIE_SUB_CON_x2_slv_wready;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_araddr                    = axi_x2_slv_m.araddr;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_arburst                   = axi_x2_slv_m.arburst;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_arcache                   = axi_x2_slv_m.arcache;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_arid                      = axi_x2_slv_m.arid;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_arlen                     = axi_x2_slv_m.arlen;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_arlock                    = axi_x2_slv_m.arlock;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_arprot                    = axi_x2_slv_m.arprot;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_arqos                     = axi_x2_slv_m.arqos;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_arsize                    = axi_x2_slv_m.arsize;
    assign #10ps top.PCIE_SUB_CON_x2_slv_arvalid                    = axi_x2_slv_m.arvalid;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_awaddr                    = axi_x2_slv_m.awaddr;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_awburst                   = axi_x2_slv_m.awburst;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_awcache                   = axi_x2_slv_m.awcache;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_awid                      = axi_x2_slv_m.awid;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_awlen                     = axi_x2_slv_m.awlen;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_awlock                    = axi_x2_slv_m.awlock;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_awprot                    = axi_x2_slv_m.awprot;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_awqos                     = axi_x2_slv_m.awqos;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_awsize                    = axi_x2_slv_m.awsize;
    assign #10ps top.PCIE_SUB_CON_x2_slv_awvalid                    = axi_x2_slv_m.awvalid;
    assign #10ps top.PCIE_SUB_CON_x2_slv_bready                     = axi_x2_slv_m.bready;
    assign #10ps top.PCIE_SUB_CON_x2_slv_rready                     = axi_x2_slv_m.rready;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_wdata                     = axi_x2_slv_m.wdata;
    assign #10ps top.PCIE_SUB_CON_x2_slv_wlast                      = axi_x2_slv_m.wlast;
    assign #10ps top.DWC_pcie_ctrl_x2_slv_wstrb                     = axi_x2_slv_m.wstrb;
    assign #10ps top.PCIE_SUB_CON_x2_slv_wvalid                     = axi_x2_slv_m.wvalid;

// Connect axi_x2_dbi_m
cdn_axi4_active_master_if #(
    .P_ADDR_WIDTH(`AXI_ADDR_WIDTH),
    .P_DATA_WIDTH(`AXI_DATA_WIDTH),
    .P_ID_WIDTH  (`AXI_ID_WIDTH),
    .P_USER_WIDTH(`AXI_USER_WIDTH)
) axi_x2_dbi_m();

    assign axi_x2_dbi_m.aclk              = top.PCIE_SUB_CON_x2_dbi_aclk_soc;
    assign axi_x2_dbi_m.aresetn           = top.//FIXME;
    assign #10ps axi_x2_dbi_m.arready           = top.PCIE_SUB_CON_x2_dbi_arready;
    assign #10ps axi_x2_dbi_m.awready           = top.PCIE_SUB_CON_x2_dbi_awready;
    assign #10ps axi_x2_dbi_m.bid               = top.DWC_pcie_ctrl_x2_dbi_bid;
    assign #10ps axi_x2_dbi_m.bresp             = top.DWC_pcie_ctrl_x2_dbi_bresp;
    assign #10ps axi_x2_dbi_m.bvalid            = top.PCIE_SUB_CON_x2_dbi_bvalid;
    assign #10ps axi_x2_dbi_m.cactive           = top.DWC_pcie_ctrl_x2_dbi_cactive;
    assign #10ps axi_x2_dbi_m.rdata             = top.DWC_pcie_ctrl_x2_dbi_rdata;
    assign #10ps axi_x2_dbi_m.rid               = top.DWC_pcie_ctrl_x2_dbi_rid;
    assign #10ps axi_x2_dbi_m.rlast             = top.PCIE_SUB_CON_x2_dbi_rlast;
    assign #10ps axi_x2_dbi_m.rresp             = top.DWC_pcie_ctrl_x2_dbi_rresp;
    assign #10ps axi_x2_dbi_m.rvalid            = top.PCIE_SUB_CON_x2_dbi_rvalid;
    assign #10ps axi_x2_dbi_m.wready            = top.PCIE_SUB_CON_x2_dbi_wready;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_araddr                    = axi_x2_dbi_m.araddr;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_arburst                   = axi_x2_dbi_m.arburst;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_arcache                   = axi_x2_dbi_m.arcache;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_arid                      = axi_x2_dbi_m.arid;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_arlen                     = axi_x2_dbi_m.arlen;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_arlock                    = axi_x2_dbi_m.arlock;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_arprot                    = axi_x2_dbi_m.arprot;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_arqos                     = axi_x2_dbi_m.arqos;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_arsize                    = axi_x2_dbi_m.arsize;
    assign #10ps top.PCIE_SUB_CON_x2_dbi_arvalid                    = axi_x2_dbi_m.arvalid;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_awaddr                    = axi_x2_dbi_m.awaddr;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_awburst                   = axi_x2_dbi_m.awburst;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_awcache                   = axi_x2_dbi_m.awcache;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_awid                      = axi_x2_dbi_m.awid;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_awlen                     = axi_x2_dbi_m.awlen;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_awlock                    = axi_x2_dbi_m.awlock;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_awprot                    = axi_x2_dbi_m.awprot;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_awqos                     = axi_x2_dbi_m.awqos;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_awsize                    = axi_x2_dbi_m.awsize;
    assign #10ps top.PCIE_SUB_CON_x2_dbi_awvalid                    = axi_x2_dbi_m.awvalid;
    assign #10ps top.PCIE_SUB_CON_x2_dbi_bready                     = axi_x2_dbi_m.bready;
    assign #10ps top.PCIE_SUB_CON_x2_dbi_rready                     = axi_x2_dbi_m.rready;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_wdata                     = axi_x2_dbi_m.wdata;
    assign #10ps top.PCIE_SUB_CON_x2_dbi_wlast                      = axi_x2_dbi_m.wlast;
    assign #10ps top.DWC_pcie_ctrl_x2_dbi_wstrb                     = axi_x2_dbi_m.wstrb;
    assign #10ps top.PCIE_SUB_CON_x2_dbi_wvalid                     = axi_x2_dbi_m.wvalid;

// Connect axi_x2_mstr_s
cdn_axi4_active_slave_if #(
    .P_ADDR_WIDTH(`AXI_ADDR_WIDTH),
    .P_DATA_WIDTH(`AXI_DATA_WIDTH),
    .P_ID_WIDTH  (`AXI_ID_WIDTH),
    .P_USER_WIDTH(`AXI_USER_WIDTH)
) axi_x2_mstr_s();

    assign axi_x2_mstr_s.aclk             = top.PCIE_SUB_CON_x2_mstr_aclk_soc;
    assign axi_x2_mstr_s.aresetn          = top.//FIXME;
    assign #10ps top.PCIE_SUB_CON_x2_mstr_arready                   = axi_x2_mstr_s.arready;
    assign #10ps top.PCIE_SUB_CON_x2_mstr_awready                   = axi_x2_mstr_s.awready;
    assign #10ps top.DWC_pcie_ctrl_x2_mstr_bid                      = axi_x2_mstr_s.bid;
    assign #10ps top.DWC_pcie_ctrl_x2_mstr_bresp                    = axi_x2_mstr_s.bresp;
    assign #10ps top.DWC_pcie_ctrl_x2_mstr_bvalid                   = axi_x2_mstr_s.bvalid;
    assign #10ps top.DWC_pcie_ctrl_x2_mstr_cactive                  = axi_x2_mstr_s.cactive;
    assign #10ps top.DWC_pcie_ctrl_x2_mstr_rdata                    = axi_x2_mstr_s.rdata;
    assign #10ps top.DWC_pcie_ctrl_x2_mstr_rid                      = axi_x2_mstr_s.rid;
    assign #10ps top.DWC_pcie_ctrl_x2_mstr_rlast                    = axi_x2_mstr_s.rlast;
    assign #10ps top.DWC_pcie_ctrl_x2_mstr_rresp                    = axi_x2_mstr_s.rresp;
    assign #10ps top.PCIE_SUB_CON_x2_mstr_arvalid                   = axi_x2_mstr_s.rvalid;
    assign #10ps top.PCIE_SUB_CON_x2_mstr_wready                    = axi_x2_mstr_s.wready;
    assign #10ps axi_x2_mstr_s.araddr           = top.DWC_pcie_ctrl_x2_mstr_araddr;
    assign #10ps axi_x2_mstr_s.arburst          = top.DWC_pcie_ctrl_x2_mstr_arburst;
    assign #10ps axi_x2_mstr_s.arcache          = top.DWC_pcie_ctrl_x2_mstr_arcache;
    assign #10ps axi_x2_mstr_s.arid             = top.DWC_pcie_ctrl_x2_mstr_arid;
    assign #10ps axi_x2_mstr_s.arlen            = top.DWC_pcie_ctrl_x2_mstr_arlen;
    assign #10ps axi_x2_mstr_s.arlock           = top.DWC_pcie_ctrl_x2_mstr_arlock;
    assign #10ps axi_x2_mstr_s.arprot           = top.DWC_pcie_ctrl_x2_mstr_arprot;
    assign #10ps axi_x2_mstr_s.arqos            = top.DWC_pcie_ctrl_x2_mstr_arqos;
    assign #10ps axi_x2_mstr_s.arsize           = top.DWC_pcie_ctrl_x2_mstr_arsize;
    assign #10ps axi_x2_mstr_s.arvalid          = top.PCIE_SUB_CON_x2_mstr_arvalid;
    assign #10ps axi_x2_mstr_s.awaddr           = top.DWC_pcie_ctrl_x2_mstr_awaddr;
    assign #10ps axi_x2_mstr_s.awburst          = top.DWC_pcie_ctrl_x2_mstr_awburst;
    assign #10ps axi_x2_mstr_s.awcache          = top.DWC_pcie_ctrl_x2_mstr_awcache;
    assign #10ps axi_x2_mstr_s.awid             = top.DWC_pcie_ctrl_x2_mstr_awid;
    assign #10ps axi_x2_mstr_s.awlen            = top.DWC_pcie_ctrl_x2_mstr_awlen;
    assign #10ps axi_x2_mstr_s.awlock           = top.DWC_pcie_ctrl_x2_mstr_awlock;
    assign #10ps axi_x2_mstr_s.awprot           = top.DWC_pcie_ctrl_x2_mstr_awprot;
    assign #10ps axi_x2_mstr_s.awqos            = top.DWC_pcie_ctrl_x2_mstr_awqos;
    assign #10ps axi_x2_mstr_s.awsize           = top.DWC_pcie_ctrl_x2_mstr_awsize;
    assign #10ps axi_x2_mstr_s.awvalid          = top.PCIE_SUB_CON_x2_mstr_awvalid;
    assign #10ps axi_x2_mstr_s.bready           = top.DWC_pcie_ctrl_x2_mstr_bready;
    assign #10ps axi_x2_mstr_s.rready           = top.PCIE_SUB_CON_x2_mstr_arready;
    assign #10ps axi_x2_mstr_s.wdata            = top.DWC_pcie_ctrl_x2_mstr_wdata;
    assign #10ps axi_x2_mstr_s.wlast            = top.DWC_pcie_ctrl_x2_mstr_wlast;
    assign #10ps axi_x2_mstr_s.wstrb            = top.DWC_pcie_ctrl_x2_mstr_wstrb;
    assign #10ps axi_x2_mstr_s.wvalid           = top.PCIE_SUB_CON_x2_mstr_wvalid;

    //----------------------------------------------------------------------------------------------
    //      BUS protocol
    //----------------------------------------------------------------------------------------------

    //  Start UVM
    initial begin
        //  UVM configuration DB

        // AHB


        // APB
        uvm_config_db#(virtual cdn_apb2_m_if#(`APB_ADDR_WIDTH, `APB_DATA_WIDTH, 1))::set(null, "uvm_test_top.soc_env.agent_apb_x2_driver_m"  , "_intf" , apb_x2_driver_m        );


        // AXI
        uvm_config_db#(virtual cdn_axi4_active_master_if#(
            .P_ADDR_WIDTH(`AXI_ADDR_WIDTH),
            .P_DATA_WIDTH(`AXI_DATA_WIDTH),
            .P_ID_WIDTH  (`AXI_ID_WIDTH),
            .P_USER_WIDTH(`AXI_USER_WIDTH)
        )::set(null, "uvm_test_top.soc_env.agent_axi"  , "_intf", axi_x2_slv_m);
        uvm_config_db#(virtual cdn_axi4_active_master_if#(
            .P_ADDR_WIDTH(`AXI_ADDR_WIDTH),
            .P_DATA_WIDTH(`AXI_DATA_WIDTH),
            .P_ID_WIDTH  (`AXI_ID_WIDTH),
            .P_USER_WIDTH(`AXI_USER_WIDTH)
        )::set(null, "uvm_test_top.soc_env.agent_axi"  , "_intf", axi_x2_dbi_m);
        uvm_config_db#(virtual cdn_axi4_active_slave_if#(
            .P_ADDR_WIDTH(`AXI_ADDR_WIDTH),
            .P_DATA_WIDTH(`AXI_DATA_WIDTH),
            .P_ID_WIDTH  (`AXI_ID_WIDTH),
            .P_USER_WIDTH(`AXI_USER_WIDTH)
        )::set(null, "uvm_test_top.soc_env.agent_axi"  , "_intf", axi_x2_mstr_s);


        //  Start UVM
        run_test();
    end
