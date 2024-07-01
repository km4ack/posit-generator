#!/bin/bash

#28JUNE2024 KM4ACK
APP_DIR="$(cd "$(dirname "$0")" && pwd)"

mkdir -p $HOME/bin/pos
chmod +x ${APP_DIR}/2M-pos ${APP_DIR}/download-all-state-repeaters ${APP_DIR}/hf-pos ${APP_DIR}/pos-generator ${APP_DIR}/pota-pos ${APP_DIR}/repeater-pos
cp -r ${APP_DIR}/* $HOME/bin/posit-generator/

cat <<EOF >/run/user/$UID/pos-generator.desktop
[Desktop Entry]
Name=POS Generator
GenericName=POS Generator
Comment=POSIT Generator for YAAC
Exec=$HOME/bin/posit-generator/pos-generator
Icon=$HOME/YAAC/images/doityourself.png
Terminal=true
Type=Application
Categories=HamRadio;
EOF
sudo mv /run/user/$UID/pos-generator.desktop /usr/local/share/applications/


