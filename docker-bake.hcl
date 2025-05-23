variable "REGISTRY" {
  default = "docker.io"
}

variable "USERNAME" {
  default = "srajasimman"
}

variable "VERSION" {
  default = "latest"
}

group "default" {
  targets = ["github-actions-assessment"]
}

target "github-actions-assessment" {
  context = "./"
  dockerfile = "./Dockerfile"
  tags = ["${REGISTRY}/${USERNAME}/github-actions-assessment:${VERSION}"]
}
