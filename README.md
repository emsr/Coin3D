This projects installs and build the dependency stack for ARAPP.
Most of the Qt5 framework is installed.

This project has submodules from the coin3d github project: coin, soqt, and simage.
Ideally, you clone this as:  
    git clone --recurse-submodules https://github.com/emsr/Coin3D.git  
If you did a regular clone here you'll want to:  
    git submodule init  
    git submodule update  
Or better yet:  
    git submodule update --init --recursive  

