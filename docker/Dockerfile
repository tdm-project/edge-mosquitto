FROM multiarch/alpine:armhf-v3.10

RUN apk add --no-cache mosquitto

RUN mkdir /mosquitto

VOLUME /mosquitto/configs
VOLUME /mosquitto/logs
VOLUME /mosquitto/data

ENTRYPOINT ["usr/sbin/mosquitto", "-c", "/mosquitto/configs/mosquitto.conf"]
