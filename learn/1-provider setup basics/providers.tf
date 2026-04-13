# Most important things you need to know
# where you in the project(you need to show the path to it in the root .tf file) what ever you name if the ending is .tf it counts
# Mainly there are 3 ways
# Way 1 (in root module)- If you are working with a single provider (ex: only AWS)
provider "aws" {
  region = "us-east-1"
}

# sample ec2 instance creation of free tier
resource "aws_instance" "example" {
  ami           = "ami-0123456789abcdef0" # You can find the AMI ID in the AWS EC2 console
  instance_type = "t2.micro"
}

# Way 2 (in a child module) - If you are working with multiple providers (ex: AWS and Azure) or multiple regions within the same project (exL AWS: us-east-1, us-west-2)
module "aws_vpc" {
  source = "./aws_vpc"
  providers = {
    aws = aws.us-west-2
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
  depends_on    = [module.aws_vpc]
}

# Way 3 (in required_providers block) - If you are working with multiple providers (ex: AWS and Azure) or multiple regions within the same project (exL AWS: us-east-1, us-west-2) and with different versions of providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.79"
    }
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
}

# As you now confused, why i name provider.tf
# nah there is no specific name you can name it anything but it should end with .tf (ex abcd.tf), but the industrial best practice is use a meaning ful name such as providers.tf, main.tf, variables.tf, outputs.tf, etc. even with iam.tf, vpc.tf, ec2.tf, etc.

