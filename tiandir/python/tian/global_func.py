#!/usr/bin/python3
#--------------------------------------------------------------------
#  File name     : func.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-02-19 00:57:19
#--------------------------------------------------------------------
import re, os, sys, readline
sys.path.append("/mnt/users/tientq/.local/lib/python3/site-packages") 
sys.path.append("/mnt/users/tientq/python_dir") 

import tian
from .global_var import *

def print_banner(string_value):
    string_value = "#  " + string_value
    print(f"{BLUE}#" + len(string_value)*"-" + "-#")
    print(string_value + f"{BLUE}  #")
    print(f"{BLUE}#" + len(string_value)*"-" + "-#" + RESET)

def print_class_attr(class_object):
    import inspect
    all_attrs = dir(class_object)
    print("Methods:")
    for attr in all_attrs:
        if ("__" in attr):
            continue
        if callable(getattr(class_object, attr)):
            print("\n   "+ attr + "()")
            parameters = inspect.signature(getattr(class_object, attr)).parameters
            for param in parameters:
                print("   |--- " + "%-30s"%(param) + str(parameters[param].annotation))
    print("Properties:")
    for attr in all_attrs:
        if ("__" in attr):
            continue
        if callable(getattr(class_object, attr)):
            continue
        print("   "+ attr)

def print_list(ilist:list):
    for item in ilist:
        print(item)

def run(command:str):
    curdir = os.getcwd()
    print(f"{tian.BLUE}[{curdir}]{tian.RESET} $ {command}")
    os.system(command)

run_process = 0
def run_with_output(command:str):
    global run_process
    run_process += 1
    os.system(f"{command} > tmp_output_{run_process}")
    with open(f'tmp_output_{run_process}', 'r') as f:
        rdata = f.read()
    os.system(f"rm -rf tmp_output_{run_process}")

    if type(rdata) == int:
        return rdata
    if type(rdata) == str:
        rdata = rdata.split('\n')
        # return string
        if (len(rdata) == 2) and (rdata[1] == ''):
            return rdata[0]
        # return list
        else:
            return rdata

def read_file(link_file):
    return tian.file.read(link_file)

def write_file(link_file, wdata):
    tian.file.write(link_file, wdata)

def get_folder_names(path):
    folder_names = []
    for entry in os.scandir(path):
        if entry.is_dir():
            folder_names.append(entry.name)
    return folder_names

def get_file_names(path):
    file_names = []
    for entry in os.scandir(path):
        if entry.is_file():
            file_names.append(entry.name)
    return file_names

def basename(link):
    return tian.run_with_output(f"basename {link}")

def dirname(link):
    return tian.run_with_output(f"dirname {link}")

def current_folder():
    return os.path.basename(os.getcwd())

def get_env_var(env_var=""):
    return os.environ.get(env_var)

def is_file(path_str=""):
    if ((os.path.exists(path_str)) and (os.path.isfile(path_str)) == True):
        return True
    else:
        return False

def is_dir(path_str=""):
    if ((os.path.exists(path_str)) and (os.path.isdir(path_str)) == True):
        return True
    else:
        return False
