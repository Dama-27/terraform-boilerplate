# Built-in Functions in Terraform
# (aka: small helper tools Terraform gives you so you don’t suffer)

# Terraform comes with built-in functions that help you transform data.
# You’ll use these when working with lists, maps, strings, etc.

# Don’t worry about memorizing everything now — just understand the idea.

# 1️ concat() → combine lists
# Basically: join multiple lists together

variable "sweets1" {
  type    = list(string)
  default = ["kawum", "kokis"]
}

variable "sweets2" {
  type    = list(string)
  default = ["aluwa", "kiribath"]
}

output "combined_sweets" {
  value = concat(var.sweets1, var.sweets2)
}


# 2️ element() → pick one item from a list
# Think: "give me item at this position"

variable "animals" {
  type    = list(string)
  default = ["cat", "dog", "tiger"]
}

output "second_animal" {
  value = element(var.animals, 1) # dog (index starts at 0)
}


# 3️ length() → count items in a list
# Simple: how many items exist?

output "animal_count" {
  value = length(var.animals) # returns 3
}


# 4️ map() → create key-value pairs
# Turn two lists into a dictionary (map)

variable "keys" {
  type    = list(string)
  default = ["name", "role"]
}

variable "values" {
  type    = list(string)
  default = ["Kamal", "DevOps"]
}

output "user_map" {
  value = map(var.keys, var.values) # Returns {"name" = "Kamal", "role" = "DevOps"}
}


# 5️ lookup() → get value from a map
# Like asking: "hey, what’s the value for this key?"

variable "user_info" {
  type = map(string)
  default = {
    name = "Kalum"
    age  = "25"
  }
}

output "user_name" {
  value = lookup(var.user_info, "name") # Returns "Kalum"
}

# 6️ join() → turn list into string
# Combine items into a single sentence

variable "fruits" {
  type    = list(string)
  default = ["apple", "banana", "mango"]
}

output "fruit_string" {
  value = join(", ", var.fruits) # returns "apple, banana, mango"
}


# Summary
# - concat → join lists
# - element → pick item
# - length → count items
# - map → key-value structure
# - lookup → fetch value from map
# - join → make string from list

# You don’t need to memorize this.
# Just remember: Terraform has helpers for almost everything 
