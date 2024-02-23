# ------------------------------------------------------------------------------|
# Class: convert is a static class                                              |
# ------------------------------------------------------------------------------|
class convert:
    def bin2hex(bin_string)->str:
        decimal_str = int(bin_string, 2)
        hexa = hex(decimal_str)
        return hexa.replace("0x", "")

    def hex2bin(hex_string)->str:
        return bin(int(hex_string, 16))[2:]

    def hex2dec(hex_string)->int:
        return int(hex_string, 16)
    
    def dec2hex(dec:int)->str:
        return hex(dec_integer)

