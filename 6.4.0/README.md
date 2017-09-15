# docker-atlassian-confluence-data-center

[![](https://codeclou.github.io/doc/badges/generated/docker-image-size-800.svg?v6)](https://hub.docker.com/r/codeclou/docker-atlassian-confluence-data-center/tags/) [![](https://codeclou.github.io/doc/badges/generated/docker-from-alpine-3.5.svg)](https://alpinelinux.org/) [![](https://codeclou.github.io/doc/badges/generated/docker-run-as-non-root.svg)](https://docs.docker.com/engine/reference/builder/#/user)

[![](https://codeclou.github.io/docker-atlassian-confluence-data-center/img/manage-confluence-cluster-logo.svg)](https://github.com/codeclou/docker-atlassian-confluence-data-center)


## Version 6.4.0

Start an [Atlassian Confluence® Data Center](https://de.atlassian.com/enterprise/data-center) with Docker for local testing during plugin development.
It starts a PostgreSQL Database, several Confluence® cluster nodes and Apache2 HTTPD as sticky session loadbalancer. The shared confluence-home is handled via a shared Docker volume. This is not meant to be used in production!

&nbsp;

<p align="center"><img src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/demo.gif?v2" width="80%"/></p>

-----

&nbsp;

### Manage Cluster Script

To start, scale, stop and destroy the cluster, the [`manage-confluence-cluster-6.4.0.sh`](https://github.com/codeclou/docker-atlassian-confluence-data-center/blob/master/6.4.0/manage-confluence-cluster-6.4.0.sh) script is provided.
It basically works in the following way:

  * It creates a docker bridge network called `confluence-cluster-640`.
  * It creates a shared volume called `confluence-shared-home-640`.
  * It creates a docker container called `confluence-cluster-640-lb` as the loadbalancer.
    * Binds Port 50640/tcp to the host.
  * It creates a docker container called `confluence-cluster-640-db` as the database.
    * Port 5432/tcp are only exposed inside the `confluence-cluster-640` network.
  * It creates one docker containers called `confluence-cluster-640-node1` as Confluence instance.
    * This node runs a special endpoint on Port 8888/tcp which provides on the fly download of `/confluence-home`. Which is needed when starting additional nodes2...n.
    * It also runs Confluence and Synchrony which is specified below.
  * On Scale-out: It creates multiple docker containers called `confluence-cluster-640-node{n}` as Confluence instances.
    * With `n ∈ {2,3,4,...,100}`.
    * An instance runs [Confluence](https://confluence.atlassian.com/doc/confluence-server-documentation-135922.html) on Port 8090/tcp and [Synchrony](https://confluence.atlassian.com/doc/administering-collaborative-editing-858772086.html) on Port 8091/tcp.
    * Ports 8090,8091/tcp and the multicast Ports 25500,5701/tcp are only exposed inside the `confluence-cluster-640` network.

The script is meant to follow the convention over configuration paradigma, therefore there is not much to be configured, except two things:

  * It relies on the hostname `confluence-cluster-640-lb` pointing to the interface which binds 50640/tcp.
  * It relies on the env variable `CONFLUENCE_DATA_CENTER_LICENSE_640` to contain a valid Confluence Data Center license.


The basic setup is as follows:

<p align="center"><img src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/setup-structure.png?v6" width="95%"/></p>

-----

&nbsp;

### Prerequisites

 * All Docker containers run internally as non-root with fixed UID 10777 and GID 10777.
 * You need Linux or macOS®.
 * Basic unix-tools like `wc`, `awk`, `curl`, `tr`, `head` and `bash` must be installed.
 * Bash 3 or 4 must be installed.
 * Latest Docker version must be installed.

-----

&nbsp;

### Initial Configuration

**(1) Add cluster hostname alias**

Add the alias on your Docker-Host machine.

```bash
sudo su
echo "127.0.0.1  confluence-cluster-640-lb" >> /etc/hosts
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
curl -so /usr/local/bin/manage-confluence-cluster-6.4.0.sh \
"https://raw.githubusercontent.com/codeclou/docker-atlassian-\
confluence-data-center/master/6.4.0/manage-confluence-cluster-6.4.0.sh"

#
# MAKE EXECUTABLE
#
chmod +x /usr/local/bin/manage-confluence-cluster-6.4.0.sh
```


-----

&nbsp;

### Usage

**(1) Start a Confluence® Data Center 6.4.0 Cluster**

```bash
manage-confluence-cluster-6.4.0.sh --action create --scale 1
```

 * Start one node at first and later scale up the cluster!
 * The first Confluence node that gets started initializes the confluence-shared-home and the database.

&nbsp;

**(2) Browse to Confluence® Data Center**

 * Open a browser to [http://confluence-cluster-640-lb:50640/](http://confluence-cluster-640-lb:50640/)
 * It might take several minutes for the cluster to fully start up.

&nbsp;

**(3) Check Containers**

Check if all containers have started with:

```bash
manage-confluence-cluster-6.4.0.sh --action info
```

Should show something like so. If `confluence-cluster-640-node1` does not show up, then re-run the create cluster command!

```
373f159568f4    confluence-cluster-640-lb      0.0.0.0:50640->50640/tcp
816c1c17a821    confluence-cluster-640-node1   5701/tcp, 5801/tcp, 8090-8091/tcp, 25500/tcp
38575aee0e9d    confluence-cluster-640-db      5432/tcp
```

You can check the logs of each container by calling e.g.:

```bash
docker logs confluence-cluster-640-node1
```


&nbsp;

**(4) Start Post Configuration**

Once the cluster is fully started up, you need to configure Confluence® Data Center in the browser.

Go to **[http://confluence-cluster-640-lb:50640/](http://confluence-cluster-640-lb:50640/)** and make sure you enabled cookies in your Browser (sticky session).

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/01-production-installation.png?v2" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/02-addons.png" /></p>

:bangbang: Enter the [3 hour Time Bomb License](https://developer.atlassian.com/platform/marketplace/timebomb-licenses-for-testing-server-apps/)

```
AAABCQ0ODAoPeNpdUNFOg0AQfO9XkPhMc2Bs0yaXSMsl2iAQqa2v67noJbA0dwexf+/Joal9nZmd2
ZmbI74HO6AgZgFbrdntOl4GiUj3DogWM9lRPd92ZEFa8QSq4R3hAA0oQroH24AxCmguu9ZrnU4Ny
K3u0QMlaEuoc2iReyQFC1ski/pClimJZHB/PuEoTcVBZEUpnj1d6A8gZcCqjnjyG+s54f7pPVNDY
yZD96yLICCJ4uuk9NnFIi+X8cOsQj2gfkz5plrchYd8JcJqc0zC12qX+eO8b99QF/WLQW14xBiby
vRafoLB0etnoJBFYcz+VbhOu5xwrFY0jQryvxUngcaxwrXzN27wjQkwLQIUe9x9vLLNd9fUle/0U
O/G3mT4j6UCFQCDPOxJITv6OhbghOtduVBMsvVfGg==X02dl
```

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/03-license.png" /></p>

Use `/confluence-cluster-home` as Shared-Home and use `230.0.0.1` as MultiCast IP-Address.

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/04-cluster-config.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/05-database.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/06-database-postgres-select.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/07-database-direct-jdbc.png" /></p>

Use `confluence-cluster-640-db` as Servername and `confluence` as username and password.

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/08-database-postgres-config.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/09-empty-site.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/10-manage-users-with-confluence.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/11-create-admin-user.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/12-setup-done.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/13-skip-intro.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/14-skip-profile-pic.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/15-create-space.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/16-skip-tutorial.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/17-create-test-page.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/18-install-cluster-node1-done.png" /></p>

&nbsp;

**(5) Enable Collaborative Editing**

Now enable Collaborative editing under 'Administration' → 'Collaborative editing'.

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/30-synchrony-change-mode.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/31-synchrony-change-mode-confirm.png" /></p>

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/32-synchrony-running.png" /></p>

When you edit a page now, you will see that Collaborative editing is working.

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/33-synchrony-edit-page-working.png" /></p>

&nbsp;

**(6) Scale Up Cluster - Add Confluence® Nodes**

:bangbang: SCALE OUT CURRENTLY DOES NOT WORK :bangbang:

Now that our first Confluence® Node is fully working we add additional nodes to our existing cluster.

```bash
manage-confluence-cluster-6.4.0.sh --action update --scale 3
```

This will **add two additional Confluence® Nodes** and reconfigure the loadbalancer automatically.

Wait again several minutes and now check if all nodes are active and alive under 'Administration' → 'Clustering'.

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/41-cluster-one-node-running.png" /></p>

Run the **Healthcheck** under 'Administration' → 'Support Tools'.

<p align="center"><img width="80%" src="https://codeclou.github.io/docker-atlassian-confluence-data-center/SIX_FOUR_ZERO/post-config/40-health-support-tools-check.png" /></p>

And finally check the **Synchrony Heartbeat**, therefore open [http://confluence-cluster-640-lb:50640/synchrony/heartbeat](http://confluence-cluster-640-lb:50640/synchrony/heartbeat) and it should output `ok`.

If not all nodes you have started are active, try restarting all nodes not showing up.

For example if Instance 3 does not show up, you can restart it like so:

```bash
manage-confluence-cluster-6.4.0.sh --action restart-node --id 3
```

Your cluster works perfectly now.

&nbsp;

**(6) Shutting down the cluster**

```bash
manage-confluence-cluster-6.4.0.sh --action destroy
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

### Trademarks and Third Party Licenses

 * **Atlassian Confluence®**
   * Atlassian® and Confluence® are registered [trademarks of Atlassian Pty Ltd](https://de.atlassian.com/legal/trademark).
   * Please check yourself for corresponding Licenses and Terms of Use at [atlassian.com](https://atlassian.com).
 * **Oracle Java JDK 8**
   * Oracle and Java are registered [trademarks of Oracle](https://www.oracle.com/legal/trademarks.html) and/or its affiliates. Other names may be trademarks of their respective owners.
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

[MIT](https://github.com/codeclou/docker-atlassian-confluence-data-center/blob/master/LICENSE) © [Bernhard Grünewaldt](https://github.com/clouless)
