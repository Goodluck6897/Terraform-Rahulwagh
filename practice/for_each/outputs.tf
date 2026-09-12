# ==========================================
# INFRASTRUCTURE OUTPUTS
# ==========================================

output "iam-users" {
  value = [for user in aws_iam_user.user-create : user.name]
}