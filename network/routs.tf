# creating the public route table which will route mu public subnet to the internet using the internet gatway
resource "aws_route_table" "public-route-table" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "my-public-route-table"
  }
}
# creating the private route table which will route mu private subnet to the internet using the NAT gatway
resource "aws_route_table" "private-route-table" {
  vpc_id = aws_vpc.my-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "my-private-route-table"
  }
}
# create the subnet association to link the public route table with my public subnets 
resource "aws_route_table_association" "public1-link" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.public-route-table.id
}
# create the subnet association to link the private route table with my private subnets 
resource "aws_route_table_association" "private1-link" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = aws_route_table.private-route-table.id
}
