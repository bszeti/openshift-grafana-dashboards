oc create configmap grafana-dashboards-custom --from-file=../dashboards --dry-run -o yaml | oc create -n openshift-monitoring -f -
oc create -n openshift-monitoring -f grafana-sa.yml
oc create -n openshift-monitoring -f grafana-clusterrolebinding.yml
oc create -n openshift-monitoring -f grafana-custom-config-secret.yml
oc create -n openshift-monitoring -f grafana-service.yml
oc create -n openshift-monitoring -f grafana-route.yml
oc create -n openshift-monitoring -f grafana-deployment-custom.yml
