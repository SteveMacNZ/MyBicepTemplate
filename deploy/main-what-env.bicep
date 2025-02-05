/*
SYNOPSIS
  Azure Bicep: <purpose>
DESCRIPTION
  Azure Bicep: <extended purpose> 
OUTPUTS
  What outputs
NOTES
  Version:        1.0.0.x
  Author:         Steve McIntyre
  Creation Date:  DD/MM/20YY
  Purpose/Change: Initial Release
LINK
  https://github.com/Name/Repo
EXAMPLE

*/

// ------------------------------------------------------[Script Parameters]--------------------------------------------------

@description('Determine Location based on Resource Group Location')
//param location string = resourceGroup().location                      // uncomment to determine location based off resource group
param location string                                                 // need to specify location in paramters file. comment out to use resource group location.

@description('The name of the environment. This must be dev, tst, or prd.')
@allowed([
  'dev'
  'tst'
  'prd'
  'npe'
])
param environmentName string = 'dev'                                  // Environment parameter

@description('The Short Name of the Azure region into which the resources should be deployed')
@allowed([
  'nzn'
  'aue'
  'aus'
  'use'
])
param shortlocation string = 'nzn'                                    // location short code

@description('The unique name of the solution. This is used to ensure that resource names are unique')
@minLength(3)
@maxLength(15)
param solutionName string = 'solutionname'

@description('The instance number.')
@minValue(1)
@maxValue(10)
param instance int = 1

@description('The tags to apply to the resources.')
param apptags object

param exampleString string
param exampleInt int
param exampleBool bool
param exampleArray array 
param exampleObject object

param adminLogin string

@secure()
param adminPassword string

// -------------------------------------------------------[Declarations]------------------------------------------------------

//variable to determine the name of the service
var ServiceName = '<svc>-${solutionName}-${environmentName}-${shortlocation}-${instance}'

// ----------------------------------------[Resources | Modules | Deployment]-------------------------------------------------

resource appServicePlan 'Microsoft.Web/serverfarms@2023-12-01' = {
  name: ServiceName
  location: location
  tags: apptags
}

// module referemce
module myModule 'modules/moduleName/mod-moduleName.bicep' = {
  name: 'whatname'
  params:{
    paramName: 'A String'
    optionalpramName: ''
  }
}

// ------------------------------------------------------[Outputs]------------------------------------------------------------

@description('Output: Description of output')
output myoutputName string = appServicePlan.name

// ------------------------------------------------------[ExtendedHelp]-------------------------------------------------------
/*
Enter any extended help items here: (e.g., detailed help on functions, commented code blocks so they sit outside of the main script logic)

*/
