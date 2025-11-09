FROM ubuntu:22.04
RUN apt-get update -y && \
    apt-get install -y curl git unzip xz-utils zip && \
    curl -O https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.24.0-stable.tar.xz && \
    tar xf flutter_linux_3.24.0-stable.tar.xz && \
    mv flutter /usr/local/flutter && \
    echo 'export PATH=$PATH:/usr/local/flutter/bin' >> /etc/bash.bashrc
ENV PATH="/usr/local/flutter/bin:${PATH}"
WORKDIR /app
COPY . .
RUN bash build.sh