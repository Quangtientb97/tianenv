#!/usr/bin/python3
#--------------------------------------------------------------------
#  File name     : file.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-02-19 00:16:07
#--------------------------------------------------------------------
import re, os, sys, time
sys.path.append("/mnt/users/tientq/.local/lib/python3/site-packages") 
sys.path.append("/mnt/users/tientq/python_dir") 
import tian

# ------------------------------------------------------------------------------|
# Class: file                                                                   |
# It is a static class (dont create this class)                                 | 
# ------------------------------------------------------------------------------|
class file:
    def read(link, return_type = "list"):
        output = []
        print(f"reading from {link} ...")
        with open(link, 'r') as f:
            file_data = f.read()
            lines     = file_data.split("\n")

        if ( return_type == "str"):
            return file_data
        else:
            for line in lines:
                output.append(line)
            if (output[-1] == ''):
                output.pop()
            return output

    def write(link, wdata):
        w = open(link, "w")
        print(f"writing to {link} ...")
        if   (type(wdata) == str):
            w.write(wdata)
        elif (type(wdata) == list):
            if ("\n" not in ''.join(wdata)):
                print(r"Warning: You may miss \n in wdata")
                print(f"    File  {link}")
            w.write(''.join(wdata))

    # mode = "none"/"debug" to enter debug mode
    def append(link, wdata, mode="none"):
        w = open(link, "a")
        if (mode=="debug"):
            print(f"append to {link} ...")
        if   (type(wdata) == str):
            w.write(wdata)
        elif (type(wdata) == list):
            w.write(''.join(wdata))

    def replace(old:str, new:str, link):
        tian.run(f"perl -pi -e 's/{old}/{new}/g' {link}")

    def make_uniq(link, overwrite = "not_overide"):
        os.system(f"sort {link} | uniq > {link}_uniq")
        if (overwrite == "override"):
            tian.run(f"mv {link}_uniq {link}")

    def remove_line(link, keyword):
        tian.run(f"sed -i '/{keyword}/d' {link}")

    def remove_line_not_include(link, keyword):
        tian.run(f"sed -ni '/{keyword}/p' {link}")

    def execute(link):
        time.sleep(1)
        if (tian.is_file(link) == False):
            print(f"Error: [exccute] {link} is not exist")
            return
        curdir   = os.getcwd()
        #realpath = tian.run_with_output(f"realpath {link}")
        realpath = os.path.realpath(link)
        rundir   = re.findall("\/.*\/", realpath)[0]
        rundir   = rundir[:-1] # remove last char
        runfile  = re.sub("\/.*\/", "", realpath)
        os.chdir(rundir)
        #print(f"{tian.BLUE}[{curdir}]{tian.RESET} $ cd {rundir}")
        #print(f"{tian.BLUE}[{rundir}]{tian.RESET} $ ")
        os.system(f"chmod 755 {runfile}")

        time.sleep(1)
        result = tian.run(f"./{runfile}")

        os.chdir(curdir)
        #print(f"{tian.BLUE}[{rundir}]{tian.RESET} $ cd {curdir}")
        #print(f"{tian.BLUE}[{curdir}]{tian.RESET} $ ")

    def realpath(link):
        return os.path.realpath(link)
