typedef enum logic [2:0] {
     AHB_SINGLE = 3'b000, //Single transfer burst
     AHB_INCR   = 3'b001, //Incrementing burst of undefined length
     AHB_WRAP4  = 3'b010, //4-beat wrapping burst
     AHB_INCR4  = 3'b011, //4-beat incrementing burst
     AHB_WRAP8  = 3'b100, //8-beat wrapping burst
     AHB_INCR8  = 3'b101, //8-beat incrementing burst
     AHB_WRAP16 = 3'b110, //16-beat wrapping burst
     AHB_INCR16 = 3'b111  //16-beat incrementing burst
} ahb_burst_t;

typedef enum logic [2:0] {
    AHB_BYTE     = 3'b000,
    AHB_HAFTWORD = 3'b001,
    AHB_WORD     = 3'b010,
    AHB_DWORD    = 3'b011,
    AHB_4WORD    = 3'b100,
    AHB_8WORD    = 3'b101
} ahb_size_t;

typedef enum logic [1:0] {
    AHB_IDLE   = 2'b00,
    AHB_BUSY   = 2'b01,
    AHB_NONSEQ = 2'b10,
    AHB_SEQ    = 2'b11,
} ahb_trans;

interface ahb_if #(ADDR_WIDTH=32, DATA_WIDTH=32)(
    input hclk,
    input hresetn,
);
    logic [ADDR_WIDTH-1:0] haddr    ,
    logic                  htrans   ,
    logic                  hwrite   ,
    logic                  hsize    ,
    logic                  hburst   ,
    logic                  hprot    ,
    logic [DATA_WIDTH-1:0] hwdata   ,
    logic                  hmaster  ,
    logic                  hmastlock,
    logic                  hbusreq  ,
    logic                  hlock    ,
    logic [DATA_WIDTH-1:0] hrdata   ,
    logic                  hready   ,
    logic                  hresp    ,
endinterface

class ahb_transaction_c #(ADDR_WIDTH=32, DATA_WIDTH=32);
    logic [ADDR_WIDTH-1:0] haddr    ,
    logic                  htrans   ,
    logic                  hwrite   ,
    logic                  hsize    ,
    logic                  hburst   ,
    logic                  hprot    ,
    logic [DATA_WIDTH-1:0] hwdata   ,
    logic                  hmaster  ,
    logic                  hmastlock,
    logic                  hbusreq  ,
    logic                  hlock    ,
    logic [DATA_WIDTH-1:0] hrdata   ,
    logic                  hready   ,
    logic                  hresp    ,

    function new(virtual ahb_if#(ADDR_WIDTH, DATA_WIDTH) ivif);
        haddr     = ivif.haddr    ; 
        htrans    = ivif.htrans   ; 
        hwrite    = ivif.hwrite   ; 
        hsize     = ivif.hsize    ; 
        hburst    = ivif.hburst   ; 
        hprot     = ivif.hprot    ; 
        hwdata    = ivif.hwdata   ; 
        hmaster   = ivif.hmaster  ; 
        hmastlock = ivif.hmastlock; 
        hbusreq   = ivif.hbusreq  ; 
        hlock     = ivif.hlock    ; 
        hrdata    = ivif.hrdata   ; 
        hready    = ivif.hready   ; 
        hresp     = ivif.hresp    ; 
    endfunction


    function void report_write_command();
    endfunction


    function void report_write();
        $display("@ %0t APB WRITE  paddr=0x%08h pwdata=0x%08h",
            $time,
            paddr,
            pwdata
        );
        if (pslverr != 0) begin
            $error("Has the error when write: pslverr is not 0");
        end
    endfunction

    function void report_read();
        $display("@ %0t APB READ   paddr=0x%08h prdata=0x%08h",
            $time,
            paddr,
            prdata
        );
        if (pslverr != 0) begin
            $error("Has the error when read: pslverr is not 0");
        end
    endfunction

endclass 

class ahb_monitor_c #(ADDR_WIDTH=32, DATA_WIDTH=32);
    typedef virtual ahb_if#(ADDR_WIDTH, DATA_WIDTH) ahb_if_t;
    ahb_if_t vif;

    ahb_transaction_c#(ADDR_WIDTH, DATA_WIDTH) trans_commands[$];
    ahb_transaction_c#(ADDR_WIDTH, DATA_WIDTH) trans[$];

    function new(ahb_if_t ivif);
        this.vif = ivif;
    endfunction

    task start();
        $display("@ %0t [tian] ahb_monitor_c start", $time);
        forever ahb_monitor();
    endtask

    task ahb_monitor();
        wait(vif.hresetn === 1'b1);
        @(posedge vif.hclk);
        if (vif.htrans == AHB_NONSEQ || vif.htrans == AHB_SEQ) begin

        end
    endtask

endclass
