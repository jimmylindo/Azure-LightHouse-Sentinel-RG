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
