resource "aws_iam_user" "myfirstresources" {
  name = "Mehmet"

  tags = {
    tag-key     = "DeveloperEnver"
    environment = "dev"
  }
}
