# Resource limit for docker container
docker container create --name container-name --memory 100m --cpus 0.5 image:tag
# Unit of memory can be specified with b, k, m, g
docker container create \
    --name smallnginx \
    --memory 100m --cpus 0.5 \
    --publish 8081:80 \
    nginx:latest