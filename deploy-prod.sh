#!/bin/bash

# Collect all values-prod-*.yaml files
values_files=$(ls values-prod-*.yaml | xargs -I{} echo --values {})

# Install or upgrade the Helm chart using the collected values files
helm upgrade --install vitess ./vitess-operator-helm \
  --values values.yaml \
  --values values-prod.yaml \
  $values_files
