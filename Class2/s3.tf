resource "aws_s3_bucket" "b" {
  bucket = "nov2020envertestyoutube"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
