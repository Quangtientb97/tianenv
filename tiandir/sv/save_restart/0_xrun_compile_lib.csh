xrun -64bit -access +rwc -sv -disable_sem2009 -licq \
    -c \
    -timescale 1ns/10ps \
    rtl.v \
    tb.sv \
    -process_save \
    -mkdbssnap \
    -xmlibdirname lib_dbs
