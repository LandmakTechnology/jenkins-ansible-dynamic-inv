provider "aws" {
      region = "us-east-1"
}
resource "aws_instance" "app" {
    ami           = "ami-08e637cea2f053dfa"
    instance_type = "t3.micro"
    security_groups = ["jkSG"]
    key_name      =  "key29"
    tags = {
        Name = " tomcat"
        Environment = "dev"
  }  
}
