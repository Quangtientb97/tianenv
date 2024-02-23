`ifndef __SRAM_SFR_ACCESS_SEQ_C__
`define __SRAM_SFR_ACCESS_SEQ_C__

class register_wrapper_c;
    uvm_reg             register;
    uvm_reg_block       parent_reg_blk;
    uvm_status_e        status; // UVM_IS_OK | UVM_NOT_OK | UVM_HAS_X
    string              name            = "";
    bit          [31:0] compare_rw_mask = 32'h0;
    bit          [31:0] compare_ro_mask = 32'h0;
    bit          [31:0] compare_wo_mask = 32'h0;
    bit          [31:0] reset_mask      = 32'h0;
    logic        [31:0] addr;
    rand logic   [31:0] wdata;
    logic        [31:0] rdata;
    logic        [31:0] expect_rdata;
    logic        [31:0] reset_value;
    bit                 rand_wdata     = 1;
    bit                 skip_rsp_error = 0;

    function new(string iname, uvm_reg iregister);
        this.name           = iname;
        this.register       = iregister;
        this.addr           = iregister.get_address();
        this.reset_value    = iregister.get_reset();
        this.parent_reg_blk = iregister.get_parent();
    endfunction

    function void dont_rand_wdata();
        rand_wdata = 0;
    endfunction

    function void skip_rsp_error_chk();
        skip_rsp_error = 1;
    endfunction

    function void make_mask();
        uvm_reg_field fields[$];
        register.get_fields(fields);
        foreach (fields[i]) begin
            if (fields[i].get_access() == "RW") begin
                for (int j=0; j<fields[i].get_n_bits(); j++) begin
                    compare_rw_mask |= 1<<(fields[i].get_lsb_pos()+j);
                end
            end
            if (fields[i].get_access() == "RO") begin
                for (int j=0; j<fields[i].get_n_bits(); j++) begin
                    compare_ro_mask |= 1<<(fields[i].get_lsb_pos()+j);
                end
            end
            if (fields[i].get_access() == "WO") begin
                for (int j=0; j<fields[i].get_n_bits(); j++) begin
                    compare_wo_mask |= 1<<(fields[i].get_lsb_pos()+j);
                end
            end
            if (fields[i].get_access() == "RW" || fields[i].get_access() == "RO") begin
                for (int j=0; j<fields[i].get_n_bits(); j++) begin
                    reset_mask |= 1<<(fields[i].get_lsb_pos()+j);
                end
            end
        end

        //$display("[tian] compare_rw_mask = 0x%h", compare_rw_mask);
    endfunction

    task check_field_rw();
        // Return if register as RO or WO
        if (compare_ro_mask == 32'hffff_ffff || compare_wo_mask == 32'hffff_ffff) return;

        if (rand_wdata) wdata = $random;
        register.write(status, wdata); asrt_rsp_ok();
        register.read(status,  rdata); asrt_rsp_ok();

        if ((wdata & compare_rw_mask) != (rdata & compare_rw_mask)) begin
            `uvm_error("[REG]", $psprintf("[check_field_rw] %s write -> read mismatch", name))
        end
        else begin
            `uvm_info("[REG]", $psprintf("[check_field_rw] %s write -> read match", name), UVM_LOW)
        end
        $display("[check_field_rw] WRITE addr = 0x%h, raw_data = 0x%h, mask_data = 0x%h, compare_rw_mask = 0x%h", this.addr, wdata, wdata&compare_rw_mask, compare_rw_mask);
        $display("[check_field_rw] READ  addr = 0x%h, raw_data = 0x%h, mask_data = 0x%h, compare_rw_mask = 0x%h", this.addr, rdata, rdata&compare_rw_mask, compare_rw_mask);
    endtask

    task check_field_ro();
        // Return if register as RO or WO
        if (compare_ro_mask == 32'hffff_ffff || compare_wo_mask == 32'hffff_ffff) return;

        // read register
        register.read(status, expect_rdata); asrt_rsp_ok();

        if (rand_wdata) wdata = ~expect_rdata;

        register.write(status, wdata); asrt_rsp_ok();
        register.read(status,  rdata); asrt_rsp_ok();

        if (compare_ro_mask != 32'h0) begin
            if ((rdata & compare_ro_mask) != (expect_rdata & compare_ro_mask)) begin
                `uvm_error("[REG]", $psprintf("[check_field_ro] Can write to RO field (wrong behavior)"))
            end
            else begin
                `uvm_info("[REG]", $psprintf("[check_field_ro] Cannot write to RO field (right behavior)"), UVM_LOW)
            end
            $display("[check_field_ro] READ  addr = 0x%h, raw_data = 0x%h, mask_data = 0x%h, compare_ro_mask = 0x%h", this.addr, expect_rdata, expect_rdata&compare_ro_mask, compare_ro_mask);
            $display("[check_field_ro] WRITE addr = 0x%h, raw_data = 0x%h, mask_data = 0x%h, compare_ro_mask = 0x%h", this.addr, wdata       , wdata&compare_ro_mask, compare_ro_mask);
            $display("[check_field_ro] READ  addr = 0x%h, raw_data = 0x%h, mask_data = 0x%h, compare_ro_mask = 0x%h", this.addr, rdata       , rdata&compare_ro_mask, compare_ro_mask);
        end
        else if (compare_ro_mask == 32'h0) begin
            $display("[ti] SKIP check RO write -> read");
        end
    endtask

    task check_field_wo();
        // Return if register as RO or WO
        if (compare_ro_mask == 32'hffff_ffff || compare_wo_mask == 32'hffff_ffff) return;

        // read register
        register.read(status, expect_rdata); asrt_rsp_ok();

        if (rand_wdata) wdata = $random;

        register.write(status, wdata); asrt_rsp_ok();
        register.read(status,  rdata); asrt_rsp_ok();

        if (compare_wo_mask != 32'h0) begin
            if ((wdata & compare_wo_mask) == (rdata & compare_wo_mask)) begin
                `uvm_error("[REG]", $psprintf("[check_field_wo] write -> read %s<WO> match (wrong behavior)", name))
            end
            else begin
                `uvm_info("[REG]", $psprintf("[check_field_wo] write -> read %s<WO> mismatch (right behavior)", name), UVM_LOW)
            end
            $display("[check_filed_wo] WRITE addr = 0x%h, raw_data = 0x%h, mask_data = 0x%h, compare_wo_mask = 0x%h", this.addr, wdata, wdata&compare_wo_mask, compare_wo_mask);
            $display("[check_filed_wo] READ  addr = 0x%h, raw_data = 0x%h, mask_data = 0x%h, compare_wo_mask = 0x%h", this.addr, rdata, rdata&compare_wo_mask, compare_wo_mask);
        end
        else if (compare_wo_mask == 32'h0) begin
            $display("[ti] SKIP check WO write -> read");
        end
    endtask

    task check_reg_ro();
        // All field is RO
        if (compare_ro_mask == 32'hffff_ffff) begin
            print_banner($psprintf("Checking %s as RO register", name));
            // read RO register
            register.read(status, expect_rdata); asrt_rsp_ok();

            if (rand_wdata) wdata = ~expect_rdata;
            register.write(status, wdata); 
            if (!skip_rsp_error) asrt_rsp_not_ok(); // expect: got error when write to RO register
            register.read(status,  rdata); asrt_rsp_ok();

            if ((rdata & compare_ro_mask) != (expect_rdata & compare_ro_mask)) begin
                `uvm_error("[REG]", $psprintf("[check_reg_ro] Can write to %s<RO reg> (wrong behavior)", name))
            end
            else begin
                `uvm_info("[REG]", $psprintf("[check_reg_ro] Cannot write to %s<RO reg> (right behavior)", name), UVM_LOW)
            end
            $display("[check_reg_ro] READ  addr = 0x%h, raw_data = 0x%h, mask_data = 0x%h, compare_ro_mask = 0x%h", this.addr, expect_rdata, expect_rdata&compare_ro_mask, compare_ro_mask);
            $display("[check_reg_ro] WRITE addr = 0x%h, raw_data = 0x%h, mask_data = 0x%h, compare_ro_mask = 0x%h", this.addr, wdata       , wdata&compare_ro_mask, compare_ro_mask);
            $display("[check_reg_ro] READ  addr = 0x%h, raw_data = 0x%h, mask_data = 0x%h, compare_ro_mask = 0x%h", this.addr, rdata       , rdata&compare_ro_mask, compare_ro_mask);
        end
    endtask 

    task check_reg_wo();
        // All field is WO
        if (compare_wo_mask == 32'hffff_ffff) begin
            print_banner($psprintf("Checking %s as WO register", name));

            if (rand_wdata) wdata = $random;
            register.write(status, wdata); asrt_rsp_ok();
            register.read(status,  rdata); 

            if (!skip_rsp_error) asrt_rsp_not_ok(); // expect: got error when write to RO register

            if ((wdata & compare_wo_mask) == (rdata & compare_wo_mask)) begin
                `uvm_error("[REG]", $psprintf("[check_reg_wo] write -> read WO match (wrong behavior)"))
            end
            else begin
                `uvm_info("[REG]", $psprintf("[check_reg_wo] write -> read WO mismatch (right behavior)"), UVM_LOW)
            end
            $display("[check_reg_wo] WRITE addr = 0x%h, raw_data = 0x%h, mask_data = 0x%h, compare_wo_mask = 0x%h", this.addr, wdata, wdata&compare_wo_mask, compare_wo_mask);
            $display("[check_reg_wo] READ  addr = 0x%h, raw_data = 0x%h, mask_data = 0x%h, compare_wo_mask = 0x%h", this.addr, rdata, rdata&compare_wo_mask, compare_wo_mask);
        end
    endtask 

    task check_reset_value();
        register.read(status,  rdata); asrt_rsp_ok();
        if   ((rdata&reset_mask) != (reset_value&reset_mask)) begin `uvm_error("RESET_VALUE", $psprintf("%s: reset value mismatch", name));          end
        else                                              begin `uvm_info( "RESET_VALUE", $psprintf("%s: reset value match   ", name), UVM_LOW); end
        $display("[check_reset_value] rdata_real   = 0x%h", rdata);
        $display("[check_reset_value] rdata_expect = 0x%h", reset_value);
        $display("[check_reset_value] (MASK) rdata_real   = 0x%h", rdata&reset_mask);
        $display("[check_reset_value] (MASK) rdata_expect = 0x%h", reset_value&reset_mask);
    endtask 


    function void asrt_rsp_ok();
        assert(status == UVM_IS_OK) begin
            // nothing
        end
        else begin
            $display("Expect UVM_IS_OK: [STATUS]  %s", status.name);
        end
    endfunction

    function void asrt_rsp_not_ok();
        assert(status == UVM_IS_OK) begin
            // nothing
        end
        else begin
            $display("Expect !UVM_IS_OK: [STATUS]  %s", status.name);
        end
    endfunction

    function void print_banner(string mess);
        int len_str = mess.len();
        $display("+------------------------------------------------------+");
        $write("| %s", mess);
        for (int i=0; i< 53-len_str; i++) begin
            $write(" ");
        end
        $write("|\n");
        $display("+------------------------------------------------------+");
    endfunction
endclass

class sram_sfr_access_vseq_c extends soc_test_vseq_c;
    sram_reg_blk_c              sram_reg_model;
    register_wrapper_c          sram_reg;
    uvm_reg                     regs[$];
    uvm_reg_block               top_reg_block;

    `uvm_object_utils(sram_sfr_access_vseq_c)

    function new(string name = "sram_sfr_access_vseq_c");
        super.new(name);
    endfunction

    task body();
        top_reg_block  = env_lx61102.lx61102;
        sram_reg_model = env_lx61102.lx61102.u_MEM.sram_ctrl;
        sram_reg_model.get_registers(regs);

//         check_access_invalid_addr();

        // -----------------------------------------------------------|
        // Check reset default value                                  |
        // -----------------------------------------------------------|
        foreach (regs[i]) begin
            sram_reg = new(regs[i].get_name(), regs[i]);
            sram_reg.make_mask();
            case (sram_reg.name)
                "example"   : sram_reg.reset_mask = 32'h1234_5678; // 1 as check, 0 as ignore
                "eccctrl"   : sram_reg.reset_mask = 32'hffff_fffe; // 1 as check, 0 as ignore
                "errstatus" : sram_reg.reset_mask = 32'hffff_fff8; // 1 as check, 0 as ignore
            endcase
            print_banner(sram_reg.name);
            $display("[ti] address         = 0x%h", sram_reg.register.get_address());
            $display("[ti] reset_mask      = 0x%h", sram_reg.reset_mask);
            sram_reg.check_reset_value();
        end

        // -----------------------------------------------------------|
        // Check write read                                           |
        // -----------------------------------------------------------|
        `define TIME 10
        repeat(`TIME) begin
            print_banner("start checking register...");
            foreach (regs[i]) begin
                sram_reg = new(regs[i].get_name(), regs[i]);
                sram_reg.make_mask();
                // Overide default value                                  
                case (sram_reg.name)
                    "example": begin
                        sram_reg.dont_rand_wdata();
                        sram_reg.wdata           = 32'h1234_5678;
                        sram_reg.compare_rw_mask = 32'hffff_ffff; // 1 as check, 0 as ignore
                        sram_reg.compare_ro_mask = 32'hffff_ffff;
                        sram_reg.compare_wo_mask = 32'hffff_ffff;
                    end
                    "intrclr": begin
                        sram_reg.compare_rw_mask = 32'h0000_0001; // 1 as check, 0 as ignore
                    end
                endcase
                // start checker                                         
                print_banner(sram_reg.name);
                $display("[ti] address         = 0x%h", sram_reg.register.get_address());
                $display("[ti] compare_rw_mask = 0x%h", sram_reg.compare_rw_mask);
                $display("[ti] compare_ro_mask = 0x%h", sram_reg.compare_ro_mask);
                $display("[ti] compare_wo_mask = 0x%h", sram_reg.compare_wo_mask);
                sram_reg.check_field_rw();
                sram_reg.check_field_ro();
                sram_reg.check_field_wo();
                sram_reg.check_reg_ro();
                sram_reg.check_reg_wo();
            end
        end

        // -----------------------------------------------------------|
        // Check invalid access                                       |
        // -----------------------------------------------------------|
        if ($test$plusargs("INVALID_ACCESS")) begin
            check_access_invalid_addr();
        end
    endtask 

    task check_access_invalid_addr();
        logic [31:0]  end_addr;
        logic [31:0]  sta_addr;
        logic [31:0]  final_addr;
        logic [31:0]  address;
        uvm_reg_item  rw;
        uvm_reg       regs[$];

        sram_reg_model.get_registers(regs);
        sta_addr = regs[0].get_address();
        end_addr = regs[$].get_address();

        case (sta_addr-end_addr) inside
            [32'h0  :32'hff]:   final_addr = 32'hff;
            [32'hff :32'hfff]:  final_addr = 32'hfff;
            [32'hfff:32'hffff]: final_addr = 32'hffff;
            default: final_addr = 32'hffff;
        endcase

        address = $urandom_range(end_addr, final_addr);
        address = regs[0].get_address() + address;

        // User define
        //
        // write to invalid 'address'
        // check respond as UVM_NOT_OK
        // check read data == 32'h0

    endtask 

    function void print_banner(string mess);
        int len_str = mess.len();
        $display("+------------------------------------------------------+");
        $write("| %s", mess);
        for (int i=0; i< 53-len_str; i++) begin
            $write(" ");
        end
        $write("|\n");
        $display("+------------------------------------------------------+");
    endfunction
endclass


`endif
