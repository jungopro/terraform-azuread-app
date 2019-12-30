# terraform-azuread-app

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
  source          = "jungopro/app/azuread"
  app_name        = "mycustomApp
  identifier_urls = ["http://app.domain.com","http://my.domain.com"]
  reply_urls      = ["http://app.domain.com","http://my.domain.com"]
}
```