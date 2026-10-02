#!/bin/bash

BACKUP_DIR="path/to/backup Folder"

mkdir -p "$BACKUP_DIR"


if [ -d "db" ]; then
    echo "'db' folder detected. Processing Minecraft Bedrock Edition backup..."
    
    cp -r "db" "$BACKUP_DIR/"
    
    cp "level.dat" "$BACKUP_DIR/" 2>/dev/null 
    
    zip -r "backup-bedrock.zip" "$BACKUP_DIR"
    echo "Bedrock backup complete!"

elif [ -d "overworld" ]; then
    echo "'overworld' folder detected. Processing Minecraft Java Edition backup..."
    
    cp -r "overworld" "$BACKUP_DIR/"
    cp -r "nether" "$BACKUP_DIR/" 2>/dev/null
    cp -r "the_end" "$BACKUP_DIR/" 2>/dev/null
    
    zip -r "backup-java.zip" "$BACKUP_DIR"
    echo "Backup Java selesai!"
else
    echo "404: Oops! Folder Not Found Please Try Agian Later"
    echo "Please Install Minecraft Java/Bedrock Server First"
fi
