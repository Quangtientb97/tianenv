// `UPDATE_REG(_REG) _REG.write(status, _REG.get())
// `dv_cast(EXT_, BASE_, MSG_="", SEV_=fatal, ID_=`gfn) 
// `dv_check(T_, MSG_="", SEV_=error, ID_=`gfn) 
// `dv_check_eq(ACT_, EXP_, MSG_="", SEV_=error, ID_=`gfn) 
// `dv_check_gt(ACT_, EXP_, MSG_="", SEV_=error, ID_=`gfn) 
// `dv_check_lt(ACT_, EXP_, MSG_="", SEV_=error, ID_=`gfn) 
// `dv_check_ne(ACT_, EXP_, MSG_="", SEV_=error, ID_=`gfn) 
// `dv_compare_array(A0_, A1_, MSG_="", SEV_=error, ID_=`gfn) 
// `dv_compare_queue(Q0_, Q1_, MSG_="", SEV_=error, ID_=`gfn) 
// `dv_component_func_new 
// `dv_copy_array(A0_, A1_) 
// `dv_create_comp(_type_name_, _inst_name_) 
// `dv_create_obj(_type_name_, _inst_name_) 
// `dv_error(MSG_) 
// `dv_fatal(MSG_) 
// `dv_info(MSG_, VER_=UVM_LOW) 
// `dv_msg_start 
// `dv_object_func_new 
// `dv_thread_begin fork begin forever begin
// `dv_thread_end   end end join_none
// `dv_timeout_begin(_TIMEOUT=1000, _MSG="") 
// `dv_timeout_end 
// `dv_wait_signal(RTL_HIER, VALUE, SIZE, TIMEOUT=1000) begin
// `dv_wait_variable(VAR, VALUE, TIMEOUT=1000) begin
// `dv_warning(MSG_) 
// `gfn get_full_name()
// `gn  get_name()
// `gtn get_type_name()
`ifndef __TIAN_MACROS_SVH__
`define __TIAN_MACROS_SVH__

`define gfn get_full_name()
`define gtn get_type_name()
`define gn  get_name()

`define dv_info(MSG_, VER_=UVM_LOW) \
    `uvm_info(`gfn, $sformatf("%s", MSG_), ``VER_``)

`define dv_warning(MSG_) \
    `uvm_warning(`gfn, $sformatf("%s", MSG_))

`define dv_error(MSG_) \
    `uvm_error(`gfn, $sformatf("%s", MSG_))

`define dv_fatal(MSG_) \
    `uvm_fatal(`gfn, $sformatf("%s", MSG_))

//-------------------------------------------------------------------+
// Thread parallel                                                   |
//-------------------------------------------------------------------+
`define dv_thread_begin fork begin forever begin
`define dv_thread_end   end end join_none

//-------------------------------------------------------------------+
// fork, join_any with timeout                                       |
//-------------------------------------------------------------------+
`define dv_timeout_begin(_TIMEOUT=1000, _MSG="") \
fork begin fork \
    begin \
        #(_TIMEOUT); \
        `uvm_error(`gfn, $sformatf("(%0s) timeout after %0t!!!", _MSG, _TIMEOUT)); \
    end \
    begin

`define dv_timeout_end \
    end \
    join_any  \
    disable fork; \
end join

//-------------------------------------------------------------------+
// Input                                                             |
// string: RTL_HIER                                                  |
// logic : VALUE (hex, dec or bin)                                   |
// int   : SIZE                                                      |
// int   : TIMEOUT                                                   |
//-------------------------------------------------------------------+
`define dv_wait_signal(RTL_HIER, VALUE, SIZE, TIMEOUT=1000) begin\
    static logic [SIZE-1:0] mirror_rtl_hier; \
    $xm_mirror("mirror_rtl_hier", RTL_HIER); \
    `dv_timeout_begin(TIMEOUT, `"dv_wait_signal: RTL_HIER == VALUE`") \
        `uvm_info(`gfn, $sformatf("wait    %s == %d(0x%h) with timeout = %0t", RTL_HIER, VALUE, VALUE, TIMEOUT), UVM_LOW) \
        wait(mirror_rtl_hier == VALUE); \
        `uvm_info(`gfn, $sformatf("catched %s == %d(0x%h)", RTL_HIER, VALUE, VALUE), UVM_LOW) \
    `dv_timeout_end \
end

// dv_wait_variable
`define dv_wait_variable(VAR, VALUE, TIMEOUT=1000) begin\
    `dv_timeout_begin(TIMEOUT, `"dv_wait_variable: ``VAR`` == ``VALUE`` `") \
        `uvm_info(`gfn, $sformatf("wait    %s == %0d(0x%0h) with timeout = %0t", `"``VAR```", VALUE, VALUE, TIMEOUT), UVM_LOW) \
        wait(VAR == VALUE);\
        `uvm_info(`gfn, $sformatf("catched %s == %0d(0x%0h)", `"``VAR```", VALUE, VALUE), UVM_LOW) \
    `dv_timeout_end \
end

// cast base class obj holding extended class handle to extended class handle;
// throw error if cast fails
`define dv_cast(EXT_, BASE_, MSG_="", SEV_=fatal, ID_=`gfn) \
begin \
    if (!$cast(EXT_, BASE_)) begin \
        `uvm_``SEV_(ID_, $sformatf({"Cast failed: base class variable %0s ", \
            "does not hold extended class %0s handle %s"}, \
            `"BASE_`", `"EXT_`", MSG_)) \
    end \
end

