output "eventhub_clusters_id" {
  description = "Map of id values across all eventhub_clusters, keyed the same as var.eventhub_clusters"
  value       = { for k, v in azurerm_eventhub_cluster.eventhub_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "eventhub_clusters_location" {
  description = "Map of location values across all eventhub_clusters, keyed the same as var.eventhub_clusters"
  value       = { for k, v in azurerm_eventhub_cluster.eventhub_clusters : k => v.location if v.location != null && length(v.location) > 0 }
}
output "eventhub_clusters_name" {
  description = "Map of name values across all eventhub_clusters, keyed the same as var.eventhub_clusters"
  value       = { for k, v in azurerm_eventhub_cluster.eventhub_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "eventhub_clusters_resource_group_name" {
  description = "Map of resource_group_name values across all eventhub_clusters, keyed the same as var.eventhub_clusters"
  value       = { for k, v in azurerm_eventhub_cluster.eventhub_clusters : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "eventhub_clusters_sku_name" {
  description = "Map of sku_name values across all eventhub_clusters, keyed the same as var.eventhub_clusters"
  value       = { for k, v in azurerm_eventhub_cluster.eventhub_clusters : k => v.sku_name if v.sku_name != null && length(v.sku_name) > 0 }
}
output "eventhub_clusters_tags" {
  description = "Map of tags values across all eventhub_clusters, keyed the same as var.eventhub_clusters"
  value       = { for k, v in azurerm_eventhub_cluster.eventhub_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

