FROM codeclou/docker-oracle-jdk:8u121

ENV CONFLUENCE_VERSION 6.1.1

RUN addgroup -g 10777 worker && \
    adduser -h /work -H -D -G worker -u 10777 worker && \
    mkdir -p /work && \
    mkdir -p /work-private && \
    mkdir /confluence && mkdir /confluence-home && mkdir /confluence-shared-home && \
    chown -R worker:worker /work/ && \
    chown -R worker:worker /work-private/ && \
    apk add --no-cache \
            bash \
            musl-utils \
            curl \
            tar \
            postgresql \
            postgresql-client \
            python \
            py-pip && \
            pip install shinto-cli && \
    curl -jkSL -o /opt/confluence.tar.gz \
         https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-${CONFLUENCE_VERSION}.tar.gz  && \
    tar zxf /opt/confluence.tar.gz -C /confluence && \
    cd /confluence && \
    ln -s atlassian-confluence-${CONFLUENCE_VERSION} atlassian-confluence-latest && \
    rm /opt/confluence.tar.gz && \
    chown -R worker:worker /confluence && \
    chown -R worker:worker /confluence-home/ && \
    chown -R worker:worker /confluence-shared-home && \
    echo -e "\nconfluence.home=/confluence-home/" >> /confluence/atlassian-confluence-latest/confluence/WEB-INF/classes/confluence-init.properties


#
# FILES
#
COPY run-synchrony-jar.sh.jinja2 /work-private/run-synchrony-jar.sh.jinja2
COPY confluence.cfg.xml.jinja2 /work-private/confluence.cfg.xml.jinja2
COPY confluence-shared.cfg.xml.jinja2 /work-private/confluence-shared.cfg.xml.jinja2
COPY confluence-db-dump.sql /work-private/confluence-db-dump.sql
COPY confluence-home.tar.bz2 /work-private/confluence-home.tar.bz2
COPY confluence-shared-home.tar.bz2 /work-private/confluence-shared-home.tar.bz2
COPY docker-entrypoint.sh /work-private/docker-entrypoint.sh
RUN chmod u+rx,g+rx,o+rx,a-w /work-private/docker-entrypoint.sh && \
    chown -R worker:worker /work-private/


#
# WORKDIR
#
WORKDIR /work
# Confluence and Synchrony HTTP Port
EXPOSE 8090
EXPOSE 8091
# Cluster Ports
EXPOSE 5801
EXPOSE 5701
EXPOSE 25500

#
# RUN
#
USER worker
ENV NODE_NUMBER 1
ENV INIT "false"
ENV CONFLUENCE_DATA_CENTER_LICENSE "define-me"
VOLUME ["/work"]
VOLUME ["/confluence-shared-home"]
ENTRYPOINT ["/work-private/docker-entrypoint.sh"]
CMD ["/confluence/atlassian-confluence-latest/bin/catalina.sh", "run"]
