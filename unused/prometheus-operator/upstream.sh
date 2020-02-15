#!/bin/bash
/usr/local/opt/helm@2/bin/helm dependency update upstream
/usr/local/opt/helm@2/bin/helm template --set grafana.sidecar.dashboards.enabled=true --name prometheus-operator --namespace prometheus-operator upstream > resources/upstream.yaml
