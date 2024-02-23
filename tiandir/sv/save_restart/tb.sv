`include "boot.sv"


module tb();
    bit clk;
    boot_c boot;

    initial begin
        forever begin
            #1000 clk = !clk;
        end
    end

    test dut(clk);

    initial begin
        boot = new();
        boot.body();

        $save("boot");
        $display("[ti] wait for end test");

        fork 
            begin
                #100us;
                $display("[ti] didnt end test from dynamic_test_pkg");
                $display("[ti] time out!!");
                $finish;
            end
        join_none
    end


endmodule
