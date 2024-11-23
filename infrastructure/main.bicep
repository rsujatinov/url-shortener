param location string = resourceGroup().location

var resourceGroupId = resourceGroup().id
var uid = uniqueString(resourceGroupId)

module keyVault 'modules/secrets/keyvault.bicep' = {
  name: 'keyVaultDeployment'
  params: {
    vaultName: 'kv-${uid}'
    location: location
  }
}

module apiService 'modules/compute/appservice.bicep' = {
  name: 'web-api-deployment'
  params: {
    appName: 'web-api-${uid}'
    appServicePlanName: 'plan-web-api-${uid}'
    location: location
  }
}
