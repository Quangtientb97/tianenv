#!/usr/bin/python3
#----------------------------------------------------------------------
#  File name     : python_function.py
#  Function      : <empty>
#  Author        : Tian
#  Email         : tientq@coasia.com
#  Created time  : 2024-04-01 16:48:17
#----------------------------------------------------------------------
import re, os
import sys ; sys.path.append("/mnt/users/tientq/tiandir/python/")
import tian; sys.path.append(tian.user_library_path)
from   tian            import run, print_banner, excel
from   tian.global_var import *

# --------------------------------------------------------------------+
# Main                                                                |
# --------------------------------------------------------------------+
# Print color 
BLACK   = '\033[30;1m'
RED     = '\033[31;1m'
GREEN   = '\033[32;1m'
YELLOW  = '\033[33;1m'
BLUE    = '\033[34;1m'
MAGENTA = '\033[35;1m'
CYAN    = '\033[36;1m'
WHITE   = '\033[37;1m'
RESET   = '\033[0m'

def binary_digits(hex_number):
    number = int(hex_number, 16)
    for i in range(31, -1, -1):
        digit = (number >> i) & 1
        if digit == 1:
            if (i<10):
                print(f'\033[1;31m[{i}] :   {digit}\033[0m')
            else:
                print(f'\033[1;31m[{i}]:   {digit}\033[0m')
        else:
            if (i<10):
                print(f'[{i}] :   {digit}')
            else:
                print(f'[{i}]:   {digit}')




#--------------------------------------------------
# Main program
#--------------------------------------------------
input_var = 0

if len(sys.argv) > 1:
    option = sys.argv[1].replace("-","")
    if (option == "h2b"):
        input_var = 0
    elif (option == "h2d"):
        input_var = 1
    elif (option == "b2h"):
        input_var = 2
    elif (option == "d2h"):
        input_var = 3
else:
    input_var = input("""
Choose the funtion:
  0 : Hex -> Bin              2: Bin -> Hex
  1 : Hex -> Dec              3: Dec -> Hex

  4 : ns  -> MHz              5: Size -> addr

  6 : add Hex                 7: minus Hex
  8 : mul Hex                 9: div   Hex

  10: print 0x0 to 0xf -> Bin

  11: uvm phase flow

  12: gen incremental xrun flow

  13: uvm_do detail

>>> """)

if (int(input_var) == 0):
    while(True):
        print_banner("Hex -> Bin")
        input_hex = str(input("input hex: 0x")).replace("_","")
        print("\n")
        binary_digits(input_hex)
        print("")

if (int(input_var) == 1):
    while(True):
        print_banner("Hex -> Dec")
        input_hex = str(input("input hex: 0x")).replace("_","")
        # Convert hex to decimal
        print(f"{BLUE}Decimal  : " + str(int(input_hex, 16)))  
        print("")

if (int(input_var) == 2):
    while(True):
        print_banner("Bin -> Hex")
        bit_positions_input = input("Enter the positions of the bits with value 1 (comma-separated): ")
        bit_positions = []

        # Split the bit positions input by comma and convert to integers
        bit_positions_input_list = bit_positions_input.split(",")
        bit_positions = [int(pos) for pos in bit_positions_input_list]

        # Create a bitmask based on the provided positions
        bitmask = sum(1 << pos for pos in bit_positions)

        # Convert the bitmask to its hexadecimal representation
        hex_value = hex(bitmask)

        print(f"{BLUE}HEX:", hex_value)
        print(f"{RESET}Positions of bits with value 1:", bit_positions)
        print("")

if (int(input_var) == 3):
    while(True):
        print_banner("Dec -> Hex")
        input_dec = int(input("input dec: "))
        # Convert dec to hex
        print(f"{BLUE}Hex      : " + hex(input_dec))  
        print("")

if (int(input_var) == 4):
    while(True):
        print_banner("ns -> MHz")
        input_ns = int(input("input ns: "))
        print(f"{input_ns}ns/period -> " + str(1000/input_ns) + "MHz")  
        print("")

if (int(input_var) == 5):
    while(True):
        print_banner("Size -> addr (8bit per each address)")
        input_size = float(input("input Size (KB): "))
        byte_size  = int(input_size * 1024);
        print(f"{input_size} (KB): 0x0 -> {hex(byte_size)}")
        print("")

