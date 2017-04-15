# docker-atlassian-confluence-data-center
docker-atlassian-confluence-data-center


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
