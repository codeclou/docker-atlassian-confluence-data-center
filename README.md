# docker-atlassian-confluence-data-center

## :sparkles: 6.1.1

Start an [Atlassian Confluence® Data Center](https://de.atlassian.com/enterprise/data-center) with Docker for local testing during plugin development.
It starts a PostgreSQL Database, several Confluence® cluster nodes and Apache2 HTTPD as sticky session loadbalancer. The shared confluence-home is handled via a shared Docker volume. This is not meant to be used in production!


-----

&nbsp;

### Manage Cluster Script

To start, scale, stop and destroy the cluster, the [`manage-confluence-cluster-6.1.1.sh`](https://github.com/codeclou/docker-atlassian-confluence-data-center/blob/6.1.1/manage-confluence-cluster-6.1.1.sh) script is provided.
It basically works in the following way:

  * It creates a docker bridge network called `confluence-cluster-611`.
  * It creates a shared volume called `confluence-shared-home-611`.
  * It creates a docker container called `confluence-cluster-611-lb` as the loadbalancer.
    * Binds Port 50611/tcp to the host.
  * It creates a docker container called `confluence-cluster-611-db` as the database.
    * Port 5432/tcp are only exposed inside the `confluence-cluster-611` network.
  * It creates multiple docker containers called `confluence-cluster-611-node{n}` as Confluence instances with `n ∈ {1,2,3,...,100}`.
    * This instance runs [Confluence](https://confluence.atlassian.com/doc/confluence-server-documentation-135922.html) on Port 8090/tcp and [Synchrony](https://confluence.atlassian.com/doc/administering-collaborative-editing-858772086.html) on Port 8091/tcp.
    * Ports 8090,8091/tcp and the multicast Ports 25500,5701/tcp are only exposed inside the `confluence-cluster-611` network.

The script is meant to follow the convention over configuration paradigma, therefore there is not much to be configured, except two things:

  * It relies on the hostname `confluence-cluster-611-lb` pointing to the interface which binds 50611/tcp.
  * It relies on the env variable `CONFLUENCE_DATA_CENTER_LICENSE_611` to contain a valid Confluence Data Center license.


The basic setup is as follows:

<p align="center"><img src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/doc/setup-structure.png" width="95%"/></p>

-----

&nbsp;

### Prerequisites

 * All Docker containers run internally as non-root with fixed UID 10777 and GID 10777.
 * You need Linux or macOS®.
 * Basic unix-tools like `wc`, `awk`, `curl` and `bash` must be installed.
 * Bash 3 or 4 must be installed.
 * Latest Docker version must be installed.

-----

&nbsp;

### Initial Configuration

**(1) Add cluster hostname alias**

Add the alias on your Docker-Host machine.

```bash
sudo su
echo "127.0.0.1  confluence-cluster-611-lb" >> /etc/hosts
```
If you like to work with your cluster from your local network, use the servers public IP instead.

&nbsp;

**(2) Enable Network Forwarding (Multicast)**

Confluence® Data Center uses Multicast networking features. We need to enable IP Forwarding.

On macOS® you do this with:

```bash
sudo sysctl -w net.inet.ip.forwarding=1
```

&nbsp;

**(3) Install Cluster Management Script**

On macOS® you do this with:

```bash
#
# DOWNLOAD MANAGEMENT SCRIPT
#
curl -so /usr/local/bin/manage-confluence-cluster-6.1.1.sh \
"https://raw.githubusercontent.com/codeclou/\
docker-atlassian-confluence-data-center/6.1.1/manage-confluence-cluster-6.1.1.sh"

#
# CHECK SHA SUM - Should output OK
#
echo "ba570cf9e0c1041a4b5731ca3054949d3dbd47a3be9fbe6e7ff8df51d5896cf8  \
/usr/local/bin/manage-confluence-cluster-6.1.1.sh" \
> /usr/local/bin/manage-confluence-cluster-6.1.1.sh.sha256sum
gsha256sum -c /usr/local/bin/manage-confluence-cluster-6.1.1.sh.sha256sum

#
# MAKE EXECUTABLE
#
chmod +x /usr/local/bin/manage-confluence-cluster-6.1.1.sh
```


&nbsp;

**(4) Provide Confluence Data Center License as Environment Variable**

Please get yourself a valid Confluence Data Center license from my.atlassian.com and at best define it in your `.bashrc`
like so. Please replace all newlines with whitespaces, so that the license is just one line.

```bash
export CONFLUENCE_DATA_CENTER_LICENSE_611="AAABRg0ODAoPeNp1UMtOg0AU3c9XTOJGFzQFitUmJJZHTBOgRtCF..."
```

-----

&nbsp;

### Usage

**(1) Start a Confluence® Data Center 6.1.1 Cluster**
 
```bash
manage-confluence-cluster-6.1.1.sh --action create --scale 1
```

 * Start one node at first and later scale up the cluster!

&nbsp;

**(2) Browse to Confluence® Data Center**

 * Open a browser to [http://confluence-cluster-611-lb:50611/](http://confluence-cluster-611-lb:50611/)
 * It might take several minutes for the cluster to fully start up.

&nbsp;

**(3) Check Containers**

Check if all containers have started with:

```bash
manage-confluence-cluster-6.1.1.sh --action info
```

Should show something like:

```
373f159568f4    confluence-cluster-611-lb      0.0.0.0:50611->50611/tcp
a0deac7bd71c    confluence-cluster-611-node2   5701/tcp, 5801/tcp, 8090-8091/tcp, 25500/tcp
816c1c17a821    confluence-cluster-611-node1   5701/tcp, 5801/tcp, 8090-8091/tcp, 25500/tcp
38575aee0e9d    confluence-cluster-611-db      5432/tcp
```

You can check the logs of each container by calling e.g.:

```bash
docker logs confluence-cluster-611-node1
```


&nbsp;

**(4) Start Post Configuration**

Once the cluster is fully started up, you need to configure Confluence® Data Center in the browser.

Go to **[http://confluence-cluster-611-lb:50611/](http://confluence-cluster-611-lb:50611/)** and make sure you enabled cookies in your Browser (sticky session).




Since the Setup is [rather complex](https://confluence.atlassian.com/doc/installing-confluence-data-center-203603.html), we will start a preconfigured cluster,
that has already been setup. Meaning a preconfigured confluence-home and database-dump are used.

http://confluence-cluster-611-lb:50611/

port is versioned as well as network and container names!


:bangbang: **WORK IN PROGRESS** :bangbang: 




Start Cluster with two Confluence nodes, one PostgreSQL Database instance and one loadbalancer instance.

```bash
manage-confluence-cluster-6.1.1.sh --action create --scale 2
```


Check Synchrony: http://confluence-cluster-611-lb:50611/synchrony/heartbeat

Check Confluence: http://confluence-cluster-611-lb:50611/


'Administration'  'Collaborative editing'

post-config


20.png	
 
21.png	
 
30.png	
 
40.png	
 
41.png	
 
42.png


doc


demo.gif	
 


-----

&nbsp;

### License

[MIT](./LICENSE) © [Bernhard Grünewaldt](https://github.com/clouless)
