## Workshop with deployment
* Rolling update
* Recreate

### Step 1 :: Deploy version 1
```
$kubectl apply -f 00-backend.yml
$kubectl get po -w
```

### Step 2 :: Rolling deployment
```
$kubectl apply -f 01-rolling-update.yml
$kubectl get po -w
```

### Step 3 :: Recreate
```
$kubectl apply -f 0/-recreate.yml
$kubectl get po -w
```

### Step 4 :: Testing
```
$minikube service backend --url
> ip:port

$curl http://ip:port/hi
$curl https://ip:port/hi
```

Forward port with `kubectl`
```
$kubectl port-forward service/backend 8080:8080
```

### References
* kubectl port-forward service/mongo 28015:27017
