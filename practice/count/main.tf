resource "aws_iam_user" "example_users" { 
  # The length() function calculates how many elements are in the list
  count = length(var.user_names)  
  # Uses the current index (0, 1, 2...) to pull names sequentially
  name  = var.user_names[count.index] 
}

variable "user_names" {
  type    = list(string)
  default = ["alice", "bob", "charlie"]
}