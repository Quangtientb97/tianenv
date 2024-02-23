inorea uvm_build_phase_Ent virtual function void build_phase(uvm_phase phase);<cr>
            \/*  NOTE: Do not call super.build_phase() from anyclass that is extended from an UVM baseclass!  */<cr>
            \/*  For more information see UVM Cookbook UVM/Guidelines  */<cr>
			\//super.build_phase(phase);<cr>
			\<bs><bs>`uvm_info(get_full_name(), "build_phase() start ...", UVM_LOW);<cr>
			\endfunction<esc>
	
inorea uvm_connect_phase_Ent virtual function void connect_phase(uvm_phase phase);<cr>
			\super.connect_phase(phase);<cr>
			\`uvm_info(get_full_name(), "connect_phase() start ...", UVM_LOW)<cr>
			\endfunction<esc>O

inorea uvm_run_phase_Ent virtual task run_phase(uvm_phase phase);<cr>
			\super.run_phase(phase);<cr>
			\`uvm_info(get_full_name(), "run_phase() start ...", UVM_LOW)<cr>
			\endtask<esc>O

inorea uvm_body_Ent virtual task body();<cr>
			\`uvm_info(get_full_name(), "body() start ...", UVM_LOW)<cr>
			\super.body();<cr>
			\endtask<esc>O

inorea uvm_object_new_Ent function new(string name = "__f_");<cr>
			\super.new(name);<cr>
			\endfunction <esc>O<esc>:/__f_<cr>ggn

inorea uvm_component_new_Ent function new(string name = "__f_", uvm_component parent);<cr>
			\super.new(name, parent);<cr>
			\endfunction <esc>O<esc>:/__f_<cr>ggn

inorea uvm_info_Ent uvm_info(get_full_name(), "__f", UVM_LOW)<esc>N:/__f<cr>ggn

inorea uvm_info_psprintf_Ent uvm_info(get_full_name(), $psprintf("__f", __f), UVM_LOW)<esc>0n:/__f<cr>ggn

inorea uvm_create_component_Ent class __f_class_name extends __f;<cr>
			\`uvm_component_utils(__f_class_name)<cr>
			\<cr>
			\// Func: new()<cr><bs><bs><bs>
			\function new(string name = "__f_class_name", uvm_component parent=null);<cr>
			\super.new(name, parent);<cr>
			\endfunction: new<cr>
			\<cr>
			\// Func: build_phase()<cr><bs><bs><bs>
			\virtual function void build_phase(uvm_phase phase);<cr>
			\super.build_phase(phase);<cr>
			\`uvm_info(get_full_name(), "build_phase() start ...", UVM_LOW);<cr>
			\endfunction: build_phase<cr>
			\<cr>
			\// Func: connect_phase();<cr><bs><bs><bs>
			\virtual function void connect_phase(uvm_phase phase);<cr>
			\super.connect_phase(phase);<cr>
			\`uvm_info(get_full_name(), "connect_phase() start ...", UVM_LOW)<cr>
			\endfunction: connect_phase<cr>
			\<cr>
			\// Task: run_phase()<cr><bs><bs><bs>
			\virtual task run_phase(uvm_phase phase);<cr>
			\super.run_phase(phase);<cr>
			\`uvm_info(get_full_name(), "run_phase() start ...", UVM_LOW)<cr>
			\endtask: run_phase<cr>
			\<cr>
			\endclass<esc>:/__f<cr>ggn

inorea uvm_create_object_Ent class __f_class_name extends __f;<cr>
			\`uvm_object_utils(__f_class_name)<cr>
			\<cr>
			\// Func: new()<cr><bs><bs><bs>
            \function new(string name = "__f_class_name");<cr>
			\super.new(name);<cr>
			\endfunction: new<cr>
			\<cr>
			\endclass<esc>:/__f<cr>ggn

inorea function <esc>:let g:auto_complete=0<cr>
            \Afunction void();<cr>endfunction<esc>:let g:auto_complete=1<cr>kA<left><left><left>

inorea module <esc>:let g:auto_complete=0<cr>
            \imodule();<cr>endmodule<esc>:let g:auto_complete=1<cr>kA<left><left><left>

inorea class <esc>:let g:auto_complete=0<cr>
            \iclass;<cr>endclass<esc>:let g:auto_complete=1<cr>kA<left>

inorea task <esc>:let g:auto_complete=0<cr>
            \itask();<cr>endtask<esc>:let g:auto_complete=1<cr>kA<left><left><left>

inorea uvm_config_db_get_Ent assert (uvm_config_db#(__f_type)::get(__f_contxt, __f_inst_name, __f_field_name, __f_value)) begin<cr>
			\`uvm_info(get_name(), "field_name has been found in ConfigDB.", UVM_LOW)<cr>
			\end else `uvm_fatal(get_full_name(), " cannot be found in ConfigDB!")<esc>/__f_\w*<cr>

