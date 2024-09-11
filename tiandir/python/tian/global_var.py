import os
import sys

BLACK   = '\033[30;1m'
RED     = '\033[31;1m'
GREEN   = '\033[32;1m'
YELLOW  = '\033[33;1m'
BLUE    = '\033[34;1m'
MAGENTA = '\033[35;1m'
CYAN    = '\033[36;1m'
WHITE   = '\033[37;1m'
RESET   = '\033[0m'

csh_header = "#!/usr/bin/tcsh\n"

curfile = os.path.realpath(sys.argv[0])
curdir  = os.path.dirname(curfile)
