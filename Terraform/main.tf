resource "azurerm_resource_group" "rg" {
  name     = "Devops-rg"
  location = "East US"
}

resource "azurerm_service_plan" "service-plan" {
  name                = "ServicePlanwebapp"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_linux_web_app" "youtube-webapp" {
  name                = "youtubeclone"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_service_plan.service-plan.location
  service_plan_id     = azurerm_service_plan.service-plan.id

  site_config {
    always_on = false
  }
}