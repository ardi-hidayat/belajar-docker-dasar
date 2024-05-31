#FROM Instruction
docker build -t ardh/from from

docker image ls


#RUN Instruction
docker build -t ardh/run run

docker build -t ardh/run run --progress=plain --no-cache


#CMD Instruction
docker build -t ardh/command command

docker image inspect ardh/command

docker container create --name command ardh/command

docker container start command

docker container logs command


#LABEL Instruction
docker build -t ardh/label label

docker image inspect ardh/label


#ADD Instruction
docker build -t ardh/add add

docker container create --name add ardh/add

docker container start add

docker container logs add



#COPY Instruction
docker build -t ardh/copy copy

docker container create --name copy ardh/copy

docker container start copy

docker container logs copy


#.dockerignore Instruction
docker build -t ardh/ignore ignore

docker container create --name ignore ardh/ignore

docker container start ignore

docker container logs ignore


#EXPOSE Instruction
docker build -t ardh/expose expose

docker image inspect ardh/expose

docker container create --name expose -p 8080:8080 ardh/expose

docker container start expose

docker container logs expose

#open browser localhost:8080
curl localhost:8080
docker container stop expose


#ENV Instruction
docker build -t ardh/env env

docker image inspect ardh/env

docker container create --name env --env APP_PORT=9090 -p 8080:8080 ardh/env

docker container start env

docker container logs env


#VOLUME Instruction
docker build -t ardh/volume volume

docker image inspect ardh/volume

docker container create --name volume --env APP_PORT=8080 -p 8080:8080 ardh/volume

docker container start volume

docker container logs volume

docker container inspect volume



#WORKDIR Instruction
docker build -t ardh/workdir workdir

docker container create --name workdir -p 8080:8080 ardh/workdir

docker container start workdir

curl localhost:8080

docker container exec -i -t workdir /bin/sh


#USER Instruction
docker build -t ardh/user user

docker container create --name user -p 8080:8080 ardh/user

docker container start user

docker container exec -i -t user /bin/sh


#ARG Instruction
docker build -t ardh/arg arg --build-arg app=ardh

docker image inspect ardh/arg

docker container create --name arg -p 8080:8080 ardh/arg

docker container start arg

docker container exec -i -t arg /bin/sh

docker container logs arg


#HEALTH Instruction
docker build -t ardh/health health

docker image inspect ardh/health

docker container create --name health -p 8080:8080 ardh/health

docker container start health

docker container ls

docker container inspect health

docker container ls | grep unhealthy



#ENTRYPOINT Instruction
docker build -t ardh/entrypoint entrypoint

docker image inspect ardh/entrypoint

docker container create --name entrypoint -p 8080:8080 ardh/entrypoint

docker container start entrypoint

docker container ls

docker container inspect entrypoint


#MULTI Instruction
docker build -t ardh/multi multi

docker image ls

docker container create --name multi -p 8080:8080 ardh/multi

docker container start multi

docker container ls


#SOCKER PUS TO DOCKER HUB
docker login ardh -u ardh

docker push ardh/multi



