variable "kibana_import_saved_objects" {
  description = <<EOT
Map of kibana_import_saved_objects, attributes below
Required:
    - file_contents
Optional:
    - compatibility_mode
    - create_new_copies
    - ignore_import_errors
    - overwrite
    - space_id
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    file_contents        = string
    compatibility_mode   = optional(bool)
    create_new_copies    = optional(bool)
    ignore_import_errors = optional(bool)
    overwrite            = optional(bool)
    space_id             = optional(string)
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

