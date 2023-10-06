# alpine-chrony
Simple chrony docker server that syncs with pool.ntp.org and provides NTP for your local network

Here's a simple docker-compose.yml:

```
version: "3.7"
services:
  chrony:
    image: cawad/alpine-chrony:latest
    container_name: chrony
    restart: unless-stopped
    ports:
      - 123:123/udp # ntp port
      - 323:323/udp # remote monitoring for `chronyc -h <host>`
    cap_add:
      - SYS_NICE
      - SYS_TIME
      - SYS_RESOURCE
```
