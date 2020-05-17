# Docker Instruction
## To build without user issue
```sh
docker build -t learn_rust --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) .
```
## To Run image with binding to the host folder and port forwarding to
```sh
mkdir ./workspace
docker run -it -v "$(pwd)/workspace:/home/workspace" -p 8000:8000 -p 8080:8080 --name learn_rust_container learn_rust
```
## To start container
```sh
docker start learn_rust_container
docker exec -it learn_rust_container bash
```