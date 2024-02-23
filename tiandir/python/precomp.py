import re, os, sys, readline
sys.path.append("/mnt/users/tientq/python_dir") 
sys.path.append("/mnt/users/tientq/.local/lib/python3/site-packages") 
import tian

import jinja2

rfile_link = sys.argv[1]
rfile = tian.read_file(rfile_link)

line_idx      = 0
isPass        = 1
blk_cmt_start = 0
blk_cmt_end   = 0

for line in rfile:
    line_idx += 1
    line = line.replace('\\', "")

    if "/*" in line:
        blk_cmt_start = 1
        blk_cmt_end   = 0

    if "*/" in line:
        blk_cmt_start = 0
        blk_cmt_end   = 1

    if re.findall("[ ]*;[ ]*\n", line) == []:
        if ("for^[a-z]" in line) and ("," in line):
            print(f"{rfile_link} {tian.GREEN}+{line_idx}{tian.RESET}: " + line.replace("\n", ""))
            print(f"                Must use ';' instead of ','\n")
            isPass = 0
        if ("case^[a-z]" in line) and (";" in line):
            print(f"{rfile_link} {tian.GREEN}+{line_idx}{tian.RESET}: " + line.replace("\n", ""))
            print(f"                case-syntax dont need semicolon")
            isPass = 0

        if (blk_cmt_start == 1) and (blk_cmt_end == 0):
            continue
        if "//" in line:
            continue
        if "/*" in line:
            continue
        if "`uvm_" in line:
            continue
        if "`if" in line:
            continue
        if "include" in line:
            continue
        if "define" in line:
            continue
        if "begin" in line:
            continue
        if "fork" in line:
            continue
        if "join" in line:
            continue
        if "end" in line:
            continue
        if "endclass" in line:
            continue
        if "endfunction" in line:
            continue
        if "endtask" in line:
            continue
        if re.findall("[a-zA-Z0-9]", line) == []:
            continue
        if re.findall("[ ]*[{(][ ]*\n", line) != []:
            continue
        if re.findall("[ ]*}[ ]*\n", line) != []:
            continue
        isPass = 0
        print(f"{rfile_link} {tian.GREEN}+{line_idx}{tian.RESET}: " + line.replace("\n", ""))

if isPass == 1:
    tian.print_banner(f"Compile {rfile_link} successfully!")

    





 
