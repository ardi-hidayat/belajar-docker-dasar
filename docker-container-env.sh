docker image pull mongo:latest

docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=ardi --env MONGO_INITDB_ROOT_PASSWORD=ardi mongo:latest

docker container ls -a

docker container start contohmongo
