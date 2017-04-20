FROM codeclou/docker-atlassian-base-images:confluence-6.1.2
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
# FIX 'sun.font.SunFontManager' bugs
# see-also: https://community.atlassian.com/t5/JIRA-questions/Error-while-trying-to-quot-View-Worfklow-quot-on-JIRA/qaq-p/261856
#
ENV LANG C.UTF-8
RUN apk add --no-cache libstdc++ libgcc ttf-dejavu fontconfig fontconfig-dev coreutils && \
    ( /usr/glibc-compat/bin/localedef --force --inputfile POSIX --charmap UTF-8 C.UTF-8 || true ) && \
    echo "export LANG=C.UTF-8" > /etc/profile.d/locale.sh && \
    /usr/glibc-compat/sbin/ldconfig /lib /usr/glibc-compat/lib

#
# RUN
#
USER worker
ENV NODE_NUMBER 1
ENV INIT "false"
ENV CONFLUENCE_DATA_CENTER_LICENSE_612 "define-me"
VOLUME ["/work"]
VOLUME ["/confluence-shared-home"]
ENTRYPOINT ["/work-private/docker-entrypoint.sh"]
CMD ["/confluence/atlassian-confluence-latest/bin/catalina.sh", "run"]
