terraform {
  backend "s3" {
    bucket  = "praveen.statefile"
    key     = "terraform.tfstate"
    region  = "ap-south-2"
    encrypt = true
  }
}

resource "aws_instance" "name" {
  ami                    = "ami-0bd4cda58efa33d23"
  instance_type          = "t3.micro"
  subnet_id              = "subnet-074e5a9924c372427"
  key_name               = "Praveen_keys"
  vpc_security_group_ids = ["sg-06b93eb51301ea65b"]

  tags = {
    Name = "example-instance"
  }
}
