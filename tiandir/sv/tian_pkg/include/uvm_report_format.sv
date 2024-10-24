`ifndef __UVM_REPORT_FORMAT_SV__
`define __UVM_REPORT_FORMAT_SV__

// How to use
// add this to function new() of base_test
// |---    begin
// |---        uvm_report_format_c    uvm_report_format = new();
// |---        uvm_report_server::set_server(uvm_report_format);
// |---    end

`ifdef UVM_VERSION_1_2
class uvm_report_format_c extends uvm_default_report_server;
    //  Constructor
    function new(string name = "uvm_report_format_c");
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
`else // UVM_1.1
class uvm_report_format_c extends uvm_report_server;
    virtual function string compose_message( uvm_severity severity,
        string name,
        string id,
        string message,
        string filename,
        int line );
        uvm_severity_type severity_type = uvm_severity_type'( severity );
        string opt_line = {"(", $sformatf("%0d", line), ")"};
        return $psprintf( "%-8s  %-s%-6s @%0t: [%0s] %s",
            severity_type.name(), cutstr(filename), opt_line, $time, id, message );
    endfunction: compose_message

    function string cutstr(string msg, int fix_len=50);
        string rt = msg.substr(msg.len()-fix_len-1, msg.len()-1);
        if (msg.len() > fix_len) return {"...", rt};
        else                     return msg;
    endfunction

endclass: uvm_report_format_c
`endif

`endif /* __UVM_REPORT_FORMAT_SV__ */
