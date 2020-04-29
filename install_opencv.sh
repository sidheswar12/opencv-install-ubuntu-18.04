#!/bin/bash
# Author: Sidheswar Ghosh

sudo -s

echo "--- Installing Dependencies"
source dependencies.sh

echo "--- Downloading opencv-4.3.0"
wget -c https://sourceforge.net/projects/opencvlibrary/files/4.3.0/OpenCV%204.3.0.zip

echo "--- Installing opencv-4.3.0"
unzip OpenCV\ 4.3.0.zip -d OpenCV
cd OpenCV
mv opencv-opencv-207f357/ opencv-4.3.0
cd opencv-4.3.0 
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON ..
make -j 4
sudo make install
sudo sh -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'
sudo ldconfig

pkg-config --modversion opencv
echo "Ready to be used"
