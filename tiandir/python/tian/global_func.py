#!/usr/bin/python3
#--------------------------------------------------------------------
#  File name     : func.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-02-19 00:57:19
#--------------------------------------------------------------------
import re, os, sys, readline
import multiprocessing
sys.path.append("/mnt/users/tientq/.local/lib/python3/site-packages") 
sys.path.append("/mnt/users/tientq/python_dir") 

import tian
from .global_var import *

def print_banner(message):
    line_len = 60
    mess_len = len(message)
    if (mess_len > 60):
        line_len = mess_len + 6
    margin_len = int((line_len - mess_len)/2)
    print(f"{BLUE}#" + line_len*"-" + "-#")
    if ((line_len-mess_len)%2 == 0):
        print(f"#"+ margin_len*" " + message + margin_len*" "+" #")
    else:
        print(f"#"+ margin_len*" " + message + margin_len*" "+"  #")
    print(f"{BLUE}#" + line_len*"-" + "-#" + f"{RESET}")

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
    status = os.system(command)
    if (status != 0):
        print(f"Error when run: {command}")
        exit()


run_process = 0
def run_with_output(command:str, type_return="list"):
    global run_process
    run_process += 1
    print(f"{tian.BLUE}[{curdir}]{tian.RESET} $ {command}")
    os.system(command)
    os.system(f"{command} > tmp_output_{run_process}")
    with open(f'tmp_output_{run_process}', 'r') as f:
        rdata = f.read()
    os.system(f"rm -rf tmp_output_{run_process}")

    if (type_return == "str") or (type(rdata) == int):
        return rdata

    # return list without \n
    if type(rdata) == str:
        rdata = rdata.split('\n')
        # return string
        if (len(rdata) == 2) and (rdata[1] == ''):
            return rdata[0]
        # return list
        else:
            if (rdata[-1] == ''):
                rdata.pop()
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
    return os.path.basename(f"{link}")

def dirname(link):
    return os.path.dirname(f"{link}")

def current_folder():
    return os.path.basename(os.getcwd())

def get_env_var(env_var=""):
    return os.environ.get(env_var)

def getenv(env_var=""):
    if (os.environ.get(env_var) == None):
        print(f"Error: Enviromment variable = {env_var} is not existed")
        exit()
    return os.environ.get(env_var)

def is_file(path_str=""):
    if ((os.path.exists(path_str)) and (os.path.isfile(path_str)) == True):
        return True
    else:
        print(f"{path_str} is NOT a file.")
        return False

def is_dir(path_str=""):
    if ((os.path.exists(path_str)) and (os.path.isdir(path_str)) == True):
        return True
    else:
        print(f"{path_str} is NOT a dir.")
        return False

def change_char_by_index(string, index:int, char:str):
    return string[:index] + char + string[index+1:]

import xml.dom.minidom
import xml.etree.ElementTree as ET
def parse_xml(xml_link):
    run(f"cp {xml_link} {xml_link}_dummy")
    xml_link = f"{xml_link}_dummy"

    try: 
        xml_type = tian.run_with_output(f"grep -m 1 '<.*:register>' {xml_link}")
        xml_type = xml_type.replace("<", "").replace("register>", "").replace(" ", "")
        print(f"remove {xml_type}")
        tian.file.replace(xml_type, '', xml_link)
    except:
        print(f"Info: {xml_link} is NOT a ipxact")

#    tian.file.replace("<(\w\w*) (.*)>", "<${1}>", xml_link)

    tian.print_banner(f"Parsing {xml_link}...")
    doc      = xml.dom.minidom.parse(xml_link)
    tree     = ET.parse(xml_link)
    root     = tree.getroot()
    return root

def jj2_write(fin_path, fout_path, **kwargs):
    from jinja2 import Template
    if (is_file == False):
        exit()
    with open(fin_path) as f:
        template_data = f.read()
    tian.file.write(fout_path, Template(template_data).render(**kwargs))

def jj2_append(fin_path, fout_path, **kwargs):
    from jinja2 import Template
    if (is_file == False):
        exit()
    with open(fin_path) as f:
        template_data = f.read()
    tian.file.append(fout_path, Template(template_data).render(**kwargs))

def get_file_type(file_link):
    if (tian.is_file(file_link)):
        return re.sub(".*\.", ".", file_link)
    else:
        print("*Error: {file_link} is not a file")
        exit()

def realpath(link):
    return os.path.realpath(link)

def len_fmt(mess, width:int):
    if (type(mess) != int) and (type(mess) != str):
        print("Error: [len_fmt] input type is {type(mess)} that is not supported")
    if (type(mess) == int):
        mess = f"{mess}"
    
    if (len(str(mess)) < width):
        for i in range(0, width-len(mess)):
            mess += " "
        return mess
    else:
        return mess

def divide_by_key(input_lst:list, key:str):
    line_include_key = []
    line_idx = 0
    return_list = []

    for line in input_lst:
        if (key in line):
            line_include_key.append(line_idx)
        if (line == input_lst[-1]):
            line_include_key.append(line_idx)

        line_idx += 1
    
    for i in range(0, len(line_include_key)-1):
        return_list.append(input_lst[line_include_key[i]:line_include_key[i+1]])
    return return_list
    
# input: 
#    fuction type 
#    args         - list args for each task
#def func_parallel(func_type, args:list):
#    num_processes = multiprocessing.cpu_count()
#    pool          = multiprocessing.Pool(processes = num_processes)
#    pool.starmap(func_type, args)
#    pool.close()
#    pool.join()                                                      |
