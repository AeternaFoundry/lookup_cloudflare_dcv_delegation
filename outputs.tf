output "dcv_delegation_lookup_uuid" {
  description = "Map of uuid values across all dcv_delegation_lookup, keyed the same as var.dcv_delegation_lookup except keys with no uuid are omitted"
  value       = { for k, v in data.cloudflare_dcv_delegation.dcv_delegation_lookup : k => v.uuid if v.uuid != null && length(v.uuid) > 0 }
}
output "dcv_delegation_lookup_zone_id" {
  description = "Map of zone_id values across all dcv_delegation_lookup, keyed the same as var.dcv_delegation_lookup except keys with no zone_id are omitted"
  value       = { for k, v in data.cloudflare_dcv_delegation.dcv_delegation_lookup : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

