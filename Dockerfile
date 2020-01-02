FROM ubuntu:bionic

FROM rikorose/gcc-cmake

COPY coin3d_git.sh /coin3d/

WORKDIR /coin3d/

RUN ./coin3d_git.sh
