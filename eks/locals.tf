locals {
  current_dir = basename(path.cwd)
  parent_dir  = basename(dirname(path.cwd))
  name_prefix = "arek-lab"
  tags = {
    "Environement"  = "DEV"
    "Code"          = "AREKLAB"
    "ProvisionedBy" = "Terraform"
    "Repo"          = "${local.parent_dir}/${local.current_dir}"
  }
  azs = slice(data.aws_availability_zones.available.names, 0, 3)
}
