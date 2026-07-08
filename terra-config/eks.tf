
# Create the EKS Cluster
resource "aws_eks_cluster" "eks_cluster" {
  name     = "Three-tier-cloud"
  role_arn = aws_iam_role.cluster_role.arn
  
  vpc_config {
    subnet_ids = [
      "subnet-02bbe27da1f3dd70a",
      "subnet-018e4aa7c36d84df1",
      "subnet-082f85b77bcd047e8",
      "subnet-087db6cfdd73030d4",
      "subnet-0cffa309fcfaed214",
    ]
  }

  depends_on = [
    aws_iam_role_policy_attachment.cluster_AmazonEKSClusterPolicy,
  ]
}