#!/bin/bash 

rosdep update --include-eol-distros

bloom-generate rosdebian
fakeroot debian/rules binary
