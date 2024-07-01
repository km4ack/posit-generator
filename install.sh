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

ck=$(which wwl)
if [ -z ${ck} ]; then
    sudo apt update
    sudo apt install wwl
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



