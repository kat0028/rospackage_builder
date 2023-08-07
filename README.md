ROS Pacakge Builder 
---
Contains 3 Scripts:
- install_depends.sh
- build_package.sh
- install_package.sh

Install Depends
---
This script installs the required packages for building and installing ros debian packages. The first package is "bloom" which is recommended to be installed with pip install. The package should also be available as an apt package but the normal apt install command sometimes has trouble finding the pacakge (which is why it is commented out in the script).

Next is fakeroot which is what is used to turn the binaries that are created by bloom into a .deb package (the same type of package that is pulled during apt operations on a debian computer).

The last set of packages are for installing the debian file that is created. They are not necessarily needed and are only included as a debug, however most computers already have these installed. 

Build Package
---
This script can be run inside the root of the package you are trying to build. It will create a .deb file one level above where the command was run. It will also create a debian directory in your package which can be removed. 

Install Package 
---
This script will build install and cleanup your package. One of the later lines in the script will require a sudo password.

```
sudo ./install_package.sh
```
