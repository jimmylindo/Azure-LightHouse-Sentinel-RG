@description('Location for sentinel service')
param location string = 'westeurope'


targetScope = 'subscription'

resource rgworkspace 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'rg-sentinel-workspace'
  location: location
}

resource rgplaybook 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'rg-sentinel-playbook'
  location: location
}

module deploysentinel 'Resources/Sentinel.bicep' = {
  scope: resourceGroup(rgworkspace.name)
  name: 'deploysentinel'
  params: {
    location: location
  }
}

module deploylogicapps 'Resources/LogicApps.bicep' = {
  scope: resourceGroup(rgplaybook.name)
  name: 'deploylogicapp'
  params: {
    location: location
  }
}
