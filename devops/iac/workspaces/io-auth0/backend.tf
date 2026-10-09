terraform {
  required_version = "1.16.5"

  cloud {
    hostname     = "app.terraform.io"
    organization = "duumbi"
    workspaces {
      tags = ["io-auth0"]
    }
  }

  required_providers {

    port = {
      source  = "port-labs/port-labs"
      version = "2.30.0"
    }

    auth0 = {
      source  = "auth0/auth0"
      version = "1.58.1"
    }
  }
}