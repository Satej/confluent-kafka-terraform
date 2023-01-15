resource "confluent_service_account" "app-ksql" {
  display_name = "app-ksql"
  description  = "Service account to manage 'example' ksqlDB cluster"

  lifecycle {
    prevent_destroy = false
  }
}
