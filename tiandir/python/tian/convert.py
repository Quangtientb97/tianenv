# ------------------------------------------------------------------------------|
# Class: convert is a static class                                              |
#        The return value (string format) DONT include '0x', '0d', '0b'         |
# ------------------------------------------------------------------------------|
class convert:

    def bin2hex(bin_string)->str:
        decimal_str = int(bin_string, 2)
        hexa = hex(decimal_str)
        return hexa.replace("0x", "")

    def dec2bin(dec:int)->str:
        return bin(dec)[2:]

    def bin2dec(bin_str:str)->int:
        return int(bin_str, 2)

    # bit_width = 0 to not fill 0
    def hex2bin(hex_string, bit_width=0)->str:
        out = bin(int(hex_string, 16))[2:]
        if (bit_width == 0):
            return out
        out = out.zfill(bit_width)
        return out

    def hex2dec(hex_string)->int:
        hex_string = hex_string.replace("0x", "")
        return int(hex_string, 16)
    
    def dec2hex(dec:int)->str:
        return hex(dec).replace("0x", "")

    def invert(dec:int)->int:
        bin_val = bin(dec)[2:]
        inverted_bin = ""
        for i in bin_val:
            if (i == '0'): inverted_bin += '1'
            if (i == '1'): inverted_bin += '0'
        return int(inverted_bin, 2)





