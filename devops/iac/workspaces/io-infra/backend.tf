terraform {
  required_version = "1.17.0"

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
      version = "2.32.2"
    }

    doppler = {
      source  = "DopplerHQ/doppler"
      version = "1.22.0"
    }

    betteruptime = {
      source  = "BetterStackHQ/better-uptime"
      version = "0.22.4"
    }

    newrelic = {
      source  = "newrelic/newrelic"
      version = "3.101.1"
    }
  }
}