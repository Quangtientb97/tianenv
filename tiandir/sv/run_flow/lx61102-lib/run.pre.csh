#!/usr/bin/csh
chmod -R u+w *
set lst=`ls -a -I "run*.csh" -I "." -I ".."`
foreach itm ( $lst )
    rm -rf $itm
end