if (int(input_var) == 6):
    while(True):
        print_banner("add Hex")
        num_0 = str(input("Number 0: 0x")).replace("_","")
        num_1 = str(input("Number 1: 0x")).replace("_","")
        ans = int(num_0, 16) + int(num_1, 16)
        ans = hex(ans)
        print(f"0x{num_0} + 0x{num_1} = {ans}")
        print("")

if (int(input_var) == 7):
    while(True):
        print_banner("minus Hex")
        num_0 = str(input("Number 0: 0x")).replace("_","")
        num_1 = str(input("Number 1: 0x")).replace("_","")
        ans = int(num_0, 16) - int(num_1, 16)
        ans = hex(ans)
        print(f"0x{num_0} - 0x{num_1} = {ans}")
        print("")

if (int(input_var) == 8):
    while(True):
        print_banner("mul Hex")
        num_0 = str(input("Number 0: 0x")).replace("_","")
        num_1 = str(input("Number 1: 0x")).replace("_","")
        ans = int(num_0, 16) * int(num_1, 16)
        ans = hex(ans)
        print(f"0x{num_0} * 0x{num_1} = {ans}")
        print("")

if (int(input_var) == 9):
    while(True):
        print_banner("div Hex")
        num_0 = str(input("Number 0: 0x")).replace("_","")
        num_1 = str(input("Number 1: 0x")).replace("_","")
        ans = int(num_0, 16) / int(num_1, 16)
        ans = hex(int(ans))
        print(f"0x{num_0} / 0x{num_1} = {ans}")
        print("")

if (int(input_var) == 10):
    print(f"{BLUE}0x0 {RESET}= {YELLOW}0000")
    print(f"{BLUE}0x1 {RESET}= {YELLOW}0001")
    print(f"{BLUE}0x2 {RESET}= {YELLOW}0010")
    print(f"{BLUE}0x3 {RESET}= {YELLOW}0011")
    print(f"{BLUE}0x4 {RESET}= {YELLOW}0100")
    print(f"{BLUE}0x5 {RESET}= {YELLOW}0101")
    print(f"{BLUE}0x6 {RESET}= {YELLOW}0110")
    print(f"{BLUE}0x7 {RESET}= {YELLOW}0111")
    print(f"{BLUE}0x8 {RESET}= {YELLOW}1000")
    print(f"{BLUE}0x9 {RESET}= {YELLOW}1001")
    print(f"{BLUE}0xa {RESET}= {YELLOW}1010")
    print(f"{BLUE}0xb {RESET}= {YELLOW}1011")
    print(f"{BLUE}0xc {RESET}= {YELLOW}1100")
    print(f"{BLUE}0xd {RESET}= {YELLOW}1101")
    print(f"{BLUE}0xe {RESET}= {YELLOW}1110")
    print(f"{BLUE}0xf {RESET}= {YELLOW}1111")

if (int(input_var) == 11):
    message = f"""
    {BLUE}Build:{RESET}
        build_phase
        connect_phase
        end_of_elaboration_phase
        start_of_simualation_phase

    {BLUE}Run:{RESET}
        run_phase  
            run <also has pre_* and post_*>
                reset
                configure
                main
                shutdown

    {BLUE}Clean:{RESET}
        extract_phase
        check_phase
        report_phase
        final_phase

    ----------------------------------------
    {BLUE}Sequence (body):{RESET}
        sub_seq.pre_start()          (task)
        sub_seq.pre_body()           (task)  if call_pre_post==1
            parent_seq.pre_do(0)     (task)  if parent_sequence!=null
            parent_seq.mid_do(this)  (func)  if parent_sequence!=null
        sub_seq.body                 (task)  YOUR STIMULUS CODE
            parent_seq.post_do(this) (func)  if parent_sequence!=null
        sub_seq.post_body()          (task)  if call_pre_post==1
        sub_seq.post_start()         (task)
        

        """
    print(message)

if (int(input_var) == 12):
    run("cp /mnt/users/tientq/tiandir/xrunflow/incremental/incr_flow.py ./")
    tian.file.execute("./incr_flow.py")

if (int(input_var) == 13):
    print("""
    1. `uvm_do(seq_item)
            `uvm_create(seq_or_item);
            assert(seq_item.randomize());
            // can edit the seq_item here
            `uvm_send(seq_item)
    2. `uvm_do_on(seq_item, seqr)
            `uvm_create_on(seq_or_item, seqr);
            assert(seq_item.randomize());
            // can edit the seq_item here
            `uvm_send(seq_or_item)
            // OR seq.start(seqr);
    """)
