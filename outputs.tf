output "cloudsearch_domains_id" {
  description = "Map of id values across all cloudsearch_domains, keyed the same as var.cloudsearch_domains"
  value       = { for k, v in aws_cloudsearch_domain.cloudsearch_domains : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudsearch_domains_arn" {
  description = "Map of arn values across all cloudsearch_domains, keyed the same as var.cloudsearch_domains"
  value       = { for k, v in aws_cloudsearch_domain.cloudsearch_domains : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudsearch_domains_document_service_endpoint" {
  description = "Map of document_service_endpoint values across all cloudsearch_domains, keyed the same as var.cloudsearch_domains"
  value       = { for k, v in aws_cloudsearch_domain.cloudsearch_domains : k => v.document_service_endpoint if v.document_service_endpoint != null && length(v.document_service_endpoint) > 0 }
}
output "cloudsearch_domains_domain_id" {
  description = "Map of domain_id values across all cloudsearch_domains, keyed the same as var.cloudsearch_domains"
  value       = { for k, v in aws_cloudsearch_domain.cloudsearch_domains : k => v.domain_id if v.domain_id != null && length(v.domain_id) > 0 }
}
output "cloudsearch_domains_endpoint_options" {
  description = "Map of endpoint_options values across all cloudsearch_domains, keyed the same as var.cloudsearch_domains"
  value       = { for k, v in aws_cloudsearch_domain.cloudsearch_domains : k => one(v.endpoint_options) if v.endpoint_options != null && length(v.endpoint_options) > 0 }
}
output "cloudsearch_domains_index_field" {
  description = "Map of index_field values across all cloudsearch_domains, keyed the same as var.cloudsearch_domains"
  value       = { for k, v in aws_cloudsearch_domain.cloudsearch_domains : k => v.index_field if v.index_field != null && length(v.index_field) > 0 }
}
output "cloudsearch_domains_multi_az" {
  description = "Map of multi_az values across all cloudsearch_domains, keyed the same as var.cloudsearch_domains"
  value       = { for k, v in aws_cloudsearch_domain.cloudsearch_domains : k => v.multi_az if v.multi_az != null }
}
output "cloudsearch_domains_name" {
  description = "Map of name values across all cloudsearch_domains, keyed the same as var.cloudsearch_domains"
  value       = { for k, v in aws_cloudsearch_domain.cloudsearch_domains : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloudsearch_domains_region" {
  description = "Map of region values across all cloudsearch_domains, keyed the same as var.cloudsearch_domains"
  value       = { for k, v in aws_cloudsearch_domain.cloudsearch_domains : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudsearch_domains_scaling_parameters" {
  description = "Map of scaling_parameters values across all cloudsearch_domains, keyed the same as var.cloudsearch_domains"
  value       = { for k, v in aws_cloudsearch_domain.cloudsearch_domains : k => one(v.scaling_parameters) if v.scaling_parameters != null && length(v.scaling_parameters) > 0 }
}
output "cloudsearch_domains_search_service_endpoint" {
  description = "Map of search_service_endpoint values across all cloudsearch_domains, keyed the same as var.cloudsearch_domains"
  value       = { for k, v in aws_cloudsearch_domain.cloudsearch_domains : k => v.search_service_endpoint if v.search_service_endpoint != null && length(v.search_service_endpoint) > 0 }
}

