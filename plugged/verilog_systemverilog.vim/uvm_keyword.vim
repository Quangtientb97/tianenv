"----------------------------------------------------------------------------
"	SystemVerilog
"----------------------------------------------------------------------------
always and assign automatic buf @always_ff@ module endmodule extern
bufif cell cmos interface
config deassign defparam design
disable edge endconfig
endgenerate
endprimitive endtable
event force fork join
join_any join_none
generate genvar highz 
incdir include initial 
instance integer large liblist
library localparam macromodule medium
nand nmos nor
noshowcancelled not notif or
pmos primitive
pull pulldown pullup
pulsestyle_onevent pulsestyle_ondetect
rcmos real realtime reg release
rnmos rpmos rtran rtranif
scalared showcancelled signed small
specparam strong
table time tran super task endtask
tranif tri triand
trior trireg unsigned use vectored wait
wand weak wire wor xnor xor
semaphore mailbox endinterface
always_comb always_latch
checker endchecker
virtual local const protected
package endpackage
rand randc constraint randomize
with inside dist
randcase posedge negedge
randsequence
get_randstate set_randstate
srandom
int longint shortint logic 
struct packed
final
import
context pure
void shortreal chandle string
modport
cover coverpoint
program endprogram
bins binsof illegal_bins ignore_bins
matches solve static assert
assume expect bind
extends tagged
throughout timeprecision
timeunit priority type union
uwire var cross ref wait_order 
wildcard within
triggered
accept_on eventually global implements implies
nettype nexttime reject_on restrict soft
s_always s_eventually s_nexttime s_until s_until_with
strong sync_accept_on sync_reject_on unique
until until_with untyped weak 
enum connect
iff
if else case casex casez default endcase
forever repeat while for
return break continue
do while foreach
parameter
function endfunction class endclass
package endpackage typedef type_id
begin end endproperty covergroup endgroup
$display $finish $random $changed
$sformatf


