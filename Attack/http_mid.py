# Created by Leo

import sys
from ssh_connect import connect_exec, robots_ip, full_name

connect_exec(robots_ip[int(sys.argv[1])],600,f"python3 {full_name}/http_attack.py")
