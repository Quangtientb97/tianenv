typedef enum logic [1:0] {
    FIXED, INCR, WRAP
} axi_burst_t;

typedef enum logic [1:0] {
    OKAY, EXOKAY, SLVERR, DECERR
} axi_resp_t;

typedef enum logic [3:0] {
    BUFFERABLE     = 4'b0001,
    CACHEABLE      = 4'b0010,
    READ_ALLOCATE  = 4'b0100,
    WRITE_ALLOCATE = 4'b1000
} axi_cache_attr_t;

typedef enum logic [2:0] {
    PRIVILEGED  = 3'b001,
    NON_SECURE  = 3'b010,
    INSTRUCTION = 3'b100
} axi_prot_t;

typedef enum logic [1:0] {
    NORMAL, EXCLUSIVE, LOCKED
} axi_lock_t;

interface axi_if #(ID_WIDTH=4, ADDR_WIDTH=32, DATA_WIDTH=32) (
    input logic aclk, areset_n
);
    localparam integer STRB_WIDTH = DATA_WIDTH / 8;

    // write address channel signals
    logic [ID_WIDTH-1    : 0] awid;
    logic [ADDR_WIDTH-1  : 0] awaddr;
    logic [3             : 0] awlen;
    logic [2             : 0] awsize;
    axi_burst_t               awburst;
    axi_lock_t                awlock;
    axi_cache_attr_t          awcache;
    axi_prot_t                awprot;
    logic                     awvalid;
    logic                     awready;

    // write data channel signals
    logic [ID_WIDTH - 1:0]   wid    ;
    logic [DATA_WIDTH - 1:0] wdata  ;
    logic [STRB_WIDTH - 1:0] wstrb  ;
    logic                    wlast  ;
    logic                    wvalid ;
    logic                    wready ;

    // write response channel signals
    logic [ID_WIDTH - 1:0]  bid;
    axi_resp_t              bresp;
    logic                   bvalid;
    logic                   bready;

    // read address channel signals
    logic [ID_WIDTH - 1:0]   arid;
    logic [ADDR_WIDTH - 1:0] araddr;
    logic [            3:0]  arlen;
    logic [            2:0]  arsize;
    axi_burst_t              arburst;
    axi_lock_t               arlock;
    axi_cache_attr_t         arcache;
    axi_prot_t               arprot;
    logic                    arvalid;
    logic                    arready;

    // read data channel signals
    logic [ID_WIDTH - 1:0]   rid    ;
    logic [DATA_WIDTH - 1:0] rdata  ;
    axi_resp_t               rresp  ;
    logic                    rlast  ;
    logic                    rvalid ;
    logic                    rready ;
endinterface

