from .convert import *

# example: calc.add_hex_str("0x12", "0xa")
# return: "0x1c"
class calc:
    def add_hex_str(hex0:str, hex1:str)->str:
        rt = convert.hex2dec(hex0) + convert.hex2dec(hex1)
        return convert.dec2hex(rt, "0x")

    def sub_hex_str(hex0:str, hex1:str)->str:
        rt = convert.hex2dec(hex0) - convert.hex2dec(hex1)
        return convert.dec2hex(rt, "0x")
