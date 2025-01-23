
resource "random_id" "this" {
  byte_length = 4
}
resource "aws_s3_bucket" "this" {
  bucket = "meeting-recordings-${random_id.this.hex}"

  tags = {
    project_name = var.project_name
  }
}

resource "aws_s3_bucket" "output_bucket" {
  bucket = "meeting-recordings-output-${random_id.this.hex}"

  tags = {
    project_name = var.project_name
  }
}
