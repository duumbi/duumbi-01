terraform {
  required_version = "1.17.2"

  cloud {
    hostname     = "app.terraform.io"
    organization = "duumbi"
    workspaces {
      tags = ["io-infra"]
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.81.0"
    }

    port = {
      source  = "port-labs/port-labs"
      version = "2.36.0"
    }

    doppler = {
      source  = "DopplerHQ/doppler"
      version = "1.23.2"
    }

    betteruptime = {
      source  = "BetterStackHQ/better-uptime"
      version = "0.22.5"
    }

    newrelic = {
      source  = "newrelic/newrelic"
      version = "3.102.0"
    }
  }
}