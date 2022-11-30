#!/bin/bash

gcloud config set project $PROJECT

gcloud config set compute/zone $PROJECT_ZONE

gcloud container clusters create $K8S_CLUSTER \
--zone $PROJECT_ZONE \
--machine-type $NODE_MACHINE_TYPE \
--disk-size $DISK_SIZE \
--service-account $SERVICE_ACCOUNT \
--spot \
--num-nodes $NUM_NODES \
--network $PROJECT_NETWORK \
--subnetwork $PROJECT_SUBNETWORK \

gcloud container clusters get-credentials $K8S_CLUSTER

gcloud sql instances create $MYSQL_INSTANCE \
--database-version=$MYSQL_VERSION \
--cpu=2 \
--memory=7680MB \
--region=$PROJECT_REGION
gcloud sql databases create $MYSQL_DATABASE \
--instance=$MYSQL_INSTANCE
gcloud sql users create $MYSQL_USER \
--host=$MYSQL_HOST \
--instance=$MYSQL_INSTANCE \
--password=$MYSQL_PASSWORD

gcloud artifacts repositories create $ARTIFACTS_REPOSITORY \
--repository-format=docker \
--location=$PROJECT_REGION
