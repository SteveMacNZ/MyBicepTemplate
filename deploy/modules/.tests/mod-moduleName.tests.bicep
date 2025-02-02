// Test with only required paramters
module test_required_params '../moduleName/mod-moduleName.bicep' = {
  name: 'test_required_params'
  params: {
    paramName: ''
  }
}
