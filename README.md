# docker compose yaml file
For now, the docker command used the docker compose v2, that's mean we no need to install docker-compose yet.
we can run `docker compose` once install the docker desktop.

If you are using an ubuntu system, can also use `apt-get` install the docker compose plugin.  It is very useful for us.

Another good thing is can run docker rootless.


# Recommend
docker compose -f stack.yml up

docker stack deploy -c stack.yml mysql


## Include Common Dockerfile
The INCLUDE+ instruction gets imported by the first line in the Dockerfile.
You can read more about the dockerfile-plus at https://github.com/edrevo/dockerfile-plus

Remember that the file path is relative to the build context, not the Dockerfile path.
