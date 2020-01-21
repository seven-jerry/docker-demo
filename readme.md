
building
 - build and run
      docker build -t test:latest .
      docker run --name test -i -t test:latest
 - base image
 - hash/layering
 - diff
    docker run --name test -i -t --rm test:latest bash
 - docker history  
 - run with rm
    docker run --name test -i -t --rm test:latest
 - docker inspect
    docker inspect test:latest
    docker inspect -f {{.NetworkOptions}}
    
 - healthcheck
    docker inspect --format="{{json .State.Health}}" test | python -m json.tool
