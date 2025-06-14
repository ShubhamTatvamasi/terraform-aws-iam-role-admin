# terraform-aws-iam-role-admin

Terraform apply:
```bash
terraform apply \
  -target aws_iam_role.iam_admin \
  -target aws_iam_role_policy_attachment.admin_policy_attachment
```
