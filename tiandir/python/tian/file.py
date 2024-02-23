#!/usr/bin/python3
#--------------------------------------------------------------------
#  File name     : file.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-02-19 00:16:07
#--------------------------------------------------------------------
import re, os, sys
sys.path.append("/mnt/users/tientq/.local/lib/python3/site-packages") 
sys.path.append("/mnt/users/tientq/python_dir") 
import tian


# ------------------------------------------------------------------------------|
# Class: file                                                                   |
# It is a static class (dont create this class)                                 | 
# ------------------------------------------------------------------------------|
class file:
    def read(link):
        output = []
        print(f"reading from {link} ...")
        with open(link, 'r') as f:
            lines = f.readlines()

        for line in lines:
            output.append(line.replace("\n", ""))
        return output

    def write(link, wdata):
        w = open(link, "w")
        print(f"writing to {link} ...")
        if   (type(wdata) == str):
            w.write(wdata)
        elif (type(wdata) == list):
            for line in wdata:
                w.write(line)

    def append(link, wdata):
        w = open(link, "a")
        print(f"append to {link} ...")
        if   (type(wdata) == str):
            w.write(wdata)
        elif (type(wdata) == list):
            for line in wdata:
                w.write(line)

    # must use [a-z]*, [0-9]* to present regular expression
    def replace(link, old:str, new:str):
        print("{}   :   {}   -->   {}".format(link, old, new))
        old = old.replace("/", "\/"); old = old.replace(".", "\.")
        new = new.replace("/", "\/"); new = new.replace(".", "\.")
        os.system("sed -i 's/{}/{}/g' {}".format(old, new, link))

    def make_uniq(link):
        os.system(f"sort {link} | uniq > {link}_uniq")

    def remove_line(link, keyword):
        fileout = []
        filein = tian.file.read(link)
        for line in filein:
            if (key_remove in line):
                continue
            fileout.append(line)
        write(link, fileout)

    def execute(link):
        if (tian.is_file(link) == False):
            print(f"Error: [exccute] {link} is not exist")
            return
        curdir   = os.getcwd()
        realpath = tian.run_with_output(f"realpath {link}")
        rundir   = re.findall("\/.*\/", realpath)[0]
        rundir   = rundir[:-1] # remove last char
        runfile  = re.sub("\/.*\/", "", realpath)
        os.chdir(rundir)
        print(f"{tian.BLUE}[{curdir}]{tian.RESET} $ cd {rundir}")
        print(f"{tian.BLUE}[{rundir}]{tian.RESET} $ ")
        tian.run(f"chmod 755 {runfile}")
        tian.run(f"./{runfile}")
        os.chdir(curdir)
        print(f"{tian.BLUE}[{rundir}]{tian.RESET} $ cd {curdir}")
        print(f"{tian.BLUE}[{curdir}]{tian.RESET} $ ")


