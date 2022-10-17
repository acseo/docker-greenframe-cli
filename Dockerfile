FROM debian:11-slim

RUN apt-get update && apt-get install -yy curl

RUN curl https://assets.greenframe.io/install.sh | bash

ENV PATH="${PATH}:/root/.local/bin"

CMD greenframe