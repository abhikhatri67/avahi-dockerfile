# Added keeping in min the layers

FROM 3.7.1-stretch
COPY ./docker-entrypoint.sh /
CMD "apt-get -y update && apt-get -y install net-tools iputils-ping avahi-daemon avahi-utils"
ENTRYPOINT ["/docker-entrypoint.sh"]

