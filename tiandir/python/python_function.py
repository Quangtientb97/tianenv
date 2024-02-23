import re, os, sys
import readline
sys.path.append("/mnt/users/tientq/python_dir") 
sys.path.append("/mnt/users/tientq/.local/lib/python3/site-packages") 

from tian import print_banner

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
  0: Hex -> Bin              2: Bin -> Hex
  1: Hex -> Dec              3: Dec -> Hex

  4: ns  -> MHz              5: Size -> addr

  6: add Hex                 7: minus Hex
  8: mul Hex                 9: div   Hex

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
