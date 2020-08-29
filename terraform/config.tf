#variable "tags" {
   #"client" = "infotek",
   #"project"= "iot-infotek",
   #"environment"  = "production",
   #"terraform" = "local"

variable "tags" {
  default = {
      "client" : "infotek",
      "project" : "iot-infotek",
      "environment" : "production",
      "terraform" : "local",
  }
}

variable "subnets" {
  default = ["subnet-0ab6f956", "subnet-29e5e126" ]
}
