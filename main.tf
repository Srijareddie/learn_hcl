#Learning HCL

/* This
is multi-line
comment */
/*
# Blocks - Container for other content
block_type {
    attribute1 = value1
    attribute2 = value2
}

resource "aws_instance" "example" {
    ami = "ami-0c94855ba95c71c99"
    instance_type = "t2.micro"
    count = 3
    enabled = true
}

# Attributes
key = value

# Datatypes
"string"
number 2
boolean true false
List:
List = ["item1","item2","item3"]
Security_Groups = ["sg-2132","sg-2431","sg-8765"]

Maps:
variable "example_map" {
    type    = Maps
    default = { key1 = "value1", key2 ="value2", key3 = "value3" }
}

locals {
    my_map = { "name" = "John Doe","age" = 30,"is_admin"= true }
}

locals.my_map["age"]

# Conditions
resource "aws_instance" "server"{
    instance_type = var.environment == "development" ? "t2.micro : "t2.small" // If the value of envi is development then uses t2.micro, or (in production/stagging envi) use t2.small 
}

# Function
locals {
    name = "John"
    fruits = ["apple","mango"]
    message = "Hello ${upper(local.name)}! I know u like ${join(",", local.fruits)}"
} //Hello John! I know u like apple, mango

# ResourceDependency
resources "aws_instance" "name" {
    vpc_security_group_ids = aws_security_group.mysg.id
}
resource "aws_security_group" "mysg" {
    #inbound rules
}
*/