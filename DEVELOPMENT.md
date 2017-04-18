# Internal Development Documentation

## Dockerhub Build Settings

![](https://codeclou.github.io/docker-atlassian-confluence-data-center/img/confluence-data-center-dockerhub-build-settings.png)

## Management Script

**Update Check and Versioning**

  * When making changes to the management script, do:
  * (1) increase integer in `manage-confluence-cluster-6.1.1-version.txt`
  * (2) increase integer in `manage-confluence-cluster-6.1.1.sh` in var `MANAGEMENT_SCRIPT_VERSION`
