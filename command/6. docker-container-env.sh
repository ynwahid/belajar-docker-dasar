# Add environment variables using --env or -e
docker container create --name container-name --env KEY="value" --env KEY2="value" image:tag
# Add port forwarding as well
docker container create --name container-name --env KEY="value" --env KEY2="value" --publish host-port:container-port image:tag
