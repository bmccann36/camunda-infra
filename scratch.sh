
kubectl expose deploy camunda --port=8080 --target-port=8080 --name=camunda-svc --type=LoadBalancer --dry-run -o yaml

kubectl port-forward camunda-5b6bb4b94b-r5f7j 8080:8080

kubectl expose deploy foo --port=6262 --target-port=8080

# test that cluster IP service works 
wget -O- camunda-int-svc:8080/engine-rest/process-definition