FROM nitvotlu/wine
COPY docker-init.sh /docker-init.sh
COPY docker-entry.sh /docker-entry.sh
RUN /docker-init.sh
COPY bin /home/air/bin
WORKDIR /src
ENTRYPOINT /docker-entry.sh
CMD /usr/bin/su - air
