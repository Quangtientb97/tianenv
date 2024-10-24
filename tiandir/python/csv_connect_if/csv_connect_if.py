#!/usr/bin/python3
#----------------------------------------------------------------------
#  File name     : csv_connect_if.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-06-03 12:31:29
#----------------------------------------------------------------------
import re, os
import sys ; sys.path.append("/mnt/users/tientq/tiandir/python/")
import tian; sys.path.append(tian.user_library_path)
from   tian            import run, print_banner, excel
from   tian.global_var import *

# --------------------------------------------------------------------+
# Main                                                                |
# --------------------------------------------------------------------+
if (tian.argv.len() == 1):
    tian.run("cat README")
    exit()

apb_list = []
ahb_list = []
axi_list = []
ace_list = []


# format -apb dbi-dbi-master
# keyword : dbi
# if name : dbi
# kind    : master
while tian.argv.has_argument("-apb"):
    apb_info = tian.argv.get_argument_by_prefix("-apb").split("-")
    apb_list.append(apb_info)

while tian.argv.has_argument("-ahb"):
    ahb_info = tian.argv.get_argument_by_prefix("-ahb").split("-")
    ahb_list.append(ahb_info)

while tian.argv.has_argument("-axi"):
    axi_info = tian.argv.get_argument_by_prefix("-axi").split("-")
    axi_list.append(axi_info)

while tian.argv.has_argument("-ace"):
    ace_info = tian.argv.get_argument_by_prefix("-ace").split("-")
    ace_list.append(ace_info)

option_00 = ""

for apb_info in apb_list:
    apb_filter = apb_info[0]
    apb_name   = apb_info[1]
    apb_kind   = apb_info[2]
    if (apb_kind == "master"):
        option_00 += f"apb_{apb_name}_m "
        tian.run(f"grep {apb_filter} ports.sv > inout/apb_{apb_name}_m")
    elif (apb_kind == "slave"):
        option_00 += f"apb_{apb_name}_s "
        tian.run(f"grep {apb_filter} ports.sv > inout/apb_{apb_name}_s")

for ahb_info in ahb_list:
    ahb_filter = ahb_info[0]
    ahb_name   = ahb_info[1]
    ahb_kind   = ahb_info[2]
    if (ahb_kind == "master"):
        option_00 += f"ahb_{ahb_name}_m "
        tian.run(f"grep {ahb_filter} ports.sv > inout/ahb_{ahb_name}_m")
    elif (ahb_kind == "slave"):
        option_00 += f"ahb_{ahb_name}_s "
        tian.run(f"grep {ahb_filter} ports.sv > inout/ahb_{ahb_name}_s")

for axi_info in axi_list:
    axi_filter = axi_info[0]
    axi_name   = axi_info[1]
    axi_kind   = axi_info[2]
    if (axi_kind == "master"):
        option_00 += f"axi_{axi_name}_m "
        tian.run(f"grep {axi_filter} ports.sv > inout/axi_{axi_name}_m")
    elif (axi_kind == "slave"):
        option_00 += f"axi_{axi_name}_s "
        tian.run(f"grep {axi_filter} ports.sv > inout/axi_{axi_name}_s")

for ace_info in ace_list:
    ace_filter = ace_info[0]
    ace_name   = ace_info[1]
    ace_kind   = ace_info[2]
    if (ace_kind == "master"):
        option_00 += f"ace_{ace_name}_m "
        tian.run(f"grep {ace_filter} ports.sv > inout/ace_{ace_name}_m")
    elif (ace_kind == "slave"):
        option_00 += f"ace_{ace_name}_s "
        tian.run(f"grep {ace_filter} ports.sv > inout/ace_{ace_name}_s")

tian.run(f"python3 00_create_init_file.py {option_00}")
tian.run(f"python3 01_match_signal.py")

curtime = tian.time.getday().replace(" ", "").replace(":", "").replace("-", "")
tian.run(f"python3 02_connect_signal.py {curtime}.xlsx")
print("check result on: ./result/assign.sv")
