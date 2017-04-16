# docker-atlassian-confluence-data-center

Start an [Atlassian Confluence® Data Center](https://de.atlassian.com/enterprise/data-center) with Docker for local testing during plugin development.
It starts a PostgreSQL Database, several Confluence® cluster nodes and Apache2 HTTPD as sticky session loadbalancer. The shared confluence-home is handled via a shared Docker volume. This is not meant to be used in production!

Please choose the Confluence version you want to run:

|Confluence Version | Loadbalancer URL | PostgreSQL Version | Oracle Java Version |
|-------------------|--------------------|-----------------|-----------------------|
| **⇨ [6.1.1](https://github.com/codeclou/docker-atlassian-confluence-data-center/tree/6.1.1)** | http://confluence-cluster-611-lb:50611/ | [9.4](https://hub.docker.com/_/postgres/) | [8u121](https://github.com/codeclou/docker-atlassian-base-images/blob/master/confluence/6.1.1/Dockerfile) |


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
