resource "aws_s3_bucket" "example" {
  bucket = "${var.bucket_name}-${random_string.random.id}"
}

resource "random_string" "random" {
  length  = 4
  special = false
  numeric = false
  lower   = true
  upper   = false
}
