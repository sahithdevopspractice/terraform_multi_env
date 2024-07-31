variable "instance_names" {
 type = map
 default = {
        mongodb = "t3.small"
        redis = "t2.micro"
        mysql = "t3.small"
        rabbitmq = "t2.micro"
 }
}

variable "zone_id" {
  type = string
  default = "Z02917703TETMSTF0A6A6"
}

variable "domain_name" {
  type = string
  default = "betterpractices.online"
}