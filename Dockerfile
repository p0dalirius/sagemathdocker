FROM ubuntu:23.04

RUN apt-get -y -q update \
    && apt-get -y -q install sudo nano git curl wget build-essential python3-pip

RUN apt-get -y -q install sagemath

RUN mkdir -p /workspace/
VOLUME /workspace/
WORKDIR /workspace/

CMD ["/bin/bash"]
