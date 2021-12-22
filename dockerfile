#based on https://blog.jessfraz.com/post/running-a-tor-relay-with-docker/#running-a-middle-relay
FROM alpine:3.10

RUN apk update && apk add \
    tor \
    --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/releases/ \
    && rm -rf /var/cache/apk/*

# default port to used for incoming Tor connections
# can be changed by changing 'ORPort' in torrc
EXPOSE 9001

# default port for directory mirror
# you can change this by changing DirPort in torrc
EXPOSE 9030

# copy in our torrc file
COPY torrc /etc/tor/torrc

# make sure files are owned by tor user
RUN chown -R tor /etc/tor

USER tor

CMD ["tor", "-f","/etc/tor/torrc"]