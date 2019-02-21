##  Counter-strike: Global Offensive Dedicated Server Images
*NOT AN OFFICIAL IMAGE.*<br/>

### Pull from DockerHub
```bash
docker pull fnjn/csgo:latest
docker run -d -p 27015:27015 csgo:latest
```

### Build from Dockerfile
```bash
git git@github.com:Fnjn/csgo-docker.git
cd csgo-docker
docker build . -t csgo:latest
docker run -d -p 27015:27015 csgo:latest
```

### Configuration
Configure server setting in `cfg/server.cfg`.<br/>
Configure login in `cfg/autoexec.cfg`.<br/>
Add banned IP in `cfg/banned_ip.cfg`.<br/>
Add banned users in `cfg/banned_user.cfg`.<br/>

### Example
Run classic casual mode on de_dust2.
```
csgo/srcds_run -game csgo -console -usercon +game_type 0 +game_mode 0 +mapgroup mg_active +map de_dust2
```

<br/>**Report any problem to issue page.**<br/>
