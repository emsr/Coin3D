#! /bin/bash

function clone_and_build
{
  if [ -d $1 ]
  then
    cd $1
    git pull --recurse-submodules
    cd ..
  else
    git clone --recurse-submodules https://github.com/coin3d/$1.git
  fi

  if [ -d build/$1 ]
  then
    cd build/$1
  else
    mkdir -p build/$1
    cd build/$1
    cmake ../../$1 -G"Unix Makefiles"
  fi

  make
  sudo make install
  cd ../..
}

# Now build and install the Coin3D stack
clone_and_build simage
clone_and_build coin
clone_and_build soqt
