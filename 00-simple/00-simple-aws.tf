provider "aws" {
  profile = "default"
  region  = "ap-southeast-1"
}
resource "aws_instance" "first-try" {
  ami           = "ami-00477ca666574012f"
  instance_type = "t2.micro"
}
