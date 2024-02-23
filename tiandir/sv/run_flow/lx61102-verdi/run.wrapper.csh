#!/bin/csh -f
onintr trap-STOP
touch .run.start
./run.csh
trap-STOP:
rm -f .run.start
