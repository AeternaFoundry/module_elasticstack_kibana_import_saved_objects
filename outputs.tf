output "kibana_import_saved_objects_id" {
  description = "Map of id values across all kibana_import_saved_objects, keyed the same as var.kibana_import_saved_objects except keys with no id are omitted"
  value       = { for k, v in elasticstack_kibana_import_saved_objects.kibana_import_saved_objects : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_import_saved_objects_compatibility_mode" {
  description = "Map of compatibility_mode values across all kibana_import_saved_objects, keyed the same as var.kibana_import_saved_objects except keys with no compatibility_mode are omitted"
  value       = { for k, v in elasticstack_kibana_import_saved_objects.kibana_import_saved_objects : k => v.compatibility_mode if v.compatibility_mode != null }
}
output "kibana_import_saved_objects_create_new_copies" {
  description = "Map of create_new_copies values across all kibana_import_saved_objects, keyed the same as var.kibana_import_saved_objects except keys with no create_new_copies are omitted"
  value       = { for k, v in elasticstack_kibana_import_saved_objects.kibana_import_saved_objects : k => v.create_new_copies if v.create_new_copies != null }
}
output "kibana_import_saved_objects_errors" {
  description = "Map of errors values across all kibana_import_saved_objects, keyed the same as var.kibana_import_saved_objects except keys with no errors are omitted"
  value       = { for k, v in elasticstack_kibana_import_saved_objects.kibana_import_saved_objects : k => v.errors if v.errors != null && length(v.errors) > 0 }
}
output "kibana_import_saved_objects_file_contents" {
  description = "Map of file_contents values across all kibana_import_saved_objects, keyed the same as var.kibana_import_saved_objects except keys with no file_contents are omitted"
  value       = { for k, v in elasticstack_kibana_import_saved_objects.kibana_import_saved_objects : k => v.file_contents if v.file_contents != null && length(v.file_contents) > 0 }
}
output "kibana_import_saved_objects_ignore_import_errors" {
  description = "Map of ignore_import_errors values across all kibana_import_saved_objects, keyed the same as var.kibana_import_saved_objects except keys with no ignore_import_errors are omitted"
  value       = { for k, v in elasticstack_kibana_import_saved_objects.kibana_import_saved_objects : k => v.ignore_import_errors if v.ignore_import_errors != null }
}
output "kibana_import_saved_objects_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_import_saved_objects, keyed the same as var.kibana_import_saved_objects except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_kibana_import_saved_objects.kibana_import_saved_objects : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_import_saved_objects_overwrite" {
  description = "Map of overwrite values across all kibana_import_saved_objects, keyed the same as var.kibana_import_saved_objects except keys with no overwrite are omitted"
  value       = { for k, v in elasticstack_kibana_import_saved_objects.kibana_import_saved_objects : k => v.overwrite if v.overwrite != null }
}
output "kibana_import_saved_objects_space_id" {
  description = "Map of space_id values across all kibana_import_saved_objects, keyed the same as var.kibana_import_saved_objects except keys with no space_id are omitted"
  value       = { for k, v in elasticstack_kibana_import_saved_objects.kibana_import_saved_objects : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}
output "kibana_import_saved_objects_success" {
  description = "Map of success values across all kibana_import_saved_objects, keyed the same as var.kibana_import_saved_objects except keys with no success are omitted"
  value       = { for k, v in elasticstack_kibana_import_saved_objects.kibana_import_saved_objects : k => v.success if v.success != null }
}
output "kibana_import_saved_objects_success_count" {
  description = "Map of success_count values across all kibana_import_saved_objects, keyed the same as var.kibana_import_saved_objects except keys with no success_count are omitted"
  value       = { for k, v in elasticstack_kibana_import_saved_objects.kibana_import_saved_objects : k => v.success_count if v.success_count != null }
}
output "kibana_import_saved_objects_success_results" {
  description = "Map of success_results values across all kibana_import_saved_objects, keyed the same as var.kibana_import_saved_objects except keys with no success_results are omitted"
  value       = { for k, v in elasticstack_kibana_import_saved_objects.kibana_import_saved_objects : k => v.success_results if v.success_results != null && length(v.success_results) > 0 }
}

