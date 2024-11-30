# VPC Peering Connection
resource "aws_vpc_peering_connection" "vpc_peering_AB" {
  vpc_id        = aws_vpc.vpc-A.id
  peer_vpc_id   = aws_vpc.vpc-B.id
  auto_accept   = false
  tags = {
    Name = "VPC Peering Connection AB"
  }
}

# Accept VPC Peering Request
resource "aws_vpc_peering_connection_accepter" "accepterAB" {
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_AB.id
  auto_accept               = true

  tags = {
    Name = "VPC Peering Connection AB Accepter"
  }
}

# VPC Peering Connection
resource "aws_vpc_peering_connection" "vpc_peering_AC" {
  vpc_id        = aws_vpc.vpc-A.id
  peer_vpc_id   = aws_vpc.vpc-C.id
  auto_accept   = false
  tags = {
    Name = "VPC Peering Connection AC"
  }
}

# Accept VPC Peering Request
resource "aws_vpc_peering_connection_accepter" "accepterAC" {
  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering_AC.id
  auto_accept               = true

  tags = {
    Name = "VPC Peering Connection AC Accepter"
  }
}

