# Bicep Template Repo <!-- omit from toc -->

## Contents <!-- omit from toc -->

- [Overview](#overview)
- [How to use](#how-to-use)
- [Prerequisites](#prerequisites)
- [Additional recommended VS Code modules](#additional-recommended-vs-code-modules)
- [Repositories](#repositories)
  - [Referencing AVM Public Modules](#referencing-avm-public-modules)
  - [Referencing internal modules](#referencing-internal-modules)
  - [Referencing private organisational registry](#referencing-private-organisational-registry)

## Overview

This repository contains the base template for bicep related deployment.

## How to use

The Azure infrastructure is defined using [Bicep][1].

To deploy the projects's Azure resources, use the _`deploy/main.bicep`_ file.

## Prerequisites

The following prereqs are required to maintin and deploy the solution via bicep.

- [Visual Studio Code (VS Code)][2] to develop your solution.
- [Bicep Visual Studio Code Extension][3] to author your Bicep template and explore modules published in the Registry.
- One of the following command line tools:
- [PowerShell][4] AND [Azure PowerShell][5]
- [Azure CLI][6] to deploy your solution.
- [Bicep CLI][7]
- Azure Subscription to deploy your Bicep template.

## Additional recommended VS Code modules

The following modules are recommended to be installed in Visual Studio Code

- Markdown All in One
- Markdown Preview Github styling
- Markdown Shortcuts
- markdownlint
- Git Graph
- Git History
- GitLens

## Repositories

Where possible [Azure Verified Modules (AVM)][8] public repo should be used when refeencing modules to deploy resources, review the [AVM Bicep Quickstart Guide][9] for more information. these should be used in both main deployment bicep and module bicep files where possible over indivudal manully coded modules. Align modules against the [Well Architected Framework (WAF)][10] using examples defined in the AVM documentation

When it is not possible to use the AVM public modules (e.g. where the AVM module does not currently exist) modules specifications that are unique to a specific 'project' will be stored in the Github repo for that project in the deploy/modules folder. Modules that will be used by mulitple projects or teams, will be required to code through a code reveiw board and be approved for release into the private Azure Container Registry (ACR) for organisation wide use.

### Referencing AVM Public Modules

To use AVM public modules in your bicep code type the following into VSCode `module myModuleName` then select `br/public` using IntelliSense and type the resource you wish to use and select the correct resource and select the latest version of the module

```bicep
module resAVMStorage 'br/public:avm/res/<resourcetype>/<detailedresource>:<version>' = { }
```

### Referencing internal modules

To reference modules internal to the project/repo use `module myModuleName './modules/module-name.bicep' = {}`

### Referencing private organisational registry

details on private bicep registry here

[1]: https://microsoft.com/azure/azure-resource-manager/bicep
[2]: (https://code.visualstudio.com/download)
[3]: (https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-bicep)
[4]: (https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell)
[5]: (https://learn.microsoft.com/en-us/powershell/azure/install-azure-powershell)
[6]: (https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
[7]: (https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/install#install-manually)
[8]: (https://aka.ms/avm)
[9]: (https://azure.github.io/Azure-Verified-Modules/usage/quickstart/bicep/)
[10]: (https://learn.microsoft.com/en-us/azure/well-architected/)
