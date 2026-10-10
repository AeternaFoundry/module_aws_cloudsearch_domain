variable "cloudsearch_domains" {
  description = <<EOT
Map of cloudsearch_domains, attributes below
Required:
    - name
Optional:
    - multi_az
    - region
    - endpoint_options (block):
        - enforce_https (optional)
        - tls_security_policy (optional)
    - index_field (block):
        - analysis_scheme (optional)
        - default_value (optional)
        - facet (optional)
        - highlight (optional)
        - name (required)
        - return (optional)
        - search (optional)
        - sort (optional)
        - source_fields (optional)
        - type (required)
    - scaling_parameters (block):
        - desired_instance_type (optional)
        - desired_partition_count (optional)
        - desired_replication_count (optional)
EOT

  type = map(object({
    name     = string
    multi_az = optional(bool)
    region   = optional(string)
    endpoint_options = optional(object({
      enforce_https       = optional(bool)
      tls_security_policy = optional(string)
    }))
    index_field = optional(list(object({
      analysis_scheme = optional(string)
      default_value   = optional(string)
      facet           = optional(bool)
      highlight       = optional(bool)
      name            = string
      return          = optional(bool)
      search          = optional(bool)
      sort            = optional(bool)
      source_fields   = optional(string)
      type            = string
    })))
    scaling_parameters = optional(object({
      desired_instance_type     = optional(string)
      desired_partition_count   = optional(number)
      desired_replication_count = optional(number)
    }))
  }))
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

