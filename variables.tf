variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}
variable "private_subnet_cidr_blocks" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}
 #variables for instance 
variable "subnet_id" {
  description = "ID of the subnet where the EC2 instance will be launched"
  default = "subnet-00504fae871cffabb"
}

variable "key_pair_name" {
  description = "Name of the existing or new SSH key pair"
  default     = "Devopsaws"
}
