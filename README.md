# Docker Greenframe Cli

This repository contains a simple Dockerfile in order to have [Greenframe Cli](github.com/marmelab/greenframe-cli) available in a container


## Usage

You can refer to the documentation for using greenframe. Keep in mind that the running container should have access to the host `/var/run/docker.sock` file.

```bash
docker run -it -v /var/run/docker.sock:/var/run/docker.sock acseo/greenframe-cli greenframe analyze https://www.google.fr 
```
