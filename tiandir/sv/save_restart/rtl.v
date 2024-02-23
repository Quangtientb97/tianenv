module test(input clk);

    always @(posedge clk) begin
        $display("[RTL] %t", $time);
    end

endmodule
