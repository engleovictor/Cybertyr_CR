# Created By Leo

import sys
from ssh_connect import connect_exec, full_name, robots_ip

connect_exec(robots_ip[int(sys.argv[1])],5,f"python3 {full_name}/ping_attack.py")