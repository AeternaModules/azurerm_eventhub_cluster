output "eventhub_clusters" {
  description = "All eventhub_cluster resources"
  value       = azurerm_eventhub_cluster.eventhub_clusters
}
output "eventhub_clusters_location" {
  description = "List of location values across all eventhub_clusters"
  value       = [for k, v in azurerm_eventhub_cluster.eventhub_clusters : v.location]
}
output "eventhub_clusters_name" {
  description = "List of name values across all eventhub_clusters"
  value       = [for k, v in azurerm_eventhub_cluster.eventhub_clusters : v.name]
}
output "eventhub_clusters_resource_group_name" {
  description = "List of resource_group_name values across all eventhub_clusters"
  value       = [for k, v in azurerm_eventhub_cluster.eventhub_clusters : v.resource_group_name]
}
output "eventhub_clusters_sku_name" {
  description = "List of sku_name values across all eventhub_clusters"
  value       = [for k, v in azurerm_eventhub_cluster.eventhub_clusters : v.sku_name]
}
output "eventhub_clusters_tags" {
  description = "List of tags values across all eventhub_clusters"
  value       = [for k, v in azurerm_eventhub_cluster.eventhub_clusters : v.tags]
}

