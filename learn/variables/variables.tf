# As previously mentioned you do not need to use variables.tf you name it you can use is as long as it ends with .tf

# there are 2 types of varibales input variables and output variables
# 1 input varibales

variable "example_var" {                    # if you ned to define a variable you need to use  varibale keyword
  description = "this is about bla bla bla" # as mentioned in the name this is about small desription about the varible
  type        = string                      # you can use string, number, bool, list, map, object, etc.
  default     = "default_value"             # if you dont provide a value it will use this value
}

# you can use variables in your terraform code like this
resource "aws_instance" "example" { #here example means the name of the resource you can use any name it shows in the AWS console ec2 instance section by the name example
  ami           = "ami-0123456789abcdef0"
  instance_type = var.example_var
}

# 2 output variables
output "example_output" {
  description = "example output variable"
  value       = resource.example_resource.example.id # the order is <<resource_type>>.<<resource_name>>.<<attribute_name>>
  # example value = resource.aws_instance.example.id
  # example value = var.example_var
  # example value = var.example_var.id
  # example value = var.example_var.id.name
  # example value =  module.example_module.example_output
}
