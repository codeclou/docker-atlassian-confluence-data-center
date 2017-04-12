FROM codeclou/docker-oracle-jdk:8u121

ENV CONFLUENCE_VERSION 6.1.1

COPY docker-entrypoint.sh /work-private/docker-entrypoint.sh
RUN chmod u+rx,g+rx,o+rx,a-w /work-private/docker-entrypoint.sh && \
    addgroup -g 10777 worker && \
    adduser -h /work -H -D -G worker -u 10777 worker && \
    mkdir -p /work && \
    mkdir -p /work-private && \
    mkdir /confluence && mkdir /confluence-home && mkdir /confluence-shared-home && \
    chown -R worker:worker /work/ && \
    chown -R worker:worker /work-private/ && \
    apk add --no-cache \
            bash \
            curl \
            tar \
            python \
            py-pip && \
            pip install shinto-cli && \
    curl -jkSL -o /opt/confluence.tar.gz \
         https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-${CONFLUENCE_VERSION}.tar.gz  && \
    tar zxf /opt/confluence.tar.gz -C /confluence && \
    ln -s atlassian-confluence-${CONFLUENCE_VERSION}-standalone atlassian-confluence-latest-standalone && \
    rm /opt/confluence.tar.gz && \
    chown -R worker:worker /confluence && \
    chown -R worker:worker /confluence-home/ && \
    chown -R worker:worker /confluence-shared-home

#
# CONF
#
COPY run-synchrony-jar.sh.jinja2 /work-private/run-synchrony-jar.sh.jinja2

#
# WORKDIR
#
WORKDIR /work
# Confluence HTTP Port
EXPOSE 8090
# Confluence Cluster Sync Port
EXPOSE 40001
# Confluence Cluster EHCache Multicast Port - see: https://forums.rancher.com/t/solved-problems-multicast-ehcache/1507/7
EXPOSE 4446

#
# RUN
#
USER worker
# CONFIG VARS (jinja2)
ENV NODE_NUMBER 1
# INTERNAL CONFIG
ENV CONFLUENCE_HOME /confluence-home

# SYNCHRONY ENV VARS
ENV PATH_TO_SYNCHRONY_STANDALONE_JAR "x"
ENV JDBC_DRIVER_PATH "x"
ENV SYNCHRONY_PORT "x"
ENV CLUSTER_LISTEN_PORT "x"
ENV CLUSTER_BASE_PORT "x"
ENV MULTICAST_GROUP "x"
ENV SERVER_IP "x"
ENV SYNCHRONY_URL "x"
ENV JWT_PRIVATE_KEY "x"
ENV JWT_PUBLIC_KEY "x"
ENV CONFLUENCE_DATABASE_URL "x"
ENV CONFLUENCE_DATABASE_USERNAME "x"
ENV CONFLUENCE_DATABASE_PASSWORD "x"


VOLUME ["/work"]
VOLUME ["/confluence-shared-home"]
ENTRYPOINT ["/work-private/docker-entrypoint.sh"]
CMD ["/confluence/atlassian-confluence-latest-standalone/bin/catalina.sh", "run"]
