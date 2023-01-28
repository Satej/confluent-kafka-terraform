# confluent-kafka-terraform
This repo helps create few confluent resources using terraform for any test use cases.

[Confluent Terraform Provider](https://docs.confluent.io/cloud/current/get-started/terraform-provider.html)

Export below two environment variables:

`export CONFLUENT_CLOUD_API_KEY=YOUR_KEY`

`export CONFLUENT_CLOUD_API_SECRET=YOUR_SECRET`

- To initialize the terraform setup run: `terraform init`
- Create the plan:`terraform plan`
- Create confluent resources: `terraform apply` and type yes on prompt display
- To see the output variables run `terraform output -json`. If you have jq installed, then `terraform output -json | jq`.
- Once you are done testing, destroy created resources: `terraform destroy` and type yes on prompt display

Terraform deploys below confluent resources:
1. confluent_environment.development
2. confluent_kafka_cluster.basic
3. confluent_service_account.app
4. confluent_schema_registry_cluster.essentials
5. confluent_role_binding.app-schema-registry-resource-owner
6. confluent_role_binding.app-kafka-cluster-admin
7. confluent_ksql_cluster
8. confluent_api_key.app-manager-kafka-api-key
9. confluent_kafka_topic.topic
10. confluent_api_key.env-manager-schema-registry-api-key
