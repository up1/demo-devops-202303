#/bin/bash

# Stop on first error
set -e;

function onExit {
    if [ "$?" != "0" ]; then
        echo "Tests failed";
        # build failed, don't deploy
        exit 1;
    else
        echo "Tests passed";
        # deploy build
    fi
}

trap onExit EXIT;

docker container run --rm -t -v $(pwd):/etc/newman postman/newman run devops-api.postman_collection.json --suppress-exit-code;