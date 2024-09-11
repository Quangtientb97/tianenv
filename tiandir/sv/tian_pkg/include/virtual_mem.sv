// -----------------------------------------------------------------------------+
// virtual_memory_c                                                             |
// -----------------------------------------------------------------------------+
//
// virtual memory follow by LITTLE_ENDIAN
// 1 address: 8 bit data
// Summary method
//      vmem.clear
//
//      vmem.read8
//      vmem.read16
//      vmem.read32
//
//      vmem.write8
//      vmem.write16
//      vmem.write32
//
//      vmem.write8_burst
//      vmem.write16_burst
//      vmem.write32_burst
//
//      vmem.read8_burst
//      vmem.read16_burst
//      vmem.read32_burst

typedef logic[31:0] addr_t;
typedef logic[7:0]  byte_t; 
typedef logic[15:0] hword_t;
typedef logic[31:0] word_t;

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

    function void write8(addr_t iaddr, byte_t iwdata);
        memory.add(iaddr, iwdata);
        $display("[VMEM] WRITE_BYTE addr = 0x%h, data = 0x%02h", iaddr, iwdata);
    endfunction

    function void write16(addr_t iaddr, hword_t iwdata);
        if (iaddr%2 != 0) begin
            `uvm_error("VMEM", $psprintf("[VMEM] WRITE_HWORD address=%h need to be aligned by 0x2", iaddr))
        end
        for (int i=0; i<2; i++) begin
            memory.add(iaddr+i, (iwdata>>8*i)&8'hff);
        end
        $display("[VMEM] WRITE_HWORD addr = 0x%h, data = 0x%04h", iaddr, iwdata);
    endfunction

    function void write32(addr_t iaddr, word_t iwdata);
        if (iaddr%4 != 0) begin
            `uvm_error("VMEM", $psprintf("[VMEM] WRITE_WORD address=%h need to be aligned by 0x4", iaddr))
        end
        for (int i=0; i<4; i++) begin
            memory.add(iaddr+i, (iwdata>>8*i)&8'hff);
        end
        $display("[VMEM] WRITE_WORD addr = 0x%h, data = 0x%08h", iaddr, iwdata);
    endfunction

    function byte_t read8(addr_t iaddr, bit is_print=1);
        if (!memory.exists(iaddr)) begin 
            $display("[VMEM] addr = 0x%08h have not written by vmem yet", iaddr);
            return 0;
        end
        if (is_print) begin
            $display("[VMEM] READ_BYTE addr = %h, data =%02h", iaddr, memory.get(iaddr));
        end
        return memory.get(iaddr);
    endfunction

    function hword_t read16(addr_t iaddr);
        hword_t ordata = 0;
        if (iaddr%2 != 0) begin
            `uvm_error("VMEM", $psprintf("[VMEM] READ_HWORD address=%h need to be aligned by 0x2", iaddr))
        end
        for (int i=0; i<2; i++) begin
            ordata |= read8(iaddr+i, 0) << 8*i;
        end
        $display("[VMEM] READ_HWORD addr = 0x%h, data = 0x%04h", iaddr, ordata);
        return ordata;
    endfunction

    function word_t read32(addr_t iaddr);
        word_t ordata = 0;
        if (iaddr%4 != 0) begin
            `uvm_error("VMEM", $psprintf("[VMEM] READ_WORD address=%h need to be aligned by 0x4", iaddr))
        end
        for (int i=0; i<4; i++) begin
            ordata |= read8(iaddr+i, 0) << 8*i;
        end
        $display("[VMEM] READ_WORD addr = 0x%h, data = 0x%08h", iaddr, ordata);
        return ordata;
    endfunction

    function void write8_burst(addr_t iaddr, byte_t iwdata[]);
        foreach (iwdata[i]) begin
            memory.add(iaddr+i, iwdata[i]);
        end
    endfunction

    function void write16_burst(addr_t iaddr, hword_t iwdata[]);
        foreach (iwdata[i]) begin
            write16(iaddr+i*2, iwdata[i]);
        end
    endfunction

    function void write32_burst(addr_t iaddr, word_t iwdata[]);
        foreach (iwdata[i]) begin
            write32(iaddr+i*4, iwdata[i]);
        end
    endfunction

    function void read8_burst(addr_t iaddr, ref byte_t rdata[]);
        foreach (rdata[i]) begin
            rdata[i] = read8(iaddr+i);
        end
    endfunction

    function void read16_burst(addr_t iaddr, ref hword_t rdata[]);
        foreach (rdata[i]) begin
            rdata[i] = read16(iaddr+i*2);
        end
    endfunction

    function void read32_burst(addr_t iaddr, ref word_t rdata[]);
        foreach (rdata[i]) begin
            rdata[i] = read32(iaddr+i*4);
        end
    endfunction

endclass
