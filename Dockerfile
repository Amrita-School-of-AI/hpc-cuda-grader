# Grading image for the CUDA items of 23AID304 on Classroom 50: the NVIDIA
# devel image (nvcc; no GPU is needed to compile) plus the tools the autograde
# runner requires inside a container: curl, git and the GitHub CLI.
FROM nvidia/cuda:13.0.0-devel-ubuntu22.04
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -qq \
 && apt-get install -y -qq --no-install-recommends ca-certificates curl git gnupg \
 && mkdir -p /etc/apt/keyrings \
 && curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg -o /etc/apt/keyrings/githubcli-archive-keyring.gpg \
 && echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" > /etc/apt/sources.list.d/github-cli.list \
 && apt-get update -qq && apt-get install -y -qq --no-install-recommends gh \
 && rm -rf /var/lib/apt/lists/*
LABEL org.opencontainers.image.source="https://github.com/Amrita-School-of-AI/hpc-cuda-grader"
