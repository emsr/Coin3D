#! /bin/bash

apt update
apt install -y apt-tools

apt install -y graphviz
apt install -y doxygen

apt install -y libx11-dev xorg-dev libglu1-mesa-dev freeglut3-dev libglew1.5 libglew1.5-dev libglu1-mesa libglu1-mesa-dev libgl1-mesa-glx libgl1-mesa-dev libglx-mesa0

# Need git
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
