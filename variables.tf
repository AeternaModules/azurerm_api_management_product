variable "api_management_products" {
  description = <<EOT
Map of api_management_products, attributes below
Required:
    - api_management_name
    - display_name
    - product_id
    - published
    - resource_group_name
Optional:
    - approval_required
    - description
    - subscription_required
    - subscriptions_limit
    - terms
EOT

  type = map(object({
    api_management_name   = string
    display_name          = string
    product_id            = string
    published             = bool
    resource_group_name   = string
    approval_required     = optional(bool)
    description           = optional(string)
    subscription_required = optional(bool)
    subscriptions_limit   = optional(number)
    terms                 = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.api_management_products : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_products : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_products : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_products : (
        length(v.display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

