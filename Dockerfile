FROM codeclou/docker-atlassian-base-images:confluence-6.4.0
# See: https://github.com/codeclou/docker-atlassian-base-images

#
# CONFLUENCE HOME SYNC SERVER
#
RUN pip install bottle
COPY confluence-home-sync-server.py /work-private/confluence-home-sync-server.py

#
# FILES
#
COPY run-synchrony-jar.sh.jinja2 /work-private/run-synchrony-jar.sh.jinja2
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
# Home Dir Sync Server
EXPOSE 8888

#
# RUN
#
#USER worker
ENV NODE_NUMBER 1
VOLUME ["/work"]
VOLUME ["/confluence-shared-home"]
ENTRYPOINT ["/work-private/docker-entrypoint.sh"]
CMD ["/confluence/atlassian-confluence-latest/bin/catalina.sh", "run"]
