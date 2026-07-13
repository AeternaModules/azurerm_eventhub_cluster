variable "eventhub_clusters" {
  description = <<EOT
Map of eventhub_clusters, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku_name
Optional:
    - tags
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    sku_name            = string
    tags                = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.eventhub_clusters : (
        can(regex("^[a-zA-Z0-9]([-._a-zA-Z0-9]{0,48}[a-zA-Z0-9])?$", v.name))
      )
    ])
    error_message = "The event hub name can contain only letters, numbers, periods (.), hyphens (-),and underscores (_), up to 50 characters, and it must begin and end with a letter or number."
  }
  validation {
    condition = alltrue([
      for k, v in var.eventhub_clusters : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventhub_clusters : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventhub_clusters : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.eventhub_clusters : (
        can(regex("^Dedicated_[1-9][0-9]*$", v.sku_name))
      )
    ])
    error_message = "SKU name must match /^Dedicated_[1-9][0-9]*$/."
  }
  validation {
    condition = alltrue([
      for k, v in var.eventhub_clusters : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

