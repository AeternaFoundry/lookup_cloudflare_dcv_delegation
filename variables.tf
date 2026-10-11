variable "dcv_delegation_lookup" {
  description = <<EOT
Map of dcv_delegation_lookup, attributes below
Optional:
    - zone_id
EOT

  type = map(object({
    zone_id = optional(string)
  }))
}

