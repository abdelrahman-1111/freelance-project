#creating the bastionHost instance with ubunti AMI in public-subnet1
resource "aws_instance" "bastionHost" {
  ami                         = var.instances_AMI
  instance_type               = var.instance_type
  subnet_id                   = module.my_network.public1_subnet_id
  associate_public_ip_address = true                                #to provide it with public ip 
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  tags = {
    Name = "bastionHost"
  }
}
