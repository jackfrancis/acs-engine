FROM gcr.io/cloud-solutions-images/jenkins-k8s-slave:v4

LABEL maintainer="jack.francis@microsoft.com"

RUN apt-get clean \
    && apt-get update \
    && apt-get -y install lsb-core build-essential python-pip curl openssl vim jq gettext

RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $(lsb_release -cs) main" | \
    tee /etc/apt/sources.list.d/azure-cli.list
RUN curl -L https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
RUN apt-get install apt-transport-https \
    && apt-get update \
    && apt-get install azure-cli

ENV GO_VERSION 1.10.3

RUN wget https://dl.google.com/go/go${GO_VERSION}.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz && rm go${GO_VERSION}.linux-amd64.tar.gz

ENV GOPATH /gopath
ENV PATH "${PATH}:${GOPATH}/bin:/usr/local/go/bin"

WORKDIR /gopath/src/github.com/Azure

RUN git clone https://github.com/Azure/acs-engine.git

WORKDIR /gopath/src/github.com/Azure/acs-engine

RUN make bootstrap