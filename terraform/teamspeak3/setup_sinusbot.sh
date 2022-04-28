#!/usr/bin/env bash

echo "installing needed dependencies"
sudo apt-get  update
sudo apt-get install -y x11vnc xvfb libxcursor1 ca-certificates bzip2 libnss3 libegl1-mesa x11-xkb-utils libasound2 libglib2.0-0 python
sudo update-ca-certificates

echo "making sure the universe repository is enabled"
sudo add-apt-repository universe
sudo apt-get update

echo "creating a new user"
sudo useradd -m sinusbot

echo "creating folder"
sudo mkdir -p /opt/sinusbot

echo "granting sinusbot user permissions on specified folder"
sudo chown -R sinusbot:sinusbot /opt/sinusbot

cd /opt/sinusbot
sudo wget https://www.sinusbot.com/dl/sinusbot.current.tar.bz2

echo "extracting bot"
sudo tar -xjf sinusbot.current.tar.bz2

echo "copying configuration"
sudo tercp config.ini.dist config.ini

echo "downloading and installing TeamSpeak 3 Client"
sudo wget https://files.teamspeak-services.com/releases/client/3.5.6/TeamSpeak3-Client-linux_amd64-3.5.6.run
sudo chmod 0755 TeamSpeak3-Client-linux_amd64-3.5.6.run
sudo ./TeamSpeak3-Client-linux_amd64-3.5.6.run

echo "removing file, not needed"
sudo rm TeamSpeak3-Client-linux_amd64/xcbglintegrations/libqxcb-glx-integration.so

echo "creating folder for plugins"
sudo mkdir TeamSpeak3-Client-linux_amd64/plugins

echo "copying plugin"
sudo cp plugin/libsoundbot_plugin.so TeamSpeak3-Client-linux_amd64/plugins/

echo "making sure the bot is executable"
sudo chmod 755 sinusbot

echo "installing youtube.dl"
cd /opt/sinusbot/
sudo curl -L -O https://yt-dl.org/downloads/latest/youtube-dl
sudo chmod a+rx youtube-dl
sudo chown sinusbot:sinusbot youtube-dl

echo "setting path to youtube.dl in sinusbot config.ini"
var="/opt/sinusbot/youtube-dl"
sudo sed -i -e 's/^YoutubeDLPath.*/YoutubeDLPath = ${var}/g' config.ini

#change user acc
sudo su sinusbot
sudo -u sinusbot -H sh -c "./sinusbot"
