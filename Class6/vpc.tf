module "vpc2" {
  source  = "enver0173/vpc2/aws"
	region = "us-east-1"
	vpc_cidr = "10.0.0.0/16"
	public_cidr1 = "10.0.1.0/24"
	public_cidr2 = "10.0.2.0/24"
	public_cidr3 = "10.0.3.0/24"
	private_cidr1 = "10.0.101.0/24"
	private_cidr2 = "10.0.102.0/24"
	private_cidr3 = "10.0.103.0/24"
	tags = {
	Name = "VPC_Project"
	Environment = "Dev"
	Team = "DevOps"
	Created_by = "Farrukh"
	Department = "IT"
	Bill = "CFO"
	}
}
output "vpc" {
	value = "${module.vpc2.vpc}"
}
output "private_subnet1" {
	value = "${module.vpc2.private_subnets[0]}"
}

output "private_subnet2" {
	value = "${module.vpc2.private_subnets[1]}"
}
output "private_subnet3" {
	value = "${module.vpc2.private_subnets[2]}"
}

output "public_subnet1" {
	value = "${module.vpc2.public_subnets[0]}"
}
output "public_subnet2" {
	value = "${module.vpc2.public_subnets[1]}"
}
output "public_subnet3" {
	value = "${module.vpc2.public_subnets[2]}"
}
output "region" {
	value = "${module.vpc2.region}"
}