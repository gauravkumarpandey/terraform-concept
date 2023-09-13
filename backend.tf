terraform {
  backend "s3" {
    key = "terraform/tfstate.tfstate"
    bucket = "gauravkp-tf-state-remote-backend"
    region = "ap-south-1"
  }
}