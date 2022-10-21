# Created By Leo

import sys
from ssh_connect import connect_exec, full_name, robots_ip

connect_exec(robots_ip[sys.argv[1]],f"python3 {full_name}/ping_attack.py")