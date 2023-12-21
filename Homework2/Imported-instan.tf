resource "aws_instance" "as"{
    id = "i-0d0322e24eafca049"
}
resource "aws_security_group" "ad"{
    id = "sg-0687d36827fe2a570"
}
# command to import instance --- terraform import aws_instance.as i-0d0322e24eafca049(id of instance)
# command to import security group --- terraform import aws_security_group.ad sg-0687d36827fe2a570(id of security group)
# in order to monupilate them we need to specify ami and name for them
