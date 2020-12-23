resource "aws_iam_user" "user" {
  for_each = merge(var.admin_users, var.basic_users, var.alumni_users)

  name = each.key

  tags = merge(each.value, var.tags)
}

resource "aws_iam_user_group_membership" "user" {
  for_each = merge(var.admin_users, var.basic_users, var.alumni_users)

  user = aws_iam_user.user[each.key].name

  groups = sort(flatten([
    contains(keys(var.admin_users), each.key) ? [aws_iam_group.admin.name] : [],
    contains(keys(var.basic_users), each.key) ? [aws_iam_group.basic.name] : [],
    contains(keys(var.alumni_users), each.key) ? [aws_iam_group.alumni.name] : [],
  ]))
}
