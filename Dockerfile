FROM ubuntu/bind9
WORKDIR /etc/bind/
RUN sed -i "s/\/etc\/bind\/db.local/sena.co.local/g" named.conf.default-zones
RUN sed -i "s/localhost/sena.co.local/g" named.conf.default-zones
RUN sed -i "s/\/etc\/bind\/db.127/1.168.192.zone/g" named.conf.default-zones
RUN sed -i "s/127/1.168.192/g" named.conf.default-zones
EXPOSE 53:53/udp
EXPOSE 53:53/tcp