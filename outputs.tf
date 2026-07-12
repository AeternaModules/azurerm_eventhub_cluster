output "eventhub_clusters_id" {
  description = "Map of id values across all eventhub_clusters, keyed the same as var.eventhub_clusters"
  value       = { for k, v in azurerm_eventhub_cluster.eventhub_clusters : k => v.id }
}
output "eventhub_clusters_location" {
  description = "Map of location values across all eventhub_clusters, keyed the same as var.eventhub_clusters"
  value       = { for k, v in azurerm_eventhub_cluster.eventhub_clusters : k => v.location }
}
output "eventhub_clusters_name" {
  description = "Map of name values across all eventhub_clusters, keyed the same as var.eventhub_clusters"
  value       = { for k, v in azurerm_eventhub_cluster.eventhub_clusters : k => v.name }
}
output "eventhub_clusters_resource_group_name" {
  description = "Map of resource_group_name values across all eventhub_clusters, keyed the same as var.eventhub_clusters"
  value       = { for k, v in azurerm_eventhub_cluster.eventhub_clusters : k => v.resource_group_name }
}
output "eventhub_clusters_sku_name" {
  description = "Map of sku_name values across all eventhub_clusters, keyed the same as var.eventhub_clusters"
  value       = { for k, v in azurerm_eventhub_cluster.eventhub_clusters : k => v.sku_name }
}
output "eventhub_clusters_tags" {
  description = "Map of tags values across all eventhub_clusters, keyed the same as var.eventhub_clusters"
  value       = { for k, v in azurerm_eventhub_cluster.eventhub_clusters : k => v.tags }
}

