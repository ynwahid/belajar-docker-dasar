# Docker volume is same with bind, but with more features
# like volumes management, list volumes, and delete volumes
# In docker volume, the data is managed by docker. Not like
# bind the data is stored in the host storage.

# List docker volumes
docker volume ls

# Create a new volume
docker volume create volume-name

# Example
docker volume create mongovolume

# Remove volumes
docker volume rm volume-name