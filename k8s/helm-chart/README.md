# Working with Helm

## 1. Create helm chart for backend
```
$helm create backend
```

### Edit file `./backend/values.yaml`

```
...
image:
  repository: somkiat/api
  pullPolicy: IfNotPresent
  tag: "1.0"
...
service:
  type: ClusterIP
  port: 8080
...
```

### Dry run
```
$helm install --dry-run --debug backend ./backend
```

### Install
```
$helm install backend ./backend
$helm ls
```

Get pods
```
$kubectl get pods
$kubectl get pods -w

$kubectl get deployment
$kubectl get replicaset
$kubectl get service

$kubectl get ingress
```

Forward port of pod
```
$kubectl port-forward <name of pod> 8080:8080
```

Access to API
* http://localhost:8080/hi


### Uninstall
```
$helm uninstall backend
```

## 2. Create helm chart for frontend
```
$helm create frontend
```

### Edit file `./frontend/values.yaml`

```
...
image:
  repository: somkiat/web
  pullPolicy: IfNotPresent
  tag: "1.0"
...
```

### Dry run
```
$helm install --dry-run --debug frontend ./frontend
```

### Install
```
$helm install frontend ./frontend
$helm ls
```

Get pods
```
$kubectl get pods
$kubectl get deployment
$kubectl get replicaset
$kubectl get service

$kubectl get ingress
```

Forward port of pod
```
$kubectl port-forward <name of pod> 9999:80
```
Access to Web
* http://localhost:9999

### Uninstall
```
$helm uninstall frontend
```