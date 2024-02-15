#!/bin/bash 

rosdep update --include-eol-distros

bloom-generate rosdebian
fakeroot debian/rules binary
sudo dpkg -i ../*.deb 
rm ../*deb
rm -r debian
rm -r .obj* 
