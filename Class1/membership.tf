resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.testuser.name,
  ]

  group = aws_iam_group.testgroup.name
}

resource "aws_iam_group" "group" {
  name = "testgroup"
}

resource "aws_iam_user" "user_one" {
  name = "testuser"
}
