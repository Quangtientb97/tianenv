#!/usr/bin/python3
#----------------------------------------------------------------------
#  File name     : prun_lib.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-06-03 17:35:24
#----------------------------------------------------------------------
import re, os
import sys ; sys.path.append("/mnt/users/tientq/tiandir/python/")
import tian; sys.path.append(tian.user_library_path)
from   tian            import run, print_banner, excel
from   tian.global_var import *
import time

#--------------------------------------------------------------------+
# Example                                                            |
#--------------------------------------------------------------------+
#  command_parse.parse(outdir:str)

# --------------------------------------------------------------------+
# Main                                                                |
# --------------------------------------------------------------------+
class option_info_c:
    key       = ""
    body      = ""
    mconf_file = ""
    line_idx  = ""

    def print(self):
        print(f"key       : {self.key}")
        print(f"    body      : {self.body}")
        print(f"    file_link : {self.mconf_file}")
        print(f"    line_idx  : {self.line_idx}")


run_submit  = 'bsub -Ip ./run.wrapper.csh'
run_wrapper = """#!/bin/csh -f
onintr trap-STOP
touch .run.start
./run.csh
trap-STOP:
rm -f .run.start"""

class command_parse:
    out_dir = ""

    # Return : a list of option_info_c
    # The option info get from ./mconf/
    def get_option_infos():
        all_option = []
        if not tian.is_dir("mconf"):
            print(f"./mconf is not exited")
            print(f"prun must be exited")
            exit()
        
        mconf_files = tian.file.read(f"./mconf/mconf")
        
        for mconf_file in mconf_files:
            mconf_file       = tian.realpath(f"./mconf/{mconf_file}")
            option_file_data = tian.file.read(mconf_file)
            is_new_option    = True
            option_info      = None

            line_idx = 0
            for line in option_file_data:
                # skip comment line
                if (re.findall("^\s*#", line) != []):
                    continue
                # skip blank line
                if (re.findall("[a-zA-Z0-9]", line) == []):
                    continue

                line_idx += 1
                if (is_new_option):
                    if (re.findall("^\S\S*:", line) != []):
                        if (option_info != None):
                            all_option.append(option_info)
                        is_new_option          = False
                        option_info            = None
                        option_info            = option_info_c()
                        option_info.key        =  '^' + line.replace(":", "") + '$'
                        option_info.mconf_file = mconf_file
                        option_info.line_idx   = str(line_idx)
                        continue

                option_info.body     += line + "\n"
                is_new_option         = True

            all_option.append(option_info)

        all_option.reverse()
        return all_option

    def get_keys_from_command():
        command      = sys.argv[1]
        command      = command.strip()
        return command

    def parse(outdir:str, host_name:str, use_xterm, nolsf):
        command          = command_parse.get_keys_from_command()
        option_from_file = command_parse.get_option_infos()

        if (command_parse.is_exist_key(command, option_from_file) == False) and (command != "genonly"):
            print(f"\nCommand: {sys.argv[1]}")
            print(f"{tian.RED}Error: {command} didn't match any regex")
            exit()

        user_run = True 
        if ("genonly" in command):
            user_run = False
            command = command.replace("genonly-", "")

        if ("buildvip" in command):
            # outdir is $SIM_DIR always.
            outdir = tian.getenv("SIM_DIR")
            tian.run(f"rm    -rf  {outdir}/compile/{command}")
            tian.run(f"mkdir -p   {outdir}/compile/{command}")
            os.chdir(f"{outdir}/compile/{command}")
        elif ("build" in command):
            outdir = tian.getenv("SIM_DIR")
            build_type = re.findall("\w+", command)[0]
            DE         = re.findall("\w+", command)[1]
            build_dir  = f"{outdir}/compile/{command}" 
            if   ("buildrtl" in command): build_dir = f"{outdir}/compile/{DE}-lib"
            elif ("builddbs" in command): build_dir = f"{outdir}/compile/{DE}-dbs"
            tian.run(f"rm    -rf  {build_dir}")
            tian.run(f"mkdir -p   {build_dir}")
            os.chdir(f"{build_dir}")
        else:
            testdir = sys.argv[1].replace("genonly-", "")
            tian.run(f"rm    -rf  {outdir}/{testdir}")
            tian.run(f"mkdir -p   {outdir}/{testdir}")
            os.chdir(f"{outdir}/{testdir}")

        tian.file.write("run.wrapper.csh"  , run_wrapper)
        if (host_name == ""):
            run_submit = 'bsub -Ip ./run.wrapper.csh'
        else:
            run_submit = f'bsub -Ip -m "{host_name}" ./run.wrapper.csh'
        if (use_xterm == True):
            run_submit = f'xterm -title "{command}" -hold -e {run_submit} &'

        if (nolsf == True):
            run_submit = run_submit.replace("bsub -Ip", "")

        tian.file.write("run.submit.csh"   , run_submit)
        tian.file.write("prun_parse.log"   , f"Command: {sys.argv[1]}\n\n")
        tian.file.write("prun_execute.csh" , "#!/usr/bin/csh\n")
        tian.file.write("run.csh"          , "#!/usr/bin/csh\n")
        tian.file.write("run.pre.csh"      , "#!/usr/bin/csh\n")
        tian.file.write("run.post.csh"     , "#!/usr/bin/csh\n")
        tian.file.append("run.post.csh"    , f"echo ''\n")
        tian.file.append("run.post.csh"    , f"echo 'Log:'\n")
        tian.file.append("run.post.csh"    , f"echo {os.getcwd()}/xrun.log\n")
        tian.file.append("run.post.csh"    , f"echo ''\n")

        tian.run("chmod 777 *.csh")

        tian.print_banner("Parse command")
        command_parse.match_option(command, option_from_file)
        print("")
        command_parse.comment_key(option_from_file)

        print(f"output: {os.getcwd()}")

        command_parse.compose_excute_file()
        tian.file.execute("prun_execute.csh")
        command_parse.merge_run_file()
        if (user_run):
            while (tian.is_file("run.wrapper.csh") != True):
                print("wait run.wrapper.csh to be stable")
                time.sleep(1)
            tian.file.execute("run.submit.csh")

    def match_option(key:str, option_infos:list):
        body_str = ""
        if (re.match("^\s*[a-zA-Z].*$", key)):
            if ("xrun" in key) or ("verdi" in key) or ("simvision" in key):
                tian.file.append("prun_execute.log", key + "\n")
            elif (command_parse.is_exist_key(key, option_infos) == 0):
                print(f"*Error: {key} is not match with any regex")
                exit()
        else:
            tian.file.append("prun_execute.log", "    " + key + "\n")

        longest_opt = command_parse.check_dupplicate_key(key, option_infos)

        for opt in option_infos:
            if (longest_opt != None):
                if (opt != longest_opt):
                    continue

            if (re.match(opt.key, key)):
                print(f"Parsing {key} ...")
                sub_match = re.match(opt.key, key).groups()
                body_str = opt.body
                for i in range(0, len(sub_match)):
                    body_str = body_str.replace(f"${i}", sub_match[i])
                
                tian.file.append("prun_execute.log", key + "\n")
                tian.file.append("prun_parse.log", f"""\nOption:  {key}
Matched: {opt.key.replace("^", "").replace("$", "")}
Source:  {opt.mconf_file} +{opt.line_idx}
Result:
{body_str}""")
                for body_key in command_parse.body_str2opt(body_str):
                    command_parse.match_option(body_key, option_infos)
                # break if the key match (1 key : 1 opt) 
                break


    def body_str2opt(body_str:str):
        body_str = body_str.split("\n")
        result = []
        for item in body_str:
            result.append(item.strip())
        return result

    def comment_key(option_infos:list):
        execute_data = tian.file.read("prun_execute.log")
        tian.file.write("prun_execute.log", "")
        for line in execute_data:
            is_matched = 0
            line_tmp = line.strip()
            for opt in option_infos:
                if (re.match(opt.key, line_tmp)):
                    is_matched = 1
            if (is_matched):
                tian.file.append("prun_execute.log", "#" + line + "\n")
            else:
                tian.file.append("prun_execute.log", line + "\n")

    def check_dupplicate_key(key:str, option_infos:list):
        num_duplicate  = 0
        opt_duplicate  = []
        longest_opt = None
        for opt in option_infos:
            if (re.match(opt.key, key)):
                num_duplicate += 1
                opt_duplicate.append(opt)
        max_length = 0
        for opt_dup in opt_duplicate:
            if (max_length < len(opt_dup.key)):
                max_length = len(opt_dup.key)

        if (num_duplicate > 1):
            print("\nWarning: Multiple matching, the longest regex will be applied")
            
            opt_duplicate.reverse()
            for opt in opt_duplicate:
                if (len(opt.key) == max_length): 
                    print(f"{tian.GREEN}    {key} : regex={'%-20s' % (opt.key)} {opt.mconf_file} +{opt.line_idx}{tian.RESET}")
                    longest_opt = opt
                else:
                    print(f"    {key} : regex={'%-20s' % (opt.key)} {opt.mconf_file} +{opt.line_idx}")
            print("")
        return longest_opt
        
    
    def compose_excute_file():
        execute_data = tian.file.read("prun_execute.log")
        compose_data = []
        for line in execute_data:
            # skip comment line
            if (re.match("^\s*#", line)):
                compose_data.append(line + "\n")
                continue
            # skip blank line
            if (re.findall("[a-zA-Z]", line) == []):
                compose_data.append("\n")
                continue

            if ("-prerun" in line):
                line = line.replace("-prerun", "")
                line = line.replace("'", "'\"'\"'")
                compose_data.append(f"    echo '{line}'  >> run.pre.csh\n")
            elif ("-postrun" in line):
                line = line.replace("-postrun", "")
                line = line.replace("'", "'\"'\"'")
                compose_data.append(f"    echo '{line}' >> run.post.csh\n")
            else:
                line = line.replace("'", "'\"'\"'")
                compose_data.append(f"    echo '{line}' >> run.csh\n")
        tian.file.write("prun_execute.csh", compose_data)

    def merge_run_file():
        prerun  = tian.file.read("run.pre.csh"  , "str").replace("#!/usr/bin/csh\n", "")
        run     = tian.file.read("run.csh"      , "str").replace("#!/usr/bin/csh\n", "")
        postrun = tian.file.read("run.post.csh" , "str").replace("#!/usr/bin/csh\n", "")

        run = re.sub("\\\s*\n", "\n", run)
        run = re.sub("\n", " \\\n", run)

        tian.file.write("run.csh", "#!/usr/bin/csh\n")
        tian.file.append("run.csh", "#prerun\n")
        tian.file.append("run.csh", prerun)
        tian.file.append("run.csh", "\n\n#xrun\n")
        tian.file.append("run.csh", run)
        tian.file.append("run.csh", "\n\n#postrun\n")
        tian.file.append("run.csh", postrun)
        tian.run("rm -f run.pre.csh")
        tian.run("rm -f run.post.csh")

    def is_exist_key(key:str, option_infos:list):
        for opt in option_infos:
            if (re.match(opt.key, key)):
                return True
        return False
