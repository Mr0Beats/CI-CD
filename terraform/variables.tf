variable "aws_region" {
  description = "Регіон AWS"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "ID образу Ubuntu"
  default     = "ami-021bf0bba3a411792"
}

variable "key_name" {
  description = "Назва SSH ключа в AWS"
  default     = "Test-key" 
}
