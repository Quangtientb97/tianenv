`ifndef     __SOC_REPORT_SV__
`define     __SOC_REPORT_SV__

class soc_report_c extends uvm_default_report_server;
    //  Constructor
    function new(string name = "soc_report_c");
        super.new(name);
    endfunction

    virtual function void process_report_message(uvm_report_message report_message);
        uvm_report_handler l_report_handler = report_message.get_report_handler();
        //process p = process::self();
        bit report_ok = 1;

        // Set the report server for this message
        report_message.set_report_server(this);

        `ifndef UVM_NO_DEPRECATED
        // The hooks can do additional filtering.  If the hook function
        // return 1 then continue processing the report.  If the hook
        // returns 0 then skip processing the report.
        if(report_message.get_action() & UVM_CALL_HOOK)
            report_ok = l_report_handler.run_hooks(
                report_message.get_report_object(),
                report_message.get_severity(),
                report_message.get_id(),
                report_message.get_message(),
                report_message.get_verbosity(),
                report_message.get_filename(),
                report_message.get_line()
            );
        `endif

        if(report_ok)
        report_ok = uvm_report_catcher::process_all_report_catchers(report_message);

        if(uvm_action_type'(report_message.get_action()) == UVM_NO_ACTION)
        report_ok = 0;

        if(report_ok) begin
            string m;
            uvm_coreservice_t cs = uvm_coreservice_t::get();
            // give the global server a chance to intercept the calls
            uvm_report_server svr = cs.get_report_server();

            `ifdef UVM_DEPRECATED_REPORTING
            // no need to compose when neither UVM_DISPLAY nor UVM_LOG is set
            if (report_message.get_action() & (UVM_LOG|UVM_DISPLAY))
                m = compose_message(
                    report_message.get_severity(),
                    l_report_handler.get_full_name(),
                    report_message.get_id(),
                    report_message.get_message(),
                    report_message.get_filename(),
                    report_message.get_line()
                );

            process_report(
                report_message.get_severity(),
                l_report_handler.get_full_name(),
                report_message.get_id(),
                report_message.get_message(),
                report_message.get_action(),
                report_message.get_file(),
                report_message.get_filename(),
                report_message.get_line(),
                m,
                report_message.get_verbosity(),
                report_message.get_report_object()
            );
            `else
            // no need to compose when neither UVM_DISPLAY nor UVM_LOG is set
            if (report_message.get_action() & (UVM_LOG|UVM_DISPLAY))
                m = svr.compose_report_message(report_message);

            svr.execute_report_message(report_message, m);
            `endif
        end
    endfunction

    virtual function string compose_report_message(
        uvm_report_message  report_message          ,
        string              report_object_name = ""
    );
        string                                  str_severity    = "";
        string                                  str_fileline    = "";
        string                                  str_time        = "";
        string                                  str_context     = "";
        string                                  str_verbosity   = "";
        string                                  str_id          = "";
        string                                  str_terminator  = "";
        string                                  msg_body_str        ;
        uvm_report_message_element_container    el_container        ;
        string                                  prefix              ;
        uvm_report_handler                      l_report_handler    ;

        //  Severity string
        str_severity  = $sformatf("%-11s", report_message.get_severity().name());

        //  File name and line number
        if (report_message.get_filename() != "") begin
            string  str_temp    = $sformatf("%s(%1d)", report_message.get_filename(), report_message.get_line());
            int     pos_end     = str_temp.len() - 1;
            int     pos_start   = (pos_end > 50) ? pos_end - 50 : 0;
            string  str_short   = str_temp.substr(pos_start, pos_end);
            if (pos_end > 50) str_short = { "...", str_short };
            str_fileline    = str_short;
        end

        //  Time
        str_time    = $sformatf("@%0t", $time);

        //  Context
        if (report_message.get_context() != "") str_context = {"@", report_message.get_context()};

        //  Verbosity
        if (show_verbosity) begin
            uvm_verbosity   tmp_verbosity   ;
            if ($cast(tmp_verbosity, report_message.get_verbosity()))
                str_verbosity = tmp_verbosity.name();
            else
                str_verbosity.itoa(report_message.get_verbosity());
            str_verbosity = {"(", str_verbosity, ")"};
        end

        //  Terminator
        if (show_terminator) str_terminator = {" -", str_severity };

        //  Container
        el_container = report_message.get_element_container();
        if (el_container.size() == 0)
            msg_body_str = report_message.get_message();
        else begin
            prefix = uvm_default_printer.knobs.prefix;
            uvm_default_printer.knobs.prefix = " +";
            msg_body_str = {report_message.get_message(), "\n", el_container.sprint()};
            uvm_default_printer.knobs.prefix = prefix;
        end

        if (report_object_name == "") begin
            l_report_handler = report_message.get_report_handler();
            report_object_name = l_report_handler.get_full_name();
        end

        if (report_message.get_id() != "") begin
            str_id  = {" ", report_message.get_id()};
        end

        //  Return
        //return { str_severity, str_verbosity, " ", str_fileline, " ", str_time, ": [", report_object_name, str_context, str_id, "] ", msg_body_str, str_terminator};
        return { str_severity, str_verbosity, " ", str_fileline, " ", str_time, ": ", msg_body_str, str_terminator};
    endfunction

    //  Compose message
    virtual function string compose_message(
        uvm_severity severity   ,
        string  name            ,
        string  id              ,
        string  message         ,
        string  filename        ,
        int     line
    );
        //  Fix filename length to 50 characters
        int     fname_len   = filename.len();
        int     fname_pos   = fname_len > 47 ? fname_len - 47 : 0;
        string  fname_tmp   = filename.substr(fname_pos, fname_len - 1);
        return $psprintf( "%-11s %s(%1d) @%d: %s"   , severity.name(), fname_tmp, line, $time, message);
        //if (id == "")   return $psprintf( "%-11s %s(%1d) @%d: [%s][%s] %s", severity.name(), fname_tmp, line, $time, name, id, message );
        //else            return $psprintf( "%-11s %s(%1d) @%d: [%s] %s"    , severity.name(), fname_tmp, line, $time, name,     message );
    endfunction
endclass

`endif  //  __SOC_REPORT_SV__

// -----------------------------------------------------------------------------+
// How to use                                                                   |
// -----------------------------------------------------------------------------+
`ifndef     __SOC_TEST_SV__
`define     __SOC_TEST_SV__

class soc_test_c extends uvm_test;
    uvm_factory factory ;
    soc_env_c   soc_env ;
    `uvm_component_utils(soc_test_c)

    function new(string name = "soc_test_c", uvm_component parent = null);
        super.new(name, parent);
        begin
            soc_report_c    soc_report = new("soc_report");
            uvm_report_server::set_server(soc_report);
            factory = uvm_coreservice_t::get().get_factory();
        end
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        soc_env = soc_env_c::type_id::create("soc_env", this);
        uvm_config_db#(soc_env_c)::set(null, "*", "tb", soc_env);
    endfunction

    virtual task run_phase(uvm_phase phase);
        `uvm_info_phase("run_phase ... started")

        //  Phasing control
        phase.raise_objection(this);

        //  Test sequence
        begin
            soc_vseq_base_c soc_vseq    ;
            $cast(soc_vseq, factory.create_object_by_type(soc_vseq_c::get_type(), get_full_name(), "soc_vseq"));
            soc_vseq.start(soc_env.soc_vseqr);
        end
        #10us;

        //  Phasing control
        phase.drop_objection(this);
        `uvm_info_phase("run_phase ... ended")
    endtask

	/**
	* Calculate the pass or fail status for the test in the final phase method of the
	* test. If a UVM_FATAL, UVM_ERROR, or a UVM_WARNING message has been generated the
	* test will fail.
	*/
	function void final_phase(uvm_phase phase);
		uvm_report_server svr;
        `uvm_info_phase("final_phase ... started")

		super.final_phase(phase);

		svr = uvm_report_server::get_server();

		if (svr.get_severity_count(UVM_FATAL) + svr.get_severity_count(UVM_ERROR) > 0) begin
			`uvm_info("final_phase", "#------------------------#", UVM_LOW)
			`uvm_info("final_phase", "#      TEST FAILED!!!    #", UVM_LOW)
			`uvm_info("final_phase", "#------------------------#", UVM_LOW)
		end
		else begin
			`uvm_info("final_phase", "#------------------------#", UVM_LOW)
			`uvm_info("final_phase", "#      TEST PASSED!!!    #", UVM_LOW)
			`uvm_info("final_phase", "#------------------------#", UVM_LOW)
		end

        `uvm_info_phase("final_phase ... ended")
	endfunction: final_phase
endclass

`endif  //  __SOC_TEST_SV__
