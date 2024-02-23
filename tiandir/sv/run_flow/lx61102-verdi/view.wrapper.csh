#!/bin/csh -f
onintr trap-STOP
touch .view.start
./view.csh
trap-STOP:
rm -f .view.start
