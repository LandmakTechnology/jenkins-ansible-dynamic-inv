provider "aws" {
      region = "us-east-1"
}
resource "aws_instance" "app" {
    ami           = "ami-01e78c5619c5e68b4"
    instance_type = "t3.micro"
    security_groups = ["jkSG"]
    key_name      =  "key29"
    tags = {
        Name = " tomcat"
        Environment = "dev"
  }  
}
