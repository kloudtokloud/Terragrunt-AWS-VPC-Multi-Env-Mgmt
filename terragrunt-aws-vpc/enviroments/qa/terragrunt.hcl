# From repo https://github.com/kloudtokloud/AWS-VPC-Network-Terraform.git #

terraform{
    source = "git::git@github.com:kloudtokloud/AWS-VPC-Network-Terraform.git//aws-vpc?ref=v1.0"
}

include "remote_state" {
  path = find_in_parent_folders()
}

inputs = {

    region_name = "us-east-1"
    public_az = ["us-east-1a", "us-east-1"]
    private_az = ["us-east-1a", "us-east-1b"]
}