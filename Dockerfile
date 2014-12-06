FROM nitvotlu/wine
COPY docker-init.sh /docker-init.sh
RUN /docker-init.sh
CMD su - air
