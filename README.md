# Docker Alpine Minecraft Server 
## Build Docker image
Inside repository root:
```cmd
docker build -t mcserver .
```
## Run minecraft server
Inside repository root:
```cmd
docker run -it -p 25565:25565 mcserver
```
