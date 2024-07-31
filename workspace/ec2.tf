resource "aws_instance" "web" {
  ami = "ami-0b4f379183e5706b9"
  instance_type = lookup(var.instance_type, terraform.workspace)

  tags = {
    Name = "Workspace"
  }
}