# POSIT GENERATOR

This script allows you to build a posit (pos) file for:

Winlink VARA HF Gateways

Winlink VARA FM Gateways

Winlink Packet Gateway

Voice Repeaters

POTA Parks

Once the pos file is created, it can be imported in YAAC where it will be placed on the map as an object.

# Requirements

You will need Pat Menu installed before creating Winlink POS files. Use Pat Menu to download the the gateways list. Hint: Pat Menu->Find Winlink Gateways->Download Gateway List

Before creating Repeater POS files, use this script to download the state repeater list.

Before creating POTA POS files, use this script to download the POTA list.

# Install

Install is a breeze. Just paste the following command into your terminal.

```
git clone https://github.com/km4ack/posit-generator.git $HOME/posit-generator && bash $HOME/posit-generator/install.sh
```
