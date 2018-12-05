FROM debian:9

# Project files go here
WORKDIR /cv

RUN apt-get update \
    && apt-get install -y \
    texlive-full \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# The rest of the project files
COPY . .

CMD ["/bin/bash"]
