import paramiko as pk

client = pk.SSHClient()


client.set_missing_host_key_policy(pk.AutoAddPolicy())

client.connect("3.91.144.212",port=22,username="ubuntu",key_filename="./bot-key.pem",password="")

stdin, stdout, stderr = client.exec_command('python3 ssh_connect.py')

print(stdout.readlines())

client.close()