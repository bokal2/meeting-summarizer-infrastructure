variable "aws_region" {
  description = "The AWS region to deploy resources."
  default     = "us-east-1"

}

variable "project_name" {
  description = "The name of the project."
  default     = "meeting-notes"

}

variable "docker_registry_name" {
  type    = string
  default = "bokal-demo"
}
