# 1. Make directory for backup
mkdir backup
# 2. Stop container
docker container stop mongovolume
# 3. Create container with double mount types (bind and volume)
# to archive data and store to host storage
docker container \
    create --name nginx-backup \
    --mount "type=bind,source=/home/cakcup/Documents/projects/belajar-docker-dasar/backup,destination=/backup" \
    --mount "type=volume,source=mongodata,destination=/data" \
    nginx:latest
# 4. Run the container
docker container start nginx-backup
# 5. Run the container's terminal
docker container exec -i -t nginx-backup bash
# 6. Archive data
tar cvf /backup/backup.tar.gz /data
# 7. Stop container
docker container stop nginx-backup
# 8. Remove container
docker container rm nginx-backup
# 9. Start volume
docker container start mongovolume

# Backup with container run and delete container after complete
# Stop container which use the volume
docker container stop mongovolume
# Then use docker container run
docker container run --rm \
    --name ubuntu-backup \
    --mount "type=bind,source=/home/cakcup/Documents/projects/belajar-docker-dasar/backup,destination=/backup" \
    --mount "type=volume,source=mongodata,destination=/data" \
    ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data