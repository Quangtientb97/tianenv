# ------------------------------------------------------------------------------|
# Class: convert is a static class                                              |
#        The return value (string format) DONT include '0x', '0b'               |
# ------------------------------------------------------------------------------|
class convert:

    def bin2hex(bin_string, prefix="")->str:
        bin_string = bin_string.replace("0b")
        decimal_str = int(bin_string, 2)
        hexa = hex(decimal_str)
        return prefix + hexa.replace("0x", "")

    def bin2dec(bin_str:str)->int:
        bin_string = bin_string.replace("0b")
        return int(bin_str, 2)

    def dec2bin(dec:int, prefix="")->str:
        return prefix + bin(dec)[2:]

    def dec2hex(dec:int, prefix="")->str:
        return prefix + hex(dec).replace("0x", "")

    #----------------------------------------------------------------+
    # bit_width = 0 to not fill 0                                    |
    # Example                                                        |
    #     hex2bin("0xf", 8) --> 00001111                             |
    #     hex2bin("0xf", 0) --> 1111                                 |
    #----------------------------------------------------------------+
    def hex2bin(hex_string:str, bit_width=0)->str:
        if ("0x" not in hex_string):
            print(f"warning: [hex2bin] hex_string = {hex_string} is not a hex (0x----)")
        hex_string = hex_string.replace("0x", "")
        out = bin(int(hex_string, 16))[2:]
        if (bit_width == 0):
            return out
        out = out.zfill(bit_width)
        return out

    def hex2dec(hex_string:str)->int:
        if ("0x" not in hex_string):
            print(f"warning: [hex2dec] hex_string = {hex_string} is not a hex (0x----)")
        hex_string = hex_string.replace("0x", "")
        return int(hex_string, 16)
    

    def invert(dec:int)->int:
        bin_val = bin(dec)[2:]
        inverted_bin = ""
        for i in bin_val:
            if (i == '0'): inverted_bin += '1'
            if (i == '1'): inverted_bin += '0'
        return int(inverted_bin, 2)





