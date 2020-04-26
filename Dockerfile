FROM ubuntu:bionic
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install curl apt-utils libnss3 libasound2 -y

RUN curl -sSL https://zoom.us/client/latest/zoom_amd64.deb -o /tmp/zoom_amd64.deb && \
    apt install -y /tmp/zoom_amd64.deb && \
    rm /tmp/zoom_amd64.deb

CMD ["apt","policy","zoom"]
