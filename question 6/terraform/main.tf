
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


