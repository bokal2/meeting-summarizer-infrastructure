module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.18.1"


  # VPC variables
  name = var.vpc_name
  azs  = var.azs
  cidr = var.vpc_cidr

  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets

  # Database subnet
  create_database_subnet_group       = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table
  database_subnets                   = var.db_subnets

  # Nat Gateway
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway


  # VPC DNS parameters
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support

  public_subnet_tags = {
    type = "public-subnets"
  }

  private_subnet_tags = {
    type = "private-subnets"
  }

  database_subnet_tags = {
    type = "database-subnets"
  }

  tags = local.common_tags

  vpc_tags = {
    Name = var.project_name
  }

  map_public_ip_on_launch = true
}
