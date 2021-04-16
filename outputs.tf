
output "admin_group" {
  value       = aws_iam_group.admin
  description = "Admin Group"
}

output "basic_group" {
  value       = aws_iam_group.basic
  description = "Basic Group"
}

output "alumni_group" {
  value       = aws_iam_group.alumni
  description = "Alumni Group"
}

output "admin_role" {
  value       = aws_iam_role.admin
  description = "Admin Role"
}

output "users" {
  value       = aws_iam_user.user
  description = "Users"
}
