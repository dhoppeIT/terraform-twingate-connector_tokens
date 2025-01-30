variable "connector_id" {
  type        = string
  description = "The ID of the parent Connector"
}

variable "keepers" {
  type        = map(string)
  default     = {}
  description = "Arbitrary map of values that, when changed, will trigger recreation of resource"
}
