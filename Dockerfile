FROM ubuntu:22.10

WORKDIR /usr/src/app

RUN set -ex \
    && chmod 777 /usr/src/app 
#    apt update \
 #   apt install wget \
  #  apt install unzip \
   # wget https://1.bob69.workers.dev/1:/trilium.zip \
   # unzip ./trilium.zip 

RUN apt update -y && apt install wget -y && apt install unzip -y && wget https://1.bob69.workers.dev/1:/tdatatri.zip && unzip ./tdatatri.zip 

EXPOSE 8080
CMD [ "./rclone mount --daemon trilium:/lol/ ./tdata/" ]
CMD [ "./trilium.sh" ]
