# Run commands in container using exec
docker container exec -i -t container-id/container-name /bin/bash
# -i -> interactive
# -t pseudo-TTY (terminal access)