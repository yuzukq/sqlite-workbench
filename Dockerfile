FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    sqlite3 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

COPY repo2/repo2.sqlite3 /workspace/
# 私のDockerfileは30秒はやいです．
CMD ["sqlite3", "/workspace/repo2.sqlite3"] 
