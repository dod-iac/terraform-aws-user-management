#
# Admin
#

resource "aws_iam_group" "admin" {
  name = var.admin_group_name
}

resource "aws_iam_group_policy_attachment" "admin_administrator" {
  group = aws_iam_group.admin.name
  policy_arn = format(
    "arn:%s:iam::aws:policy/AdministratorAccess",
    data.aws_partition.current.partition
  )
}

#
# Basic
#

resource "aws_iam_group" "basic" {
  name = var.basic_group_name
}

resource "aws_iam_group_policy_attachment" "basic_change_passwd" {
  group = aws_iam_group.basic.name
  policy_arn = format(
    "arn:%s:iam::aws:policy/IAMUserChangePassword",
    data.aws_partition.current.partition,
  )

}

#
# Alumni
#

resource "aws_iam_group" "alumni" {
  name = var.alumni_group_name
}

resource "aws_iam_group_policy_attachment" "alumni_deny_all" {
  group      = aws_iam_group.alumni.name
  policy_arn = aws_iam_policy.deny_all.arn
}
