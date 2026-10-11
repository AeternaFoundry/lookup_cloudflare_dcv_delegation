data "cloudflare_dcv_delegation" "dcv_delegation_lookup" {
  for_each = var.dcv_delegation_lookup

  zone_id = each.value.zone_id
}