inorea sv_ifndef_Ent `ifndef __<c-r>=toupper(expand("%:t:r"))<cr>__<cr>
			\`define __<c-r>=toupper(expand("%:t:r"))<cr>__<cr><cr>
			\`endif<up><esc>


inorea sv_case_Ent case (__f_expression)<cr>
			\__f_value1: begin<cr>
			\// TBD<cr><bs><bs><bs>
			\end<cr>
			\__f_value2: begin<cr>
			\// TBD<cr><bs><bs><bs>
			\end<cr>
			\default: begin<cr>
			\// code executed if expression does not match any value<cr><bs><bs><bs>
			\end<cr>
			\endcase<cr><esc><esc>:/__f_\w*<cr>ggn

inorea sv_typedef_enum_Ent typedef enum __f_type {<cr>
			\__f_STATE_A,<cr>
			\__f_STATE_B,<cr>
			\__f_STATE_C<cr>
			\} __f_state_type;<cr><esc>:/__f_\w*<cr>ggn

inorea sv_covergroup_Ent covergroup __f_cvg_name @(posedge clk iff resetn);<cr>
			\option.per_instance = 1  ;<cr>
    		\option.goal         = 100;<cr>
    		\__f_cp0_name: coverpoint __f_variable {<cr>
    		\//bins b0_to_b1 = (0 => 1);<cr>
    		\bins b1_to_b0 = (1 => 0);<cr><bs><bs><bs>
    		\};<cr>
    		\__f_cp1_name: coverpoint __f_variable {<cr>
    		\//bins b0_to_b1 = (0 => 1);<cr>
    		\bins b1_to_b0 = (1 => 0);<cr><bs><bs><bs>
    		\};<cr>
			\endgroup<cr>
            \<cr>
            \__f_cvg_name cg0 = new();<esc>:/__f_\w*<cr>ggn

inorea sv_assert_Ent assert(__f_condition) else $error("Assertion failed");<esc>:/__f_\w*<cr>ggn

inorea sv_randomize_Ent !randomize(__f_var)<esc>0iif (<esc>$a with {<cr>
			\// TBD ;<cr><bs><bs><bs>
			\}) `uvm_warning("[RANDOMIZE FAILED]", "Randomization failed");<esc>:/__f_\w*<cr>ggn

