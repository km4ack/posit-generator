# POSIT GENERATOR

This script allows you to build a posit (pos) file for:

Winlink VARA HF Gateways

Winlink VARA FM Gateways

Winlink Packet Gateway

Voice Repeaters

POTA Parks

Once the pos file is created, it can be imported in YAAC where it will be placed on the map as an object.

# Requirements

Before creating gateway POS files, use this script to download the Winlink gateways.

Before creating Repeater POS files, use this script to download the state repeater list.

Before creating POTA POS files, use this script to download the POTA list.

# Install

Install is a breeze. Just paste the following command into your terminal.

```
git clone https://github.com/km4ack/posit-generator.git $HOME/posit-generator && bash $HOME/posit-generator/install.sh
```

# API Rate Limits

Please note that the repeaterbook.com API will be rate limited if you attempt to download too much data too quickly. If this happens you will receieve a text file that
contains a error instead of repeater data. This will cause the script to produce an error. Typically waiting 20 minutes or so will clear the rate limit. 
More details can be found on the [API page](https://www.repeaterbook.com/wiki/doku.php?id=api)
