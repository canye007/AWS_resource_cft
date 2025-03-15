resource "aws_instance" "this" {
  ami                     = "ami-08b5b3a93ed654d19"
  instance_type           = "t2.micro"
  ###host_resource_group_arn = "arn:aws:resource-groups:us-west-2:123456789012:group/win-testhost"
  tenancy                 = "host"
}
resource "aws_s3_bucket" "terraforms3" {
  bucket = "terraformproj237-bkt"
  tags = {
    name = "Prod_Bucket"
    Env = "Prod"
  }
}
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.terraforms3.id
  versioning_configuration {
    status = "Enabled"
  }
}