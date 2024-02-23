# ------------------------------------------------------------------------------|
# Class: time is a static class                                                 |
# ------------------------------------------------------------------------------|
from datetime import datetime 
class time:
    def getfull():
        return datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    def gethour():
        return datetime.now().strftime("%H:%M:%S")
    def getday():
        return datetime.now().strftime("%Y-%m-%d")
