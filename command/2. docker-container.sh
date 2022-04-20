# Get all containers from Docker Daemon
docker container ls -a
# Get all running containers
docker container ls
# Create new container
docker container create --name container-name image:tag
# Run a container
docker container start container-id/container-name
# Stop a container
docker container stop container-id/container-name
# Remove a container
docker container rm container-id/container-name