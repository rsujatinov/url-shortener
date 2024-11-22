param location string = resourceGroup().location

var resourceGroupId = resourceGroup().id
var uid = uniqueString(resourceGroupId)

module apiService 'modules/compute/appservice.bicep' = {
  name: 'web-api-deployment'
  params: {
    appName: 'web-api-${uid}'
    appServicePlanName: 'plan-web-api-${uid}'
    location: location
  }
}
