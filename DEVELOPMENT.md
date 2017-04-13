# Development Documentation



## Releasing, Tagging

### Docker Images

Create a tag for each JIRA Version

```bash
# create tag
git tag -a confluencenode-6.1.1 -m "confluencenode-6.1.1"
git push origin confluencenode-6.1.1

# remove tag
git tag -d confluencenode-6.1.1
git push origin :refs/tags/confluencenode-6.1.1
```

:bangbang: Each `confluencenode-{version}` git-tag must have corresponding loadbalancer and confluencenode tagged images
 
 
&nsbp;

### Manage Cluster Script

Tag separately:

```bash
git tag -a manage-confluence-cluster-1.0.0 -m "manage-confluence-cluster-1.0.0"
git push origin manage-confluence-cluster-1.0.0
```