inorea sv_guardian_Ent `ifndef __<c-r>=substitute(toupper(expand('%:t')), '\.', '_', 'g')<cr>__<cr>
            \`define __<c-r>=substitute(toupper(expand('%:t')), '\.', '_', 'g')<cr>__<cr>
            \<cr>
            \`endif /* __<c-r>=substitute(toupper(expand('%:t')), '\.', '_', 'g')<cr>__ */<esc><esc><up><up>

inorea sv_sva_module_Ent <esc>:set formatoptions-=cro<cr>
            \i`ifndef __<c-r>=substitute(toupper(expand('%:t')), '\.', '_', 'g')<cr>__<cr>
            \`define __<c-r>=substitute(toupper(expand('%:t')), '\.', '_', 'g')<cr>__<cr>
            \module __f_module_name_chk(<cr>
            \    clk,<cr>
            \    resetn<cr>
            \);<cr>
            \
            \    // ---------------------------------------------------------------<cr>
            \    // parameter                                                      <cr>
            \    // ---------------------------------------------------------------<cr>
            \<cr>
            \<cr>
            \    // ---------------------------------------------------------------<cr>
            \    // Input/output                                                   <cr>
            \    // ---------------------------------------------------------------<cr>
            \<cr>
            \<cr>
            \    // ---------------------------------------------------------------<cr>
            \    // Property                                                       <cr>
            \    // ---------------------------------------------------------------<cr>
            \    // property REQ_ACK_CHK(req, ack);<cr>
            \    //    @(posedge clk) req -> ##3 ack;<cr>
            \    // endproperty<cr>
            \<cr>
            \    // ---------------------------------------------------------------<cr>
            \    // SVA                                                            <cr>
            \    // ---------------------------------------------------------------<cr>
            \    // ASSERT_REQ_ACK_CHK: assert property (REQ_ACK_CHK(req, ack))<cr>
            \    // else $error("ASSERT_REQ_ACK_CHK Fail!");<cr>
            \<cr>
            \endmodule<cr>
            \`endif /* __<c-r>=substitute(toupper(expand('%:t')), '\.', '_', 'g')<cr>__<cr>
            \<esc>:set formatoptions+=cro<cr>ggVG=:/__f\w*<cr>

inorea sv_write_file_Ent <esc>:set formatoptions-=cro<cr>i
            \begin<cr>
            \string filename     = "__filename.txt";<cr>
            \int    handle_file  = $fopen(filename, "a+");   // append (if not exist, create new)<cr>
            \//int    handle_file  = $fopen(filename, "w");  // create and overwrite<cr>
            \<cr>
            \if (handle_file == 0) begin<cr>
            \    `uvm_log_fatal($psprintf("Error opening file '%s' for writing", filename))<cr>
            \end<cr>
            \$fwrite(handle_file, "[%t] helloworld!\n", $time);<cr>
            \$fclose(handle_file);<cr>
            \end<cr><esc>
            \<esc>:set formatoptions+=cro<cr>ggVG=:/__f\w*<cr>

inorea sv_func_has_substr <esc>:set formatoptions-=cro<cr>i
            \function bit has_substr(string substr, string mainstr);<cr>
            \for (int i=0; i<(mainstr.len()-substr.len()+1); i++) begin<cr>
            \if( mainstr.substr(i,i+substr.len()-1) == substr ) begin<cr>
            \return 1;<cr>
            \end<cr>
            \end<cr>
            \return 0;<cr>
            \endfunction<cr>
            \<esc>:set formatoptions+=cro<cr>

inorea sv_func_compare_data <esc>:set formatoptions-=cro<cr>i
            \function bit compare_data(logic left_data, logic right_data);<cr>
            \if (left_data != right_data) `uvm_log_err ($psprintf("data mismatch 0x%h != 0x%h", left_data, right_data));<cr>
            \else                         `uvm_info_med($psprintf("data mismatch 0x%h != 0x%h", left_data, right_data));<cr>
            \endfunction<cr>
            \<esc>:set formatoptions+=cro<cr>

inorea sv_func_compare_array <esc>:set formatoptions-=cro<cr>i
            \function bit compare_data(logic left_data, logic right_data);<cr>
            \if (left_data != right_data) `uvm_log_err ($psprintf("data mismatch 0x%h != 0x%h", left_data, right_data));<cr>
            \else                         `uvm_info_med($psprintf("data mismatch 0x%h != 0x%h", left_data, right_data));<cr>
            \endfunction<cr>
            \<cr>
            \function bit compare_array(logic left_data[], logic right_data[]);<cr>
            \int size = left_data.size();<cr>
            \bit is_data_match = 1;<cr>
            \foreach left_data[i] begin<cr>
            \if (compare_data(left_data[i], right_data[i]) == 0) begin<cr>
            \is_data_match = 0;<cr>
            \end<cr>
            \end<cr>
            \return is_data_match;<cr>
            \endfunction<cr>
            \<esc>:set formatoptions+=cro<cr>

