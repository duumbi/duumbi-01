terraform {
  required_version = "1.16.1"

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
      version = "2.25.0"
    }

    doppler = {
      source  = "DopplerHQ/doppler"
      version = "1.21.5"
    }

    betteruptime = {
      source  = "BetterStackHQ/better-uptime"
      version = "0.21.13"
    }

    newrelic = {
      source  = "newrelic/newrelic"
      version = "3.97.0"
    }
  }
}