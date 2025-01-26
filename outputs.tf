output "bucket_name" {
  value = aws_s3_bucket.this.bucket
}

output "output_bucket" {
  value = aws_s3_bucket.output_bucket.bucket
}

output "docker_registry_url" {
  value = aws_ecr_repository.docker_registry.repository_url
}
