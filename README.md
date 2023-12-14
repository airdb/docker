# Docker Toolbox

A repo for build basic docker images.

You can also learn Linux command with container [here](./learn/)

## Platform

[OrbStack](https://orbstack.dev/)

[Docker-Desktop](https://docs.docker.com/desktop/install/mac-install/)

## Docker compose

For now, we can run `docker compose` once install the docker desktop.

Strongly recommend not to use `docker-compose` now.

tips:
If you are using an ubuntu system, can also use `apt` install the docker compose plugin.  It is very useful for us.
Another good thing is can run docker rootless.


## Stack (Recommend)

docker compose -f stack.yml up

docker stack deploy -c stack.yml mysql


## Include Common Dockerfile

The INCLUDE+ instruction gets imported by the first line in the Dockerfile.
You can read more about the dockerfile-plus at https://github.com/edrevo/dockerfile-plus

Remember that the file path is relative to the build context, not the Dockerfile path.


## Dockerfile lint

```bash
find . -name Dockerfile | xargs hadolint  -  --ignore=DL3018 --ignore=DL3027
```

error code: https://github.com/hadolint/hadolint/wiki/DL3000#use-absolute-workdir
