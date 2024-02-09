param location string = 'East US'
param sku string = 'F1'
param webAppName string = 'webapp${uniqueString(resourceGroup().id)}'

module Webapp 'modules/webapp.bicep' = {
  name: 'WebappModule'
  params: {
    location: location
    sku: sku
    webAppName: webAppName
  }
}
output webAppName string = webAppName
