#!/usr/bin/env bash

### Снести политику безопасности vk
kubectl delete ns opa-gatekeeper > /dev/null 2>&1
kubectl delete ns opa-gatekeeper > /dev/null 2>&1
kubectl delete validatingwebhookconfigurations.admissionregistration.k8s.io gatekeeper-validating-webhook-configuration > /dev/null 2>&1

### Создать namespace
kubectl create -f 1_Namespace.yml

### Применить манифесты
kubectl apply --filename={2..7}*
