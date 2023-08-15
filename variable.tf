variable "mycird" {
  type = string
}

variable "subnet1cidr" {
  type = string
}

variable "internetgateway" {
  type = string

}

variable "subnet2cidr" {
  type = string

}

variable "ports" {
  type = list(number)

}

variable "imageid" {
  type = string

}

variable "instancetype" {
  type = string

}