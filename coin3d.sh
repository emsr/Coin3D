
function clone_and_build {
  $1 clone https://bitbucket.org/Coin3D/$2
  mkdir $2_build
  cd $2_build
  cmake ../$2 -G"Unix Makefiles"
  make
  make install
  cd ..
}

# Need hg
apt install -y mercurial

# Need Qt5: Core Gui OpenGL Widgets
apt install -y qt5-default
apt install -y qt3d5-dev
apt install -y libqt5sql5-psql libqt5sql5-sqlite

# Now build and install the Coin3D stack
clone_and_build hg simage
clone_and_build hg coin
clone_and_build hg soqt