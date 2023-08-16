FROM postman/newman
COPY devops-api.postman_collection.json /etc/newman/demo.json
CMD [ "run", "demo.json", "-r", "cli,junit" ]