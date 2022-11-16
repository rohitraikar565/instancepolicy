variable "machine" {
  default = "n2-standard-2"
}
variable "project" {
  default = "niveus-delivery-project"
}
variable "labels" {
  type = list
  default = [name, ttl, owner]
}
