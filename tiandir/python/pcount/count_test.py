#!/usr/bin/python3
#----------------------------------------------------------------------
#  File name     : count_test.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-07-25 15:23:30
#----------------------------------------------------------------------
import re, os
import sys ; sys.path.append("/mnt/users/tientq/tiandir/python/")
import tian; sys.path.append(tian.user_library_path)
from   tian            import run, print_banner, excel
from   tian.global_var import *

# --------------------------------------------------------------------+
# Main                                                                |
# --------------------------------------------------------------------+
if (len(sys.argv) == 1):
    print(f"{tian.RED}Wrong systax {tian.RESET}")
    print("    $ pcount <sim_dir>")
    exit()

sim_dir = sys.argv[1]
if (sim_dir[-1] == '/'):
    # remove the last char
    sim_dir = sim_dir[:-1]

test_names = tian.get_folder_names(sim_dir)

pass_tests           = []
fail_tests           = []
hang_tests           = []
notrun_tests         = []
running_tests        = []
assertion_fail_tests = []

for test_name in test_names:

    if ("compile" in test_name):
        continue

    test_dir = f"{sim_dir}/{test_name}"
    # NOT RUN
    if (tian.is_file(f"{test_dir}/xrun.log") == False):
        notrun_tests.append(f"NOTRUN: {sim_dir}/{test_name}")
        continue

    # Assertion fail
    if (tian.run_with_output(f"grep -c '*E' {test_dir}/xrun.log") != '0'):
        assertion_fail_tests.append(f"ASSERTION FAIL: {sim_dir}/{test_name}")
        continue

    # PASS
    if (tian.run_with_output(f"grep -c 'TEST PASS' {test_dir}/xrun.log") != '0'):
        pass_tests.append(f"PASS  : {sim_dir}/{test_name}")
        continue

    # FAIL
    if (tian.run_with_output(f"grep -c 'TEST FAIL' {test_dir}/xrun.log") != '0'):
        fail_tests.append(f"FAIL  : {sim_dir}/{test_name}")
        continue

    # RUNNING
    start_info = tian.run_with_output(f"grep 'Started on' {test_dir}/xrun.log")
    day_run   = re.findall("\d+,", start_info)[0].replace(",", "")
    day_run   = int(day_run)
    day_now   = tian.time.getday().split("-")[2] 
    day_now   = int(day_now)
    hour_run  = re.findall(" \d+:", start_info)[0].replace(":", "").replace(" ", "")
    hour_run  = int(hour_run)
    hour_now  = tian.time.gethour().split(":")[0]
    hour_now  = int(hour_now)
    if   (day_now  - day_run != 0): 
        pass 
    elif (hour_now - hour_run > 4): 
        pass
    else: 
        running_tests.append(f"RUNNING: {sim_dir}/{test_name}  ~{hour_now-hour_run}hour")
        continue

    # HANG
    hang_tests.append(f"HANG  : {sim_dir}/{test_name}  ~{day_now-day_run}day {hour_now-hour_run}hour")

def print_test_info(test_array, message):
    print("")
    print_banner(message)
    test_array.sort()
    for i in test_array:
        print(i)

print_test_info(pass_tests           , "PASS")
print_test_info(fail_tests           , "FAIL")
print_test_info(notrun_tests         , "NOTRUN")
print_test_info(assertion_fail_tests , "ASSERTION FAIL")
print_test_info(running_tests        , "RUNNING")
print_test_info(hang_tests           , "HANG")
