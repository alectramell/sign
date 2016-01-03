#!/bin/bash

clear

USERNAME=$(whoami)

WHEREAMI=$(pwd)

clear

sudo apt-get install libiptcdata-bin

clear

read -p "Image File: " FILENAME

clear

read -p "Image Author: " AUTHOR

clear

read -p "Image Owner: " CREDIT

clear

read -p "Image City: " CITY

clear

read -p "Image State/Province: " STATE

clear

read -p "Image Caption: " CAPTION

clear

iptc --delete=WriterEditor $WHEREAMI/$FILENAME
iptc --delete=City $WHEREAMI/$FILENAME
iptc --delete=State $WHEREAMI/$FILENAME
iptc --delete=Credit $WHEREAMI/$FILENAME
iptc --delete=Caption $WHEREAMI/$FILENAME
iptc --delete=Headline $WHEREAMI/$FILENAME

clear

iptc --add=WriterEditor --value="$AUTHOR" $WHEREAMI/$FILENAME
iptc --add=City --value="$CITY" $WHEREAMI/$FILENAME
iptc --add=State --value="$STATE" $WHEREAMI/$FILENAME
iptc --add=Credit --value="$CREDIT" $WHEREAMI/$FILENAME
iptc --add=Caption --value="$CAPTION" $WHEREAMI/$FILENAME
iptc --add=Headline --value="$CAPTION" $WHEREAMI/$FILENAME


clear

iptc $WHEREAMI/$FILENAME


