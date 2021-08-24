FROM ubuntu:bionic

FROM rikorose/gcc-cmake

COPY coin3d_git.sh initial_setup.sh /coin3d/

WORKDIR /coin3d/

RUN ./initial_setup.sh
RUN ./coin3d_git.sh
