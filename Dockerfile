FROM docker:27-dind

COPY busy.tar .

COPY busy.sh .

RUN chmod 777 /busy.sh

RUN ls -alh

RUN apk add supervisor

COPY supervisord.conf .

CMD ["/usr/bin/supervisord", "-c", "/supervisord.conf", "-n"]

