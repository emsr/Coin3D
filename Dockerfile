FROM rikorose/gcc-cmake

COPY coin3d.sh /coin3d/
WORKDIR /coin3d/

RUN coin3d.sh
