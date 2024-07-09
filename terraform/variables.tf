variable "REGION" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}


variable "AMI" {
  type = map(string)
  default = {
    "us-east-1" = "ami-0440d3b780d96b29d"
    "us-east-2" = "ami-09694bfab577e90b0"
  }
}

variable "INSTANCE_COUNT" {
  type    = string
  default = "1"
}

variable "INSTANCE_TYPE" {
  type    = string
  default = "t2.micro"
}
