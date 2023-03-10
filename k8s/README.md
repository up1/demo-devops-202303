## Workshop with Kubernetes with minikube

### Start minikube
```
$minikube start --driver=docker --alsologtostderr
$minikube dashboard --url
```

### Prepare docker image 3 versions

````
$docker image push somkiat/api:1.0
$docker image push somkiat/api:2.0
$docker image push somkiat/api:3.0
````

### Working with kubectl
```
$kubectl get node
NAME       STATUS   ROLES           AGE     VERSION
minikube   Ready    control-plane   5h41m   v1.26.1

$kubectl get node -o wide
```

Deploy
```
$kubectl apply -f backend.yml
$kubectl apply -f frontend.yml

$kubectl get pod
$kubectl get pod -o wide
kubectl describe pod

$kubectl get deployment
$kubectl get service
```

Access to frontend
```
$minikube service react-nginx-service --url
```

Access to backend
```
$minikube service backend --url
```
