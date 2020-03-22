# Sticky Session Loadbalancer

for Confluence Data Center Cluster.

### Build

```
cd docker-atlassian-confluence-data-center/loadbalancer/
docker build . -t loadbalancer:v2
```

### Deployment

Automatically built and deployed to docker hub via Jenkins.
With git commit ID as version. See `../Jenkinsfile`

### Use

see e.g. `../versions/7.0.1/docker-compose.yml`

.
