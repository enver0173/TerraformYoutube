resource "aws_s3_bucket" "b" {
  bucket = "enveryoutube2"
  acl    = "private"
  versioning {
    enabled = true
  }

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
