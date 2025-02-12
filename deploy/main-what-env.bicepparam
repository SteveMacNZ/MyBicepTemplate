/*
SYNOPSIS
  Bicep Paramters File for: what.bicep
ENVIRONMENT
  Production (prd) | Non-Production (npe) | Test (tst) | Development (dev)
NOTES
  Version:        1.0.0.x
  Author:         Steve McIntyre
  Creation Date:  DD/MM/20YY
  Purpose/Change: Initial Release  
LINK
  https://github.com/Name/Repo
EXTENSIONS
  VS Code better-comments required for ehananced commenting 
*/

using './main-what-env.bicep'    // Specifiy the name of the bicep file this parameter file applies to

param apptags =  {
  'application-name': ''
  owner: ''
  'cost-centre': ''
  environment: ''
}

param location =  'New Zealand North'

param exampleString = 'test string'
param exampleInt = 2 + 2
param exampleBool = true
param exampleArray = [
  'value 1'
  'value 2'
]
param exampleObject = {
  property1: 'value 1'
  property2: 'value 2'
}

param adminLogin = '<your-admin-login>'
param adminPassword = az.getSecret('<subscription-id>', '<rg-name>', '<key-vault-name>', '<secret-name>', '<secret-version>')


// ------------------------------------------------------[ExtendedHelp]-------------------------------------------------------
/*

! this 
& this
~ this
^ this
* this
// this
? this
todo this

*/
