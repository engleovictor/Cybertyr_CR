## We need to create a VPC

resource "aws_vpc" "web-vpc" {
  cidr_block = "10.0.0.0/16"
}

## Gateway

resource "aws_internet_gateway" "web-gateway" {
  vpc_id = aws_vpc.web-vpc.id

  tags = {
    Name = "web-gateway"
  }
}

## Route Table

resource "aws_route_table" "web-rt" {
  vpc_id = aws_vpc.web-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.web-gateway.id
  }

  #route {
  #  ipv6_cidr_block        = "::/0"
  #  egress_only_gateway_id = aws_internet_gateway.web-gateway.id
  #}

  tags = {
    Name = "web-gateway"
  }
}

## Subnets

## Subnet for Web Page
resource "aws_subnet" "webpage-subnet" {
  vpc_id     = aws_vpc.web-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "webpage-subnet"
  }
}

## Route Table Association

resource "aws_route_table_association" "web-rt-association" {
  subnet_id      = aws_subnet.webpage-subnet.id
  route_table_id = aws_route_table.web-rt.id
}


####  NETWORK INTERFACES  #####

## Interface de Rede para a máquina '0'
resource "aws_network_interface" "web-ni" {
  subnet_id       = aws_subnet.webpage-subnet.id
  private_ips     = ["10.0.1.50"]
  security_groups = [aws_security_group.my-sgweb.id]
}

resource "aws_network_interface" "db-ni" {
  subnet_id       = aws_subnet.webpage-subnet.id
  private_ips     = ["10.0.1.51"]
  security_groups = [aws_security_group.my-sgweb.id]
}

resource "aws_eip" "web-eip" {
  vpc                       = true
  network_interface         = aws_network_interface.web-ni.id
  associate_with_private_ip = "10.0.1.50"

  depends_on = [
    aws_internet_gateway.web-gateway,
    aws_instance.maq-webpage,
    aws_network_interface.web-ni
  ]
}

###############################
