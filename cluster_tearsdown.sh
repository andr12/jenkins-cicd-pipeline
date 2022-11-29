#!/bin/bash

gcloud container clusters get-credentials $K8S_CLUSTER

gcloud container clusters delete $K8S_CLUSTER --quiet

gcloud sql instances delete $MYSQL_INSTANCE --quiet

gcloud artifacts repositories delete $ARTIFACTS_REPOSITORY --quiet