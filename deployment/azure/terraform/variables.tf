variable "application_sp_object_id" {
  default = "00000000-0000-0000-0000-000000000000"
  description = "object id of application's service principal object"
}

variable "res_prefix" {
  default     = "test"
  description = "prefix for Azure resources to avoid resource duplication. Should be randomized"
}

variable "application_sp_client_id" {
  default = "00000000-0000-0000-0000-000000000000"
  description = "client id of application's service principal object"
}

variable "application_sp_client_secret" {
  default = "00000000-0000-0000-0000-000000000000"
  description = "client secret of the application"
}

variable "participants" {
  default = [
    {
      "name" : "company1"
      "country" : "FR"
      "region" : "eu"
    },
    {
      "name" : "company2"
      "country" : "DE"
      "region" : "eu"
    },
    {
      "name" : "company3"
      "country" : "US"
      "region" : "us"
    }
  ]
}