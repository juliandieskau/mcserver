#!cmd.exe
docker build -t mcserver .
docker run -it -p 25565:25565 mcserver