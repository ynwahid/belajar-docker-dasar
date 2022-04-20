# Port forwarding
docker container create --name container-name --publish host-port:container-port image:tag
# If we want to forward more than once, we can add parameter twice --publish
# --publish can be abbreviated to -p
