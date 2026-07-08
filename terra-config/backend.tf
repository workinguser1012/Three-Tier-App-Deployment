terraform {
  backend "s3" {
    bucket         = "three-tier-project-2026-storage"  
    key            = "eks/terraform.tfstate"       
    region         = "us-east-1"                   
    encrypt        = true
  }
}
