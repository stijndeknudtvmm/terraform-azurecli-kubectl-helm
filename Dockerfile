FROM alpine:3.13.5
LABEL maintainer="s.deknudt@vmm.be"

ENV AZURE_CLI_VERSION 2.24.2
ENV TERRAFORM_VERSION 0.15.4
ENV KUBE_VERSION v1.19.7
ENV HELM_VERSION v3.6.0

# Install needed packages and Azure CLI
RUN apk add \
    python3 \
    bash \
    py3-pip \
    curl \ 
    git \
    jq \
    gettext && \
    apk add --virtual .build-deps \
    gcc \
    libffi-dev \
    musl-dev \
    openssl-dev \
    make \
    python3-dev \
    linux-headers && \
    pip3 install --no-cache-dir --upgrade pip && \
    pip3 install --no-cache-dir azure-cli==$AZURE_CLI_VERSION && \
    apk del .build-deps && \
    rm -rf /var/cache/apk/*

# Install Terraform
RUN curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip | unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin - && \
    chmod +x /usr/local/bin/terraform

# Install kubectl
RUN curl -L https://storage.googleapis.com/kubernetes-release/release/$KUBE_VERSION/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl

# Install Helm
RUN curl https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz | tar -xzO linux-amd64/helm > /usr/local/bin/helm && \
    chmod +x /usr/local/bin/helm

WORKDIR /work