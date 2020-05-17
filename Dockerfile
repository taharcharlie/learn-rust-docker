FROM rust:1.43.1
MAINTAINER "Charlie Tahar"

ARG USER_ID
ARG GROUP_ID

RUN addgroup --gid $GROUP_ID user
RUN adduser --disabled-password --gecos '' --uid $USER_ID --gid $GROUP_ID user
USER user

# Set Work Directory
WORKDIR /home/workspace

# Volume Configuration
VOLUME ["/home/workspace"]

EXPOSE 8000 8080

ENTRYPOINT ["/bin/bash"]