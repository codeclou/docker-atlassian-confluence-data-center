# Confluence Node

:bangbang: We startup an already initialized Confluence on each node!

 * That means, we had them started once, run through setup wizard, dumped database and zipped confluence-home
 * Then we injected the dump and the confluence-home into our Dockerfile, so that we can start as many confluence nodes in the cluster as we want
 * The nodes are then fully working, because the use the pre-initialized confluence-home and existing database from dump.

## Initially startup node to create initialized confluence-homes and db-dump

```bash
docker network create confluence-cluster-631

docker run \
    --rm \
    --name confluence-cluster-631-db \
    --net=confluence-cluster-631 \
    --net-alias=confluence-cluster-631-db \
    -e POSTGRES_PASSWORD=confluence \
    -e POSTGRES_USER=confluence \
    -d postgres:9.4

cd confluencenode
docker build -t confluencenode-init .
docker rm confluence-node-init
docker run \
    -i -t \
    --rm \
    --name=confluence-node-init \
    --net=confluence-cluster-631 \
    --net-alias=confluence-node-init \
    -v $(pwd):/work/ \
    -p 8090:8090 \
    -e INIT="true" \
    confluencenode-init bash

# Start confluence manually in foreground
/confluence/atlassian-confluence-latest/bin/catalina.sh run
```

Open http://localhost:8090

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/init/01.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/init/02.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/init/03.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/init/04.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/init/05.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/init/06.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/init/07.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/init/08.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/init/09.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/init/10.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/init/11.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/init/12.png" /></p>


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
pg_dump -h confluence-cluster-631-db -U confluence confluence > /work/confluence-db-dump.sql
# password is also 'confluence'
```

Now put at top of sql file:

```sql
drop schema public cascade;
create schema public;
```

Now we have the files we need and can terminate the running confluence-node-init instance.


```bash
CONFLUENCE_DATA_CENTER_LICENSE_631=$(cat <<EOF
AAABSQ0ODAoPeNp1UMtOwkAU3c9XTOJGF0OgPIokTZS2miYtD4uPhZtLuYVJykDuTFH+zZ0/5rTFo
CbuZs65Oa+LFAxP4Mgdl7fdUdcd9XrcDxbcaXdclu1U3oLMyAN6hkpks5KyDWgMwKBXnYh2Xzgui
2WGSmP4vpd0/EEOhDNg/k4ZKxImIAsPTAFaS1A3ayuo8A2KlWkpNCxFOiBFgTeeOzPRGb/0xfNd1
BXpYh40Saww+KgMUpMmLZc6I7k3cqcaxFpYWoHK/slS60zK7RJpmj9qJO2JToOmBqiSzqHQ+N3Ix
omjIA0nIr52h86gN2T24/0CprQGJTXUMcZIagO04vf0+XGqx3zCmv07W+17cloc9ziBLXr+NEnCB
z+6jVnRUE82ZqXtsADPhe2seWEnzJBfVsvwZpqr1xEPD1CUtSM7P5uFvgDl4KWBMCwCFHQr7I6sj
vZZly0gpy2OcQDos/z9AhQ2Y5xxEvgexSFkmZX9XMn9HEMjIQ==X02gc
EOF)

docker rm confluence-node-init
docker run \
    -i -t \
    --name=confluence-node-init \
    --net=confluence-cluster-631 \
    --net-alias=confluence-node-init \
    -v $(pwd):/work/ \
    -p 8090:8090 \
    -p 8091:8091 \
    -e NODE_NUMBER=1 \
    -e CONFLUENCE_DATA_CENTER_LICENSE_631="$CONFLUENCE_DATA_CENTER_LICENSE_631" \
    confluencenode-init
```


It should boot up, and hang a little here, which is fine. Just wait.

```
2017-04-13 18:18:01,569 INFO [localhost-startStop-1] [confluence.cluster.hazelcast.HazelcastClusterManager] startCluster Starting the cluster.
2017-04-13 18:18:05,495 INFO [localhost-startStop-1] [confluence.cluster.hazelcast.HazelcastClusterManager] startCluster Confluence cluster node identifier is [d66c1ac7]
2017-04-13 18:18:05,495 INFO [localhost-startStop-1] [confluence.cluster.hazelcast.HazelcastClusterManager] startCluster Confluence cluster node name is [node1]
```

Then when going to [http://localhost:8090/plugins/servlet/cluster-monitoring](http://localhost:8090/plugins/servlet/cluster-monitoring) it should display this
with correct node name:


<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/init/13.png" /></p>



### Synchrony

[Troubleshoot Synchrony](https://confluence.atlassian.com/doc/troubleshooting-collaborative-editing-858772087.html)

Synchrony should also have started up right, check with:

  * [http://localhost:8091/synchrony/heartbeat](http://localhost:8091/synchrony/heartbeat)
  * Should display: "ok"
