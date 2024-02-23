#!/usr/bin/csh
source /mnt/share/common/env/cshrc.env
source /mnt/users/DV/lx61102/env.csh
source /mnt/users/DV/lx61102/WS/ML4_DEV04/lx61102_tientq_ws_9/verification/soc/env.csh

#   Prerun
source ./run.pre.csh

#   Run
$CDNS_VIP_HOME/$CDNS_ARCH/bin/cdn_vip_setup_env \
    -64 -v -m sv_uvm -s xmsim \
    -cdn_vip_root $CDNS_VIP_HOME -csh \
    -uvmver 1.2 \
    -cdn_vip_lib cdn_vip_lib -i "ahb apb jtag uart spi i2c"


#   Postrun
source ./run.post.csh

