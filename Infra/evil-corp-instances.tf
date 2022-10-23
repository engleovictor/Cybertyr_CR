resource "aws_instance" "maq-bot0" {
  ami = "ami-0fd0fbd656d513e00" #ubuntu-full-0
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"

  key_name = "bot-key"

  network_interface {
      device_index = 0
      network_interface_id = aws_network_interface.bots-ni0.id
  }

  tags = {
    Name = "evil-corp-cost-0"
  }

  user_data = <<-EOF
              #!/bin/bash
              mkdir /home/ubuntu/virus_deadbeaf1337_n3v3r_f19n
              EOF

}

resource "aws_instance" "maq-bot1" {
  ami = "ami-0fd0fbd656d513e00" #ubuntu-full-0
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"

  key_name = "bot-key"

  network_interface {
      device_index = 0
      network_interface_id = aws_network_interface.bots-ni1.id
  }

  tags = {
    Name = "evil-corp-cost-1"
  }

  user_data = <<-EOF
              #!/bin/bash
              mkdir /home/ubuntu/virus_deadbeaf1337_n3v3r_f19n
              EOF

}

resource "aws_instance" "maq-bot2" {
  ami = "ami-0fd0fbd656d513e00" #ubuntu-full-0
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"

  key_name = "bot-key"

  network_interface {
      device_index = 0
      network_interface_id = aws_network_interface.bots-ni2.id
  }

  tags = {
    Name = "evil-corp-cost-2"
  }

  user_data = <<-EOF
              #!/bin/bash
              mkdir /home/ubuntu/virus_deadbeaf1337_n3v3r_f19n
              EOF

}

resource "aws_instance" "maq-bot3" {
  ami = "ami-0fd0fbd656d513e00" #ubuntu-full-0
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"

  key_name = "bot-key"

  network_interface {
      device_index = 0
      network_interface_id = aws_network_interface.bots-ni3.id
  }

  tags = {
    Name = "evil-corp-cost-3"
  }

  user_data = <<-EOF
              #!/bin/bash
              mkdir /home/ubuntu/virus_deadbeaf1337_n3v3r_f19n
              EOF

}


resource "aws_instance" "maq-usr" {
  ami = "ami-0fd0fbd656d513e00" #ubuntu-full-0
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
              mkdir /home/ubuntu/virus_deadbeaf1337_n3v3r_f19n
              EOF

}

resource "aws_instance" "maq-int" {
  ami = "ami-0fd0fbd656d513e00" #ubuntu-full-0
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

    user_data = <<-EOF
              #!/bin/bash
              mkdir /home/ubuntu/virus_deadbeaf1337_n3v3r_f19n
              EOF

}