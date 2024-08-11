#!/bin/bash

docker run --name scylla-node1 --hostname scylla-node1 -p 9042:9042 --volume /var/lib/scylla1:/var/lib/scylla -d scylladb/scylla:6.0 --reactor-backend=epoll

docker run --name scylla-node2 --hostname scylla-node2 -p 9043:9042 --volume /var/lib/scylla2:/var/lib/scylla -d scylladb/scylla:6.0 --reactor-backend=epoll --seeds="$(docker inspect --format='{{ .NetworkSettings.IPAddress }}' scylla-node1)"

docker run --name scylla-node3 --hostname scylla-node3 -p 9044:9042--volume /var/lib/scylla3:/var/lib/scylla -d scylladb/scylla:6.0 --reactor-backend=epoll --seeds="$(docker inspect --format='{{ .NetworkSettings.IPAddress }}' scylla-node1)"
