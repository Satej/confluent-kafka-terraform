resource "confluent_ksql_cluster" "example" {
  display_name = "example"
  csu          = 1
  kafka_cluster {
    id = confluent_kafka_cluster.basic.id
  }
  credential_identity {
    id = confluent_service_account.app.id
  }
  environment {
    id = confluent_environment.development.id
  }
  depends_on = [
    confluent_role_binding.app-kafka-cluster-admin,
    confluent_role_binding.app-schema-registry-resource-owner,
    confluent_schema_registry_cluster.essentials
  ]

  lifecycle {
    prevent_destroy = false
  }
}
