#!/usr/bin/python3
#----------------------------------------------------------------------
#  File name     : create_oop_dictionary.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-03-27 13:28:20
#----------------------------------------------------------------------
import re, os
import sys ; sys.path.append("/mnt/users/tientq/tiandir/python/")
import tian; sys.path.append(tian.user_library_path)
from   tian            import run, print_banner, excel
from   tian.global_var import *

# --------------------------------------------------------------------+
# Main                                                                |
# --------------------------------------------------------------------+
auto_complete_link = './tian/auto_complete.py'
tian.file.write(auto_complete_link, "")

file_names         = tian.get_file_names("./tian")
for fn in file_names:
    auto_complete = []
    tian.file.append(auto_complete_link, "\n")
    raw = tian.run_with_output(f"grep -r def ./tian/{fn}")
    for item in raw:
        item = re.sub("\/", ".", item)
        item = item.replace("..", "")
        item = re.sub("\s*def", f"tian.{fn}", item)
        item = re.sub(".py ", ".", item)
        item = re.sub("\).*", ")", item)
        auto_complete.append(item + "\n")
        auto_complete = sorted(auto_complete)
    tian.file.append(auto_complete_link, auto_complete)

tian.file.replace(".global_func", "", auto_complete_link)
tian.file.replace(".*#.*\\n"    , "", auto_complete_link)

excel_complete = tian.file.read(auto_complete_link)

tian.file.append(auto_complete_link, "\n")
for item in excel_complete:
    if ("excel" in item):
        item = item.replace("tian.excel", "workexcel")
        tian.file.append(auto_complete_link, item + "\n")

