FROM nitvotlu/wine
COPY docker-init.sh /docker-init.sh
COPY docker-entry.sh /docker-entry.sh
RUN /docker-init.sh
RUN apt-get update && apt-get install -y xvfb --no-install-recommends && rm -rf /var/lib/apt/lists/*
COPY bin /home/air/bin
WORKDIR /src
ENTRYPOINT ["/docker-entry.sh"]
CMD ["su", "-", "air"]
