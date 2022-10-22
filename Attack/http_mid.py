# Created by Leo

import sys
from ssh_connect import connect_exec, robots_ip

connect_exec(robots_ip[int(sys.argv[1])],"python3 -m http.server 5037")
