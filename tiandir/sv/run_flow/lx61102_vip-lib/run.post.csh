#!/usr/bin/csh
set lst=`ls -a -I "run*.csh" -I "." -I ".."`
foreach itm ( $lst )
    chmod -R a-w $itm
end

