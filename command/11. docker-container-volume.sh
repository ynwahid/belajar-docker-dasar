# Add docker volume to container
docker container create \
    --name container-name \
    --mount "type=bind,source=volume-name,destination=container-dir,readonly" \
    image:tag

# Example
docker container create --name mongovolume \
    --mount "type=volume,source=mongodata,destination=/data/db" \
    --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=admin \
    --publish 27019:27017 \
    mongo:latest
