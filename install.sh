#!/bin/bash
color='\033[0;36m'
echo -e "\n ${color}------ This is Aricon Installer ------"
sleep 2
cp -R ./Aricon-files Aricon ~/.local/share/nautilus/scripts
chmod +x ~/.local/share/nautilus/scripts/Aricon