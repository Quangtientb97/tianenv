#!/usr/bin/python3
#----------------------------------------------------------------------
#  File name     : get_inout.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-06-03 12:02:30
#----------------------------------------------------------------------
import re, os
import sys ; sys.path.append("/mnt/users/tientq/tiandir/python/")
import tian; sys.path.append(tian.user_library_path)
from   tian            import run, print_banner, excel
from   tian.global_var import *

sv_file = tian.argv.get_argument_by_prefix("-f")

sv_data = tian.file.read(sv_file)

ports = []

for line in sv_data:
    line = re.sub("\/\/.*", "", line)
    line = re.sub("\/\*.*\*\/", "", line)
    if ("input" in line) or ("output" in line):
        line      = line.replace(",", "")
        line      = line.replace(";", "")
        line_info = re.split(r'[ \t]+', line)
        line      = line_info[-1]
        ports.append(line + "\n")

ports.sort()

tian.file.write("ports.sv", ports)


# --------------------------------------------------------------------+
# Main                                                                |
# --------------------------------------------------------------------+



