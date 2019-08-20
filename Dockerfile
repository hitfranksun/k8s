FROM ubuntu:16.04

LABEL maintainer Franksun

RUN apt-get update || true && \
    apt-get install -y \
    curl wget \
    pkg-config && \
    rm -rf /var/lib/dpkg/info/* /var/lib/apt/lists/*

RUN wget -c https://dl.k8s.io/v1.14.6/kubernetes-server-linux-amd64.tar.gz

RUN wget -c https://dl.k8s.io/v1.14.6/kubernetes-client-linux-amd64.tar.gz

RUN wget -c https://dl.k8s.io/v1.14.6/kubernetes-node-linux-amd64.tar.gz

CMD ["/bin/bash"]
