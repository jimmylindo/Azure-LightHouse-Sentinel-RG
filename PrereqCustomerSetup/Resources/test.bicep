param workflows_sentinel_playbook7439734_name string = 'sentinel-playbook7439734'

resource workflows_sentinel_playbook7439734_name_resource 'Microsoft.Logic/workflows@2017-07-01' = {
  name: workflows_sentinel_playbook7439734_name
  location: 'westeurope'
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