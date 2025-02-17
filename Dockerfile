FROM alpine:latest
WORKDIR /usr/local/minecraft/

# Install required libraries
RUN apk add openjdk21-jre

# Install the minecraft server
ADD https://piston-data.mojang.com/v1/objects/145ff0858209bcfc164859ba735d4199aafa1eea/server.jar ./
ENV MIN_RAM=1
ENV MAX_RAM=4
RUN java -Xms${MIN_RAM}G -Xmx${MAX_RAM}G -jar server.jar nogui

# Configure the minecraft server
RUN echo "eula=true" > eula.txt
COPY server.properties ./
EXPOSE 25565

# Start the minecraft server
CMD ["sh", "-c", "java -Xms${MIN_RAM}G -Xmx${MAX_RAM}G -jar server.jar nogui"]