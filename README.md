# Confluence Node

See master branch readme.

&nbsp;

### Test Setup (manual locally)

```
#
# NETWORK
#
docker network create confluence-cluster-640

#
# DATABASE
#
docker run \
    --rm \
    --name confluence-cluster-640-db \
    --net=confluence-cluster-640 \
    --net-alias=confluence-cluster-640-db \
    -e POSTGRES_PASSWORD=confluence \
    -e POSTGRES_USER=confluence \
    -d postgres:9.4

#
# LOADBALANCER
#
docker run \
    --rm \
    --name confluence-cluster-640-lb \
    --net=confluence-cluster-640 \
    --net-alias=confluence-cluster-640-lb \
    --env NODES=1 \
    -p 50640:50640 \
    -d codeclou/docker-atlassian-confluence-data-center:loadbalancer-6.4.0

#
# CONFLUENCE NODE
#
docker build . -t c640
docker run \
    -i -t \
    --rm \
    --name=confluence-cluster-640-node1 \
    --net=confluence-cluster-640 \
    --net-alias=confluence-cluster-640-node1 \
    c640 bash
# run
    /confluence/atlassian-confluence-latest/bin/catalina.sh run
```

Goto http://confluence-cluster-640-lb:50640/

use the following values during install:

  * Database
    * `confluence-cluster-640-db` as postgresql hostname
    * `confluence` as user and password
  * MultiCast IP
    * `230.0.0.1`
  * Confluence Shared Home
    * `/confluence-shared-home`
  * Cluster Name
    * `confluence-cluster`
