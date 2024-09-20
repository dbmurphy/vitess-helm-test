# Vitess Helm Chart

This Helm chart deploys [Vitess 20](https://vitess.io/blog/2024-06-27-announcing-vitess-20/) in a Kubernetes cluster using **Vitess Operator v2.13.0**. The chart supports:
- **Automated backups** with configurable schedules for each keyspace.
- **Dynamic replica distribution** across AWS Availability Zones (AZs).
- **AWS Secrets Manager integration** for secure storage of MySQL credentials.

## Prerequisites
- Kubernetes 1.20+
- Helm 3.0+
- AWS CLI configured with appropriate access to AWS Secrets Manager
- Vitess Operator v2.13.0

## Key Features
- **Backup Automation**: Configure backup schedules per keyspace.
- **Replica Distribution**: Specify how to distribute replicas across multiple Availability Zones.
- **MySQL Authentication**: Use AWS Secrets Manager to securely manage MySQL credentials for VTGate.

## Directory Structure
```plaintext
vitess-operator-helm/
  ├── templates/
  │   ├── _helpers.tpl
  │   ├── aws-secrets-aggregation-job.yaml
  │   ├── vtgate-deployment.yaml
  │   ├── vttablet-deployment.yaml
  │   ├── service.yaml
  │   ├── vitess-backup-cronjob.yaml  # New backup CronJob template
  ├── values.yaml
  ├── values-prod.yaml
  ├── values-prod-userdb.yaml
  ├── values-prod-ordersdb.yaml
  ├── deploy-prod.sh
  ├── Chart.yaml
