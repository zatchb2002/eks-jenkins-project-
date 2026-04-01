provider "aws" {
  region = "ap-south-1"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "jenkins-eks-cluster"
  cluster_version = "1.29"

  subnet_ids = ["subnet-0d64cc7e426c8c391", "subnet-01b53e8feb146e79d", "subnet-02732801cc95d880c"]
  vpc_id     = "vpc-04e9eeece68d85982"

  eks_managed_node_groups = {
    default = {
      desired_size = 2
      max_size     = 2
      min_size     = 1

      instance_types = ["c7i-flex.large"]
    }
  }
}
