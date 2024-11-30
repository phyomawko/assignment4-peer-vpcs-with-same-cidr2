resource "aws_route_table" "rt_vpcA" {
  vpc_id = aws_vpc.vpc-A.id
  route {
    cidr_block = "192.168.0.0/24"
    vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_AB.id
    
    
  }
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_vpcA.id
    
    
  }
  tags = {
    Name = "vpcA-route-table-A-to-B"
  }
}

resource "aws_route_table" "rt_vpcA_2" {
  vpc_id = aws_vpc.vpc-A.id
  route {
    cidr_block = "192.168.1.0/24"
    vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_AC.id
    
    
  }
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_vpcA.id
    
    
  }
  tags = {
    Name = "vpcA-route-table-A-to-C"
  }
}




resource "aws_route_table" "rt_vpcB" {
  vpc_id = aws_vpc.vpc-B.id
  route {
   cidr_block = "10.1.0.0/24"
   vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_AB.id
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_vpcB.id
    
    
  }
  tags = {
    Name = "vpcB-route-table-to-A"
  }
}

resource "aws_route_table" "rt_vpcC" {
  vpc_id = aws_vpc.vpc-C.id
  route {
    cidr_block = "10.1.1.0/24"
    vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_AC.id
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw_vpcC.id
    
    
  }
  tags = {
    Name = "vpcC-route-table-to-A"
  }
}

resource "aws_route_table_association" "assoc_vpcA" {
  subnet_id      = aws_subnet.subnet_vpcA.id
  route_table_id = aws_route_table.rt_vpcA.id
}

resource "aws_route_table_association" "assoc_vpcA_2" {
  subnet_id      = aws_subnet.subnet_vpcA_2.id
  route_table_id = aws_route_table.rt_vpcA_2.id
}

resource "aws_route_table_association" "assoc_vpcB" {
  subnet_id      = aws_subnet.subnet_vpcB.id
  route_table_id = aws_route_table.rt_vpcB.id
}

resource "aws_route_table_association" "assoc_vpcC" {
  subnet_id      = aws_subnet.subnet_vpcC.id
  route_table_id = aws_route_table.rt_vpcC.id
}