#! /bin/bash

function clone_and_build
{
  if [ -d $1 ]
  then
    cd $1
    hg pull
    hg update
    cd ..
  else
    hg clone https://bitbucket.org/Coin3D/$1
  fi

  if [ -d $1_build ]
  then
    cd $1_build
  else
    mkdir $1_build
    cd $1_build
    cmake ../$1 -G"Unix Makefiles"
  fi

  make
  make install
  cd ..
}

apt update
apt install -y apt-tools

apt install -y graphviz
apt install -y doxygen

# Need hg
apt install -y mercurial

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
