# How to create new version for new Confluence Version


### (1) Create new base Image

We need a new base image in [codeclou/docker-atlassian-base-images](https://github.com/codeclou/docker-atlassian-base-images) repo.

```
                            # WHAT              # OLD   # NEW
bash create-new-version.sh  base-image          6.6.0   6.7.1
```


&nbsp;

### (2) Create new management scripts

```
                            # WHAT              # OLD   # NEW
bash create-new-version.sh  management-scripts  6.6.0   6.7.1
```
