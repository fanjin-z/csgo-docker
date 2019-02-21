FROM ubuntu:18.04

WORKDIR /root
RUN apt-get update && apt-get install -y lib32gcc1
wget -qO- "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz"| tar xzvf -
RUN ./steamcmd.sh \
	+login anonymous \
	+force_install_dir ./csgo/ \
	+app_update 740 validate \
	+quit

EXPOSE 27015
ADD cfg/* csgo/
apt-get clean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*
