
resource "aws_instance" "ec2_vpcA" {
  ami           = "ami-0f935a2ecd3a7bd5c" 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet_vpcA.id
  vpc_security_group_ids = [aws_security_group.sg_vpcA.id]
  associate_public_ip_address = true
  tags = {
    Name = "EC2-Instance-AB"
  }
}

resource "aws_instance" "ec2_vpcA-2" {
  ami           = "ami-0f935a2ecd3a7bd5c" 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet_vpcA_2.id
  vpc_security_group_ids = [aws_security_group.sg_vpcA.id]
  associate_public_ip_address = true
  tags = {
    Name = "EC2-Instance-AC"
  }
}

resource "aws_instance" "ec2_vpcB" {
  ami           = "ami-0f935a2ecd3a7bd5c" 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet_vpcB.id
  vpc_security_group_ids = [aws_security_group.sg_vpcB.id]
  associate_public_ip_address = true
  tags = {
    Name = "EC2-Instance-B"
  }
}

resource "aws_instance" "ec2_vpcC" {
  ami           = "ami-0f935a2ecd3a7bd5c" 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet_vpcC.id
  vpc_security_group_ids = [aws_security_group.sg_vpcC.id]
  associate_public_ip_address = true
  tags = {
    Name = "EC2-Instance--C"
  }
}