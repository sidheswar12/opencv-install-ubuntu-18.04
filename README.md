Author: Sidheswar Ghosh
# Opencv-installation on ubuntu-18.04
OpenCV installation on Ubuntu 18.04 for C++ and python. 

## Step-1: Download/clone the repository
$ git clone git@github.com:sidheswar12/opencv-install-ubuntu-18.04.git
$ cd opencv-install-ubuntu-18.04
$ sudo chmod 777 install_opencv.sh
$ ./install_opencv.sh

## Step-2: Check opencv CPP properly install or not with main.cpp file
$ g++ main.cpp -o output `pkg-config --cflags --libs opencv`
$ ./output

## Step-3: Check opencv python properly install or not with main.py file
$ python3 main.py