class axi_transaction_c #(ID_WIDTH=4, ADDR_WIDTH=32, DATA_WIDTH=32);
    localparam integer STRB_WIDTH = DATA_WIDTH / 8;

    // matched addr
    logic [ADDR_WIDTH-1  : 0] addr;

    logic [ID_WIDTH-1    : 0] awid;
    logic [ADDR_WIDTH-1  : 0] awaddr;
    logic [            3 : 0] awlen;
    logic [            2 : 0] awsize;
    axi_burst_t               awburst;
    axi_lock_t                awlock;
    axi_cache_attr_t          awcache;
    axi_prot_t                awprot;
    logic                     awvalid;
    logic                     awready;

    // write data channel signals
    logic [ID_WIDTH - 1:0]   wid;
    logic [DATA_WIDTH - 1:0] wdata;
    logic [STRB_WIDTH - 1:0] wstrb;
    logic                    wlast;
    logic                    wvalid;
    logic                    wready;

    // write response channel signals
    logic [ID_WIDTH - 1:0]  bid;
    axi_resp_t              bresp;
    logic                   bvalid;
    logic                   bready;

    // read address channel signals
    logic [ID_WIDTH - 1:0]   arid;
    logic [ADDR_WIDTH - 1:0] araddr;
    logic [            3:0]  arlen;
    logic [            2:0]  arsize;
    axi_burst_t              arburst;
    axi_lock_t               arlock;
    axi_cache_attr_t         arcache;
    axi_prot_t               arprot;
    logic                    arvalid;
    logic                    arready;

    // read data channel signals
    logic [ID_WIDTH - 1:0]   rid;
    logic [DATA_WIDTH - 1:0] rdata;
    axi_resp_t               rresp;
    logic                    rlast;
    logic                    rvalid;
    logic                    rready;

    function void report_wcmd_phase();
        $display("\n@ %0t AXI_COMMAND WRITE awid=0x%02h awaddr=0x%08h awlen=0x%0h awsize=0x%0h awburst=%0s awlock=%0s awprot=%0s awcache=%0s", 
            $time,
            awid   ,
            awaddr ,
            awlen  ,
            awsize ,
            awburst.name,
            awlock.name ,
            awprot.name ,
            get_cache_type(awcache),
        );
    endfunction

    function void report_rcmd_phase();
        $display("\n@ %0t AXI_COMMAND READ  arid=0x%02h araddr=0x%08h arlen=0x%0h arsize=0x%0h arburst=%0s arlock=%0s arprot=%0s arcache=%0s",
            $time,
            arid    ,
            araddr  ,
            arlen   ,
            arsize  ,
            arburst.name ,
            arlock.name  ,
            arprot.name  ,
            get_cache_type(arcache),
        );
    endfunction

    function void report_read_phase(logic [ADDR_WIDTH-1:0] addr);
        string str_data = "";

        for (int i=DATA_WIDTH/32-1; i >= 0; i--) begin
            str_data = {$sformatf("0x%08h ", (rdata>>32*i)&32'hffff_ffff), str_data};
        end

        $display("@ %0t AXI READ  rid=0x%02h addr=0x%08h rdata=%s rresp=0x%h rlast=0x%h",
            $time,
            rid   ,
            addr  ,
            str_data ,
            rresp ,
            rlast ,
        );
        if (rresp != 2'b00) begin
            $error("Axi read respond Error");
        end
    endfunction

    function void report_write_phase(logic [ADDR_WIDTH-1:0] addr);
        string str_data = "";

        for (int i=DATA_WIDTH/32-1; i >= 0; i--) begin
            str_data = {$sformatf("0x%08h ", (wdata>>32*i)&32'hffff_ffff), str_data};
        end

        $display("@ %0t AXI WRITE  wid=0x%02h addr=0x%08h wdata=%s wstrb=0x%h wlast=0x%h",
            $time,
            wid  ,
            addr ,
            str_data,
            wstrb,
            wlast,
        );
    endfunction

    function string get_cache_type(logic [3:0] _cache);
        string str_cache = "";
        if (_cache & BUFFERABLE     == BUFFERABLE    ) str_cache = {str_cache, " BUFFERABLE"};
        if (_cache & CACHEABLE      == CACHEABLE     ) str_cache = {str_cache, " CACHEABLE"};
        if (_cache & READ_ALLOCATE  == READ_ALLOCATE ) str_cache = {str_cache, " READ_ALLOCATE"};
        if (_cache & WRITE_ALLOCATE == WRITE_ALLOCATE) str_cache = {str_cache, " WRITE_ALLOCATE"};
        str_cache = {"{", str_cache, " }"};
        return str_cache;
    endfunction
endclass

class axi_monitor_c#(ID_WIDTH=4, ADDR_WIDTH=32, DATA_WIDTH=32);
    localparam integer STRB_WIDTH = DATA_WIDTH / 8;
    typedef virtual axi_if#(ID_WIDTH, ADDR_WIDTH, DATA_WIDTH) axi_if_t;

    axi_if_t vif;
    axi_transaction_c#(ID_WIDTH, ADDR_WIDTH, DATA_WIDTH) trans_write_command[int];
    axi_transaction_c#(ID_WIDTH, ADDR_WIDTH, DATA_WIDTH) trans_read_command[int];
    axi_transaction_c#(ID_WIDTH, ADDR_WIDTH, DATA_WIDTH) trans_write[int];
    axi_transaction_c#(ID_WIDTH, ADDR_WIDTH, DATA_WIDTH) trans_read[int];

    logic [ID_WIDTH-1:0] awid_cur;

    function new(axi_if_t ivif);
        this.vif = ivif;
    endfunction

    task start();
        $display("@ %0t [tian] axi_monitor_c start", $time);
        mnt_write_command();
        mnt_read_command();
        mnt_write();
        mnt_read();
        mnt_bresp();
    endtask

    task mnt_write_command();
        fork
            while(1) begin
                @(posedge vif.aclk);
                if (vif.awvalid & vif.awready) begin
                    trans_write_command[vif.awid] = new();
                    trans_write_command[vif.awid].awid    = vif.awid ;
                    trans_write_command[vif.awid].addr    = vif.awaddr ;
                    trans_write_command[vif.awid].awaddr  = vif.awaddr ;
                    trans_write_command[vif.awid].awlen   = vif.awlen  ;
                    trans_write_command[vif.awid].awsize  = vif.awsize ;
                    trans_write_command[vif.awid].awburst = vif.awburst;
                    trans_write_command[vif.awid].awlock  = vif.awlock ;
                    trans_write_command[vif.awid].awcache = vif.awcache;
                    trans_write_command[vif.awid].awprot  = vif.awprot ;
                    trans_write_command[vif.awid].awvalid = vif.awvalid;
                    trans_write_command[vif.awid].awready = vif.awready;
                    awid_cur = vif.awid;
                    trans_write_command[vif.awid].report_wcmd_phase();
                end
            end
        join_none
    endtask

    task mnt_read_command();
        fork
            while(1) begin
                @(posedge vif.aclk);
                if (vif.arvalid & vif.arready) begin
                    trans_read_command[vif.arid] = new();
                    trans_read_command[vif.arid].arid    = vif.arid    ;
                    trans_read_command[vif.arid].addr    = vif.araddr  ;
                    trans_read_command[vif.arid].araddr  = vif.araddr  ;
                    trans_read_command[vif.arid].arlen   = vif.arlen   ;
                    trans_read_command[vif.arid].arsize  = vif.arsize  ;
                    trans_read_command[vif.arid].arburst = vif.arburst ;
                    trans_read_command[vif.arid].arlock  = vif.arlock  ;
                    trans_read_command[vif.arid].arcache = vif.arcache ;
                    trans_read_command[vif.arid].arprot  = vif.arprot  ;
                    trans_read_command[vif.arid].arvalid = vif.arvalid ;
                    trans_read_command[vif.arid].arready = vif.arready ;
                    trans_read_command[vif.arid].report_rcmd_phase();
                end
            end
        join_none
    endtask

    task mnt_write();
        fork
            while(1) begin
                @(posedge vif.aclk);
                if (vif.wvalid & vif.wready) begin
                    if (^vif.wid === 1'bx) begin // AXI4 dont has wid
                        trans_write[awid_cur]       = new();
                        trans_write[awid_cur].wid   = vif.wid  ;
                        trans_write[awid_cur].wdata = vif.wdata  ;
                        trans_write[awid_cur].wstrb = vif.wstrb  ;
                        trans_write[awid_cur].wlast = vif.wlast  ;
                        trans_write[awid_cur].report_write_phase(trans_write_command[awid_cur].addr);
                        if (trans_write_command[awid_cur].arburst == INCR) begin
                            trans_write_command[awid_cur].addr += DATA_WIDTH/8;
                        end
                    end
                    else begin // AXI3 has wid
                        trans_write[vif.wid]       = new();
                        trans_write[vif.wid].wid   = vif.wid  ;
                        trans_write[vif.wid].wdata = vif.wdata  ;
                        trans_write[vif.wid].wstrb = vif.wstrb  ;
                        trans_write[vif.wid].wlast = vif.wlast  ;
                        trans_write[vif.rid].report_write_phase(trans_write_command[vif.rid].addr);
                        if (trans_write_command[vif.rid].arburst == INCR) begin
                            trans_write_command[vif.rid].addr += DATA_WIDTH/8;
                        end
                    end
                end
            end
        join_none
    endtask

    task mnt_read();
        fork
            while(1) begin
                @(posedge vif.aclk);
                if (vif.rvalid & vif.rready) begin
                    trans_read[vif.rid]        = new();
                    trans_read[vif.rid].rid    = vif.rid   ;
                    trans_read[vif.rid].rdata  = vif.rdata   ;
                    trans_read[vif.rid].rresp  = vif.rresp   ;
                    trans_read[vif.rid].rlast  = vif.rlast   ;
                    trans_read[vif.rid].rvalid = vif.rvalid  ;
                    trans_read[vif.rid].rready = vif.rready  ;
                    trans_read[vif.rid].report_read_phase(trans_read_command[vif.rid].addr);
                    if (trans_read_command[vif.rid].arburst == INCR) begin
                        trans_read_command[vif.rid].addr += DATA_WIDTH/8;
                    end
                end
            end
        join_none
    endtask

    task mnt_bresp();
        fork
            while(1) begin
                @(posedge vif.aclk);
                if (vif.bvalid & vif.bready) begin
                    if (vif.bresp != 0) begin
                        $error("AXI BRESP error");
                        $display("@ %0t bid=0x%h", $time, vif.bid);
                    end
                end
            end
        join_none
    endtask

endclass
