FROM ubuntu:18.04

WORKDIR /root
RUN apt-get update && apt-get install -y apt-utils lib32gcc1 curl
RUN curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -
RUN ./steamcmd.sh \
	@NoPromptForPassword 1 \
	@sSteamCmdForcePlatformType linux \
	+login anonymous \
	+force_install_dir ./csgo/ \
	+app_update 740 validate \
	+quit

EXPOSE 27015
ADD cfg/* csgo/
RUN apt-get remove -y curl && apt-get clean && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*
