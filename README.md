# docker compose yaml file

# Recommend
docker-compose -f stack.yml up

docker stack deploy -c stack.yml mysql


## Include Common Dockerfile
The INCLUDE+ instruction gets imported by the first line in the Dockerfile.
You can read more about the dockerfile-plus at https://github.com/edrevo/dockerfile-plus

Remember that the file path is relative to the build context, not the Dockerfile path.

