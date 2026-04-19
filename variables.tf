variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  description = "Ubuntu 22.04 AMI"
  default     = "ami-0ec10929233384c7f"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "key_name" {
  description = "terraform"
}