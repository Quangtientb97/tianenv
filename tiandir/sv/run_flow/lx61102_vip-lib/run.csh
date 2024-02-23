#!/usr/bin/csh
source /mnt/share/common/env/cshrc.env
source /mnt/users/DV/lx61102/env.csh
source /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/env.csh

#   Prerun
source ./run.pre.csh

#   Run
xrun -64bit -access +rwc -sv -disable_sem2009 -licq \
    -timescale 1ns/10ps \
    -vtimescale 10ps/10ps \
    -define DV_TEST \
    -define SIM_POWER_PINS \
    -define SIM_FAST_ERASE \
    -compile \
    -makelib /mnt/users/DV/lx61102/SIM/ML4_DEV04/lx61102_tientq_ws_9/compile/lx61102_vip-lib/lx61102_vip_lib \
    -define RTL \
    -define UVM_HDL_MAX_WIDTH=1248 \
    -f $PROJECT_RTL_DIR/top/lx61102/rtl_codes/vcode.f \
    -roelab \
    -endlib \

#   Postrun
source ./run.post.csh

