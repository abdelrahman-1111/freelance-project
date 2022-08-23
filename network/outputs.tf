output vpc_id {
  value       = aws_vpc.my-vpc.id
}
output public1_subnet_id {
  value       = aws_subnet.public1.id
}

output private1_subnet_id {
  value       = aws_subnet.private1.id
}

output vpc_CIDR {
  value     = var.vpc_CIDR
}