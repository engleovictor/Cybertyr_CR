# Created By Leo

import sys
from ssh_connect import connect_exec, full_name

connect_exec(sys.argv[1],5,f"python3 {full_name}/ping_mid.py 1")