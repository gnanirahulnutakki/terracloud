variable "aws_access_key" {
  description = "AWS access key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
}

variable "region" {
  description = "The aws region. https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html"
  type        = string
  default     = "us-west-2"
}

variable "availability_zones_count" {
  description = "The number of AZs."
  type        = number
  default     = 3
}

variable "project" {
  description = "Name to be used on all the resources as identifier. e.g. Project name, Application name"
  # description = "Name of the project deployment."
  type = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_bits" {
  description = "The number of subnet bits for the CIDR. For example, specifying a value 8 for this parameter will create a CIDR with a mask of /24."
  type        = number
  default     = 8
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default = {
    "Project"     = "radiant-dev-team-eks"
    "Environment" = "dev"
    "Owner"       = "dev-team"
    "creator"     = "saas-cloud-team"
    "kubernetes.io/cluster/radiant-dev-team-eks-cluster" = "owned"
  }
}

variable "namespace" {
  description = "Kubernetes Namespace."
  type        = string
  default     = "test-namespace"
}

variable "fid_license" {
  description = <<DESCRIPTION
  FID LICENSE.
  DESCRIPTION
  type        = string
  #default     = "{{rlib}x9TJ257h2YzhyM3Ms8/Y1dDV3a+dytjQftHW2MXj18Cs2ZrWy8/H3NfR53jj4NnIj8fZ1c2a2cTf0NvExsrT156eqXugnZiVgpKYlcrSsXywl6uTlZORopGepHmfl5qXf5aVrpabt3+yqZ2TgpGUmZGhug==}"
}


variable "fid_rootPassword" {
  description = <<DESCRIPTION
  FID LICENSE.
  DESCRIPTION
  type        = string
  default     = "secret1234"
}

variable "fid_replicaCount" {
  description = <<DESCRIPTION
  FID LICENSE.
  DESCRIPTION
  type        = number
  default     = 1
}

variable "fid_k8s_service_type" {
  description = <<DESCRIPTION
  K8S service types The probable types are CLusterIP, LoadBalancer, NodePort.
  DESCRIPTION
  type        = string
  default     = "ClusterIP"
}


variable "fid_zk_ruok" {
  description = <<DESCRIPTION
  Zookeeper RUOK string. Should contain entry in following way "http://<zookeeper_release_name>-zookeeper.<namespace_name>:8080/commands/ruok"
  DESCRIPTION
  type        = string
  default     = "http://zookeeper.tko:8080/commands/ruok"
}

variable "fid_zk_connectionString" {
  description = <<DESCRIPTION
  Zookeeper string. Should contain entry in following way "<zookeeper_release_name>-zookeeper.<namespace_name>:2181"
  DESCRIPTION
  type        = string
  default     = "zookeeper.tko:2181"
}
