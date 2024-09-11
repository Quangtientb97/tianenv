#!/usr/bin/python3
#----------------------------------------------------------------------
#  File name     : run.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-06-03 18:52:57
#----------------------------------------------------------------------
import re, os
import sys ; sys.path.append("/mnt/users/tientq/tiandir/python/")
import tian; sys.path.append(tian.user_library_path)
from   tian            import run, print_banner, excel
from   tian.global_var import *

# --------------------------------------------------------------------+
# Main                                                                |
# --------------------------------------------------------------------+
if (len(sys.argv) == 1) or (tian.argv.has_argument("-h")):
    print_banner("               prun guide               ")
    print(""" 
    Build mconf             : prun buildmconf-<DE>
    Build vip               : prun buildvip
    Savedbs vip             : prun builddbs-<DE>
    Create a checkpoint     : prun testdbscp-<DE>-<test_name>-boot_vseq=<boot_seq>-save=<cp_name>
    Run from the checkpoint : prun testdbs-vseq=<seq_name>-load=<cp_name>
    Generate but not run    : prun genonly-<command>
    Specify the outdir      : prun <command> -outdir <dir_link>
    Specify the host        : prun <command> -host   <host_name>
    Run as xterm            : prun <command> -xterm
    Run without lsf         : prun <command> -nolsf
    """)
    exit()

outdir = ""
print_banner("prun information")
if (tian.argv.has_argument("-outdir")):
    outdir = tian.argv.get_argument_by_prefix("-outdir")
else:
    outdir = "./ws_sim"
    print("outdir isn't specified. Default outdir is './ws_sim'")

if (tian.argv.has_argument("-host")):
    host_name = tian.argv.get_argument_by_prefix("-host")
else:
    print("host_name isn't specified. Default value is applied")
    host_name = "" 

use_xterm = False
if (tian.argv.has_argument("-xterm")):
    use_xterm = True

nolsf = False
if (tian.argv.has_argument("-nolsf")):
    nolsf = True

if (tian.argv.has_argument("-nolsf") == True) and (tian.argv.has_argument("-host") == True):
    print("Cannot use -nolsf and -host_name in parallel")
    exit()

print("")
tian.command_parse.parse(outdir, host_name, use_xterm, nolsf)

