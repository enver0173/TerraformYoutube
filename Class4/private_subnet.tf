resource "aws_eip" "nat" {
	vpc = true
	tags = var.tags
}
resource "aws_nat_gateway" "gw" {
	depends_on = [ aws_internet_gateway.gw ]
	allocation_id = aws_eip.nat.id
	subnet_id = aws_subnet.public1.id
	tags = var.tags
}




resource "aws_subnet" "private1" {
	vpc_id = aws_vpc.main.id
	cidr_block = var.private_cidr1
	availability_zone = data.aws_availability_zones.available.names[0]
	tags = var.tags
}
resource "aws_subnet" "private2" {
	vpc_id = aws_vpc.main.id
	cidr_block = var.private_cidr2
	availability_zone = data.aws_availability_zones.available.names[1]
	tags = var.tags
}
resource "aws_subnet" "private3" {
	vpc_id = aws_vpc.main.id
	cidr_block = var.private_cidr3
	availability_zone = data.aws_availability_zones.available.names[2]
	tags = var.tags
}


resource "aws_route_table" "private" {
	vpc_id = aws_vpc.main.id
	route {
		cidr_block = "0.0.0.0/0"
		nat_gateway_id = aws_nat_gateway.gw.id
	}
	tags = var.tags
}


resource "aws_route_table_association" "private1" {
	subnet_id = aws_subnet.private1.id
	route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private2" {
	subnet_id = aws_subnet.private2.id
	route_table_id = aws_route_table.private.id
}
resource "aws_route_table_association" "private3" {
	subnet_id = aws_subnet.private3.id
	route_table_id = aws_route_table.private.id
}