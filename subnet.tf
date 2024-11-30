resource "aws_subnet" "subnet_vpcA" {
  vpc_id            = aws_vpc.vpc-A.id
  cidr_block        = "10.1.0.0/24"
  availability_zone = "ap-southeast-1a" 
  tags = {
    Name = "VPC-A-subnet"
  }
}

resource "aws_subnet" "subnet_vpcA_2" {
  vpc_id            = aws_vpc.vpc-A.id
  cidr_block        = "10.1.1.0/24"
  availability_zone = "ap-southeast-1a" 
  tags = {
    Name = "VPC-A-subnet-2"
  }
}

resource "aws_subnet" "subnet_vpcB" {
  vpc_id            = aws_vpc.vpc-B.id
  cidr_block        = "192.168.0.0/24"
  availability_zone = "ap-southeast-1a" 
  tags = {
    Name = "VPC-B-subnet"
  }
}

resource "aws_subnet" "subnet_vpcC" {
  vpc_id            = aws_vpc.vpc-C.id
  cidr_block        = "192.168.1.0/24"
  availability_zone = "ap-southeast-1a" 
  tags = {
    Name = "VPC-C-subnet"
  }
}