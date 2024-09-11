#!/usr/bin/python3
#----------------------------------------------------------------------
#  File name     : add_header.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-09-06 11:07:23
#----------------------------------------------------------------------
import re, os
import sys ; sys.path.append("/mnt/users/tientq/tiandir/python/")
import tian; sys.path.append(tian.user_library_path)
from   tian            import run, print_banner, excel
from   tian.global_var import *

# --------------------------------------------------------------------+
# Main                                                                |
# --------------------------------------------------------------------+
tian.run("cp -rf tian_macros.svh tian_macros.svh_bk")
header = tian.run_with_output("grep define tian_macros.svh")

tian_macros = tian.file.read("tian_macros.svh")

tian.file.write("tian_macros.svh", "")
for i in header:
    tian.file.append("tian_macros.svh", "// " + i.replace('\\', '').replace("`define ", "`") + "\n")
for i in tian_macros:
    tian.file.append("tian_macros.svh", i + "\n")



