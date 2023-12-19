resource "aws_iam_user" "lb1" {
  name = "Aizhigit"
}

resource "aws_iam_user" "lb2" {
  name = "Kaizen"
}

resource "aws_iam_user" "lb3" {
  name = "Hello"
}

resource "aws_iam_user" "lb4" {
  name = "World"
}
# 4 users were created

resource "aws_iam_group" "lb5" {
  name = "DevOps"
}

resource "aws_iam_group" "lb6" {
  name = "QA"
}

# 2 groups were created 

resource "aws_iam_group_membership" "lb7" {
  name = "tf-testing-group-membership1"

  users = [
    aws_iam_user.lb1.name,
    aws_iam_user.lb2.name,
  ]

  group = aws_iam_group.lb5.name
}

resource "aws_iam_group_membership" "lb8" {
  name = "tf-testing-group-membership2"

  users = [
    aws_iam_user.lb3.name,
    aws_iam_user.lb4.name,
  ]

  group = aws_iam_group.lb6.name
}

# users were divided into gruops

resource "aws_iam_user" "lb9" {
    name = "admin"
}

# "admin" user was created manually and has been imported through terminal
# [ec2-user@ip-172-31-2-178 Homework1]$ terraform import aws_iam_user.lb9 admin
# aws_iam_user.lb9: Importing from ID "admin"...
# aws_iam_user.lb9: Import prepared!
#  Prepared aws_iam_user for import
# aws_iam_user.lb9: Refreshing state... [id=admin]

# Import successful!
# The resources that were imported are shown above. These resources are now in
# your Terraform state and will henceforth be managed by Terraform.

output full_output {
    value = aws_iam_user.lb1
}
# output was succesfull

output uniq_id {
    value = aws_iam_user.lb2.unique_id
}