variable "name" {
  type = string
}
variable "network" {
  type = string
}
variable "protocol" {
  type = string
}
variable "ports" {
  type = list(string)
}
variable "source_ranges" {
  type = list(string)
}