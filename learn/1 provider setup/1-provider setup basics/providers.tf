# 🚨 Most important things you need to know first

# 👉 Where are you in the project?
# Terraform doesn’t care about folder structure THAT much,
# but it reads all .tf files inside the working directory.

# Whatever you name the file, as long as it ends with `.tf`, Terraform will load it.

# --------------------------------------------------
# Way 1 — Root module (Single provider use case)
# Example: Only AWS

provider "aws" {
  region = "us-east-1"
}

# Sample EC2 instance (Free tier friendly)
resource "aws_instance" "example" {
  ami           = "ami-0123456789abcdef0" # Find this from AWS EC2 console
  instance_type = "t2.micro"
}

# --------------------------------------------------
# Way 2 — Child module (Multiple providers / regions)

# Example: Using AWS in different regions or mixing AWS + Azure

module "aws_vpc" {
  source = "./aws_vpc"

  providers = {
    aws = aws.us-west-2
  }
}

resource "aws_instance" "example_with_module" {
  ami           = "ami-0123456789abcdef0"
  instance_type = "t2.micro"

  depends_on = [module.aws_vpc]
}

# --------------------------------------------------
# Way 3 — required_providers block (Version control + multiple providers)

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.79"
    }
  }
}

resource "aws_instance" "example_with_versioning" {
  ami           = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
}

# --------------------------------------------------
# "Hey man, why is this file named providers.tf?"

# Short answer: no strict rule, HA HA HAHAHAHA

# You can name it anything:
# - abcd.tf
# - random.tf
# - pls_work.tf (LOL😂)

# BUT in real-world projects, we use meaningful names:

# providers.tf
# main.tf
# variables.tf
# outputs.tf

# And sometimes:
# - iam.tf
# - vpc.tf
# - ec2.tf

# Clean naming = less headache later (trust me bro 😅)