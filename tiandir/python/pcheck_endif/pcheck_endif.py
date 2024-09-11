#!/usr/bin/python3
#----------------------------------------------------------------------
#  File name     : check_endif.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-07-30 12:12:19
#----------------------------------------------------------------------
import re, os
import sys ; sys.path.append("/mnt/users/tientq/tiandir/python/")
import tian; sys.path.append(tian.user_library_path)
from   tian            import run, print_banner, excel
from   tian.global_var import *

# --------------------------------------------------------------------+
# Main                                                                |
# --------------------------------------------------------------------+
if (len(sys.argv) != 2):
    print(f"{tian.RED} Wrong syntax{tian.RESET}")
    print("    $ check_endif <sv_file>")
    exit()

sv_file = sys.argv[1]

ifdef_count  = 0
ifndef_count = 0
endif_count  = 0

text = tian.file.read(sv_file)

for line in text:
    # skip comment line
    if (re.findall("^\s*\/\/", line) != []):
        continue

    if ("`ifdef"  in line): ifdef_count  += 1
    if ("`ifndef" in line): ifndef_count += 1
    if ("`endif"  in line): endif_count  += 1

    if (re.findall("^\s*`elsif\s*$", line) != []):
        print(f"*Error: `elsif hasn't argv\n")

if (endif_count != (ifdef_count + ifndef_count)):
    print(f"{tian.RED}*Error: open and close count mismatch!!!{tian.RESET}")
else:
    print(f"{tian.GREEN}Success: Open and close count Match!!!{tian.RESET}")

print(f"    `ifdef  : {ifdef_count}")
print(f"    `ifndef : {ifndef_count}")
print(f"    `endif  : {endif_count}")

