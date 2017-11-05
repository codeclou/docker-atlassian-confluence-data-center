# Confluence Node

See master branch readme.

&nbsp;

### Test Cluster with one node (manual locally)

```
#
# NETWORK
#
docker network create confluence-cluster-650

#
# DATABASE
#
docker run \
    --rm \
    --name confluence-cluster-650-db \
    --net=confluence-cluster-650 \
    --net-alias=confluence-cluster-650-db \
    -e POSTGRES_PASSWORD=confluence \
    -e POSTGRES_USER=confluence \
    -d postgres:9.4

#
# LOADBALANCER
#
docker run \
    --rm \
    --name confluence-cluster-650-lb \
    --net=confluence-cluster-650 \
    --net-alias=confluence-cluster-650-lb \
    --env NODES=1 \
    -p 50650:50650 \
    -d codeclou/docker-atlassian-confluence-data-center:loadbalancer-6.5.0

#
# CONFLUENCE NODE
#
docker build . -t c650
docker run \
    -i -t \
    --rm \
    --name=confluence-cluster-650-node1 \
    --net=confluence-cluster-650 \
    --net-alias=confluence-cluster-650-node1 \
    -e NODE_NUMBER=1 \
    c650 bash
# run
    /confluence/atlassian-confluence-latest/bin/catalina.sh run
```

Goto http://confluence-cluster-650-lb:50650/

use the following values during install:

 * Database
   * `confluence-cluster-650-db` as postgresql hostname
   * `confluence` as user and password
 * MultiCast IP
   * `230.0.0.1`
 * Confluence Shared Home
   * `/confluence-shared-home`
 * Cluster Name
   * `confluence-cluster`

&nbsp;

### Test Cluster add second node (manual locally)

The node1 starts a special Endpoint which enables us to download the `/confluence-home`
of node1 on the fly during creation of nodeN. See `confluence-home-sync-server.py` which runs on Port 8888 of node1.

```
docker run \
    -i -t \
    --rm \
    --name=confluence-cluster-650-node2 \
    --net=confluence-cluster-650 \
    --net-alias=confluence-cluster-650-node2 \
    -e NODE_NUMBER=2 \
    c650 bash
# run
    /confluence/atlassian-confluence-latest/bin/catalina.sh run
```
