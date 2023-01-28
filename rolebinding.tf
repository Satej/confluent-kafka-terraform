resource "confluent_role_binding" "app-kafka-cluster-admin" {
  principal   = "User:${confluent_service_account.app.id}"
  role_name   = "CloudClusterAdmin"
  crn_pattern = confluent_kafka_cluster.basic.rbac_crn

  lifecycle {
    prevent_destroy = false
  }
}

resource "confluent_role_binding" "app-schema-registry-resource-owner" {
  principal   = "User:${confluent_service_account.app.id}"
  role_name   = "ResourceOwner"
  crn_pattern = format("%s/%s", confluent_schema_registry_cluster.essentials.resource_name, "subject=*")

  lifecycle {
    prevent_destroy = false
  }
}
