# Same provider, multiple regions (AWS example)
# Now the headace is starting ------------->>>> JUST KIDDING

# --------------------------------------------------
# 🇺🇸 us-east-1

provider "aws" {
  alias  = "use1"
  region = "us-east-1"
}

# --------------------------------------------------
# 🇺🇸 us-west-2

provider "aws" {
  alias  = "usw2"
  region = "us-west-2"
}

# --------------------------------------------------
# EC2 in us-east-1

resource "aws_instance" "east_instance" {
  ami           = "ami-0123456789abcdef0"
  instance_type = "t2.micro"

  provider = aws.use1
}

# --------------------------------------------------
# EC2 in us-west-2

resource "aws_instance" "west_instance" {
  ami           = "ami-0123456789abcdef0"
  instance_type = "t2.micro"

  provider = aws.usw2
}

# --------------------------------------------------
# What is "alias"?

# alias = just a nickname for the provider

# Example:
# aws.use1 → AWS in us-east-1
# aws.usw2 → AWS in us-west-2

# MAN Use meaningful short names (don’t write full essays)

# And yes… if you didn’t understand alias,
# go learn a bit of English bro 😂 😂 😂 (just kidding… Google it)