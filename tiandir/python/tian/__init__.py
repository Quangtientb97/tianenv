#!/usr/bin/python3
#--------------------------------------------------------------------
#  File name     : tian.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-02-16 15:26:37
#--------------------------------------------------------------------
user_library_path = "/mnt/users/tientq/tiandir/python/pylib"
tian_path         = "/mnt/users/tientq/tiandir/python/"

# ------------------------------------------------------------------------------|
# Import user_library_path                                                      |
# ------------------------------------------------------------------------------|
import sys
sys.path.append(user_library_path) 

# ------------------------------------------------------------------------------|
# Import my sub module                                                          |
# ------------------------------------------------------------------------------|
from .global_var      import *             # global_var.py
from .global_func     import *             # global_func.py
from .excel           import excel         # excel.py
from .file            import file          # file.py
from .time            import time          # time.py
from .argv            import argv          # argv.py
from .convert         import convert       # convert.py

# ------------------------------------------------------------------------------|
# Note                                                                          |
# ------------------------------------------------------------------------------|
#    with open('done.sv', 'w') as f:
#        f.write(<file_link>)
#    with open('done.sv', 'r') as f:
#        rdata = f.read(<file_link>)
#    os.getcwd() - get pwd
#    sys.argv    - list argv
#    all_sheet = workbook.get_sheet_names()
#    round(number, 2)
