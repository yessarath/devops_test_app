resource "aws_iam_user" "devops-user" {
  name = var.username

  tags = {
    team = "devops"
  }
}


resource "aws_iam_group" "developers" {
  name = var.groupname
}

resource "aws_iam_group_membership" "group-membership" {
  name = "group-membership"

  users = [
    aws_iam_user.devops-user.name,
  ]

  group = aws_iam_group.developers.name
}
