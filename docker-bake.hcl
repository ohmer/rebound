variable "TAG" {
  default = "rebound:local"
}

group "default" {
  targets = ["image"]
}

target "image" {
  tags   = ["${TAG}"]
  output = ["type=docker"]
}
