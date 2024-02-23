xrun -64bit\
    -process_save \
    -dbsname run@/mnt/users/tientq/working_space/sv/save_restart/lib_dbs \
    dynamic_test_pkg.sv \
    -input @"task dynamic_test_pkg::body; run;exit" \
    -dbssnap boot \
