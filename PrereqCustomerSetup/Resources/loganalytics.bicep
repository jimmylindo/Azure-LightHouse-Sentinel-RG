param workspaceName string = 'sentinel-workspace'
param workspaceRegion string = resourceGroup().location

var solutions = {
  name: 'SecurityInsights(${workspaceName})'
  marketplaceName: 'SecurityInsights'
}
var solution_Name = 'SecurityInsights(${sentinel_workspace.name})'

resource sentinel_workspace 'Microsoft.OperationalInsights/workspaces@2022-10-01' = {
 name: workspaceName
 location: workspaceRegion
 properties: {
  sku: {
    name: 'PerGB2018'
  }
 }
}

resource sentinelresource 'Microsoft.OperationsManagement/solutions@2015-11-01-preview' = {
  name: solution_Name
  location: workspaceRegion
  properties: {
    workspaceResourceId: sentinel_workspace.id
  }
  plan: {
    name: solution_Name
    product: 'OMSGallery/${solutions.marketplaceName}'
    promotionCode: ''
    publisher: 'Microsoft'
  }
  dependsOn: []
}
