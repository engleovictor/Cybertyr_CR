resource "aws_instance" "maq-bot0" {
  ami = "ami-08c40ec9ead489470" #Ubuntu
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"

  key_name = "usr-key"

  network_interface {
      device_index = 0
      network_interface_id = aws_network_interface.bots-ni0.id
  }

  tags = {
    Name = "evil-corp-cost-0"
  }

}

resource "aws_instance" "maq-bot1" {
  ami = "ami-08c40ec9ead489470" #Ubuntu
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"

  key_name = "usr-key"

  network_interface {
      device_index = 0
      network_interface_id = aws_network_interface.bots-ni1.id
  }

  tags = {
    Name = "evil-corp-cost-1"
  }

}

resource "aws_instance" "maq-bot2" {
  ami = "ami-08c40ec9ead489470" #Ubuntu
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"

  key_name = "usr-key"

  network_interface {
      device_index = 0
      network_interface_id = aws_network_interface.bots-ni2.id
  }

  tags = {
    Name = "evil-corp-cost-2"
  }

}

resource "aws_instance" "maq-bot3" {
  ami = "ami-08c40ec9ead489470" #Ubuntu
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"

  key_name = "usr-key"

  network_interface {
      device_index = 0
      network_interface_id = aws_network_interface.bots-ni3.id
  }

  tags = {
    Name = "evil-corp-cost-3"
  }

}


resource "aws_instance" "maq-usr" {
  ami = "ami-08c40ec9ead489470" #Ubuntu
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"

  key_name = "usr-key"

  network_interface {
      device_index = 0
      network_interface_id = aws_network_interface.usr-ni.id    
  }

  tags = {
    Name = "Maq-Usr"
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt-get install nmap -y
              sudo apt-get install tcpdump -y
              sudo apt-get install net-tools -y
              EOF


}

resource "aws_instance" "maq-int" {
  ami = "ami-08c40ec9ead489470" #Ubuntu
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"

  key_name = "int-key"

  network_interface {
      device_index = 0
      network_interface_id = aws_network_interface.int-ni.id
  }

  tags = {
    Name = "Maq-Int"
  }

}