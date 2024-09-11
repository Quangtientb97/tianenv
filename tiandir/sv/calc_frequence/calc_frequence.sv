// input: hdl_path
// input: expected_frequency - unit: Hz
task frequence_check(string hdl_path, real expected_frequency);
    //global variable
    global bit freq_check_enable;

    static bit w_clock;
    const  int clock_margin = 1000; // 1000Hz = 1MHz

    realtime edge0;
    realtime edge1;
    realtime clock_period;
    real clock_frequency;
    bit is_first_print = 1;

    $xm_mirror("w_clock", hdl_path);
    fork 
        while(1) begin
            @(posedge w_clock);
            edge0 = $realtime;
            @(negedge w_clock);
            @(posedge w_clock);
            edge1 = $realtime;

            clock_period    = edge1 - edge0; // ps->s: 1.10**-9
            clock_frequency = 10**9/(clock_period);

            if (is_first_print) begin
                $display("edge0           = %0t"   , edge0           );
                $display("edge1           = %0t"   , edge1           );
                $display("clock_period    = %0f"   , clock_period    );
                $display("clock_period    = %0t"   , clock_period    );
                $display("clock_frequency = %0fHz" , clock_frequency );
                is_first_print            = 0;
            end

            if ((clock_frequency < expected_frequency - clock_margin) 
                || (clock_frequency > expected_frequency + clock_margin))
            begin
                `uvm_log_err({"Clock unexpected ", hdl_path})
                $display("expected_frequency = %0f, actual frequency = %0f", expected_frequency, clock_frequency);
            end

            // End the task
            if (!freq_check_enable) return;
        end
    join_none

endtask 

// terminate the task
// freq_check_enable = 0;
