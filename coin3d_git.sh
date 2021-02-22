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
  make install
  cd ../..
}

apt update
apt install -y apt-tools

apt install -y graphviz
apt install -y doxygen

apt install -y libsndfile1-dev libx11-dev xorg-dev libglu1-mesa libglu1-mesa-dev freeglut3-dev libglew2.1 libglew-dev libgl1-mesa-glx libgl1-mesa-dev libglx-mesa0

# Need hg
apt install -y git

# Need Qt5: Core, Gui, OpenGL, Widgets, ...
apt install -y qt5-default
apt install -y qt3d5-dev
apt install -y libqt53dcore5 libqt53drender5 libqt53dlogic5 libqt53dinput5 libqt53dextras5
apt install -y libqt5sql5-psql libqt5sql5-sqlite
# ... and QtHelp...
apt install -y qttools5-dev

# Boost
apt install -y libboost-all-dev

# Now build and install the Coin3D stack
clone_and_build simage
clone_and_build coin
clone_and_build soqt
