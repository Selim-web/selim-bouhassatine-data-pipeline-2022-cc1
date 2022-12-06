
# Définissez les variables d'entrée
variable "stream_name" {
	type = string
}

variable "partition_count" {
  type = number
  default = 1
}

# Définissez le type de ressource à créer
resource "aws_kinesis_stream" "selim-bouhassatine-stock-input-stream" {
  name           = var.stream_name
  shard_count    = var.partition_count
  tags = {
	Name = "selim.bouhassatine@etu.u-pec.fr"
	Owner = "selim_dev"
  }
}

resource "aws_instance" "ec2_vm" {
  ami           = "ami-02384a901b5df8024"
  instance_type = "t3.micro"
  key_name      = "mykey"
  tags = {
    Name = "selim.bouhassatine@etu.u-pec.fr"
    Owner = "selim_dev"
  }
  user_data = file("/Users/selimbouhassatine/terraform/startup.sh")
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
}

# Default ec2 user is "ec2-user"


