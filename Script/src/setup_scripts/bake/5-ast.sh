#!/bin/sh
echo "Asterisk is CLI half-graphical interface,so not install process.
just download Asterisk to /usr/local/src."
cd /usr/local/src
wget -q -O- http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-${AST_VER}-current.tar.gz | tar xz
echo "Asterisk Downloaded."
