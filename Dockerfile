FROM alpine
RUN apk --no-cache add chrony
EXPOSE 123/udp
EXPOSE 323/udp
COPY ./chrony.conf /etc/chrony/chrony.conf
CMD ["chronyd", "-d", "-s"]
