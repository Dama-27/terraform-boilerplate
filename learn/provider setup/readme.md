Hey man do not confuse read 1,2,3,4 and get some idea first
But they all would not be needed, only one way is enough for most projects

Hashicorp version explanation
way1-version = "~> 3.0" -> this means 3.0 or above but less than 4.0 (3.0, 3.1, 3.2, .... or 3.0.0, 3.1.2, 3.9.9 you name it but noooooo 4.0.0) means Stay within the same major version Allow newer minor/patch updates
way2-version = "~> 3.2" -> means >= 3.2.0 < 3.3.0 More specific → locks minor version, only allows patch updates
way3-version = ">= 2.0, < 3.0" -> this means Anything from 2.0.0 up to (but not including) 3.0.0 (2.0, 2.1, 2.2, .... or 2.0.0, 2.1.2, 2.9.9 you name it) equals to ~> 2.0
way4-version = "= 3.1.0" means exactly this version
way5-version = ">= 3.0" minimum version is 3.0 anything above can use(but its risky)
way6-version = "< 3.0" maximum version is 3.0 anything below can use

try to avoid way 5,6

As you now confused, why i name provider.tf
nah there is no specific name you can name it anything but it should end with .tf (ex abcd.tf), but the industrial best practice is use a meaning ful name such as providers.tf, main.tf, variables.tf, outputs.tf, etc. even with iam.tf, vpc.tf, ec2.tf, etc.
