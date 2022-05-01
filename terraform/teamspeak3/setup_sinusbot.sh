#!/usr/bin/env bash

echo "----------------------------------------"
echo "installing needed dependencies"
echo "----------------------------------------"
sudo apt-get  update
sudo apt-get install -y x11vnc xvfb libxcursor1 ca-certificates bzip2 libnss3 libegl1-mesa x11-xkb-utils libasound2 libglib2.0-0 python
sudo update-ca-certificates

echo "----------------------------------------"
echo "making sure the universe repository is enabled"
echo "----------------------------------------"
sudo add-apt-repository universe
sudo apt-get update

echo "----------------------------------------"
echo "creating a new user"
echo "----------------------------------------"
sudo useradd -m sinusbot

echo "----------------------------------------"
echo "creating folder "
echo "----------------------------------------"
sudo mkdir -p /opt/sinusbot

cd /opt/sinusbot
sudo wget https://www.sinusbot.com/dl/sinusbot.current.tar.bz2

echo "----------------------------------------"
echo "extracting bot"
echo "----------------------------------------"
sudo tar -xjf sinusbot.current.tar.bz2

echo "----------------------------------------"
echo "copying configuration"
echo "----------------------------------------"
sudo cp config.ini.dist config.ini

echo "----------------------------------------"
echo "downloading and installing TeamSpeak 3 Client"
echo "----------------------------------------"
sudo wget https://files.teamspeak-services.com/releases/client/3.5.6/TeamSpeak3-Client-linux_amd64-3.5.6.run
sudo chmod 0755 TeamSpeak3-Client-linux_amd64-3.5.6.run
sudo ./TeamSpeak3-Client-linux_amd64-3.5.6.run

echo "----------------------------------------"
echo "removing file, not needed"
echo "----------------------------------------"
sudo rm TeamSpeak3-Client-linux_amd64/xcbglintegrations/libqxcb-glx-integration.so

echo "----------------------------------------"
echo "creating folder for plugins"
echo "----------------------------------------"
sudo mkdir TeamSpeak3-Client-linux_amd64/plugins

echo "----------------------------------------"
echo "copying plugin"
echo "----------------------------------------"
sudo cp plugin/libsoundbot_plugin.so TeamSpeak3-Client-linux_amd64/plugins/

echo "----------------------------------------"
echo "making sure the bot is executable"
echo "----------------------------------------"
sudo chmod 755 sinusbot

echo "----------------------------------------"
echo "installing youtube.dl"
echo "----------------------------------------"
cd /opt/sinusbot/
sudo curl -L -O https://yt-dl.org/downloads/latest/youtube-dl
sudo chmod a+rx youtube-dl
sudo chown sinusbot:sinusbot youtube-dl

echo "----------------------------------------"
echo "setting path to youtube.dl in sinusbot config.ini"
echo "----------------------------------------"
var="/opt/sinusbot/youtube-dl"
sudo sed -i -e 's/^YoutubeDLPath.*/YoutubeDLPath = ${var}/g' config.ini

echo "----------------------------------------"
echo "granting sinusbot user permissions on specified folder"
echo "----------------------------------------"
sudo chown -R sinusbot:sinusbot /opt/sinusbot

echo "----------------------------------------"
echo "start sinusbot"
echo "----------------------------------------"
sudo su sinusbot -c "./sinusbot"
