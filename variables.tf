variable "region" {
  default = "us-east-2"
}

variable "cidr_block" {
    default = "172.20.0.0/16"
  
}

variable "project" {
    default = "demo"
  
}

variable "ami" {
  default = "ami-002068ed284fb165b"
  
}

variable "type" {
  default = "t2.micro"
}

variable "key" {
  default = "Enter your key pair name here"
}

variable "access_key" {

  default = "Enter your access key id here"
  
}

variable "secret_key" {

  default = "Enter you secret key here"
  
}
