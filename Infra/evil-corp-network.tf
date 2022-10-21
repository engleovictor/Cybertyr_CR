## We need to create a VPC

resource "aws_vpc" "evil-corp-vpc" {
  cidr_block = "192.168.0.0/16"
}

## Gateway

resource "aws_internet_gateway" "evil-corp-gateway" {
  vpc_id = aws_vpc.evil-corp-vpc.id

  tags = {
    Name = "evil-corp-gateway"
  }
}

## Route Table

resource "aws_route_table" "evil-corp-rt" {
  vpc_id = aws_vpc.evil-corp-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.evil-corp-gateway.id
  }

  #route {
  #  ipv6_cidr_block        = "::/0"
  #  egress_only_gateway_id = aws_internet_gateway.evil-corp-gateway.id
  #}

  tags = {
    Name = "evil-corp-gateway"
  }
}

## Subnets

## Subnet for Web Page
resource "aws_subnet" "evil-corp-subnet" {
  vpc_id     = aws_vpc.evil-corp-vpc.id
  cidr_block = "192.168.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "evil-corp-subnet"
  }
}

## Route Table Association

resource "aws_route_table_association" "ev-rt-association" {
  subnet_id      = aws_subnet.evil-corp-subnet.id
  route_table_id = aws_route_table.evil-corp-rt.id
}


####  NETWORK INTERFACES  #####

 resource "aws_network_interface" "bots-ni0" {
   subnet_id       = aws_subnet.evil-corp-subnet.id
   private_ips     = ["192.168.1.15"]
   security_groups = [aws_security_group.my-all.id]
 }

  resource "aws_network_interface" "bots-ni1" {
   subnet_id       = aws_subnet.evil-corp-subnet.id
   private_ips     = ["192.168.1.42"]
   security_groups = [aws_security_group.my-all.id]
 }

  resource "aws_network_interface" "bots-ni2" {
   subnet_id       = aws_subnet.evil-corp-subnet.id
   private_ips     = ["192.168.1.102"]
   security_groups = [aws_security_group.my-all.id]
 }

  resource "aws_network_interface" "bots-ni3" {
   subnet_id       = aws_subnet.evil-corp-subnet.id
   private_ips     = ["192.168.1.147"]
   security_groups = [aws_security_group.my-all.id]
 }


 resource "aws_network_interface" "usr-ni" {
   subnet_id       = aws_subnet.evil-corp-subnet.id
   private_ips     = ["192.168.1.171"]
   security_groups = [aws_security_group.my-all.id]
 }

  resource "aws_network_interface" "int-ni" {
   subnet_id       = aws_subnet.evil-corp-subnet.id
   private_ips     = ["192.168.1.203"]
   security_groups = [aws_security_group.my-all.id]
 }

#  resource "aws_eip" "usr-eip" {
#    vpc                       = true
#    network_interface         = aws_network_interface.usr-ni.id
#    associate_with_private_ip = "192.168.1.171"
#    depends_on = [
#      aws_internet_gateway.evil-corp-gateway
#    ]
#  }

#    resource "aws_eip" "int-eip" {
#      vpc                       = true
#      network_interface         = aws_network_interface.int-ni.id
#      associate_with_private_ip = "192.168.1.203"
#      depends_on = [
#        aws_internet_gateway.evil-corp-gateway
#      ]
#    }

###############################