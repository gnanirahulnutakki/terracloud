data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_eks_cluster" "this" {
  name = aws_eks_cluster.this.id
}

data "aws_eks_cluster_auth" "this" {
  name = aws_eks_cluster.this.id
}