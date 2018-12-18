FROM alpine:3.7

RUN apk add --update \
        iperf3

ADD run.sh /run.sh
ENV MODE="-s"
ENV PORT="5201"
ENV DAEMON=""
ENV OPTIONS=""

USER root:root
RUN mkdir /logs
CMD [ "/bin/sh", "-c", "/run.sh" ]
