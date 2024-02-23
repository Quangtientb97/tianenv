#!/usr/bin/csh
chmod -R u+w *
set lst=`ls -a -I "run*.csh" -I "*.tcl" -I "." -I ".."`
foreach itm ( $lst )
    rm -rf $itm
end

