provider "aws" {
  region = var.region
}

module "vpc-dev" {
  source = "../modules/cluster"
  env                  = "dev"
  vpc_cidr             = "10.0.0.0/16"
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = []
  # private_subnet_cidrs = ["10.0.11.0/24", "10.0.22.0/24"]
}

module "ecr" {
  source = "../modules/ecr"
}
