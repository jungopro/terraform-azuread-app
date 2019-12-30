variable "app_name" {
  description = "name of the application"
  default     = "myApp"
}

variable "identifier_urls" {
  description = "A list of user-defined URI(s) that uniquely identify a Web application within it's Azure AD tenant, or within a verified custom domain if the application is multi-tenant"
  type        = list
  default     = []
}

variable "reply_urls" {
  description = "A list of URLs that user tokens are sent to for sign in, or the redirect URIs that OAuth 2.0 authorization codes and access tokens are sent to."
  type        = list
  default     = []
}

variable "generate_spn_password" {
  description = "should we auto-generate password for spn. if false, specify a value for the var.spn_password below"
  type        = bool
  default     = true
}

variable "spn_password" {
  description = "password to provide for the created spn. will be set only if var.generate_spn_password eq false"
  default = ""
}
