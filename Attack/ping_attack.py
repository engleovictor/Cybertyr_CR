from icmplib import ping
from ssh_connect import robots_ip

i = 0 

while True:
    ping(robots_ip[i],count=3,interval=0.5,privileged=False)
    i+=1
    i%=5
