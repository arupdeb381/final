terraform {
  backend "s3" {
    bucket = "tfbucket381"
    key    = "Dev/tfday06.tfstate"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
}