# tor-docker
__Modified version of https://blog.jessfraz.com/post/running-a-tor-relay-with-docker/#running-a-middle-relay__

A TOR middle relay packed into a docker container.

# build instructions:

1. Clone the Repo:
```git clone https://github.com/luki34567780/tor-docker.git ```
2. Go into the Dir:
```cd tor-docker```
3. Edit the Config in the text editor of your choice __remember to change Nickname and Contact information__ :```nano torrc``` (linux example)

3. Build Docker Image:
```docker build -t tor_image .```
