# aws us-east-1
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

# aws us-west-2
provider "aws" {
  alias  = "us-west-2"
  region = "us-west-2"
}

# creating ec2 instance in us-east-1
resource "aws_instance" "example" {
  ami           = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
  provider      = "aws.us-east-1"
}

# creating ec2 instance in us-west-2
resource "aws_instance" "example2" {
  ami           = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
  provider      = "aws.us-west-2"
}

# use alias key to specify the region as the name use shoud understand what alias means otherwise learn some englsih HAHAHA
# likewise you can do other resource creation with diffrent regions
