FROM node:16-alpine3.16 as step01
WORKDIR /app
COPY package.json package.json
RUN npm install
COPY . .
RUN npm run build

# Multi stage build
FROM nginx:1.23.3
RUN apt update && apt install wget -y
COPY --from=step01 /app/dist /usr/share/nginx/html
COPY --from=step01 /app/nginx.conf /etc/nginx/nginx.conf