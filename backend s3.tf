# terraform {
#   backend "s3" {
#   bucket = "group-1-terraform-state"
#   key = "terraform/backend"
#   region = "eu-west-2"
#   }
# }
credentials "app.terraform.io" {
  token = "0zzKYM3zNUe7lg.atlasv1.ewA1ixZeOdpnAQvLcyNtvycn2uxyC7mOSv28XgFM5DDC3TZrml5rMsEjwhrDdof8VSM"
}


terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }
  backend "remote" {
  organization = "sockshop"
    
    workspaces {
      name = "sockshop"
    }
  }
}
