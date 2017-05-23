FROM linuxserver/mariadb:latest
MAINTAINER LolHens <pierrekisters@gmail.com>


RUN echo "#!/usr/bin/with-contenv bash">/etc/cont-init.d/50-fix-permissions \
 && echo "cp --remove-destination /config/custom.cnf /etc/mysql/conf.d/custom.cnf">>/etc/cont-init.d/50-fix-permissions \
 && echo "chmod 644 /etc/mysql/conf.d/custom.cnf">>/etc/cont-init.d/50-fix-permissions
