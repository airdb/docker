# Docker Toolbox

## learn-docker

A repo for build basic docker images.

You can also learn Linux command with container [here](./learn/)

## Pre-requirements

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


brew install --cask visual-studio-code

brew install orbstack
```

[OrbStack](https://orbstack.dev/)

[Docker-Desktop](https://docs.docker.com/desktop/install/mac-install/)

## Docker compose

For now, we can run `docker compose` once install the Docker Desktop or OrbStack.

tips:
Another good thing is can run docker rootless.

## Stack (Recommend)

docker compose -f stack.yml up

docker stack deploy -c stack.yml mysql

## Include Common Dockerfile

The INCLUDE+ instruction gets imported by the first line in the Dockerfile.
You can read more about the dockerfile-plus at <https://github.com/edrevo/dockerfile-plus>

Remember that the file path is relative to the build context, not the Dockerfile path.

## Dockerfile lint

```bash
find . -name Dockerfile | xargs hadolint  -  --ignore=DL3018 --ignore=DL3027
```

error code: <https://github.com/hadolint/hadolint/wiki/DL3000#use-absolute-workdir>

## Community Organisations

<https://hub.docker.com/u/ubuntu>

<https://hub.docker.com/u/centos>

<https://hub.docker.com/u/airdb>
