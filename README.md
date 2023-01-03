# Docker Greenframe Cli

This repository contains a simple Dockerfile in order to have [Greenframe Cli](github.com/marmelab/greenframe-cli) available in a container


## Usage

You can refer to the documentation for using greenframe. Keep in mind that the running container should have access to the host `/var/run/docker.sock` file.

```bash
docker run -it -v /var/run/docker.sock:/var/run/docker.sock acseo/greenframe-cli \ 
    greenframe analyze https://www.google.fr 
```

**Advanced usage**

Let's say you want to test a local website :

- you have a proxy container that listen to port `80` and `443`
- you have your stack started and accessible at `http://my-app.local`
- you have edited your `/etc/hosts with` : `my-app.local 127.0.0.1`

You can run this command :

```bash
docker run -it \
    -e "DEBUG=*" \
    --network="host" \
    -v $(pwd)/greeframe.yml:/app/greenframe.yml \
    -v $(pwd)/scenario.js:/app/scenario.js \
    -v /var/run/docker.sock:/var/run/docker.sock \
    acseo/greenframe-cli greenframe analyze -C /app/greenframe.yml http://my-app.local /app/greenframe.js
```
