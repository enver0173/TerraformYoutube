resource "aws_subnet" "public1" {
	vpc_id = aws_vpc.main.id
	cidr_block = var.public_cidr1
	availability_zone = data.aws_availability_zones.available.names[0]
	map_public_ip_on_launch = true
	tags = var.tags
}

resource "aws_subnet" "public2" {
	vpc_id = aws_vpc.main.id
	cidr_block = var.public_cidr2
	availability_zone = data.aws_availability_zones.available.names[1]
	map_public_ip_on_launch = true
	tags = var.tags
}
resource "aws_subnet" "public3" {
	vpc_id = aws_vpc.main.id
	cidr_block = var.public_cidr3
	availability_zone = data.aws_availability_zones.available.names[2]
	map_public_ip_on_launch = true
	tags = var.tags
}

resource "aws_route_table" "r" {
	vpc_id = aws_vpc.main.id
	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = aws_internet_gateway.gw.id
	}
	tags = var.tags
}


resource "aws_route_table_association" "public1" {
	subnet_id = aws_subnet.public1.id
	route_table_id = aws_route_table.r.id
}

resource "aws_route_table_association" "public2" {
	subnet_id = aws_subnet.public2.id
	route_table_id = aws_route_table.r.id
}
resource "aws_route_table_association" "public3" {
	subnet_id = aws_subnet.public3.id
	route_table_id = aws_route_table.r.id
}