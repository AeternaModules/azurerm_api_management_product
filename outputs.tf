output "api_management_products_id" {
  description = "Map of id values across all api_management_products, keyed the same as var.api_management_products"
  value       = { for k, v in azurerm_api_management_product.api_management_products : k => v.id }
}
output "api_management_products_api_management_name" {
  description = "Map of api_management_name values across all api_management_products, keyed the same as var.api_management_products"
  value       = { for k, v in azurerm_api_management_product.api_management_products : k => v.api_management_name }
}
output "api_management_products_approval_required" {
  description = "Map of approval_required values across all api_management_products, keyed the same as var.api_management_products"
  value       = { for k, v in azurerm_api_management_product.api_management_products : k => v.approval_required }
}
output "api_management_products_description" {
  description = "Map of description values across all api_management_products, keyed the same as var.api_management_products"
  value       = { for k, v in azurerm_api_management_product.api_management_products : k => v.description }
}
output "api_management_products_display_name" {
  description = "Map of display_name values across all api_management_products, keyed the same as var.api_management_products"
  value       = { for k, v in azurerm_api_management_product.api_management_products : k => v.display_name }
}
output "api_management_products_product_id" {
  description = "Map of product_id values across all api_management_products, keyed the same as var.api_management_products"
  value       = { for k, v in azurerm_api_management_product.api_management_products : k => v.product_id }
}
output "api_management_products_published" {
  description = "Map of published values across all api_management_products, keyed the same as var.api_management_products"
  value       = { for k, v in azurerm_api_management_product.api_management_products : k => v.published }
}
output "api_management_products_resource_group_name" {
  description = "Map of resource_group_name values across all api_management_products, keyed the same as var.api_management_products"
  value       = { for k, v in azurerm_api_management_product.api_management_products : k => v.resource_group_name }
}
output "api_management_products_subscription_required" {
  description = "Map of subscription_required values across all api_management_products, keyed the same as var.api_management_products"
  value       = { for k, v in azurerm_api_management_product.api_management_products : k => v.subscription_required }
}
output "api_management_products_subscriptions_limit" {
  description = "Map of subscriptions_limit values across all api_management_products, keyed the same as var.api_management_products"
  value       = { for k, v in azurerm_api_management_product.api_management_products : k => v.subscriptions_limit }
}
output "api_management_products_terms" {
  description = "Map of terms values across all api_management_products, keyed the same as var.api_management_products"
  value       = { for k, v in azurerm_api_management_product.api_management_products : k => v.terms }
}

