resource "confluent_kafka_cluster" "basic" {
  display_name = "basic_kafka_cluster"
  availability = "SINGLE_ZONE"
  cloud        = "AWS"
  region       = "us-east-1"
  basic {}

  environment {
    id = confluent_environment.development.id
  }

  lifecycle {
    prevent_destroy = false
  }
}

output "cluster_url" {
  value = confluent_kafka_cluster.basic.bootstrap_endpoint
}