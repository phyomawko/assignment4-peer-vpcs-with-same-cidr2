resource "aws_internet_gateway" "igw_vpcA" {
  vpc_id = aws_vpc.vpc-A.id
  tags = {
    Name = "IGW VPC A"
  }
}

resource "aws_internet_gateway" "igw_vpcB" {
  vpc_id = aws_vpc.vpc-B.id
  tags = {
    Name = "IGW VPC B"
  }
}

resource "aws_internet_gateway" "igw_vpcC" {
  vpc_id = aws_vpc.vpc-C.id
  tags = {
    Name = "IGW VPC C"
  }
}