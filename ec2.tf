#creating the bastionHost instance with ubunti AMI in public-subnet1
resource "aws_instance" "bastionHost" {
  ami                         = var.instances_AMI
  instance_type               = var.instance_type
  subnet_id                   = module.my_network.public1_subnet_id
  key_name                    = aws_key_pair.generated_key.key_name #attach the public key i created and saved its private one in secrets manager
  associate_public_ip_address = true                                #to provide it with public ip 
  vpc_security_group_ids      = [aws_security_group.allow_ssh.id]
  tags = {
    Name = "bastionHost"
  }
}

resource "aws_instance" "privateinstance" {
  ami                    = var.instances_AMI
  instance_type          = var.instance_type
  subnet_id              = module.my_network.private1_subnet_id
  vpc_security_group_ids = [aws_security_group.allow_3000.id]
  key_name               = aws_key_pair.generated_key.key_name #attach the public key i created and saved its private one in secrets manager
  tags = {
    Name = "private-instance"
  }
}