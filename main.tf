variable "important" {
  type = "map"
}

variable "defaults" {
  type = "map"
}

output "defaults" {
  value = "${var.defaults}"
}

output "important" {
  value = "${var.important}"
}

output "oops" {
  value = "${lookup(merge(var.defaults, var.important), "oops")}"
}
