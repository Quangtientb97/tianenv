#!/usr/bin/python3
#----------------------------------------------------------------------
#  File name     : 01_connect_signal.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-03-22 12:54:55
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
    print("Wrong syntax:")
    print("    $ py 02_connect_signal.py <excel_link>")
excel_link = sys.argv[1]
workexcel  = excel(excel_link)
workbook   = workexcel.wb

sheet_names = workbook.get_sheet_names()

tian.run("mkdir -p result")
result_link = "./result/assign.sv"

tian.file.write(result_link, '')

for sheet_name in sheet_names:
    tian.file.append(result_link, f'\n// Connect {sheet_name}\n')
    sheet = workbook[sheet_name]
    for cell in sheet['A']:
        if (cell.value == 'Type'):
            continue
        row        = cell.row
        port_type  = sheet[f'A{row}'].value
        signal     = sheet[f'B{row}'].value
        tb_hier    = sheet[f'C{row}'].value
        top_hier   = sheet[f'D{row}'].value

        if (top_hier == None):
            top_hier = "/* FIXME */"
            print(f"Warning: missing data in {sheet_name}.D{row} ({signal})")

        if ("resetn" in signal) or ("clk" in signal):
            tian.file.append(result_link, "    assign %-30s = %s;\n" % (tb_hier, top_hier))
            continue

        if (port_type == 'input'):
            tian.file.append(result_link, "    assign #100ps %-30s = %s;\n" % (tb_hier, top_hier))
        else:
            tian.file.append(result_link, "    assign #100ps %-50s = %s;\n" % (top_hier, tb_hier))
