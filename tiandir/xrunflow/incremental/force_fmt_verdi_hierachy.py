#!/usr/bin/python3
#----------------------------------------------------------------------
#  File name     : force_fmt_verdi_hierachy.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-04-03 19:07:58
#----------------------------------------------------------------------
import re, os
import sys ; sys.path.append("/mnt/users/tientq/tiandir/python/")
import tian; sys.path.append(tian.user_library_path)
from   tian            import run, print_banner, excel
from   tian.global_var import *


# --------------------------------------------------------------------+
# Main                                                                |
# --------------------------------------------------------------------+
run("cp hier hier_tmp")
tian.file.remove_line_not_include("hier_tmp", "M:")
tian.file.remove_line("hier_tmp", "\$root")

tian.file.replace("\+M: "  , " " , "hier_tmp")
tian.file.replace("M: "    , ""  , "hier_tmp")
tian.file.replace("\(.*\)" , ""  , "hier_tmp")
tian.file.replace("^ "     , ""  , "hier_tmp")

input_string = tian.file.read("hier_tmp")
input_string = "\n".join(input_string)

lines = input_string.strip().split('\n')  # Split the input string into lines
print(lines)

# Process each line to add hierarchy
fileout      = []
output_lines = []
prev_indent  = 0
for line in lines:
    indent = len(line) - len(line.lstrip()) # Count leading whitespace
    module_name = line.strip()              # Remove leading/trailing whitespace
    try: 
        if indent == prev_indent:                     # Same level as previous line
            output_lines.pop()                        # Remove the previous line
        elif indent < prev_indent:                    # Higher level
            output_lines = output_lines[:indent // 4] # Remove lines corresponding to higher levels
    except:
        print("has error")

    output_lines.append(module_name)         # Append the module name
    fileout.append((".".join(output_lines))) # Print the fully qualified name
    prev_indent = indent                     # Update previous indentation level

tian.file.write("href", '')
for line in fileout:
    tian.file.append("href", f"-href \"@{line} *\"\n")

run("rm hier_tmp")
