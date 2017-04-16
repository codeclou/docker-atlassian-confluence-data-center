# docker-atlassian-confluence-data-center

## :sparkles: 6.1.1

Start an [Atlassian Confluence® Data Center](https://de.atlassian.com/enterprise/data-center) with Docker for local testing during plugin development.
It starts a PostgreSQL Database, several Confluence® cluster nodes and Apache2 HTTPD as sticky session loadbalancer. The shared confluence-home is handled via a shared Docker volume. This is not meant to be used in production!


-----

&nbsp;

### Prerequisites


 * Runs as non-root with fixed UID 10777 and GID 10777. See [howto prepare volume permissions](https://github.com/codeclou/doc/blob/master/docker/README.md).
 * See [howto use SystemD for named Docker-Containers and system startup](https://github.com/codeclou/doc/blob/master/docker/README.md).
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
/usr/local/bin/manage-confluence-cluster-6.1.1.sh" > /usr/local/bin/manage-confluence-cluster-6.1.1.sh.sha256sum
gsha256sum -c /usr/local/bin/manage-confluence-cluster-6.1.1.sh.sha256sum

#
# MAKE EXECUTABLE
#
chmod +x /usr/local/bin/manage-confluence-cluster-6.1.1.sh
```


&nbsp;



Always multicast!

Since the Setup is [rather complex](https://confluence.atlassian.com/doc/installing-confluence-data-center-203603.html), we will start a preconfigured cluster,
that has already been setup. Meaning a preconfigured confluence-home and database-dump are used.

http://confluence-cluster-611-lb:50611/

port is versioned as well as network and container names!


:bangbang: **WORK IN PROGRESS** :bangbang: 


at best put in `.bashrc`
```bash
export CONFLUENCE_DATA_CENTER_LICENSE="AAABRg0ODAoPeNp1UMtOg0AU3c9XTOJGFzQFitUmJJZHTBOgRtCF..."
```

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
 
 
setup-structure.png

-----

&nbsp;

### License

[MIT](./LICENSE) © [Bernhard Grünewaldt](https://github.com/clouless)
