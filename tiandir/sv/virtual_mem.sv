typedef bit   [31:0] addr_t;
typedef logic [7 :0] byte_t;
typedef logic [15:0] hword_t;
typedef logic [31:0] word_t;

// virtual_memory_c
//
// virtual memory follow by LITTLE_ENDIAN
// 1 address: 8 bit data
class virtual_memory_c;
    //         addr      data
    uvm_pool #(addr_t,   byte_t) memory;

    function new(string name = "");
        memory = new("memory");
    endfunction

    function void clear();
        memory = null;
        memory = new("memory");
    endfunction

    function void write_byte(addr_t iaddr, byte_t iwdata);
        memory.add(iaddr, iwdata);
        $display("[VMEM] WRITE BYTE addr = 0x%h, data = 0x%02h", iaddr, iwdata);
    endfunction

    function void write_hword(addr_t iaddr, hword_t iwdata);
        if (iaddr%2 != 0) begin
            `uvm_error("VMEM", $psprintf("[VMEM] WRITE HWORD address=%h need to be aligned by 0x2", iaddr))
        end
        for (int i=0; i<2; i++) begin
            memory.add(iaddr+i, (iwdata<<i)&8'hff);
        end
        $display("[VMEM] WRITE HWORD addr = 0x%h, data = 0x%04h", iaddr, iwdata);
    endfunction

    function void write_word(addr_t iaddr, word_t iwdata);
        if (iaddr%4 != 0) begin
            `uvm_error("VMEM", $psprintf("[VMEM] WRITE WORD address=%h need to be aligned by 0x4", iaddr))
        end
        for (int i=0; i<4; i++) begin
            memory.add(iaddr+i, (iwdata<<i)&8'hff);
        end
        $display("[VMEM] WRITE WORD addr = 0x%h, data = 0x%08h", iaddr, iwdata);
    endfunction

    function void read_byte(addr_t iaddr, output byte_t ordata);
        if (!memory.exists(iaddr)) begin 
            `uvm_error("VMEM", $psprintf("[VMEM] addr = 0x%08h have not written yet", iaddr));
            return;
        end
        ordata = memory.get(iaddr);

        $display("[VMEM] READ_BYTE addr = %h, data =%02h", iaddr, ordata);
    endfunction

    function void read_hword(addr_t iaddr, output hword_t ordata);
        ordata = 0;
        if (iaddr%2 != 0) begin
            `uvm_error("VMEM", $psprintf("[VMEM] WRITE HWORD address=%h need to be aligned by 0x2", iaddr))
        end
        if (!memory.exists(iaddr)) begin 
            `uvm_error("VMEM", $psprintf("[VMEM] addr = 0x%08h have not written yet", iaddr));
            return;
        end
        for (int i=0; i<2; i++) begin
            ordata |= memory.get(iaddr+i) << 8*i;
        end
        $display("[VMEM] READ_HWORD addr = 0x%h, data = 0x%04h", iaddr, ordata);
    endfunction

    function void read_word(addr_t iaddr, output word_t ordata);
        ordata = 0;
        if (iaddr%4 != 0) begin
            `uvm_error("VMEM", $psprintf("[VMEM] WRITE WORD address=%h need to be aligned by 0x4", iaddr))
        end
        if (!memory.exists(iaddr)) begin 
            `uvm_error("VMEM", $psprintf("[VMEM] addr = 0x%08h have not written yet", iaddr));
            return;
        end
        for (int i=0; i<4; i++) begin
            ordata |= memory.get(iaddr+i) << 8*i;
        end
        $display("[VMEM] READ_WORD addr = 0x%h, data = 0x%08h", iaddr, ordata);
    endfunction
endclass


// -----------------------------------------------------------------------------|
// Example                                                                      |
// -----------------------------------------------------------------------------|
class sram_fake_mem_vseq_c extends soc_test_vseq_c;
    virtual_memory_c vmem;

    `uvm_object_utils(sram_fake_mem_vseq_c)

    function new(string name = "sram_fake_mem_vseq_c");
        super.new(name);
        vmem = new("vmem");
    endfunction

    task body();
        addr_t address;
        word_t rdata;
        byte_t rdata8;
        byte_t wdata8;


        repeat (100) begin
            address = $random;
            wdata8  = $random;
            vmem.write_byte(address, wdata8);
            vmem.read_byte(address, rdata8);
        end

//         vmem.write_byte(32'hffff_fff0, 8'h78);
//         vmem.write_byte(32'hffff_fff1, 8'h56);
//         vmem.write_byte(32'hffff_fff2, 8'h34);
//         vmem.write_byte(32'hffff_fff3, 8'h12);
// 
//         vmem.read_hword(32'hffff_fff0, rdata);
//         vmem.read_hword(32'hffff_fff1, rdata);
//         vmem.read_hword(32'hffff_fff2, rdata);
// 
//         vmem.read_word(32'hffff_fff0, rdata);
//         vmem.read_word(32'hffff_fff1, rdata);
//         vmem.read_word(32'hffff_ffe0, rdata);

    endtask
endclass

