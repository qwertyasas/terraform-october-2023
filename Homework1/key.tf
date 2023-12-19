resource "aws_key_pair" "deployer" {
  key_name   = "my-key"
  public_key = file("~/.ssh/id_rsa.pub")
}

# Bastion public key was created

output "key_type" {
    value = aws_key_pair.deployer.key_type
}
 # key_type was succesfully outputed

 # buckets (bucket0-0-1, bucket-0-0-2) were created

 resource "aws_s3_bucket" "b1" {
    bucket = "bucket-0-0-1"  
}
 resource "aws_s3_bucket" "b2" {
    bucket = "bucket-0-0-2"  
}
# [ec2-user@ip-172-31-2-178 Homework1]$ terraform import aws_s3_bucket.b1 bucket-0-0-1
# aws_s3_bucket.b1: Importing from ID "bucket-0-0-1"...
# aws_s3_bucket.b1: Import prepared!
#  Prepared aws_s3_bucket for import
# aws_s3_bucket.b1: Refreshing state... [id=bucket-0-0-1]

# Import successful!


# aws_s3_bucket.b2: Importing from ID "bucket-0-0-2"...
# aws_s3_bucket.b2: Import prepared!
#  Prepared aws_s3_bucket for import
# aws_s3_bucket.b2: Refreshing state... [id=bucket-0-0-2]

# Import successful!


#The resources that were imported are shown above. These resources are now in
#your Terraform state and will henceforth be managed by Terraform