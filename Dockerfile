FROM nitvotlu/wine
COPY docker-init.sh /docker-init.sh
RUN /docker-init.sh
COPY bin /home/air/bin
CMD su - air
