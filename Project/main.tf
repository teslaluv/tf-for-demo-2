provider "aws" {
  region = var.region
}

# module "vpc-default" {
#   source = "../modules/aws_network"
# }

# module "vpc-dev" {
#   source = "../modules/network"
#   env                  = "dev"
#   vpc_cidr             = "10.100.0.0/16"
#   public_subnet_cidrs  = ["10.100.1.0/24", "10.100.2.0/24"]
#   private_subnet_cidrs = []
# }

# module "vpc-prod" {
#   source = "../modules/aws_network"
#   // source               = "git@github.com:adv4000/terraform-modules.git//aws_network"
#   env                  = "prod"
#   vpc_cidr             = "10.10.0.0/16"
#   public_subnet_cidrs  = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
#   private_subnet_cidrs = ["10.10.11.0/24", "10.10.22.0/24", "10.10.33.0/24"]
# }

# module "vpc-test" {
#   source = "../modules/aws_network"
#   env                  = "staging"
#   vpc_cidr             = "10.10.0.0/16"
#   public_subnet_cidrs  = ["10.10.1.0/24", "10.10.2.0/24"]
#   private_subnet_cidrs = ["10.10.11.0/24", "10.10.22.0/24"]
# }

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

# module "cluster" {
#   source = "../modules/cluster"
# }