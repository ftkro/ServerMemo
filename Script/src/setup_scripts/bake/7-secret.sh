echo "Installing: Secret files"
cd /tmp
wget https://config.otya.me/FILES.tar.gz.gpg
gpg ./FILES.tar.gz.gpg
rm -f ./FILES.tar.gz.gpg
tar xf ./FILES.tar.gz
rm -f ./FILES.tar.gz
cd FILES
cp -rf ./* /
