#Subnet1 10.40.100.0/24
resource "aws_subnet" "mirth" {
  vpc_id            = data.terraform_remote_state.base_state.outputs.production_vpc
  cidr_block        = "10.40.100.0/24"
  depends_on        = [data.terraform_remote_state.base_state.production_vpc]
  availability_zone = "us-east-1a"
  tags = {
    Name = "Mirth Instance"
  }
}