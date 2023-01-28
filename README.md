# confluent-kafka-terraform
This repo helps create few confluent resources using terraform for any test use cases.

[Confluent Terraform Provider](https://docs.confluent.io/cloud/current/get-started/terraform-provider.html)

Export below two environment variables:

`export CONFLUENT_CLOUD_API_KEY=YOUR_KEY`

`export CONFLUENT_CLOUD_API_SECRET=YOUR_SECRET`

- To initialize the terraform setup run: `terraform init`
- Create the plan:`terraform plan`
- Create confluent resources: `terraform apply` and type yes on prompt display
- Once you are done testing, destroy created resources: `terraform destroy` and type yes on prompt display

Terraform deploys below 7 confluent resources:
1. confluent_environment.development
2. confluent_kafka_cluster.basic
3. confluent_service_account
4. confluent_schema_registry_cluster
5. confluent_role_binding.app-ksql-schema-registry-resource-owner
6. confluent_role_binding.app-ksql-kafka-cluster-admin
7. confluent_ksql_cluster
