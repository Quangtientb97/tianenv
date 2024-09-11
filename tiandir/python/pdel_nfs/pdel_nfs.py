#!/usr/bin/python3
#----------------------------------------------------------------------
#  File name     : pdel_nfs.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-08-13 17:07:40
#----------------------------------------------------------------------
import re, os
import sys ; sys.path.append("/mnt/users/tientq/tiandir/python/")
import tian; sys.path.append(tian.user_library_path)
from   tian            import run, print_banner, excel
from   tian.global_var import *

# --------------------------------------------------------------------+
# Main                                                                |
# --------------------------------------------------------------------+
def remove_nfs_file(nfs_file:str):
    nfs_info = tian.run_with_output(f"lsof {nfs_file}")
    pid = re.findall("\w+", nfs_info[1])[1]
    tian.run(f"kill -9 {pid}")
    try:
        tian.run(f"rm -rf {nfs_file}")
    except:
        print(f"Cannot remove {nfs_file}")

if (tian.argv.len() != 2):
    print("pdel_nfs <folder>")
    exit()

nfs_folder = sys.argv[1]
nfs_files  = tian.get_file_names(nfs_folder)

for nfs_file in nfs_files:
    remove_nfs_file(f"{nfs_folder}/{nfs_file}")



