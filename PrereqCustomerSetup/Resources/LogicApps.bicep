param location string
param playbookname string = 'sentinel-playbook${uniqueString(resourceGroup().id)}'

resource sentinelplaybook 'Microsoft.Logic/workflows@2019-05-01' = {
  name: playbookname
  location: location
  properties: {
    state: 'Enabled'
    definition: {
      '$schema': 'https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#'
      contentVersion: '1.0.0.0'
      parameters: {
      }
      triggers: {
      }
      actions: {
      }
      outputs: {
      }
    }
    parameters: {
      
    }
  }
}
