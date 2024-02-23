#!/usr/bin/csh
source /mnt/share/common/env/cshrc.env
source /mnt/users/DV/lx61102/env.csh
source /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/env.csh
source $PROJECT_COMP_DIR/cdn-vip-lib/cdn_vip_env_xrun_sv_uvm_64.csh
verdi -top "work.top work.soc_tb"

