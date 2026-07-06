output "api_management_products" {
  description = "All api_management_product resources"
  value       = azurerm_api_management_product.api_management_products
}
output "api_management_products_api_management_name" {
  description = "List of api_management_name values across all api_management_products"
  value       = [for k, v in azurerm_api_management_product.api_management_products : v.api_management_name]
}
output "api_management_products_approval_required" {
  description = "List of approval_required values across all api_management_products"
  value       = [for k, v in azurerm_api_management_product.api_management_products : v.approval_required]
}
output "api_management_products_description" {
  description = "List of description values across all api_management_products"
  value       = [for k, v in azurerm_api_management_product.api_management_products : v.description]
}
output "api_management_products_display_name" {
  description = "List of display_name values across all api_management_products"
  value       = [for k, v in azurerm_api_management_product.api_management_products : v.display_name]
}
output "api_management_products_product_id" {
  description = "List of product_id values across all api_management_products"
  value       = [for k, v in azurerm_api_management_product.api_management_products : v.product_id]
}
output "api_management_products_published" {
  description = "List of published values across all api_management_products"
  value       = [for k, v in azurerm_api_management_product.api_management_products : v.published]
}
output "api_management_products_resource_group_name" {
  description = "List of resource_group_name values across all api_management_products"
  value       = [for k, v in azurerm_api_management_product.api_management_products : v.resource_group_name]
}
output "api_management_products_subscription_required" {
  description = "List of subscription_required values across all api_management_products"
  value       = [for k, v in azurerm_api_management_product.api_management_products : v.subscription_required]
}
output "api_management_products_subscriptions_limit" {
  description = "List of subscriptions_limit values across all api_management_products"
  value       = [for k, v in azurerm_api_management_product.api_management_products : v.subscriptions_limit]
}
output "api_management_products_terms" {
  description = "List of terms values across all api_management_products"
  value       = [for k, v in azurerm_api_management_product.api_management_products : v.terms]
}

