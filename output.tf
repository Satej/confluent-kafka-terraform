output "cluster_url" {
  value = confluent_kafka_cluster.basic.bootstrap_endpoint
}

output "api_key_id" {
  value = confluent_api_key.app-manager-kafka-api-key.id
  sensitive = true
}

output "api_key_secret" {
  value = confluent_api_key.app-manager-kafka-api-key.secret
  sensitive = true
}

output "schema_registry_url" {
  value = confluent_schema_registry_cluster.essentials.rest_endpoint
}

output "schema_registry_api_key_id" {
  value = confluent_api_key.env-manager-schema-registry-api-key.id
  sensitive = true
}

output "schema_registry_api_key_secret" {
  value = confluent_api_key.env-manager-schema-registry-api-key.secret
  sensitive = true
}