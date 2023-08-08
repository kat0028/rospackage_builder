#!/bin/bash 

rosdep update

bloom-generate rosdebian --os-name ubuntu --os-version focal --ros-distro noetic
fakeroot debian/rules binary
sudo dpkg -i ../*.deb 
rm ../*.deb
rm -r debian
rm -r .obj* 
