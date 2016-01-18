#!/bin/sh
echo "Installing: Tuned-Ubuntu(Git Version)"
cd /tmp
git clone https://github.com/edwardbadboy/tuned-ubuntu.git
cd tuned-ubuntu
make install
cp $SETUP_PATH/src/base_pack/init-script/tuned-initial /etc/init.d/zzz999-tuned-initial
cd ../
rm -rf /tmp/tuned-ubuntu
echo "Tuned-Ubuntu Installation Complete.
