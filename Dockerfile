FROM ubuntu:16.10

RUN apt update && apt install -y \
    libusb-1.0-0-dev

ADD ./udev_conf /etc/udev/rules.d
ADD ./VirtualHub /bin/VirtualHub

EXPOSE 4444

CMD ["VirtualHub"]
