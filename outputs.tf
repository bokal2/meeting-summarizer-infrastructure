# S3 Output Values
output "bucket_name" {
  value = aws_s3_bucket.this.bucket
}

output "output_bucket" {
  value = aws_s3_bucket.output_bucket.bucket
}

# ECR Output Values
output "docker_registry_url" {
  value = aws_ecr_repository.docker_registry.repository_url
}

# VPC Output Values
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}
output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}
output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}
output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

output "azs" {
  description = "A list of availability zones spefified as argument to this module"
  value       = module.vpc.azs
}
