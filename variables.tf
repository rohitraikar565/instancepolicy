variable "machine" {
  default = "n2-standard-2"
}
variable "project" {
  default = "niveus-delivery-project"
}
variable "labels" {
  type = map(string)
  default = {
    owner       = "demouser"
    name        = "rohit"
    app         = "demo"
    ttl         = "24"
  }
}
