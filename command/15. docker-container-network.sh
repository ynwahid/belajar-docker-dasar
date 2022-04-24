# Create a new network
docker network create --driver bridge mongonetwork
# Create container with network
docker container create --name container-name --network network-name image:tag
# Example, create mongodb container
docker container create \
    --name mongodb \
    --network mongonetwork \
    --env MONGO_INITDB_ROOT_USERNAME=admin \
    --env MONGO_INITDB_ROOT_PASSWORD=admin \
    mongo:latest
# Example, create mongo-express container
docker container create \
    --name mongodb-express \
    --network mongonetwork \
    --publish 8081:8081 \
    --env ME_CONFIG_MONGODB_URL="mongodb://admin:admin@mongodb:27017/" \
    mongo-express:latest
# Start mongodb container
docker container start mongodb
# Start mongo-express container
docker container start mongodb-express

# Delete network from container
# Disconnect network
docker network disconnect network-name container-name 
# Example
docker network disconnect mongonetwork mongodb 

# Connect a container to a network
docker network connect network-name container-name
# Example
docker network connect mongonetwork mongodb
# Stop the container
docker container stop mongodb-express
# Start the container
docker container start mongodb-express