resource "aws_iam_role" "iam_admin" {
  name = "iam-admin"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        "Effect" : "Allow",
        "Principal" : {
          "AWS" : "arn:aws:iam::<REPLACE_WITH_OUR_ACCOUNT_ID>:role/<REPLACE_WITH_OUR_DEPLOYMENT_ROLE_NAME>"
        },
        "Action" : "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "admin_policy_attachment" {
  role       = aws_iam_role.iam_admin.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
