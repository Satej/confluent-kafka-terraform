resource "confluent_service_account" "app" {
  display_name = "app"
  description  = "Service account to manage kafka cluster"

  lifecycle {
    prevent_destroy = false
  }
}
