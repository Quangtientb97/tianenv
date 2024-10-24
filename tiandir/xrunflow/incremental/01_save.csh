
setenv top PCIE_TOP_WRAP

xrun -top $top \
	-sv -64 -access +rcw \
    -disable_sem2009 \
	-timescale 1ns/1ns \
    -reflib /mnt/users/tientq/tiandir/xrunflow/incremental/SIM/compile \
	+define+SYNTHESIS \
    -mkprimsnap \
    -href "@: ... *" \
#    -href href.txt \
    -snapshot dut \
