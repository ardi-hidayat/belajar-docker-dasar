docker volume ls

docker volume create mongovolume

docker volume rm mongovolume

docker volume create mongodata


docker container create --name mongodata --publish 27018:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=ardi --env MONGO_INITDB_ROOT_PASSWORD=ardi mongo:latest


docker container create --name mongovolume --publish 27019:27017 --mount "type=volume,source=mongovolume,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=ardi --env MONGO_INITDB_ROOT_PASSWORD=ardi mongo:latest
