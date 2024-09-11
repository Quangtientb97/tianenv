`ifndef     __COMMON_MACROES_SVH__
`define     __COMMON_MACROES_SVH__

`include    "uvm_macros.svh"

`define uvm_log_err(MSG) \
    `uvm_error(get_type_name(), MSG)

`define uvm_log_warn(MSG) \
    `uvm_warning(get_type_name(), MSG)

`define uvm_log_fatal(MSG) \
    `uvm_fatal(get_type_name(), MSG)

`define uvm_info_phase(MSG) \
    `uvm_info(get_type_name(), MSG, UVM_FULL)

`define uvm_info_func(MSG) \
    `uvm_info(get_type_name(), MSG, UVM_FULL)

`define uvm_info_task(MSG) \
    `uvm_info(get_type_name(), MSG, UVM_FULL)

`define uvm_info_high(MSG) \
    `uvm_info(get_type_name(), MSG, UVM_HIGH)

`define uvm_info_med(MSG) \
    `uvm_info(get_type_name(), MSG, UVM_MEDIUM)

`define uvm_info_low(MSG) \
    `uvm_info(get_type_name(), MSG, UVM_LOW)

`define uvm_info_none(MSG) \
    `uvm_info(get_type_name(), MSG, UVM_NONE)

`endif  //  __COMMON_MACROES_SVH__
