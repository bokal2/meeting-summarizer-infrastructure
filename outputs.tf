output "bucket_name" {
  value = aws_s3_bucket.this.bucket
}

output "output_bucket" {
  value = aws_s3_bucket.output_bucket.bucket
}
