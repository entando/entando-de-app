NAMESPACE=$1
if ! kubectl get namespace ${NAMESPACE}; then
  kubectl create namespace $NAMESPACE}
  kubectl create -f charts/
fi
if ! kubectl get deployment entando-operator-entando-k8s-controller-coordinator -n ${NAMESPACE}; then
  helm install entando-operator entando-k8s-controller-coordinator --repo http://jenkins-x-chartmuseum-jx.apps.serv.run/ --namespace ${NAMESPACE}  --wait
fi
