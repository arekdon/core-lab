# Get AWS account information
data "aws_caller_identity" "current" {}

# Get current region
data "aws_region" "current" {}

# Get available AZs in current region
data "aws_availability_zones" "available" {
  state = "available"
}