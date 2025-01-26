resource "aws_ecr_repository" "docker_registry" {
  name                 = var.docker_registry_name
  image_tag_mutability = "MUTABLE"
}
