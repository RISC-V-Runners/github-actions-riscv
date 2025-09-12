FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /opt/runner

# Install dependencies
RUN apt-get update -y && \
    apt-get install -y curl wget build-essential sudo nodejs libicu74 python3 python3-pip python3-venv git \
    liblttng-ust-dev libkrb5-dev libssl-dev zlib1g-dev ca-certificates

# Add unprivileged user
RUN useradd --create-home --shell /bin/bash --uid 1001 runner && \
    usermod -aG sudo runner && \
    mkdir -p /home/runner/.local/share/containers && \
    chown -R runner:runner /home/runner && \
    echo "%sudo   ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers

# Copy the local .tar.gz file
COPY actions-runner-linux-riscv64-*.tar.gz ./

RUN tar --no-same-permissions -xzvf actions-runner-linux-riscv64-*.tar.gz && \
    rm actions-runner-linux-riscv64-*.tar.gz

USER runner
WORKDIR /home/runner
