# Step with Docker


## React
Dockerfile
```
FROM node:16-alpine3.16
WORKDIR /app
COPY . .
RUN npm install
```

Build image
```
$docker image build -t web:1.0 . 
$docker image ls
```

Create a container
```
$docker container run -d --name c1 -p 9999:80 web:1.0
```
