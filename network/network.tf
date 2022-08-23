#creating a virtual private network with CIDR 10.0.0.0/16
resource "aws_vpc" "my-vpc" {
  cidr_block = var.vpc_CIDR
}
#creating first public subnet with CIDR 10.0.1.0/24 in AZ us-east-1a under the new created vpc 
resource "aws_subnet" "public1" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.public_subnet1_CIDR
  availability_zone = "${var.vpc_region}a"
  tags = {
    Name = "public-subnet1"
  }
}

#creating first private subnet with CIDR 10.0.3.0/24 in AZ us-east-1a under the new created vpc 

resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.private_subnet1_CIDR
  availability_zone = "${var.vpc_region}a"
  tags = {
    Name = "private-subnet1"
  }
}
