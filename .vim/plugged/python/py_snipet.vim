inorea py_jj2_Ent from jinja2 import Template<cr><cr>
            \data_done = ""<cr>
            \with open("__template_link__", 'r') as f:<cr>
            \template_data = f.read()<cr>
            \data_done += Template(template_data).render(_list_data=_list_data)<esc>

inorea py_env_Ent <esc>:set formatoptions-=cro<cr>i
            \#!/usr/bin/python3<cr>
            \#--------------------------------------------------------------------<cr>
            \#  File name     : <esc>:r!basename %<cr>i<bs><esc>o
            \#  Function      : <empty><cr>
            \#  Author        : Tian<cr>
            \#  Email         : tientq@coasia.com<cr>
            \#  Created time  : <esc>:r !date '+\%Y-\%m-\%d \%H:\%M:\%S'<cr>i<bs><esc>o
            \#--------------------------------------------------------------------<cr>
            \import re, os<cr>
            \import sys ; sys.path.append("/mnt/users/tientq/tiandir/python/")<cr>
            \import tian; sys.path.append(tian.user_library_path)<cr>
            \from   tian  import run, print_banner<cr>
            \<cr>
            \curfile = os.path.realpath(sys.argv[0])<cr>
            \curdir  = os.path.dirname(curfile)<cr>
            \<cr>
            \<esc>:set formatoptions+=cro<cr>
