

# ==========================================
# 2. EC2 INSTANCE RESOURCE
# ==========================================
resource "aws_iam_user" "user-create" {
  for_each = var.user_names
  name     = each.value

  tags = {
    Name = each.value
  }
}

