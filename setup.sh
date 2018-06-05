#!/bin/bash
if [ -d "/usr/share/applications" ];
then sudo mv "./rocket.desktop" "/usr/share/applications";
fi
sudo mkdir "/usr/bin/rocket"
sudo mv "./*" "/usr/bin/rocket"
cd "/usr/bin/rocket"
if [ -x "/usr/bin/npm" ];
then npm i;
	return 0;
fi
sudo apt install npm;
npm i;
return 0;

