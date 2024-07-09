variable "REGION" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "AMI" {
  #  type = "map"

  default = {
    "us-east-1" = "ami-0440d3b780d96b29d"
  }
}

variable "INSTANCE_COUNT" {
  default = "1"
}

variable "INSTANCE_TYPE" {
  default = "t2.micro"
}
