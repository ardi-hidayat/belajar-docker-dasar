
docker network create --driver bridge mongonetwork


docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=ardi --env MONGO_INITDB_ROOT_PASSWORD=ardi mongo:latest


docker image pull mongo-express:latest


docker container create --name  mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://ardi:ardi@mongodb:27017/" mongo-express:latest

docker container start mongodb

docker container start mongodbexpress


docker network disconnect mongonetwork mongodb

docker network connect mongonetwork mongodb