"----------------------------------------------------------------------------
"	SystemVerilog_uvm
"----------------------------------------------------------------------------	
`uvm_component_param_utils
`uvm_component_param_utils_begin
`uvm_component_utils
`uvm_component_utils_begin
`uvm_component_utils_end
`uvm_do
`uvm_do_with
`uvm_fatal
`uvm_field_array_int
`uvm_field_enum
`uvm_field_int
`uvm_field_string
`uvm_object_param_utils
`uvm_object_param_utils_begin
`uvm_object_utils
`uvm_object_utils_begin
`uvm_object_utils_end

generate
get_full_name
get_type_name
get_id
get_name
get_next_item
get_response
get_type
raise_objection
drop_objection
randomize
register
seq_item_export
seq_item_port
set_auto_predict
set_hdl_path_root
set_id_info
set_sequencer
set_severity
set_type_override_by_type
set_inst_override_by_type
try_get
try_next_item
uvm_macros
uvm_agent
uvm_analysis_export
uvm_analysis_port
uvm_bitstream_t
uvm_component
uvm_config_db
uvm_config_int
uvm_config_string
uvm_config_object
uvm_config_wrapper
uvm_driver
uvm_env
uvm_monitor
uvm_object
uvm_path_e
uvm_phase
uvm_pkg
uvm_predict_e
uvm_reg
uvm_reg_adapter
uvm_reg_block
uvm_reg_bus_op
uvm_reg_cbs
uvm_reg_data_t
uvm_reg_field
uvm_reg_field_cb
uvm_reg_item
uvm_reg_map
uvm_reg_predictor
uvm_report_catcher
uvm_report_cb
uvm_report_error
uvm_report_info
uvm_report_warning
uvm_scoreboard
uvm_sequence
uvm_sequence_item
uvm_sequencer
uvm_status_e
uvm_subscriber
uvm_test
uvm_tlm_analysis_fifo

UVM_ALL_ON UVM_NOCOPY UVM_NOCOMPARE
UVM_LOW UVM_MEDIUM UVM_HIGH

display
print_topology
end_of_elaboration_phase
begin_of_elaboration_phase
type_id
create
psprintf
uvm_declare_p_sequencer
uvm_analysis_imp_decl
uvm_analysis_imp_
plusargs
raise_objection

uvm_info_func  
uvm_info_high  
uvm_info_low   
uvm_info_med   
uvm_info_phase 
uvm_info_task  
uvm_log_err    
uvm_log_fatal  
uvm_log_warn   
urandom_range xm_force xm_mirror
UVM_LOW UVM_MEDIUM UVM_HIGH UVM_NONE
uvm_factory
uvm_do_on
uvm_do_on_with
wait_trigger_data


"-----------------------------------------------------
"  uvm
"-----------------------------------------------------
+UVM_CONFIG_DB_TRACE
+UVM_DUMP_CMDLINE_ARGS
+UVM_OBJECTION_TRACE
+UVM_RESOURCE_DB_TRACE
+UVM_TESTNAME
+UVM_TIMEOUT
+UVM_VERBOSITY
+uvm_set_action
+uvm_set_config_int
+uvm_set_config_string
+uvm_set_inst_override
+uvm_set_severity
+uvm_set_verbosity
BEGIN_REQ
BEGIN_RESP
END_REQ
END_RESP
UNINITIALIZED_PHASE
UVM_ACTIVE
UVM_ALL_DROPPED
UVM_BACKDOOR
UVM_BIG_ENDIAN
UVM_BIG_FIFO
UVM_BIN
UVM_BODY
UVM_CALL_HOOK
UVM_CHECK
UVM_COUNT
UVM_CREATED
UVM_CVR_ADDR_MAP
UVM_CVR_ALL
UVM_CVR_FIELD_VALS
UVM_CVR_REG_BITS
UVM_DEC
UVM_DEEP
UVM_DEFAULT_PATH
UVM_DISPLAY
UVM_DO_ALL_REG_MEM_TESTS
UVM_DO_MEM_ACCESS
UVM_DO_MEM_WALK
UVM_DO_REG_ACCESS
UVM_DO_REG_BIT_BASH
UVM_DO_REG_HW_RESET
UVM_DO_SHARED_ACCESS
UVM_DROPPED
UVM_ENDED
UVM_ENUM
UVM_EQ
UVM_ERROR
UVM_EXIT
UVM_EXPORT
UVM_FATAL
UVM_FIELD
UVM_FINISHED
UVM_FRONTDOOR
UVM_FULL
UVM_GT
UVM_GTE
UVM_HAS_X
UVM_HDL_MAX_WIDTH
UVM_HEX
UVM_HIER
UVM_HIGH
UVM_IMPLEMENTATION
UVM_INFO
UVM_IS_OK
UVM_LITTLE_ENDIAN
UVM_LITTLE_FIFO
UVM_LOG
UVM_LOW
UVM_LT
UVM_LTE
UVM_MEDIUM
UVM_MEM
UVM_NE
UVM_NONE
UVM_NOT_OK
UVM_NO_ACTION
UVM_NO_CHECK
UVM_NO_COVERAGE
UVM_NO_ENDIAN
UVM_NO_HIER
UVM_OCT
UVM_PASSIVE
UVM_PHASE_CLEANUP
UVM_PHASE_DOMAIN
UVM_PHASE_DONE
UVM_PHASE_DORMANT
UVM_PHASE_ENDED
UVM_PHASE_EXECUTING
UVM_PHASE_IMP
UVM_PHASE_JUMPING UVM_PHASE_NODE
UVM_PHASE_READY_TO_END
UVM_PHASE_SCHEDULE
UVM_PHASE_SCHEDULED
UVM_PHASE_STARTED
UVM_PHASE_SYNCING
UVM_PHASE_TERMINAL
UVM_PHASE_UNINITIALIZED
UVM_PORT
UVM_POST_BODY
UVM_POST_START
UVM_PREDICT
UVM_PREDICT_DIRECT
UVM_PREDICT_READ
UVM_PREDICT_WRITE
UVM_PRE_BODY
UVM_PRE_START
UVM_RAISED
UVM_READ
UVM_REAL
UVM_REAL_DEC
UVM_REAL_EXP
UVM_REFERENCE
UVM_REG
UVM_RM_RECORD
UVM_SEQ_ARB_FIFO
UVM_SEQ_ARB_RANDOM
UVM_SEQ_ARB_STRICT_FIFO
UVM_SEQ_ARB_STRICT_RANDOM
UVM_SEQ_ARB_USER
UVM_SEQ_ARB_WEIGHTED
UVM_SEQ_LIB_ITEM
UVM_SEQ_LIB_RAND
UVM_SEQ_LIB_RANDC
UVM_SEQ_LIB_USER
UVM_SHALLOW
UVM_STOP
UVM_STOPPED
UVM_STRING
UVM_TIME
UVM_TLM_ACCEPTED
UVM_TLM_ADDRESS_ERROR_RESPONSE
UVM_TLM_BURST_ERROR_RESPONSE
UVM_TLM_BYTE_ENABLE_ERROR_RESPONSE
UVM_TLM_COMMAND_ERROR_RESPONSE
UVM_TLM_COMPLETED
UVM_TLM_GENERIC_ERROR_RESPONSE
UVM_TLM_IGNORE_COMMAND
UVM_TLM_INCOMPLETE_RESPONSE
UVM_TLM_OK_RESPONSE
UVM_TLM_READ_COMMAND
UVM_TLM_UPDATED
UVM_TLM_WRITE_COMMAND
UVM_UNFORMAT2
UVM_UNFORMAT4
UVM_UNSIGNED
UVM_WARNING
UVM_WRITE
abstract
abstractions
accept
accept_tr
adapter
add
add_by_name
add_callback
add_coverage
add_hdl_path
add_hdl_path_slice
add_int
add_mem
add_object
add_reg
add_sequences
add_slice
add_typewide_sequence
add_uvm_phases
addr
adjust_name
after_export
all_dropped
alloc_mode_e
allocate
analysis_export
apply_config_settings
b_transport
backdoor
backdoor_read
backdoor_read_func
backdoor_watch
backdoor_write
bd_kind
before_export
begin_child_tr
begin_elements
begin_event
begin_tr
begin_v
big_endian
bin_radix
blocking_put_port
body
build_coverage
burst_read
burst_write
bus2reg
bus_in
byte_en
callback_mode
can_get
can_peek
can_put
cancel
capacity
catch
check_data_width
check_type
clear
clear_extension
clear_extensions
clear_hdl_path
clear_response_queue
close
close_db
compare
compare_field
compare_field_int
compare_field_real
compare_object
compose_report_message
configure
configure_phase
connect
connect_phase
copy
create_component
create_component_by_name
create_component_by_type
create_item
create_map
create_object_by_type
current_grabber
data
debug_connected_to
debug_create_by_name
debug_provided_to
dec_radix
decode
decr
default_alloc
default_map
default_path
default_precedence
default_radix
define_access
define_domain
delete
delete_callback
delete_elements
depth
disable_auto_item_recording
disable_recording
display
display_objections
drop_objection
dropped
element
element_kind
emit
enable_print_topology
enable_recording
enable_report_id_count_summary
end_elements
end_event
end_of_elaboration_phase
end_offset
end_prematurely
end_tr
end_v
establish_link
events
exec_func
exec_task
execute
execute_item
exists
extract_phase
final_phase
find_all
find_block
find_blocks
find_override_by_name
find_override_by_type
find_unused_resources
find_wrapper_by_name
finish_on_completion
first
flush
fname
footer
for_each
format_action
format_header
format_row
free_tr_stream
from_name
full_name
generate_stimulus
get
get_abstime
get_access
get_action
get_adapter
get_addr_unit_bytes
get_address
get_addresses
get_adjacent_successor_nodes
get_ap
get_arbitration
get_arg_matches
get_arg_value
get_arg_values
get_args
get_auto_predict
get_automatic_phase_objection
get_backdoor uvm_mem
get_base_addr
get_begin_time uvm_transaction
get_block_by_name
get_blocks
get_by_name
get_by_type
get_byte_enable
get_cb
get_child
get_children
get_client
get_close_time
get_common_domain
get_compare
get_component_visitor
get_config
get_connected_to
get_context
get_coverage
get_data
get_data_length
get_db
get_default_path
get_domain
get_domain_name
get_domains
get_drain_time
get_element_container
get_elements
get_end_offset
get_end_time
get_event_pool
get_extension
get_factory
get_field_by_name
get_fields
get_file
get_filename
get_first_child
get_fname
get_frontdoor
get_full_hdl_path
get_global
get_global_pool
get_global_queue
get_handle
get_hdl_path_kinds
get_highest_precedence
get_id
get_id_count
get_if
get_immediate_children
get_imp
get_initiator
get_inst
get_inst_id
get_is_active
get_item
get_jump_target
get_len
get_lhs
get_link
get_lsb_pos
get_map_by_name
get_max_quit_count
get_mem_by_name
get_mem_by_offset
get_memories
get_message
get_message_database
get_mirrored_value
get_n_bytes
get_n_maps
get_n_memlocs
get_name
get_name_constraint
get_next
get_next_child
get_num_children
get_num_extensions
get_num_last_rsps
get_num_reqs_sent
get_num_rsps_received
get_num_waiters
get_object_type
get_objection
get_objection_count
get_objection_total
get_objectors
get_offset_in_memory
get_open_time
get_packed_size
get_parent
get_parent_map
get_parent_sequence
get_peek_export
get_peek_request_export
get_peek_response_export
get_physical_addresses
get_port
get_prev
get_prev_state
get_priority
get_propagate_mode
get_quit_count
get_radix_str
get_realtime
get_record_attribute_handle
get_recorder_from_handle
get_recorders
get_reg_by_name
get_reg_by_offset
get_regfile
get_registers
get_report_action
get_report_catcher
get_report_file_handle
get_report_max_verbosity_level
get_report_object
get_report_verbosity_level
get_reset
get_response
get_response_queue_depth
get_response_queue_error_report_disabled
get_response_status
get_rhs
get_root
get_root_blocks
get_root_map
get_root_sequence
get_root_sequence_name
get_run_count
get_schedule
get_schedule_name
get_scope
get_sequence_id
get_sequence_path
get_sequence_state
get_sequencer
get_server
get_severity_count
get_severity_set
get_start_offset
get_state
get_stream_from_handle
get_streaming_width
get_submap_offset
get_threshold
get_tool_name
get_tool_version
get_tr_handle
get_transaction_id
get_transaction_order_policy
get_trigger_data
get_trigger_time
get_type
get_type_handle
get_type_name
get_use_response_handler
get_use_sequence_info
get_uvm_domain
get_uvm_schedule
get_uvmargs
get_value
get_vfield_by_name
get_virtual_registers
get_vreg_by_name
get_vreg_by_offset
grab
has_child
has_coverage
has_do_available
has_hdl_path
has_lock
has_reset
header
identifier
implement
include_coverage
incr
incr_id_count
incr_quit_count
incr_severity_count
indent
init_sequence_library
insert
is
is_after
is_auditing
is_auto_item_recording_enabled
is_auto_updated
is_before
is_blocked
is_busy
is_child
is_dmi_allowed
is_enabled
is_full
is_grabbed
is_hdl_path_root
is_in_map
is_indv_accessible
is_item
is_known_access
is_locked
is_null
is_on
is_open
is_port
is_read
is_read_only
is_recording_enabled
is_relevant
is_response_error
is_response_ok
is_tracing
is_unbounded
is_volatile
is_write
item_done
jump
jump_to
kill
kind
knobs
last
last_req
last_rsp
len
local_map
locality
locality_e
lock
lock_model
lookup
lookup_name
lookup_regex
lookup_regex_names
lookup_scope
lookup_type
m_address
m_byte_enable
m_command
m_length
m_streaming_width
main_phase
map
master_export
match_scope
max_offset
max_random_count
mem
mem_seq
mid_do
min_offset
min_random_count
min_size
mirror
miscompares
mode
n_bits
n_bytes
nb_transport
nb_transport_bw
nb_transport_fw
needs_update
new
new_report_message
num
oct_radix
open_db
open_recorder
open_stream
pack
pack_bits
pack_bytes
pack_field_int
pack_ints
pack_object
pack_real
pack_string
pack_time
pair_ap
parent
parent_sequence
peek
peek_mem
phase_ended
phase_ready_to_end
phase_started
phase_state_change
physical
poke
poke_mem
pop_back
pop_front
post_body
post_configure_phase
post_main_phase
post_predict
post_randomize
post_read
post_reset_phase
post_start
post_trigger
post_write
pre_abort
pre_body
pre_configure_phase
pre_do
pre_predict
pre_read
pre_reset_phase
pre_shutdown_phase
pre_start
pre_write
precedence
predict
prefix
prev
print
print_accessors
print_array_footer
print_array_header
print_array_range
print_catcher
print_config
print_config_settings
print_enabled
print_field
print_generic
print_msg
print_object
print_override_info
print_resources
print_string
print_time
print_topology
process_report_message
provides_responses
push_back
push_front
put
put_ap
put_export
put_request_export
put_response
put_response_export
raise_objection
read
read_by_name
read_by_type
read_func
read_mem
read_reg
reconfigure
record
record_all_messages
record_event_tr
record_field
record_field_int
record_field_real
record_generic
record_read_access
record_string
record_time
record_write_access
recursion_policy
reference
reg2bus
reg_ap
reg_seq
register
release_all_regions
release_region
remove
remove_sequence
report_summarize
req
req_export
req_port
request_ap
request_region
reseed
reset
reset_blk
reset_quit_count
reset_report_handler
reset_severity_counts
resolve_bindings
response_ap
response_handler
result
resume
rg
rsp
rsp_export
rsp_port
run_test
rw_info
sample
sample_values
select_rand
select_randc
select_sequence
selection_mode
send_request
separator
seq_item_export
seq_item_port
sequence_count
sequencer
sequences_executed
set
set_abstime
set_action
set_address
set_arbitration
set_auto_reset
set_automatic_phase_objection
set_base_addr
set_byte_enable_length
set_command
set_component_visitor
set_context
set_coverage
set_data_length
set_default_hdl_path
set_default_index
set_default_map
set_default_tr_database
set_dmi_allowed
set_domain
set_drain_time
set_extension
set_factory
set_file
set_filename
set_hdl_path_root
set_id
set_id_info
set_initiator
set_inst_override
set_inst_override_by_name
set_inst_override_by_type
set_int_local
set_item_context
set_jump_phase
set_lhs
set_line
set_max_quit_count
set_max_zero_time_wait_relevant_count
set_message_database
set_mode
set_name_override
set_num_last_reqs
set_num_last_rsps
set_object_local
set_offset
set_override
set_parent_sequence
set_phase_imp
set_priority
set_priority_type
set_quit_count
set_read
set_read_only
set_report_default_file
set_report_default_file_hier
set_report_handler
set_report_id_action
set_report_id_action_hier
set_report_id_file
set_report_id_file_hier
set_report_id_verbosity
set_report_id_verbosity_hier
set_report_message
set_report_object
set_report_server
set_report_severity_action
set_report_severity_file
set_report_severity_file_hier
set_report_severity_id_action_hier
set_report_severity_id_file
set_report_severity_id_override
set_report_severity_id_verbosity
set_report_severity_override
set_report_verbosity_level
set_report_verbosity_level_hier
set_reset
set_response_queue_depth
set_response_queue_error_report_disabled
set_response_status
set_rhs
set_scope
set_sequencer
set_server
set_severity
set_severity_count
set_starting_phase
set_streaming_width
set_string_local
set_submap_offset
set_threshold
set_time_resolution
set_timeout
set_transaction_id
set_type_override
set_type_override_by_name
set_type_override_by_type
set_use_sequence_info
set_verbosity
set_volatility
set_write
sev
show_max
show_root
show_terminator
show_verbosity
size
slave_export
slices
sort_by_precedence
spell_check
start
start_of_simulation_phase
status
stop
stop_phase_sequence
stop_sequences
stop_stimulus_generation
summarize
suspend
tests
top_levels
tr_database
trace_mode
transport
transport_export
traverse
try_get
try_next_item
try_peek
try_put
try_set
turn_off_auditing
turn_off_tracing
turn_on_auditing
turn_on_tracing
type_name
ungrab
unlock
unpack_bits
unpack_bytes
unpack_field
unpack_field_int
unpack_object
unpack_real
unpack_string
unpack_time
unsigned_radix
update
update_reg
use_metadata
use_record_attribute
use_response_handler
use_uvm_seeding
used
user_priority_arbitration
uvm_access_e
uvm_action
uvm_active_passive_enum
uvm_agent
uvm_algorithmic_comparator
uvm_analysis_export
uvm_analysis_port
uvm_barrier
uvm_bits_to_string
uvm_bitstream_t
uvm_bottomup_phase
uvm_build_phase
uvm_built_in_pair
uvm_callback
uvm_callback is_export
uvm_callback_iter
uvm_callback_iter get_check_on_read
uvm_callbacks
uvm_cause_effect_link
uvm_check_e
uvm_check_phase
uvm_class_pair
uvm_cmdline_processor
uvm_cmdline_processor +UVM_MAX_QUIT_COUNT
uvm_cmdline_processor +UVM_PHASE_TRACE
uvm_cmdline_processor +uvm_set_default_sequence
uvm_cmdline_processor +uvm_set_type_override
uvm_cmdline_processor get_inst_count
uvm_comparer
uvm_comparer compare_string
uvm_comparer show_radix
uvm_component
uvm_component convert2string
uvm_component get_next_item
uvm_component post_do
uvm_component post_shutdown_phase
uvm_component print_config_with_audit
uvm_component print_real
uvm_component prior
uvm_component run_phase
uvm_component set_report_severity_id_action
uvm_component start_phase_sequence
uvm_component sync
uvm_component_name_check_visitor
uvm_component_registry
uvm_config_db
uvm_config_db_options
uvm_configure_phase
uvm_connect_phase
uvm_coreservice_t
uvm_coverage_model_e
uvm_default_comparer
uvm_default_coreservice_t
uvm_default_coreservice_t get_depth
uvm_default_coreservice_t set_depth
uvm_default_factory
uvm_default_line_printer
uvm_default_packer
uvm_default_printer
uvm_default_report_server
uvm_default_report_server init_access_record
uvm_default_table_printer
uvm_default_tree_printerUVM 1.2 Class Reference 923
uvm_domain
uvm_domain get_comp
uvm_driver
uvm_elem_kind_e
uvm_end_of_elaboration_phase
uvm_endianness_e
uvm_enum_wrapper
uvm_env
uvm_event
uvm_event_base
uvm_event_base wait_ptrigger
uvm_event_callback
uvm_extract_phase
uvm_factory
uvm_factory debug_create_by_type
uvm_factory finish_item
uvm_final_phase
uvm_get_report_object
uvm_get_to_lock_dap
uvm_hdl_check_path
uvm_hdl_deposit
uvm_hdl_force
uvm_hdl_force_time
uvm_hdl_path_concat
uvm_hdl_path_concat add_string
uvm_hdl_path_concat start_offset
uvm_hdl_path_slice
uvm_hdl_read
uvm_hdl_release
uvm_hdl_release_and_read
uvm_heartbeat
uvm_heartbeat set_name
uvm_hier_e
uvm_in_order_comparator
uvm_integral_t
uvm_is_match
uvm_line_printer
uvm_link_base
uvm_link_base get_line
uvm_link_base get_rights
uvm_main_phase
uvm_mem
uvm_mem_access_seq
uvm_mem_cb
uvm_mem_cb_iter
uvm_mem_mam
uvm_mem_mam_cfg
uvm_mem_mam_cfg model
uvm_mem_mam_policy
uvm_mem_mam_policy lineno
uvm_mem_region
uvm_mem_region get_starting_phase
uvm_mem_shared_access_seq
uvm_mem_single_access_seq
uvm_mem_single_walk_seq
uvm_mem_walk_seq
uvm_monitor
uvm_object
uvm_object 
uvm_object create
uvm_object record_error_tr
uvm_object reserve_region
uvm_object_registry
uvm_object_string_pool
uvm_object_wrapper
uvm_object_wrapper create_object_by_name
uvm_objection
uvm_objection get_offset
uvm_objection get_provided_to
uvm_objection_callback
uvm_objection_callback dump
uvm_objection_event
uvm_packer
uvm_packer is_off
uvm_packer pack_field
uvm_packer unpack_ints
uvm_packer unsync
uvm_parent_child_link
uvm_path_e
uvm_phase
uvm_phase get_incr
uvm_phase get_last
uvm_phase is_active
uvm_phase raised
uvm_phase_cb
uvm_phase_state
uvm_phase_state_change
uvm_phase_state_change get_stream
uvm_phase_type
uvm_pool
uvm_port_base
uvm_port_component
uvm_port_component_base
uvm_port_component_base is_quit_count_reached
uvm_port_type_e
uvm_post_configure_phase
uvm_post_main_phase
uvm_post_reset_phase
uvm_post_shutdown_phase
uvm_pre_configure_phase
uvm_pre_main_phase
uvm_pre_reset_phase
uvm_pre_shutdown_phase
uvm_predict_e
uvm_printer
uvm_printer free
uvm_printer print_field_int
uvm_printer_knobs
uvm_printer_knobs hex_radix
uvm_printer_knobs offset
uvm_printer_knobs print_config_matches
uvm_process_report_message
uvm_push_driver
uvm_push_sequencer
uvm_queue
uvm_radix_enum
uvm_random_stimulus
uvm_recorder
uvm_recorder get_command
uvm_recorder in_use
uvm_recorder policy
uvm_recorder record_object
uvm_recursion_policy_enum
uvm_reg
uvm_reg get_adjacent_predecessor_nodes
uvm_reg_access_seq
uvm_reg_adapter
uvm_reg_adapter path
uvm_reg_addr_logic_t
uvm_reg_addr_t uvm_reg_bd_cb
uvm_reg_backdoor
uvm_reg_backdoor 
uvm_reg_bd_cb_iter
uvm_reg_bit_bash_seq
uvm_reg_block
uvm_reg_block build_phase
uvm_reg_block check_phase
uvm_reg_block create_object
uvm_reg_block find_by_name
uvm_reg_block get_current_item
uvm_reg_block get_default_tr_database
uvm_reg_block get_maps
uvm_reg_block get_memory
uvm_reg_block get_virtual_fields
uvm_reg_block is_imp
uvm_reg_block set_data
uvm_reg_block set_heartbeat
uvm_reg_bus_op
uvm_reg_byte_en_t
uvm_reg_cb uvm_reg_cb_iter
uvm_reg_cbs
uvm_reg_cvr_t
uvm_reg_data_logic_t
uvm_reg_data_t
uvm_reg_field
uvm_reg_field get_lsb_pos_in_register
uvm_reg_field get_n_bits
uvm_reg_fieldUVM 1.2 Class Reference 882
uvm_reg_field_cb
uvm_reg_field_cb_iter
uvm_reg_fifo
uvm_reg_fifo mirror_reg
uvm_reg_file
uvm_reg_file get_full_name
uvm_reg_file get_region
uvm_reg_frontdoor
uvm_reg_hw_reset_seq
uvm_reg_indirect_data
uvm_reg_item
uvm_reg_item supports_byte_enable
uvm_reg_map
uvm_reg_map add_sequence
uvm_reg_map get_plusargs
uvm_reg_map get_submaps
uvm_reg_map set_byte_enable
uvm_reg_mapUVM 1.2 Class Reference 883
uvm_reg_mem_built_in_seq
uvm_reg_mem_hdl_paths_seq
uvm_reg_mem_shared_access_seq
uvm_reg_mem_shared_access_seq 
uvm_reg_mem_shared_access_seq reg_seqr
uvm_reg_mem_shared_access_seq reset_phase
uvm_reg_mem_tests_e
uvm_reg_predictor
uvm_reg_predictor pre_randomize
uvm_reg_read_only_cbs
uvm_reg_sequence
uvm_reg_sequence peek_reg
uvm_reg_sequence poke_reg
uvm_reg_sequence read_mem_by_name
uvm_reg_sequence read_reg_by_name
uvm_reg_sequence write_mem_by_name
uvm_reg_sequence write_reg_by_name
uvm_reg_shared_access_seq
uvm_reg_single_access_seq
uvm_reg_single_bit_bash_seq
uvm_reg_tlm_adapter
uvm_reg_transaction_order_policy
uvm_reg_write_only_cbs
uvm_related_link
uvm_related_link 
uvm_report
uvm_report_catcher
uvm_report_catcher check_config_usage
uvm_report_enabled
uvm_report_fatal
uvm_report_handler
uvm_report_info
uvm_report_message
uvm_report_message get_first
uvm_report_message get_report_server
uvm_report_message next
uvm_report_message set_file_name
uvm_report_message set_frontdoor
uvm_report_message set_id_count
uvm_report_message uvm_report_message_element_base
uvm_report_message_element_base
uvm_report_message_element_container
uvm_report_message_element_container add_path
uvm_report_message_element_container add_submap
uvm_report_message_element_container delete_by_name
uvm_report_message_element_container die
uvm_report_message_int_element
uvm_report_message_object_element
uvm_report_message_object_element uvm_report_message_string_element
uvm_report_message_string_element get_verbosity
uvm_report_object
uvm_report_object get_report_handler
uvm_report_object set_report_severity_action_hier
uvm_report_object set_report_severity_id_file_hier
uvm_report_object set_report_severity_id_verbosity_hier
uvm_report_object uvm_report_error
uvm_report_object uvm_resource_base
uvm_report_object uvm_sequence_item
uvm_report_phase
uvm_report_server
uvm_report_server get_id_set
uvm_report_server get_max_size
uvm_report_server get_severity
uvm_report_server get_size
uvm_report_warning
uvm_reset_phase
uvm_resource
uvm_resource_base
uvm_resource_base max_size
uvm_resource_db
uvm_resource_db_options
uvm_resource_options
uvm_resource_pool
uvm_resource_pool set_propagate_mode
uvm_resource_pool sprint
uvm_resource_poolUVM 1.2 Class Reference 907
uvm_root
uvm_run_phase
uvm_scoreboard
uvm_seq_item_pull_imp
uvm_sequence
uvm_sequence_base
uvm_sequence_base clone
uvm_sequence_base pre_main_phase
uvm_sequence_base pre_trigger
uvm_sequence_base set_backdoor
uvm_sequence_base set_priority_name
uvm_sequence_base start_item
uvm_sequence_base wait_for_sequences
uvm_sequence_item
uvm_sequence_item get_phase_type
uvm_sequence_item get_sequences
uvm_sequence_item set_value
uvm_sequence_lib_modeUVM 1.2 Class Reference 914
uvm_sequence_library
uvm_sequence_library add_typewide_sequences
uvm_sequence_library report_phase
uvm_sequence_libraryUVM 1.2 Class Reference 888
uvm_sequence_state_enum
uvm_sequencer
uvm_sequencer_arb_mode
uvm_sequencer_base
uvm_sequencer_base execute_report_message
uvm_sequencer_base is_closed
uvm_sequencer_base set_auto_predict
uvm_sequencer_base set_message
uvm_sequencer_base wait_for_item_done
uvm_sequencer_base wait_for_relevant
uvm_sequencer_param_base
uvm_set_before_get_dap
uvm_set_get_dap_base
uvm_severity
uvm_shutdown_phase
uvm_simple_lock_dap
uvm_simple_lock_dap set priority
uvm_simple_lock_dap unpack
uvm_split_string
uvm_sqr_if_base
uvm_start_of_simulation_phase
uvm_status_e
uvm_string_to_bits
uvm_structure_proxy
uvm_subscriber
uvm_subscriber analysis_export
uvm_table_printer
uvm_task_phase
uvm_test
uvm_text_recorder
uvm_text_recorder 
uvm_text_tr_database
uvm_text_tr_stream
uvm_tlm_analysis_fifo
uvm_tlm_b_initiator_socket
uvm_tlm_b_target_socket
uvm_tlm_command_e
uvm_tlm_extension
uvm_tlm_extension_base
uvm_tlm_extension_base get_type_handle_name
uvm_tlm_fifo
uvm_tlm_fifo_base
uvm_tlm_generic_payload
uvm_tlm_generic_payload get_byte_enable_length
uvm_tlm_generic_payload get_num_last_reqs
uvm_tlm_generic_payload get_response_string
uvm_tlm_generic_payload get_streams
uvm_tlm_generic_payload is_empty
uvm_tlm_generic_payload issue
uvm_tlm_generic_payload m_byte_enable_length
uvm_tlm_generic_payload m_data
uvm_tlm_generic_payload m_dmi
uvm_tlm_generic_payload m_response_status
uvm_tlm_generic_payload mam
uvm_tlm_generic_payload set_anonymous
uvm_tlm_generic_payload set_check_on_read
uvm_tlm_generic_payload set_compare
uvm_tlm_generic_payload set_default
uvm_tlm_generic_payload shutdown_phase
uvm_tlm_generic_payloadUVM 1.2 Class Reference 903
uvm_tlm_if
uvm_tlm_if_base
uvm_tlm_nb_initiator_socket
uvm_tlm_nb_passthrough_target_socket
uvm_tlm_nb_target_socket
uvm_tlm_nb_transport_bw_export
uvm_tlm_nb_transport_bw_port
uvm_tlm_phase_e
uvm_tlm_req_rsp_channel
uvm_tlm_response_status_e
uvm_tlm_sync_e
uvm_tlm_time
uvm_tlm_time get_accept_time
uvm_tlm_time set_access
uvm_tlm_transport_channel
uvm_top
uvm_topdown_phase
uvm_topdown_phase trigger
uvm_tr_database
uvm_tr_database 
uvm_tr_database 
uvm_tr_database order
uvm_tr_stream
uvm_tr_stream 
uvm_tr_stream get_default_hdl_path
uvm_tr_stream get_hdl_path
uvm_tr_stream get_stream_type_name
uvm_transaction
uvm_transaction encode
uvm_transaction extension
uvm_transaction get_tr_stream
uvm_transaction set_transaction_order_policy
uvm_tree_printer
uvm_utils
uvm_verbosity
uvm_visitor
uvm_visitor_adapter
uvm_wait_for_nba_region
uvm_wait_op
value
verbosity
visit
wait_for
wait_for_change
wait_for_grant
wait_for_sequence_state
wait_for_state
wait_modified
wait_off
wait_on
wait_trigger
wait_trigger_data
write
write_attribute
write_attribute_int
write_by_name
write_by_type
write_mem
write_reg
disable_warnings
xm_mirror_force
