terraform {
  required_version = ">= 1.1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region  = var.region
  /* profile = "721863226827_TerraformAccess" */
}

/* resource "kubernetes_namespace" "fid_namespace"  {
  metadata {
    name = var.namespace
  }
} */