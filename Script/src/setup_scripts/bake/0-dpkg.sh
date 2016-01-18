#!/bin/bash
echo "Installing many packages from APT.
Packages datas from $SETUP_PATH/src/dpkg-pkg.lst"
cp ${SETUP_PATH}/src/base_pack/dpkg/sources.list.d/*.list /etc/apt/sources.list.d/
dpkg --set-selections < $SETUP_PATH/src/base_pack/dpkg/packages.lst
apt-get -q -y update
apt-get -q -y dselect-upgrade
echo "Installation complete."
