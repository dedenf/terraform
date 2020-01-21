provider "aws" {
  profile = "default"
  region  = "ap-southeast-1"
}
resource "aws_instance" "first-try" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
}
