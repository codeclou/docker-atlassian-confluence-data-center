FROM codeclou/docker-atlassian-base-images:confluence-6.1.1
# See: https://github.com/codeclou/docker-atlassian-base-images

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
