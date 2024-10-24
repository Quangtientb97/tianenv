inorea py_env_Ent <esc>:set formatoptions-=cro<cr>i
            \#!/usr/bin/python3<cr>
            \#----------------------------------------------------------------------<cr>
            \#  File name     : <esc>:r!basename %<cr>i<bs><esc>o
            \#  Function      : <empty><cr>
            \#  Author        : Tian<cr>
            \#  Email         : tientq@coasia.com<cr>
            \#  Created time  : <esc>:r !date '+\%Y-\%m-\%d \%H:\%M:\%S'<cr>i<bs><esc>o
            \#----------------------------------------------------------------------<cr>
            \import re, os<cr>
            \import sys ; sys.path.append("/mnt/users/tientq/tiandir/python/")<cr>
            \import tian; sys.path.append(tian.user_library_path)<cr>
            \from   tian           import print_banner, excel<cr>
            \<cr>
            \# --------------------------------------------------------------------+<cr>
            \# Handles arguments                                                   \|<cr>
            \# --------------------------------------------------------------------+<cr>
            \<cr>
            \<cr>
            \# --------------------------------------------------------------------+<cr>
            \# Main                                                                \|<cr>
            \# --------------------------------------------------------------------+<cr>
            \<esc>:set formatoptions+=cro<cr>

inorea py_parallel_Ent <esc>:set formatoptions-=cro<cr>i
            \from concurrent.futures import ThreadPoolExecutor<cr>
            \with ThreadPoolExecutor() as executor:<cr>
            \# Create sheets in parallel<cr>
            \executor.map(lambda register: create_reg_sheet(workexcel, register), registers)<cr>
            \<esc>:set formatoptions+=cro<cr>

inorea py_try_except_Ent <esc>:set formatoptions-=cro<cr>i
            \try:<cr>
            \# TODO<cr>
            \except Exception as e:<cr>
            \print(f"Error Exception: {e}")<cr>
            \<esc>:set formatoptions+=cro<cr>
