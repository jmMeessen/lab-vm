variable "lab_amis" {
  description = "Mapping regions to the lab AMI IDs"
  type = "map"
  default = {
    "us-east-1" = "ami-6151cf1b"
    "eu-central-1" = "ami-f9ee6196"
  }
}

variable "lab_instances_count" {
  description = "How many instances to start for lab"
  default = 2
}

variable "lab_region" {
  description = "AWS Region where to launch instances"
  type = "string"
  default = "eu-central-1"
}
