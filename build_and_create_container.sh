docker build \
    -t tor_image \
    .

# create dir
mkdir /docker/tor_relay/

#copy torrc
cp torrc /docker/tor_relay/

docker run \
    -d \
    --restart unless-stopped \
    --name "tor_relay" \
    --publish 9001:9001 \
    --publish 9030:9030 \
    -v /docker/tor_relay:/etc/tor/ \
    tor_image