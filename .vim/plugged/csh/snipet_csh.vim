inorea csh_env_Ent <esc>:set formatoptions-=cro<cr>i
            \#!/usr/bin/csh<cr>
            \#--------------------------------------------------------------------<cr>
            \#  File name     : <esc>:r!basename %<cr>i<bs><esc>o
            \#  Function      : <empty><cr>
            \Author        : Tian<cr>
            \Email         : tientq@coasia.com<cr>
            \Created time  : <esc>:r !date '+\%Y-\%m-\%d \%H:\%M:\%S'<cr>i<bs><esc>o
            \#--------------------------------------------------------------------<cr>
            \set curfile  = `realpath $0`<cr>
            \set workdir  = `dirname $curfile`<cr>
            \<cr>
            \echo $workdir<cr>
            \<esc>:set formatoptions+=cro<cr>
