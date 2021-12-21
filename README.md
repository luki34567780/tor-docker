# tor-docker
__Modified version of https://blog.jessfraz.com/post/running-a-tor-relay-with-docker/#running-a-middle-relay__

A TOR middle and guard relay packed into a docker container.

# build instructions:

1. Clone the repo:
```git clone https://github.com/luki34567780/tor-docker.git ```
2. Go into dir:
```cd tor-docker```
3. Edit a config in the text editor of your choice __remember to change Nickname and Contact information__ :```nano torrc``` (linux example)

3. build image and start Container:
```bash build_and_create_container.sh```
