variable "app_name" {
  description = "name of the application"
  default = "myApp"
}

variable "identifier_urls" {
  description = "A list of user-defined URI(s) that uniquely identify a Web application within it's Azure AD tenant, or within a verified custom domain if the application is multi-tenant"
  type = list
  default = []
}

variable "reply_urls" {
  description = "A list of URLs that user tokens are sent to for sign in, or the redirect URIs that OAuth 2.0 authorization codes and access tokens are sent to."
  type = list
  default = []
}