# Confluence Node

:bangbang: We startup already initialized Confluence nodes!

 * That means, we had them started one, run through setup wizard, dumped database and zipped confluence-home
 * Then we injected the dump and the confluence-home into our Dockerfile, so that we can start as many confluence nodes in the cluster as we want
 * The nodes are then fully working, because the use the pre-initialized confluence-home and existing database from dump.

## Initially startup node to create initialized confluence-homes and db-dump

```bash
docker network create confluence-cluster 

docker rm confluence-cluster-db
docker run \
    --name confluence-cluster-db \
    --net=confluence-cluster \
    --net-alias=confluence-cluster-db \
    -e POSTGRES_PASSWORD=confluence \
    -e POSTGRES_USER=confluence \
    -d postgres:9.4

cd confluencenode
docker build -t confluencenode-init .
docker rm confluence-node-init
docker run \
    -i -t \
    --name=confluence-node-init \
    --net=confluence-cluster \
    --net-alias=confluence-node-init \
    -v $(pwd):/work/ \
    -p 8090:8090 \
    -e INIT="true" \
    confluencenode-init bash

# Start confluence manually in foreground
/confluence/atlassian-confluence-latest/bin/catalina.sh run
```

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/img/init/01.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/img/init/02.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/img/init/03.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/img/init/04.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/img/init/05.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/img/init/06.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/img/init/07.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/img/init/08.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/img/init/09.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/img/init/10.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/img/init/11.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/img/init/12.png" /></p>


Now shutdown Confluence by pressing CTRL+C and give it time to shutdown gracefully.

```bash
# SHARED HOME
cd /work/
tar cfjv confluence-shared-home.tar.bz2 /confluence-shared-home/*


# HOME
cd /work
# delete redundant files and caches that make home.tar very large!
rm -f /confluence-home/synchrony-standalone.jar
rm -rf /confluence-home/plugins-osgi-cache/*
tar cfjv confluence-home.tar.bz2 /confluence-home/*

# DATABASE
cd /work
pg_dump -h confluence-cluster-db -U confluence confluence > /work/confluence-db-dump.sql
# password is also 'confluence'
bzip2 confluence-db-dump.sql
```

Now we have the files we need and can terminate the running confluence-node-init instance.


```bash
CONFLUENCE_DATA_CENTER_LICENSE=$(cat <<EOF
AAABRg0ODAoPeNp1UMtOg0AU3c9XTOJGFzQFitUmJJZHTBOgRtCFcXNLL+0kdEruDNX+mzt/zAFqq
ibuZs65Oa+LYtvyeUPcdvl4MpvczByXh1HBnbE9ZeVeViMotTigr6lF9tBSuQWFEWj0uxNrPLFsl
yWiRKkwfm8EHX+QXkeGe6mNSJyCqH3QNSglQN5tjKDEN6jXeiRRsxzpgLSI/CBwXcu5Th3Le3oJr
DyLiiGJEYYQpUYa0uTtSpUkGi32ckCMhaElyPKfLL1O1u5WSMvqSSEp37IHNNdAnXQFtcLvRiZOs
ojyOLOSW2/qTj2XmY//C1jSBqRQ0McIkOQWaM3v6fPjVI+FhD37d7be9+RUHBvMYId+uEzT+DFcz
BNWD9SzidlpOyzCc2Eza1WbCUvkl90yfJjm6nXG4wPUbe/Izs9hoS9u2aUjMCwCFGb8Af+D10y1V
+BA6P6BDXTux9GsAhRPk5+n7QIs1mtk7ANVBBzGT/r0cQ==X02g8
EOF)

docker rm confluence-node-init
docker run \
    -i -t \
    --name=confluence-node-init \
    --net=confluence-cluster \
    --net-alias=confluence-node-init \
    -v $(pwd):/work/ \
    -p 8090:8090 \
    -p 8091:8091 \
    -e CONFLUENCE_DATA_CENTER_LICENSE="$CONFLUENCE_DATA_CENTER_LICENSE" \
    confluencenode-init
```
