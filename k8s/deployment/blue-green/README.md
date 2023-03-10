## Workshop with blue-green deployment

### Step 1 :: Deploy version 1
```
$kubectl apply -f blue.yml
$kubectl get po -w
```

### Step 2 :: Deploy version 2
```
$kubectl apply -f green.yml
$kubectl get po -w
```

### Step 3 :: Deploy ingress
```
$kubectl apply -f ingress.yml
kubectl get ingress -o wide
```

### Step 4 :: Testing
Set host
```
127.0.0.1   demo.example.com
```

Testing
```
ping demo.example.com

$minikube tunnel
$curl https://demo.example.com/api-blue/hi
$curl https://demo.example.com/api-green/hi
```