interface apb_if #(ADDR_WIDTH=32, DATA_WIDTH=32)(
    input pclk,    //InputClock signal for the bus.
    input presetn
);
    logic [ADDR_WIDTH-1:0]  paddr   ; 
    logic                   psel    ; 
    logic                   penable ; 
    logic                   pwrite  ; 
    logic [DATA_WIDTH-1:0]  pwdata  ; 
    logic [DATA_WIDTH-1:0]  prdata  ; 
    logic                   pready  ; 
    logic                   pslverr ; 
endinterface

class apb_transaction_c #(ADDR_WIDTH=32, DATA_WIDTH=32);
    logic [ADDR_WIDTH-1:0]  paddr   ; 
    logic                   psel    ; 
    logic                   penable ; 
    logic                   pwrite  ; 
    logic [DATA_WIDTH-1:0]  pwdata  ; 
    logic [DATA_WIDTH-1:0]  prdata  ; 
    logic                   pready  ; 
    logic                   pslverr ; 

    function new(virtual apb_if#(ADDR_WIDTH, DATA_WIDTH) ivif);
        paddr   = ivif.paddr  ; 
        psel    = ivif.psel   ; 
        penable = ivif.penable; 
        pwrite  = ivif.pwrite ; 
        pwdata  = ivif.pwdata ; 
        prdata  = ivif.prdata ; 
        pready  = ivif.pready ; 
        pslverr = ivif.pslverr; 
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

class apb_monitor_c #(ADDR_WIDTH=32, DATA_WIDTH=32);
    typedef virtual apb_if#(ADDR_WIDTH, DATA_WIDTH) apb_if_t;
    apb_if_t vif;

    apb_transaction_c#(ADDR_WIDTH, DATA_WIDTH) trans;

    function new(apb_if_t ivif);
        this.vif = ivif;
    endfunction

    task start();
        $display("@ %0t [tian] apb_monitor_c start", $time);
        forever apb_monitor();
    endtask

    task apb_monitor();
        wait(vif.presetn === 1'b1);
        @(posedge vif.pclk);
        if (vif.penable & vif.psel & vif.pready & vif.pwrite) begin
            trans = new(vif);
            trans.report_write();
        end
        else if (vif.penable & vif.psel & vif.pready & !vif.pwrite) begin
            trans = new(vif);
            trans.report_read();
        end
    endtask

endclass
