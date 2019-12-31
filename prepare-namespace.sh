NAMESPACE=$1
if ! kubectl get namespace ${NAMESPACE}; then
  kubectl create namespace ${NAMESPACE}
  kubectl create -f charts/role.yaml -n ${NAMESPACE}
  kubectl create rolebinding default-can-access-entando-resources --role=entando-resource-access \
    --serviceaccount=${NAMESPACE}:default -n ${NAMESPACE}
  helm install entando-operator entando-k8s-controller-coordinator \
     --repo http://jenkins-x-chartmuseum-jx.apps.serv.run/ --namespace ${NAMESPACE} | kubectl apply -f -
fi
