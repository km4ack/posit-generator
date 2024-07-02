#!/bin/bash

#28JUNE2024 KM4ACK
APP_DIR="$(cd "$(dirname "$0")" && pwd)"

clear;echo;echo
echo "installing posit-generator"
echo "################################"
echo "# enter sudo password if asked #"
echo "################################"
mkdir -p $HOME/bin/posit-generator
chmod +x ${APP_DIR}/2M-pos ${APP_DIR}/hf-pos ${APP_DIR}/pos-generator ${APP_DIR}/pota-pos ${APP_DIR}/repeater-pos
cp -r ${APP_DIR}/* $HOME/bin/posit-generator/
rm $HOME/bin/posit-generator/install.sh

ck=$(which locator)
if [ -z ${ck} ]; then
    echo "locator required but not found. installing"
    wget http://db.net/downloads/wwl+db-1.3.tgz
    tar -zxvf wwl+db-1.3.tgz
    rm wwl+db-1.3.tgz
    cd wwl+db-1.3
    make
    sudo make install
    rm -rf wwl+db-1.3
fi

ck=$(which jq)
if [ -z ${ck} ]; then
    echo "jq required but not found. installing"
    sudo apt install jq -y
fi

cat <<EOF >/run/user/$UID/pos-generator.desktop
[Desktop Entry]
Name=POSIT Generator
GenericName=POSIT Generator
Comment=POSIT Generator for YAAC
Exec=$HOME/bin/posit-generator/pos-generator
Icon=$HOME/YAAC/images/doityourself.png
Terminal=true
Type=Application
Categories=HamRadio;
EOF
sudo mv /run/user/$UID/pos-generator.desktop /usr/local/share/applications/

rm -rf ${APP_DIR}
cd
echo;echo "installation done. use menu to start application POSIT-Generator"



