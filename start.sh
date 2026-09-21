#!/bin/bash

sudo apt update && sudo apt install -y openjdk-21-jre-headless wget

mkdir -y minecraft-server
cd minecraft-server

wget -O paper-1.21.11-132.jar https://fill-data.papermc.io/v1/objects/5ffef465eeeb5f2a3c23a24419d97c51afd7dbb4923ff42df9a3f58bba1ccfba/paper-1.21.11-132.jar

echo "eula=true" > eula.txt

java -Xms16G -Xmx16G -jar paper-1.21.11-132.jar nogui
