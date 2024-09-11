module ahb_mem (
    input  logic               HCLK,      // AHB clock
    input  logic               HRESETn,   // Active low asynchronous reset
    input  logic               HSEL,      // AHB select signal
    input  logic [31:0]        HADDR,     // AHB address bus
    input  logic [2:0]         HTRANS,    // AHB transfer type
    input  logic [1:0]         HSIZE,     // AHB transfer size
    input  logic               HWRITE,    // AHB write enable
    input  logic [31:0]        HWDATA,    // AHB write data bus
    output logic [31:0]        HRDATA     // AHB read data bus
);

    // Define memory parameters
    parameter MEM_DEPTH = 1024; // Depth of memory (number of words)
    parameter MEM_WIDTH = 32;   // Width of memory (number of bits per word)

    // Internal memory array
    logic [MEM_WIDTH-1:0] memory [0:MEM_DEPTH-1];

    // Registers for address and data storage
    logic [31:0] addr_reg;
    logic [31:0] data_reg;

    // Synchronous memory read and write operations
    always_ff @(posedge HCLK or negedge HRESETn) begin
        if (!HRESETn) begin
            addr_reg <= 0;
            data_reg <= 0;
        end
        else begin
            if (HSEL && (HTRANS == 2'b10 || HTRANS == 2'b11)) begin // If AHB transfer is non-sequential or sequential            
                addr_reg <= HADDR;
                if (HWRITE) begin // If write operation
                    memory[HADDR] <= HWDATA;
                end
                else begin // If read operation
                    data_reg <= memory[HADDR];
                end
            end
        end
    end

    // Output read data
    assign HRDATA = data_reg;

endmodule
