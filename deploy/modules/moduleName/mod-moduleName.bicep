/*
SYNOPSIS
  Module: Azure Bicep
DESCRIPTION
  Module: Azure Bicep <extended purpose> 
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

@sys.description('Description of the Module Parameter')
param paramName string

@sys.description('Optional: Description of optional paramter')
param optionalpramName string?

// -------------------------------------------------------[Declarations]------------------------------------------------------

// ----------------------------------------[Resources | Modules | Deployment]-------------------------------------------------


// ------------------------------------------------------[Outputs]------------------------------------------------------------

@sys.description('Output: Description of Modules Output')
output modoutName string = paramName

@sys.description('Output: optional output')
output modoutOpt string? = optionalpramName

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
