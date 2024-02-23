#!/bin/csh -f
#prerun
source env.csh
#run
bsub  -Ip "imc -exec merge.tcl"
