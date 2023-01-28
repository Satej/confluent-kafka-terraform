resource "confluent_api_key" "app-manager-kafka-api-key" {
  display_name = "app-manager-kafka-api-key"
  description  = "Kafka API Key that is owned by 'app-manager' service account"

  owner {
    id          = confluent_service_account.app.id
    api_version = confluent_service_account.app.api_version
    kind        = confluent_service_account.app.kind
  }

  managed_resource {
    id          = confluent_kafka_cluster.basic.id
    api_version = confluent_kafka_cluster.basic.api_version
    kind        = confluent_kafka_cluster.basic.kind

    environment {
      id = confluent_environment.development.id
    }
  }

  lifecycle {
    prevent_destroy = false
  }
}

output "api_key_id" {
  value = confluent_api_key.app-manager-kafka-api-key.id
  sensitive = true
}

output "api_key_secret" {
  value = confluent_api_key.app-manager-kafka-api-key.secret
  sensitive = true
}