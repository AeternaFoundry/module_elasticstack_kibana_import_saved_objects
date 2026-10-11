resource "elasticstack_kibana_import_saved_objects" "kibana_import_saved_objects" {
  for_each = var.kibana_import_saved_objects

  file_contents        = each.value.file_contents
  compatibility_mode   = each.value.compatibility_mode
  create_new_copies    = each.value.create_new_copies
  ignore_import_errors = each.value.ignore_import_errors
  overwrite            = each.value.overwrite
  space_id             = each.value.space_id

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

