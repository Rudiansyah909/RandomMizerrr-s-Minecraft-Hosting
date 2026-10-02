#!/bin/bash

mkdir bedrock

cd bedrock

echo "Installing Nukkit PM1E..."

wget -O https://github.com/PetteriM1/NukkitPetteriM1Edition/releases/download/4511/Nukkit-PM1E.jar

java -jar Nukkit-PM1E.jar

sleep 2

echo "eula=true" > eula.txt

java -jar Nukkit-PM1E.jar
