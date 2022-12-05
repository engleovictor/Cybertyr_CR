resource "aws_instance" "maq-webpage" {
  ami = "ami-08c40ec9ead489470" #Ubuntu
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"

  key_name = "int-key"

  network_interface {
      device_index = 0
      network_interface_id = aws_network_interface.web-ni.id    
  }

  tags = {
    Name = "Maq-WebPage"
  }

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install apache2 -y
              sudo systemctl start apache2
              #colocaremos os comandos pra iniciar Servidor!!"
              EOF
}


resource "aws_instance" "maq-db" {
  ami = "ami-08c40ec9ead489470" #Ubuntu
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"

  key_name = "int-key"

  network_interface {
      device_index = 0
      network_interface_id = aws_network_interface.db-ni.id    
  }

  tags = {
    Name = "Maq-db"
  }

/*
  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install apache2 -y
              sudo systemctl start apache2
              #colocaremos os comandos pra iniciar Servidor!!"
              EOF
*/
}