resource "confluent_environment" "development" {
  display_name = "Development"

  lifecycle {
    prevent_destroy = false
  }
}
