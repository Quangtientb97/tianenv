package dynamic_test_pkg;
    task body();
        $display("[ti] run from dynamic_test_pkg");
        #50us;
        $display("[ti] end test from dynamic_test_pkg");
        $finish;
    endtask 
endpackage
