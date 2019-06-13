export KUBECONFIG="$HOME/.kube/minikube.yaml"

k config set-context minikube --cluster=minikube --user=minikube

k cluster-info

k config view

k run hello-world --image=gcr.io/google-samples/hello-app:1.0

k run hello-world-pod --image=gcr.io/google-samples/hello-app:1.0 --generator=run-pod/v1

k get pods
k get deployment
k get pods -o wide

ssh -i ~/.minikube/machines/minikube/id_rsa docker@10.30.7.12
sudo docker ps

k logs hello-world-pod

k exec -it hello-world-pod -- /bin/sh
hostname
ip addr
exit

k get deployment hello-world
k get replicaset
k get pods

k describe deployment hello-world | more

k get pods
k describe pods hello-world-5dd96f4758-cggx2 | more

k expose deployment hello-world --port=80 --target-port=8080

k get service hello-world

k describe service hello-world

curl http://10.97.88.206

kubectl get endpoints hello-world

curl http://172.17.0.5:8080

k get service hello-world -o yaml
k get service hello-world -o json

k get service hello-world -o yaml --export > ./k8s/deployments/service-hello-world.yaml
k get deployment hello-world -o yaml --export > ./k8s/deployments/deployment-hello-world.yaml

k delete service hello-world
k delete deployment hello-world
k delete pod hello-world-pod

k get all

k apply -f ./k8s/deployments/deployment-hello-world.yaml
k apply -f ./k8s/deployments/service-hello-world.yaml

k get all

vim ./k8s/deployments/deployment-hello-world.yaml

k edit deployment hello-world

k get deployment hello-world

k delete service hello-world
k delete deployment hello-world

k get all