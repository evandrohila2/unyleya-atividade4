provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

resource "aws_instance" "Teste" {
  ami = "ami-0c19f80dba70861db"
  instance_type = "t2.micro"
  key_name = "Evandro"
  tags = {
    Name = "lab-terraform-tst"
  }
  get_password_data = true
  vpc_security_group_ids = ["${aws_security_group.acessos.id}"]

}
