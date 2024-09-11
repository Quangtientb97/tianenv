#!/usr/bin/python3
#----------------------------------------------------------------------
#  File name     : 01_match_signal.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-03-22 15:47:34
#----------------------------------------------------------------------
import re, os
import sys ; sys.path.append("/mnt/users/tientq/tiandir/python/")
import tian; sys.path.append(tian.user_library_path)
from   tian            import run, print_banner, excel
from   tian.global_var import *

# --------------------------------------------------------------------+
# Main                                                                |
# --------------------------------------------------------------------+
workexcel   = excel("tmp.xlsx")
workbook    = workexcel.wb
sheet_names = workbook.get_sheet_names()

signal_files = sheet_names

for sheet_name in sheet_names:
    sheet = workbook[sheet_name]
    signal_data = tian.file.read(f"inout/{sheet_name}")

    for d_cell in sheet['D']:
        row = d_cell.row
        for item in signal_data:
            if (sheet[f"B{row}"].value.lower() in item.lower()):
                sheet[f"D{row}"].value = item

            if ('psel' in sheet[f"B{row}"].value.lower()) and ('psel' in item.lower()):
                sheet[f"D{row}"].value = item
            if ('prdata' in sheet[f"B{row}"].value.lower()) and ('prdata' in item.lower()):
                sheet[f"D{row}"].value = item
#            if ('resetn' in sheet[f"B{row}"].value.lower()) and ('rst' in item.lower()):
#                sheet[f"D{row}"].value = item

curtime = tian.time.getday().replace(" ", "").replace(":", "").replace("-", "")
workexcel.save(f"{curtime}.xlsx")
