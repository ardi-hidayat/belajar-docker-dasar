docker container ls

docker conainer stop mongovolume


/Users/itdeveloper-kasih/Documents/Ardi/Sample/Docker/belajar-docker-dasar/backup


docker container create --name nginxbackup --mount "type=bind,source=/Users/itdeveloper-kasih/Documents/Ardi/SAMPLE/Docker/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest



docker container start nginxbackup


docker container exec -i -t nginxbackup /bin/bash


ls -l


cd /data

ls -l

cd /backup

ls -l

tar cvf /backup/backup.tar.gz /data

docker container stop nginxbackup

docker container rm nginxbackup

docker container start mongovolume


docker image pull ubuntu:latest


docker container stop mongovolume


docker container run --name ubuntubackup --mount "type=bind,source=/Users/itdeveloper-kasih/Documents/Ardi/SAMPLE/Docker/belajar-docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data


docker container start mongovolume


docker container ls -a