inorea uvm_common_macros_Ent <esc>:set formatoptions-=cro<cr>i
            \`ifndef     __COMMON_MACROES_SVH__<cr>
            \`define     __COMMON_MACROES_SVH__<cr>
            \<cr>
            \`include    "uvm_macros.svh"<cr>
            \<cr>
            \`define uvm_log_err(MSG) \<cr>
            \    `uvm_error(get_type_name(), MSG)<cr>
            \<cr>
            \`define uvm_log_warn(MSG) \<cr>
            \    `uvm_warning(get_type_name(), MSG)<cr>
            \<cr>
            \`define uvm_log_fatal(MSG) \<cr>
            \    `uvm_fatal(get_type_name(), MSG)<cr>
            \<cr>
            \`define uvm_info_high(MSG) \<cr>
            \    `uvm_info(get_type_name(), MSG, UVM_HIGH)<cr>
            \<cr>
            \`define uvm_info_med(MSG) \<cr>
            \    `uvm_info(get_type_name(), MSG, UVM_MEDIUM)<cr>
            \<cr>
            \`define uvm_info_low(MSG) \<cr>
            \    `uvm_info(get_type_name(), MSG, UVM_LOW)<cr>
            \<cr>
            \`define uvm_info_none(MSG) \<cr>
            \    `uvm_info(get_type_name(), MSG, UVM_NONE)<cr>
            \<cr>
            \`endif  //  __COMMON_MACROES_SVH__<cr>
            \<esc>:set formatoptions+=cro<cr>

inorea sv_disable_fork_Ent <esc>:set formatoptions-=cro<cr>i
            \fork begin // isolate the following code as a single child process<cr>
            \fork  <cr>
            \begin<cr>
            \// Process1<cr>
            \end<cr>
            \begin<cr>
            \// Process2<cr>
            \end<cr>
            \join_any <cr>
            \disable fork;<cr>
            \end join <cr>
            \<esc>:set formatoptions+=cro<cr>

inorea sv_timeout_Ent <esc>:set formatoptions-=cro<cr>i
            \fork begin <cr>
            \fork  <cr>
            \begin<cr>
            \#10_000us;<cr>
            \`uvm_error("TIMEOUT", "Timeout!")<cr>
            \end<cr>
            \begin<cr>
            \// User define<cr>
            \end<cr>
            \join_any <cr>
            \disable fork;<cr>
            \end join <cr>
            \<esc>:set formatoptions+=cro<cr>

inorea uvm_sequence_Ent <esc>:set formatoptions-=cro<cr>i
            \class __f_class_name extends __f_class_parent;<cr>
            \`uvm_object_utils(__f_class_name)<cr>
            \<cr>
            \function new(string name = "__f_class_name");<cr>
            \super.new(name);<cr>
            \endfunction<cr>
            \<cr>
            \task body();<cr>
            \endtask<cr>
            \<cr>
            \endclass<cr>
            \<esc>:set formatoptions+=cro<cr>/__f\w*<cr>

inorea sv_dump_wave_Ent <esc>:set formatoptions-=cro<cr>i
            \//  dump_fsdb.tcl<cr>
            \//     [ call fsdbDumpfile all.fsdb<cr>
            \//     [ call fsdbDumpvars 0 top +all<cr>
            \//     [ call fsdbDumpSVA  0 top<cr>
            \//     [ run<cr>
            \//     [ exit<cr>
            \//  Option when execute xrun<cr>
            \//     [ +fsdb+parallel=on<cr>
            \//     [ +fsdb+sva_success<cr>
            \initial begin<cr>
			\$fsdbDumpfile("top.fsdb");<cr>
			\$fsdbDumpvars(0, top, "+all");<cr>
			\$fsdbDumpSVA (0, top);<cr>
			\end<cr><esc>
            \<esc>:set formatoptions+=cro<cr>/__f\w*<cr>
