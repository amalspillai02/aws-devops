variable "region" {
  default = "ap-southeast-1"
}

variable "instance_type" {
  default = "t2.micro"
}
variable "key_name" {
  description = "SSH key name for EC2"
  default = "asia-pacific-key"
}

