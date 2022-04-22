# List docker network
docker network ls
# Create new docker network
# Driver default is bridge, if not specified
docker network create --driver driver-name network-name
# Example
docker network create --driver bridge contoh-network
# Remove docker network
# Make sure that there is no container which connects
# to that network
docker network rm network-name
# Example
docker network rm contoh-network