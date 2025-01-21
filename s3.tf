
resource "random_id" "this" {
  byte_length = 4
}


resource "aws_s3_bucket" "this" {
  bucket = "meeting-recordings-${random_id.this.hex}"

  tags = {
    ManagedBy = "Terraform"
    Project   = var.project_name
  }
}
