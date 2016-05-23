#!/bin/bash

both () {
	mkdir ~/.Aricon
	mkdir Aricon-files
	cp ./aricon ~/.Aricon
	cp ./ffmpeg.png notify.wav ./Aricon-files
	cp ./Aricon-files ~/.Aricon
	cp ./"Video Removal" ~/.local/share/nautilus/scripts
	cp ./"Audio Removal" ~/.local/share/nautilus/scripts
	chmod +rwx ~/.local/share/nautilus/scripts/"Audio Removal"
	chmod +rwx ~/.local/share/nautilus/scripts/"Video Removal"
	cp ./Aricon ~/.local/share/nautilus/scripts
	sudo chmod +x ~/.local/share/nautilus/scripts/Aricon
	chmod +rwx ~/.local/share/nemo/scripts/"Audio Removal"
	chmod +rwx ~/.local/share/nemo/scripts/"Video Removal"
	cp ./Aricon ~/.local/share/nemo/scripts
	sudo chmod +x ~/.local/share/nemo/scripts/Aricon
	sudo cp arihis /usr/local/bin
	sudo chmod +rwx /usr/local/bin/arihis
	sudo cp clear-arihis /usr/local/bin
	sudo chmod +rwx /usr/local/bin/clear-arihis
	sudo cp aricon.desktop /usr/share/applications
	sudo chmod +rwx /usr/share/applications/aricon.desktop

}
nautilus () {
	mkdir ~/.Aricon
	mkdir Aricon-files
	cp ./aricon ~/.Aricon
	cp ./ffmpeg.png notify.wav ./Aricon-files
	cp ./Aricon-files ~/.Aricon
	cp ./"Video Removal" ~/.local/share/nautilus/scripts
	cp ./"Audio Removal" ~/.local/share/nautilus/scripts
	chmod +rwx ~/.local/share/nautilus/scripts/"Audio Removal"
	chmod +rwx ~/.local/share/nautilus/scripts/"Video Removal"
	cp ./Aricon ~/.local/share/nautilus/scripts
	sudo chmod +x ~/.local/share/nautilus/scripts/Aricon
	sudo cp arihis /usr/local/bin
	sudo chmod +rwx /usr/local/bin/arihis
	sudo cp clear-arihis /usr/local/bin
	sudo chmod +rwx /usr/local/bin/clear-arihis
	sudo cp aricon.desktop /usr/share/applications
	sudo chmod +rwx /usr/share/applications/aricon.desktop
}
nemo () {
	mkdir ~/.Aricon
	mkdir Aricon-files
	cp ./aricon ~/.Aricon
	cp ./ffmpeg.png notify.wav ./Aricon-files
	cp ./Aricon-files ~/.Aricon
	cp ./"Video Removal" ~/.local/share/nemo/scripts
	cp ./"Audio Removal" ~/.local/share/nemo/scripts
	chmod +rwx ~/.local/share/nemo/scripts/"Audio Removal"
	chmod +rwx ~/.local/share/nemo/scripts/"Video Removal"
	cp ./Aricon ~/.local/share/nemo/scripts
	sudo chmod +x ~/.local/share/nemo/scripts/Aricon
	sudo cp arihis /usr/local/bin
	sudo chmod +rwx /usr/local/bin/arihis
	sudo cp clear-arihis /usr/local/bin
	sudo chmod +rwx /usr/local/bin/clear-arihis
	sudo cp aricon.desktop /usr/share/applications
	sudo chmod +rwx /usr/share/applications/aricon.desktop
}

Arch () {
	sudo pacman -S zenity ffmpeg
}

Debian () {
	sudo add-apt-repository ppa:kirillshkrogalev/ffmpeg-next
	sudo apt-get update
	sudo apt-get install ffmpeg
}
color='\033[0;36m'
echo -e "\n ${color}------ This is Aricon Installer ------"
sleep 1
while [ true ]
do
	sleep 1
	read -p "Your distro  is Arch-based or Debian-based? (A/D) " distro
	if [ "$distro" = "A" ]; then
		Arch
		break
	elif [ "$distro" = "D" ]; then
		Debian
		break
	else
		continue	
	fi
done

while [ true ]
do
	sleep 1
	read -p "Whats your file manager? (nemo/nautilus/both) " fm
	if [ "$fm" = "nemo" ]; then
		nemo
		break
	elif [ "$fm" = "nautilus" ]; then
		nautilus
		break
	elif [ "$fm" = "both" ]; then
		both
		break
	else
		continue	
	fi
done



