# Bind mounting (share drive)
docker container create \
    --name container-name \
    --mount "type=bind,source=folder,destination=folder,readonly" \
    image:tag
# Example
docker container create --name mongodata \
    --mount "type=bind,source=/home/cakcup/Documents/projects/belajar-docker-dasar/mongo-data,destination=/data/db" \
    --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=admin \
    --publish 27018:27017 \
    mongo:latest