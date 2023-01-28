resource "confluent_kafka_topic" "topic" {
  topic_name         = var.topic_name
  partitions_count   = 1
  rest_endpoint      = confluent_kafka_cluster.basic.rest_endpoint

  kafka_cluster {
    id = confluent_kafka_cluster.basic.id
  }

  credentials {
    key    = confluent_api_key.app-manager-kafka-api-key.id
    secret = confluent_api_key.app-manager-kafka-api-key.secret
  }

  lifecycle {
    prevent_destroy = false
  }
}