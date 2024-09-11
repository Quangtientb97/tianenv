class demoter_c extends uvm_report_catcher;
    string mess;
    string id_demoter[$];

    function new(string name = "report_message");
        super.new(name);
    endfunction

    function action_e catch();
        if  ((get_severity() == UVM_FATAL) && (exist_in_queue(get_id(), id_demoter) == 1)) begin
            set_severity(UVM_INFO);
            $display("[tian] UVM_FATAL detect: %s", get_id());
        end
        return THROW;
    endfunction

    function bit exist_in_queue(string item, string queue[$]);
        foreach(queue[i]) begin
            if (item == queue[i]) begin
                return 1;
            end
        end
        return 0;
    endfunction
endclass

// Property
// |demoter_c demoter=new();
//
// Call everywhere to start apply
// |uvm_report_cb::add(null, demoter);
