FROM alpine:3.9

RUN apk add --update \
        iperf

ADD run.sh /run.sh
ENV MODE="-s"
ENV PORT="5201"
ENV DAEMON=""
ENV OPTIONS=""

