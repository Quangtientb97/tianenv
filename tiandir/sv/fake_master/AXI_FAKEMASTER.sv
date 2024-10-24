module	AXI_FAKEMASTER(
    aresetn,
    aclk,
    aclken,

    // AMBA AXI
    // write Address Channel
    awvalid,	awready,
    awaddr,		awsize,
    awlen,		awburst,
    awlock,		awcache,
    awprot,		

    // write Data Channel
    wvalid,		wready,
    wdata,		wstrb,
    wlast,

    // write response channel
    bready,		bvalid,
    bresp,

    // read address channel
    araddr,	    // read address
    arlen,	    // read data transfers length
    arsize,	    // read byte in transfer size
    arburst,	// read burst type
    arlock,
    arvalid,	// read address valid
    arready,	// read slave ready(address)
    arcache,
    arprot,

    // read data channel
    rdata,	// Read Data
    rresp,	// 'b00 : OKAY
    rlast,	// read data last
    rvalid,	// read data valid
    rready,	// read response ready        	
);
    parameter ADDRWIDTH  = 32;
    parameter BUSWIDTH   = 64;
    parameter LENWIDTH   = 4;
    localparam STRBWIDTH = (BUSWIDTH/8);

    // System
    input                           aresetn, aclk, aclken;
    // AMBA AXI
    // write Address Channel
    input                           awready;
    output reg                      awvalid;
    output reg 	[ADDRWIDTH-1: 0]    awaddr;
    output reg 	[ 2: 0]             awsize;        // write byte in transfers size(8bit ~ 128*8bit)
    output reg 	[LENWIDTH-1: 0]     awlen;         // write data transfers length(1~16)
    output reg 	[ 1: 0]             awburst;       // write burst type(FIXED, INCR, WRAP)
    output reg 	[ 0: 0]             awlock;        // nomal access, exclusive access, lock access
    output reg 	[ 3: 0]             awcache;
    output reg	[ 2: 0]             awprot;
    // write Data Channel
    input			                wready;
    output reg 			            wvalid;
    output reg 	[BUSWIDTH-1: 0]	    wdata;	// write data
    output reg 	[STRBWIDTH-1: 0]    wstrb;	// write byte enable
    output reg 			            wlast;	// 
    // write response channel
    output reg 			            bready;
    input			                bvalid;
    input	[ 1: 0]	                bresp;
    // read address channel
    output reg 	[ADDRWIDTH-1: 0]	araddr;	// read address
    output reg 	[LENWIDTH-1: 0]     arlen;	// read data transfers length
    output reg 	[ 2: 0]             arsize;	// read byte in transfer size
    output reg 	[ 1: 0]             arburst;	// read burst type
    output reg 	[ 0: 0]             arlock;	// ??
    output reg 			            arvalid;	// read address valid
    input			                arready;	// read slave ready(address)
    output reg	[ 3: 0]             arcache;
    output reg	[ 2: 0]             arprot;
    // read data channel
    input	[BUSWIDTH-1: 0]	        rdata;	// Read Data
    input	[ 1: 0]	                rresp;	// 'b00 : OKAY
    input			                rlast;	// read data last
    input			                rvalid;	// read data valid
    output reg 			            rready;	// read response ready	

    /////////////////////////////////////////////////////////
    // SYNTHESIS 일때는 output 에 다 0을 넣어준다. 
    /////////////////////////////////////////////////////////
    `ifdef SYNTHESIS
    assign awvalid = 0;
    assign awaddr  = 0;
    assign awsize  = 0;
    assign awlen   = 0;
    assign awburst = 0;
    assign awlock  = 0;
    assign awcache = 0;
    assign awprot  = 0;
    assign wvalid  = 0;
    assign wdata   = 0;
    assign wstrb   = 0;
    assign wlast   = 0;
    assign bready  = 0;
    assign araddr  = 0;
    assign arlen   = 0;
    assign arsize  = 0;
    assign arburst = 0;
    assign arlock  = 0;
    assign arvalid = 0;
    assign arcache = 0;
    assign arprot  = 0;
    assign rready  = 0;
    `else 
    //@addeed choiyk 2012-12-29 오후 7:43:10 
    reg In_Read_Task;
    reg In_Write_Task;
    reg [31:0] Current_Count;	
    parameter MAX_COUNT = 3000;
    parameter WAIT_COUNT = 4;

    initial
    begin
        awvalid                   = 0;
        awaddr                    = 0;
        awsize                    = 0;
        awlen                     = 0;
        awburst                   = 0;
        awlock                    = 0;
        awcache                   = 0;
        awprot                    = 0;
        // write Data Channel
        wvalid                    = 0;
        wdata                     = 0;
        wstrb                     = 0;
        wlast                     = 0;
        // write response channel
        bready                    = 0;
        // read address channel
        araddr                    = 0;	// read address
        arlen                     = 0;	// read data transfers length
        arsize                    = 0;	// read byte in transfer size
        arburst                   = 0;	// read burst type
        arlock                    = 0;
        arvalid                   = 0; // read address valid
        arcache                   = 0;
        arprot                    = 0;
        // read data channel
        rready                    = 0;	// read response ready
        Current_Count             = 0;
    end

    // @modified sei - for remove delta delay glitch
    wire aclk;
    reg aclken_latch;

    // clock enable latch
    always @ ( * )
    begin
        if( ~aclk ) aclken_latch = aclken;
    end

    // gated clock
    assign aclk = aclk & aclken_latch;

    initial	begin	bready = 1;	end	

    task MEMWRITE; // AXI WRITE 
        input	[31: 0] addr;
        input	[31: 0] data;
        input	[ 2: 0] size; // 0:1byte, 1:2byte, 2:4byte, 3:8byte..
        input	[ 3: 0] prot;
        input	[ 4: 0] cache;
        begin : MEMWRITE_Task		
            integer data_size;
            data_size = (1 << size) * 8;
            if( data_size > BUSWIDTH )
            begin
                //`DISPLAY_DEBUG("[Error WRONG USE] MEMWRITE size is bigger than BFM Bus Width.. !!");
                $finish;
            end

            @(posedge aclk);	
            #(0.1);
            awaddr        = addr;
            awsize        = size;
            awlen         = 0; // 1 single
            awburst       = 1; // incr
            awlock        = 0; // normal
            awvalid       = 1;
            awprot        = prot;
            awcache       = cache;
            Current_Count = 0;
            @(posedge aclk);
            while(!awready)
            begin
                @(posedge aclk);
                Current_Count=Current_Count+1;
                if( 0 == Current_Count % MAX_COUNT )
                begin
                    $display("[DEBUG] %t : Write(addr:%h, data:%h) Wait while(awready == 1'b0) but Current Count : %d(%m)", $time, addr, data, Current_Count);
                    if( WAIT_COUNT <= (Current_Count / MAX_COUNT) )
                        $finish;
                end
            end
            #(0.1);
            awaddr  = 0;
            awsize  = 0; // 32 bit
            awlen   = 0; // 1 single
            awburst = 0; // fixed
            awlock  = 0; // normal
            awvalid = 0;
            awprot  = prot;
            awcache = cache;

            wdata = wdata | (data << ( (addr % (BUSWIDTH/8)) * 8 ));	

            case(data_size)
                8  :	wstrb = 'b1;
                16 :	wstrb = 'b11;
                32 :	wstrb = 'hf;
                64 :	wstrb = 'hff;

                128:	wstrb = 'hffff;
                256:	wstrb = 'hffffffff;
                512:	wstrb = {512{1'b0}};	//'hffffffffffffffff;
                1024:	wstrb = {1024{1'b0}};	//'hffffffffffffffffffffffffffffffff;
                default:
                    begin
                        //`DISPLAY_DEBUG("[Error].. (data_size is wrong..)"); 
                        $finish;
                    end
            endcase

            wstrb = wstrb << ( (addr % (BUSWIDTH/8)) );	

            wlast         = 1;
            wvalid        = 1;
            Current_Count = 0;
            @(posedge aclk);	
            while(!wready)
            begin
                @(posedge aclk);
                Current_Count=Current_Count+1;
                if( 0 == Current_Count % MAX_COUNT )
                begin
                    $display("[DEBUG] %t : Write(addr:%h, data:%h) Wait while(wready == 1'b0) but Current Count : %d(%m)", $time, addr, data, Current_Count);
                    if( WAIT_COUNT <= (Current_Count / MAX_COUNT) )
                        $finish;
                end
            end
            #(0.1);
            wdata  = 0;
            wstrb  = 0;
            wlast  = 0;
            wvalid = 0;

            // Write Response
            //#0.1;
            bready = 1;
            Current_Count=0;
            //@(posedge aclken);@(posedge aclk);
            @(posedge aclk);	
            while(!(aclken&bvalid))
            begin
                @(posedge aclk);	
                Current_Count=Current_Count+1;
                if( 0 == Current_Count % MAX_COUNT )
                begin
                    $display("[DEBUG] %t : Write Response(addr:%h, data:%h) Wait while(bvalid == 1'b0) but Current Count : %d(%m)", $time, addr, data, Current_Count);
                    if( WAIT_COUNT <= (Current_Count / MAX_COUNT) )	
                        $finish;
                end
            end

        end
        endtask	

        task MEMREAD; // AXI READ
            input	[31: 0] addr;
            output	[31: 0] data;
            input	[2:0] size;
            input	[3:0] prot;
            input	[4:0] cache;		
            begin : MEMREAD_Task
                reg	[BUSWIDTH-1: 0]	read_data;	// Read Data
                integer data_size;
                integer shift_right, shift_left;
                data = 'h0;
                //check data_size
                data_size = (1 << size) * 8;
                if( data_size > BUSWIDTH )
                begin
                    //`DISPLAY_DEBUG("[Error WRONG USE] MEMWRITE size is bigger than BFM Bus Width.. !!");
                    $finish;
                end
                @(posedge aclk);

                // Read Address
                #(0.1);
                araddr  = addr;
                arsize  = size;
                arlen   = 0; // 1 single
                arburst = 1; // incr
                arlock  = 0; // normal
                arvalid = 1;
                arprot  = prot;
                arcache = cache;

                Current_Count=0;	
                @(posedge aclk);
                while(!arready)
                begin
                    @(posedge aclk);
                    Current_Count=Current_Count+1;
                    if( 0 == Current_Count % MAX_COUNT )
                    begin
                        $display("[DEBUG] %t : Read(addr:%h) Wait while(arready == 1'b0) but Current Count : %d(%m)", $time, addr, Current_Count);
                        if( WAIT_COUNT <= (Current_Count / MAX_COUNT) )	
                            $finish;
                    end
                end
                // Read Address 초기화
                //#0.1;
                #(0.1);
                araddr  = 0;
                arsize  = 0; // 32 bit
                arlen   = 0; // 1 single
                arburst = 0; // fixed
                arlock  = 0; // normal
                arvalid = 0;
                arprot  = prot;
                arcache = cache;


                // Read Data
                //#0.1;
                rready = 1;
                //@(posedge aclken);@(posedge aclk);
                read_data     = rdata;
                shift_right   = (addr % (BUSWIDTH/8));
                shift_left    = (BUSWIDTH/8) - shift_right - (data_size/8);
                read_data     = read_data << ( shift_left * 8 );
                read_data     = read_data >> ( shift_left * 8 ); 
                read_data     = read_data >> ( shift_right * 8 ); 
                Current_Count = 0;

                while(rvalid == 1'b0)
                begin
                    @(posedge aclk );
                    read_data = rdata;
                    read_data = read_data << ( shift_left * 8 );
                    read_data = read_data >> ( shift_left * 8 ); 
                    read_data = read_data >> ( shift_right * 8 ); 
                    Current_Count=Current_Count+1;
                    if( 0 == Current_Count % MAX_COUNT )
                    begin
                        $display("[DEBUG] Read(addr:%h) Wait while(rvalid == 1'b0) but Current Count : %d(%m)", addr, Current_Count);
                        if( WAIT_COUNT <= (Current_Count / MAX_COUNT) )	
                            $finish;
                    end
                end
                data = read_data[31:0];
            end
        endtask

        `endif // `ifdef SYNTHESIS
        /////////////////////////////////////////////////////////
        // END. SYNTHESIS
        /////////////////////////////////////////////////////////
endmodule
