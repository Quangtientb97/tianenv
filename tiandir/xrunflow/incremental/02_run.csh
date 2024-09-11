xrun \
	-sv -64 \
    -disable_sem2009    \
	-timescale 1ns/1ns \
	./testbench/testbench.sv \
	-input init_w_link.tcl \
	-top t \
    -primname dut@/mnt/users/tientq/NWP_PROJECT/design/softmacro/PCIE_TOP_WRAP/compile \
	+access+rcw
