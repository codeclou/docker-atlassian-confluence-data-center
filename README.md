# docker-atlassian-confluence-data-center

[![](https://codeclou.github.io/doc/badges/generated/docker-image-size-800.svg?v6)](https://hub.docker.com/r/codeclou/docker-atlassian-confluence-data-center/tags/) [![](https://codeclou.github.io/doc/badges/generated/docker-from-alpine-3.5.svg)](https://alpinelinux.org/) [![](https://codeclou.github.io/doc/badges/generated/docker-run-as-non-root.svg)](https://docs.docker.com/engine/reference/builder/#/user)

## :sparkles: 6.1.1

Start an [Atlassian Confluence® Data Center](https://de.atlassian.com/enterprise/data-center) with Docker for local testing during plugin development.
It starts a PostgreSQL Database, several Confluence® cluster nodes and Apache2 HTTPD as sticky session loadbalancer. The shared confluence-home is handled via a shared Docker volume. This is not meant to be used in production!

&nbsp;

<p align="center"><img src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/doc/demo.gif" width="80%"/></p>

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
  * It creates multiple docker containers called `confluence-cluster-611-node{n}` as Confluence instances.
    * With `n ∈ {1,2,3,...,100}`.
    * An instance runs [Confluence](https://confluence.atlassian.com/doc/confluence-server-documentation-135922.html) on Port 8090/tcp and [Synchrony](https://confluence.atlassian.com/doc/administering-collaborative-editing-858772086.html) on Port 8091/tcp.
    * Ports 8090,8091/tcp and the multicast Ports 25500,5701/tcp are only exposed inside the `confluence-cluster-611` network.

The script is meant to follow the convention over configuration paradigma, therefore there is not much to be configured, except two things:

  * It relies on the hostname `confluence-cluster-611-lb` pointing to the interface which binds 50611/tcp.
  * It relies on the env variable `CONFLUENCE_DATA_CENTER_LICENSE_611` to contain a valid Confluence Data Center license.


The basic setup is as follows:

<p align="center"><img src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/doc/setup-structure.png?v2" width="95%"/></p>

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
echo "c3bfee2718e6a214db996da0666b0d7a8ad7818c6f4f1ea6fe473bad74b9201c  \
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
 * The first Confluence node that gets started initializes the confluence-shared-home and the database.

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

Should show something like so. If `confluence-cluster-611-node1` does not show up, then re-run the create cluster command! 

```
373f159568f4    confluence-cluster-611-lb      0.0.0.0:50611->50611/tcp
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

First login as `admin` with password `admin`.

<p align="center"><img src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/post-config/19.png?v2" width="80%"/></p>

Now you should see a message to **correct the baseUrl**. 

<p align="center"><img src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/post-config/20.png?v2" width="80%"/></p>

Change the baseUrl to `http://confluence-cluster-611-lb:50611`.

<p align="center"><img src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/post-config/21.png?v2" width="80%"/></p>




&nbsp;

**(5) Enable Collaborative Editing**

Now enable Collaborative editing under 'Administration' → 'Collaborative editing'.

<p align="center"><img src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/post-config/40.png?v2" width="80%"/></p>

<p align="center"><img src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/post-config/41.png?v2" width="80%"/></p>

<p align="center"><img src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/post-config/42.png?v2" width="80%"/></p>

&nbsp;

**(6) Scale Up Cluster - Add Confluence® Nodes**

Now that our first Confluence® Node is fully working we add additional nodes to our existing cluster.

```bash
manage-confluence-cluster-6.1.1.sh --action update --scale 3
```

This will **add two additional Confluence® Nodes** and reconfigure the loadbalancer automatically.

Wait again several minutes and now check if all nodes are active and alive under 'Administration' → 'Clustering'.

<p align="center"><img src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/post-config/30.png?v4" width="80%"/></p>

Run the **Healthcheck** under 'Administration' → 'Support Tools'.

<p align="center"><img src="https://codeclou.github.io/docker-atlassian-confluence-data-center/6.1.1/img/post-config/50.png?v4" width="80%"/></p>

And finally check the **Synchrony Heartbeat**, therefore open [http://confluence-cluster-611-lb:50611/synchrony/heartbeat](http://confluence-cluster-611-lb:50611/synchrony/heartbeat) and it should output `ok`.

If not all nodes you have started are active, try restarting all nodes not showing up.

For example if Instance 3 does not show up, you can restart it like so:

```bash
manage-confluence-cluster-6.1.1.sh --action restart-node --id 3
```

Your cluster works perfectly now.

&nbsp;

**(6) Shutting down the cluster**

```bash
manage-confluence-cluster-6.1.1.sh --action destroy
```

This will kill and remove all instances.


-----

&nbsp;

### Compatibility

Tested under the following Operating Systems:

 * Ubuntu 16.04 64 Bit Server
   * Docker version 17.03.0-ce, build 60ccb22
   * GNU bash, version 4.3.46(1)-release (x86_64-pc-linux-gnu)
 * OS X El Capitan and macOS Sierra
   * Docker version 17.03.0-ce, build 60ccb22
   * GNU bash, version 3.2.57(1)-release (x86_64-apple-darwin15)

Not tested and not compatible under the following Operating Systems:

  * Microsoft Windows

-----

&nbsp;

### License

[MIT](./LICENSE) © [Bernhard Grünewaldt](https://github.com/clouless)
