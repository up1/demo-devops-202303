## Demo

### Working with CMD and ENTRYPOINT
```
$docker image build -t demo . 

$docker container run --rm demo   
$docker container run --rm demo https://www.facebook.com
$docker container run --rm --entrypoint curl demo
```

Inspect image
```
$docker image inspect demo
$docker image history demo
```