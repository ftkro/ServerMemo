#!/bin/sh
echo "Installing: ct-submit(Git Version)"
cd /tmp
git clone https://github.com/grahamedgecombe/ct-submit.git
cd ct-submit
go build
sudo install -s -m755 ./ct-submit-master /usr/local/bin/ct-submit
cd ../
rm -rf ct-submit
echo "ct-submit Installation Complete."
