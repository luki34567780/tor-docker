docker build -t tor_image .
docker run --name "tor_relay" --publish 9001:9001 --publish 9030:9030 -v /docker/tor_relay:/etc/tor/