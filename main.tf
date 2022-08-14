module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "vpc-${terraform.workspace}"
  cidr = "10.0.0.0/16"

  azs             = var.availability_zone_names
  private_subnets = ["10.0.1.0/24"]
  public_subnets  = ["10.0.101.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform   = "true"
    Environment = "${terraform.workspace}"
  }
}
