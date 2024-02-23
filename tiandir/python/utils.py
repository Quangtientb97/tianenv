#!/usr/bin/python3
#--------------------------------------------------------------------
#  File name     : utils.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-02-07 11:47:10
#--------------------------------------------------------------------
import re, os, sys, readline
sys.path.append("/mnt/users/tientq/.local/lib/python3/site-packages") 
sys.path.append("/mnt/users/tientq/python_dir") 
import tian
from   tian import run


# ------------------------------------------------------------------------------|
#   Utilities                                                                   |
# ------------------------------------------------------------------------------|

round(number, 2)

# Generate a list of 10 unique random numbers between 0 and 39
random_list = random.sample(range(0, 39), 10)


# ouput: 0000ab11
hex_string = "ab11"
padded_hex_string = hex_string.zfill(8)
