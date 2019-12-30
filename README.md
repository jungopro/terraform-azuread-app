# terraform-azuread-app

[![Build Status](https://dev.azure.com/jungodevops/Terraform/_apis/build/status/jungopro.terraform-azuread-app?branchName=master)](https://dev.azure.com/jungodevops/Terraform/_build/latest?definitionId=29&branchName=master)

A module to create an Application with Service Principal

This Terraform module deploys an application and Service Principal to Azure Active Directory

## Usage

```hcl
module "app" {
  source = "jungopro/app/azuread"
}
```

## Example with custom values

```hcl
module "app" {
  source                = "jungopro/app/azuread"
  app_name              = "mycustomApp
  identifier_urls       = ["http://app.domain.com","http://my.domain.com"]
  reply_urls            = ["http://app.domain.com","http://my.domain.com"]
  generate_spn_password = false # supply your own value in the next key
  spn_password          = "MySecret$pnPassw0rD!"
}
```