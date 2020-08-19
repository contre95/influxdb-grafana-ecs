provider "aws" {
    version = "~> 2.0"
      region  = "us-east-1"
      //  access_key = var.config.access_key
      //  secret_key = var.config.secret_access_key
}

#terraform {
  #backend "s3" {
    #bucket = "transporterugiero-terraform-states"
    #key    = "sys-transporterugiero/terraform.tfstate"
    #region = "us-east-1"
  #}
#}

