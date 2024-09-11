`ifndef     __SOC_ENV_SV__
`define     __SOC_ENV_SV__

class soc_env_c extends uvm_env;
    //  Child agents
    nx_ext_rst_agent_c      agent_rst       ;
    nx_ext_clk_se_agent_c   agent_clk       ;

    // ahb
    cdn_ahb_cfg_c           ahb_cfg;

    // apb
    cdn_apb_ma_agent_c      agent_apb_x2_driver_m;
    cdn_apb_m_cfg_c         apb_cfg;

    // axi
    cdn_axi_ma_agent_c      agent_axi_x2_slv_m;
    cdn_axi_ma_agent_c      agent_axi_x2_dbi_m;
    cdn_axi_ma_agent_c      agent_axi_x2_mstr_s;
    cdn_axi_cfg_c           axi_cfg;

    //  VIP control interface
    virtual soc_if          if_soc          ;

    //  Virtual sequencer
    soc_vseqr_c             soc_vseqr       ;

    `uvm_component_utils(soc_env_c)

    function new(string name = "soc_env_c", uvm_component parent = null);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        `uvm_info_phase("build_phase ... started")
        super.build_phase(phase);

        //  Type override
        set_type_override_by_type(denaliCdn_ahbTransaction::get_type()  , cdn_ahb_m_trans_c::get_type());
        set_type_override_by_type(denaliCdn_apbTransaction::get_type()  , cdn_apb_m_trans_c::get_type());
        set_type_override_by_type(denaliCdn_axiTransaction::get_type()  , cdn_axi_m_trans_c::get_type());

        //  Create config database
        uvm_config_db#(soc_env_c)::set(null, "env", "env_soc", this);

        //  Object creation
        // ahb config
        ahb_cfg                = cdn_ahb_cfg_c        ::type_id::create("ahb_cfg"        , this);
        ahb_cfg.lock_supported = 0;
        ahb_cfg.is_active      = UVM_ACTIVE;

        // apb config
        apb_cfg                  = cdn_apb_m_cfg_c      ::type_id::create("apb_cfg"        , this);
        apb_cfg.is_active        = UVM_ACTIVE;
        apb_cfg.number_of_slaves = 1;
        apb_cfg.addToAddressSegments(32'h0, 32'hffff_ffff, 0);
        uvm_config_object::set(this, "agent_apb_x2_driver_m", "cfg", apb_cfg);

        // axi config
        axi_cfg                  = cdn_axi_m_cfg_c      ::type_id::create("axi_cfg"        , this);
        axi_cfg.is_active        = UVM_ACTIVE;
        axi_cfg.number_of_slaves = 1;
        axi_cfg.addToAddressSegments(32'h0, 32'hffff_ffff, 0);
        uvm_config_object::set(this, "agent_axi_x2_slv_m", "cfg", axi_cfg);
        uvm_config_object::set(this, "agent_axi_x2_dbi_m", "cfg", axi_cfg);
        uvm_config_object::set(this, "agent_axi_x2_mstr_s", "cfg", axi_cfg);

        agent_rst       = nx_ext_rst_agent_c    ::type_id::create("agent_rst"       , this);
        agent_clk       = nx_ext_clk_se_agent_c ::type_id::create("agent_clk"       , this);
        agent_apb_x2_driver_m       = cdn_apb_ma_agent_c    ::type_id::create("agent_apb_x2_driver_m", this);
        agent_axi_x2_slv_m       = cdn_axi_ma_agent_c    ::type_id::create("agent_axi_x2_slv_m", this);
        agent_axi_x2_dbi_m       = cdn_axi_ma_agent_c    ::type_id::create("agent_axi_x2_dbi_m", this);
        agent_axi_x2_mstr_s       = cdn_axi_ma_agent_c    ::type_id::create("agent_axi_x2_mstr_s", this);
        soc_vseqr       = soc_vseqr_c           ::type_id::create("soc_vseqr"       , this);

        //  MISC
        uvm_config_db#(uvm_bitstream_t)::set(this, "agent_rst", "_high_time", 3ns);
        `uvm_info_phase("build_phase ... ended")
    endfunction

    function void connect_phase(uvm_phase phase);
        `uvm_info_phase("connect_phase ... started")
        super.connect_phase(phase);
        soc_vseqr.seqr_rst      = agent_rst._seqr;
        soc_vseqr.seqr_clk      = agent_clk._seqr;
        `uvm_info_phase("connect_phase ... ended")
    endfunction

endclass

`endif  //  __SOC_ENV_SV__