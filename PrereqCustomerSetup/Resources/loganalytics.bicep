@description('Specifies the location for resources.')
param location string = 'westeurope'

targetScope = 'resourceGroup'

resource loganalytics 'Microsoft.OperationalInsights/workspaces@2022-10-01' = {
  name: 'la-sentinel'
  location: location
}
