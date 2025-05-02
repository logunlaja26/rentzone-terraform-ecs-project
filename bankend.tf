# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "lai-terraform-remote-state"
    key            = "rentzone-ecs/terraform.tfstate"
    region         = "us-east-2"
    profile        = "terraform-user"
    dynamodb_table = "terraform-state-lock"
  }
}