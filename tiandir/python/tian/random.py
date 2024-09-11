import random
class random:
    def randlist(imin, imax, isize):
        return random.sample(range(imin, imax), isize)

    def randint(imin, imax):
        return random.randint(imin, imax)

    def rand_from_list(ilist:list):
        return random.choice(ilist)


