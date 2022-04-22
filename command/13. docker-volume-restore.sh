# 1. Create new volume for restoring
docker volume create mongorestore
# 2. Create new container for restoring
docker container run --rm \
    --name ubuntu-restore \
    --mount "type=bind,source=/home/cakcup/Documents/projects/belajar-docker-dasar/backup,destination=/backup" \
    --mount "type=volume,source=mongorestore,destination=/data" \
    ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"
# Create new container to test restored data
docker container create \
    --name mongorestore \
    --publish 27020:27017 \
    --mount "type=volume,source=mongorestore,destination=/data/db" \
    --env MONGO_INITDB_ROOT_USERNAME=admin \
    --env MONGO_INITDB_ROOT_PASSWORD=admin \
    mongo:latest
# Run docker container
docker container start mongorestore