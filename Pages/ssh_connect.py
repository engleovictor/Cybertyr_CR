# Created by Leo
# Main func on 'Attack'

import paramiko
import time

#Full_name (Where will be all the Scripts)
full_name = "/Cybertyr_CR/Attack"

#Network IPs
robots_ip   = ["192.168.1.15","192.168.1.42","192.168.1.102","192.168.1.147","192.168.1.171"]

#RSA Filenames
intkey = "../int-key.pem"
botkey = "../Cybertyr_CR/bot-key.pem"
usrkey = "../Cybertyr_CR/usr-key.pem"

def connect_exec(ip,tm,cmd):
    if not ip in robots_ip:
        kfn = intkey
    elif ip == robots_ip[4]:
        kfn = usrkey
    else:
        kfn = botkey
    client = paramiko.SSHClient()
    client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    client.connect(ip,port=22,username="ubuntu",key_filename=kfn,password="")
    stdin, stdout, stderr = client.exec_command(cmd)
    time.sleep(tm)
    client.close()
