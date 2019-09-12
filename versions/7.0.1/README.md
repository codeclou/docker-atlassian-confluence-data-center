# docker-atlassian-confluence-data-center

> Start an [Atlassian Confluence Data Center](https://de.atlassian.com/enterprise/data-center) with Docker for local testing during plugin development.

[![](https://codeclou.github.io/docker-atlassian-confluence-data-center/img/github-product-logo-docker-atlassian-confluence.png)](https://github.com/codeclou/docker-atlassian-confluence-data-center)
 
## Version 7.0.1

It starts a PostgreSQL Database, some Confluence nodes and Apache2 HTTPD as sticky session loadbalancer. The shared confluence-home is handled via a shared Docker volume mounts.

-----

&nbsp;

### Prerequisites

 * All Docker containers run internally as non-root with fixed UID 10777 and GID 10777.
   * The Atlassian Docker container use UID and GID 2001.
 * You need Linux or macOS.
 * Basic unix-tools like `wc`, `awk`, `curl`, `tr`, `head` and `bash` must be installed.
 * Bash 3 or 4 must be installed.
 * Latest Docker version must be installed.
 * docker-compose must be installed.

<p align="center"><img src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/setup-structure.png?v6" width="95%"/></p>

-----

&nbsp;

### Initial Configuration

**(1) Add cluster hostname alias**

Add the alias on your Docker-Host machine.

```bash
sudo su
echo "127.0.0.1  confluence-cluster-701-lb" >> /etc/hosts
```
If you like to work with your cluster from your local network, use the servers public IP instead.

&nbsp;

**(2) Enable Network Forwarding (Multicast)**

Confluence Data Center uses [EHCache Multicast networking features](http://www.ehcache.org/documentation/2.8/replication/rmi-replicated-caching.html). We need to enable IP Forwarding.

On macOS® you do this with:

```bash
sudo sysctl -w net.inet.ip.forwarding=1
```

&nbsp;

**(3) Create work directories**

```
sudo mkdir -p /opt/confluence-cluster/
NORMALUSER=$(whoami)
sudo chown $NORMALUSER /opt/confluence-cluster/
```

**(4) On macOS add /opt/confluence-cluster/ to Docker Settings**

Under Docker Settings add `/opt/confluence-cluster/` to *File Sharing* folders 
and restart docker.

-----

&nbsp;

### Usage

**(1) Start a Confluence Data Center 7.0.1 Cluster**

```bash
rm -rf /opt/confluence-cluster/7.0.1 | true
mkdir -p /opt/confluence-cluster/7.0.1
mkdir -p /opt/confluence-cluster/7.0.1/confluence-home-shared
mkdir -p /opt/confluence-cluster/7.0.1/confluence-home-node1
mkdir -p /opt/confluence-cluster/7.0.1/confluence-home-node2
# If on linux fix permissions for volume mounts
# sudo chown 2001:2001 /opt/confluence-cluster/7.0.1/confluence-*
```

Now download the `docker-compose-two-nodes.yml` file which defines the nodes. We use the official [Atlassian Docker Confluence images](https://hub.docker.com/r/atlassian/confluence-server).

```bash
cd /opt/confluence-cluster/7.0.1
curl -so docker-compose-one-node.yml \
"https://raw.githubusercontent.com/codeclou/docker-atlassian-confluence-\
data-center/master/versions/7.0.1/docker-compose-one-node.yml"

docker-compose -f docker-compose-one-node.yml up --detach 
```

This will start one Confluence Cluster nodes, a loadbalancer and a PostgreSQL database.

&nbsp;

**(2) Browse to Confluence**

 * Open a browser to [http://confluence-cluster-701-lb:2701/](http://confluence-cluster-701-lb:2701/)
 * It might take several minutes for the cluster to fully start up.

&nbsp;

**(3) Check Containers**

Check if all containers have started with:

```bash
docker ps
```

Should show something like:

```
CONTAINER ID        IMAGE                               COMMAND                  PORTS                    NAMES
15ed1263c551        loadbalancer:v2                     "/work-private/docke…"   0.0.0.0:2701->2701/tcp   confluence-cluster-701-lb
2994d0d680ad        atlassian/confluence-server:7.0.1   "/tini -- /entrypoin…"   8080/tcp                 confluence-cluster-701-node1
572fcaf9f669        postgres:9.6                        "docker-entrypoint.s…"   5432/tcp                 confluence-cluster-701-db
```

You can check the logs of all containers by calling e.g.:

```bash
docker-compose -f docker-compose-two-nodes.yml logs
```


&nbsp;

**(4) Start Post Configuration**

Once the cluster is fully started up, you need to configure Confluence in the browser.

Go to **[http://confluence-cluster-701-lb:2701/](http://confluence-cluster-701-lb:2701/)** and make sure you enabled cookies (sticky session).

Wait for Confluence to start up - simply reload the cluster startup page after some minutes.

 * :bangbang: TBD SCREENSHOT

Set the baseUrl to `http://confluence-cluster-701-lb:2701` and continue.

Use a Data Center license. Either an Evaluation License or a [Timebomb License](https://developer.atlassian.com/platform/marketplace/timebomb-licenses-for-testing-server-apps/).

 * :bangbang: TBD SCREENSHOT


Setup your admin account. Usually username `admin` and password `admin`.

 * :bangbang: TBD SCREENSHOT

Finish setup.

 * :bangbang: TBD SCREENSHOT

&nbsp;


Use the [Jira Data Center Health Check Tools](https://confluence.atlassian.com/enterprise/jira-data-center-health-check-tools-644580752.html)
to check the Health of each cluster node. `System`  → `Troubleshooting and support Tools` → `Instance Health` tab

 * :bangbang: TBD SCREENSHOT

&nbsp; 

Now you should see both Cluster Nodes as active under `System` → `System Info` → `Cluster Nodes`

 * :bangbang: TBD SCREENSHOT



&nbsp;

**(5) Scale Up Cluster - Add Confluence Nodes**

Now scale the cluster up to two nodes.

```
curl -so docker-compose-two-nodes.yml \
"https://raw.githubusercontent.com/codeclou/docker-atlassian-confluence-\
data-center/master/versions/7.0.1/docker-compose-two-nodes.yml"

docker-compose -f docker-compose-two-nodes.yml up -d
docker-compose -f docker-compose-two-nodes.yml restart confluence-cluster-701-lb
```

To add more nodes do:

```bash
cd /opt/confluence-cluster/7.0.1
mkdir -p /opt/confluence-cluster/7.0.1/confluence-home-node3
mkdir -p /opt/confluence-cluster/7.0.1/confluence-home-node4
# If on linux fix permissions for volume mounts
# sudo chown 2001:2001 /opt/confluence-cluster/7.0.1/confluence-*
```

Now scale the cluster up to three nodes.

```
curl -so docker-compose-three-nodes.yml \
"https://raw.githubusercontent.com/codeclou/docker-atlassian-confluence-\
data-center/master/versions/7.0.1/docker-compose-three-nodes.yml"

docker-compose -f docker-compose-three-nodes.yml up -d
docker-compose -f docker-compose-three-nodes.yml restart confluence-cluster-701-lb
```

Or even scale up to four nodes.

```
curl -so docker-compose-four-nodes.yml \
"https://raw.githubusercontent.com/codeclou/docker-atlassian-confluence-\
data-center/master/versions/7.0.1/docker-compose-four-nodes.yml"

docker-compose -f docker-compose-four-nodes.yml up -d
docker-compose -f docker-compose-three-nodes.yml restart confluence-cluster-701-lb
```

To check call this multiple times, and it should output the different node ids after some time

```
curl -I -s http://confluence-cluster-701-lb:2701 | grep ROUTEID
```

&nbsp;

**(6) Shutting down the cluster**

```bash
cd /opt/confluence-cluster/7.0.1
docker-compose -f docker-compose-two-nodes.yml down
```

This will kill and remove all instances.

-----

&nbsp;

**Running with ufw and iptables on Ubuntu**

If you run docker on ubuntu behind UFW and started docker with `--iptables=false` then you
need to enable Postrouting in `/etc/ufw/before.rules` for the network.

Use `docker network list` to get Network-ID which is then `br-NETWORK-ID` under ifconfig, where you get the network range in my case 172.18.0.0.

```
*nat
:POSTROUTING ACCEPT [0:0]
#...
# DOCKER confluence-cluster-701 network
-A POSTROUTING ! -o br-8a831390552b -s 172.18.0.0/16 -j MASQUERADE
#...
COMMIT
```

&nbsp;


-----

&nbsp;

### Compatibility

Tested under the following Operating Systems:

 * Ubuntu 16.04 64 Bit Server
   * Docker version 17.03.0-ce, build 60ccb22
   * GNU bash, version 4.3.46(1)-release (x86_64-pc-linux-gnu)
 * OS X El Capitan
   * Docker version 17.03.0-ce, build 60ccb22
   * GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin15)

Not tested and not compatible under the following Operating Systems:

  * Microsoft Windows

-----

&nbsp;

### Trademarks and Third Party Licenses

 * **Atlassian Jira Sofware**
   * Atlassian®, Jira, Jira Software are registered [trademarks of Atlassian Pty Ltd](https://de.atlassian.com/legal/trademark).
   * Please check yourself for corresponding Licenses and Terms of Use at [atlassian.com](https://atlassian.com).
 * **Oracle Java**
   * Oracle, OpenJDK and Java are registered [trademarks of Oracle](https://www.oracle.com/legal/trademarks.html) and/or its affiliates. Other names may be trademarks of their respective owners.
   * Please check yourself for corresponding Licenses and Terms of Use at [www.oracle.com](https://www.oracle.com/).
 * **Docker**
   * Docker and the Docker logo are trademarks or registered [trademarks of Docker](https://www.docker.com/trademark-guidelines), Inc. in the United States and/or other countries. Docker, Inc. and other parties may also have trademark rights in other terms used herein.
   * Please check yourself for corresponding Licenses and Terms of Use at [www.docker.com](https://www.docker.com/).
 * **PostgreSQL**
   * PostgreSQL is a [registered trademark of the PostgreSQL Community Association of Canada](https://wiki.postgresql.org/wiki/Trademark_Policy).
   * Please check yourself for corresponding Licenses and Terms of Use at [www.postgresql.org](https://www.postgresql.org/).
 * **Ubuntu**
   * Ubuntu and Canonical are registered [trademarks of Canonical Ltd.](https://www.ubuntu.com/legal/short-terms)
 * **Apple**
   * macOS®, Mac and OS X are [trademarks of Apple Inc.](http://www.apple.com/legal/intellectual-property/trademark/appletmlist.html), registered in the U.S. and other countries.

-----

&nbsp;

### License

[MIT](./LICENSE) © [Bernhard Grünewaldt](https://github.com/clouless)
