import sys,os
# ------------------------------------------------------------------------------|
# Class: argument_vector is a static class                                      |
# ------------------------------------------------------------------------------|
class argv:
    def len():
        return len(sys.argv)

    def has_argument(arg_mess:str):
        if arg_mess in sys.argv:
            print(f"has argument: {arg_mess}")
            return True
        else:
            #print(f"Dont has argument: {arg_mess}")
            return False

    def get_argument_by_prefix(prefix_arg_mess:str):
        if prefix_arg_mess in sys.argv:
            prefix_arg_index = sys.argv.index(prefix_arg_mess)
            result = sys.argv[prefix_arg_index+1]
            print(f"get argument {prefix_arg_mess}: {result}")
            sys.argv.pop(prefix_arg_index)
            sys.argv.pop(prefix_arg_index)
            return result
        else:
            print(f"Dont has argument: {prefix_arg_mess}")
            #exit()

    def print():
        i = 0
        for item in sys.argv:
            print(f"Argument[{i}] = {sys.argv[i]}")
            i += 1


