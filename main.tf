terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = ">= 4.0.0"
    }
  }
  required_version = ">= 1.3.0"
}

variable "new_relic_api_key" {
  type = string
}

provider "newrelic" {
  api_key = var.new_relic_api_key
}
resource "newrelic_alert_policy" "test_policy" {
  name = "Test Policy from Workflow"
}