`define dv_object_func_new \
function new (string name=""); \
    super.new(name); \
    if (name=="") `uvm_info(`gfn, "[warning] object name is empty", UVM_MEDIUM); \
endfunction : new

`define dv_create_obj(_type_name_, _inst_name_) \
    _inst_name_ = _type_name_::type_id::create(`"_inst_name_`");

`define dv_component_func_new \
function new (string name="", uvm_component parent=null); \
    super.new(name, parent); \
    if (name=="") `uvm_info(`gfn, "[warning] component name is empty", UVM_MEDIUM); \
endfunction : new

`define dv_create_comp(_type_name_, _inst_name_) \
    _inst_name_ = _type_name_::type_id::create(`"_inst_name_`", this);

`define dv_check_eq(ACT_, EXP_, MSG_="", SEV_=error, ID_=`gfn) \
begin \
    if ((ACT_) == (EXP_)) ; else begin \
        `uvm_``SEV_(ID_, $sformatf("Check failed %s == %s (%0d [0x%0h] vs %0d [0x%0h]) %s", \
            `"ACT_`", `"EXP_`", ACT_, ACT_, EXP_, EXP_, MSG_)) \
    end \
end

`define dv_check_ne(ACT_, EXP_, MSG_="", SEV_=error, ID_=`gfn) \
begin \
    if ((ACT_) != (EXP_)) ; else begin \
        `uvm_``SEV_(ID_, $sformatf("Check failed %s != %s (%0d [0x%0h] vs %0d [0x%0h]) %s", \
            `"ACT_`", `"EXP_`", ACT_, ACT_, EXP_, EXP_, MSG_)) \
    end \
end

`define dv_check_lt(ACT_, EXP_, MSG_="", SEV_=error, ID_=`gfn) \
begin \
    if ((ACT_) < (EXP_)) ; else begin \
        `uvm_``SEV_(ID_, $sformatf("Check failed %s < %s (%0d [0x%0h] vs %0d [0x%0h]) %s", \
            `"ACT_`", `"EXP_`", ACT_, ACT_, EXP_, EXP_, MSG_)) \
    end \
end

`define dv_check_gt(ACT_, EXP_, MSG_="", SEV_=error, ID_=`gfn) \
begin \
    if ((ACT_) > (EXP_)) ; else begin \
        `uvm_``SEV_(ID_, $sformatf("Check failed %s > %s (%0d [0x%0h] vs %0d [0x%0h]) %s", \
            `"ACT_`", `"EXP_`", ACT_, ACT_, EXP_, EXP_, MSG_)) \
    end \
end

`define dv_check(T_, MSG_="", SEV_=error, ID_=`gfn) \
begin \
    if (T_) ; else begin \
        `uvm_``SEV_(ID_, $sformatf("Check failed (%s) %s ", `"T_`", MSG_)) \
    end \
end

`define dv_compare_array(A0_, A1_, MSG_="", SEV_=error, ID_=`gfn) \
begin \
    `uvm_info(ID_, `"Compare A0_[] with A1_[]`", UVM_LOW) \
    if ($size(A0_) != $size(A1_)) `uvm_``SEV_(ID_, $sformatf(`"size mismatch:  $size(A0_) = %0d, $size(A1_) = %0d`", $size(A0_), $size(A1_))) \
    else begin \
        foreach (A0_[i]) begin \
            if (A0_[i] != A1_[i]) `uvm_``SEV_(ID_, $sformatf(`"data mismatch: A0_[%0d] = 0x%0h, A1_[%0d] = 0x%0h`", i, A0_[i], i, A1_[i])) \
        end \
    end \
end

`define dv_msg_start \
begin \
    string hier = $sformatf("%m"); \
    string func_name=""; \
    bit is_first_dot = 0; \
    for (int i=hier.len()-1; i>0; i--) begin \
        if (!is_first_dot) begin \
            if (hier[i] == ".") is_first_dot = 1; \
        end \
        else if (is_first_dot) begin \
            if (hier[i] == ".") break; \
            else func_name = {hier[i], func_name}; \
        end \
    end \
//     `uvm_info(`gfn, {`gfn, ".", func_name, "() start ..."}, UVM_LOW) \
    `uvm_info(`gfn, {func_name, "() start ..."}, UVM_LOW) \
end                                                                  

`define dv_compare_queue(Q0_, Q1_, MSG_="", SEV_=error, ID_=`gfn) \
    `dv_compare_array(Q0_, Q1_, MSG_, SEV_, ID_)

`define dv_copy_array(A0_, A1_) \
    A0_ = new[$size(A1_)]; \
    foreach(A0_[i]) A0_[i] = A1_[i];

`define dv_print_var(VAR_NAME, VAR) $display(`"``VAR_NAME`` = 0x%0h`", VAR);

`define dv_update_reg(_REG) _REG.write(status, _REG.get())

`endif /* __TIAN_MACROS_SVH__ */
