#!/bin/bash

set -e

umask u+rxw,g+rwx,o-rwx

#
# FIND OUT IP ADDRESS
#
IP_ADDRESS=$(/sbin/ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')

#
# PREDEFINED VARS
#
export JWT_PRIVATE_KEY="MIICeQIBADANBgkqhkiG9w0BAQEFAASCAmMwggJfAgEAAoGBAKEogp6FVTEq+vaplbSfsDbO4b9ednmwHKl2EIFvo10wPjiZ/K9CrlM8QRJjPkdH46+civWw06Hsu1fNaPWhj8LKqtkJ8QusvrTKykW03hAwWE6CAnjSHkj b+kNN4ptKpJ4bCYFhGZpOV3rbdXnr8wCtevB8feAvAK64kJsEOZzdAgMBAAECgYEAj/MqcUQxq4BzuN4Tvcoh0WML3C8Zbmqzv16ZMbSxXGzaNx68ySOrqOeaTD1fhLYfF16h9QGkl+9oC+6LwVQ1nuLCrFJxNEyE/7DSTv4D9PB+ny5Mii1WMNlKfFRhhKDzmannn3F1SD8 FEXuDcS9jyTA52qmTpqoz95o3NBFknAECQQDUhwCmHLZTBXczLNBEBaq09a0voYkwjAdW5CbteJBTaQ5uiDPt112f9z0JL6ltyGO7KONpmnbeZ2J/L0+itBXdAkEAwh+QR9EsOOFCJl0QnKodk51NQuqZ0BvaHVPVzsEAwJxpJyUAUhFVVw0r1z7NG9cycDkwr9XFPTkVuaD D4WyzAQJBAIO2R0ircrNxJ7anh0sg1/Lebz6dthBIOCQ5sYZqucd3zGHkN4qndna1GzaeOzq2flh3triz6gdbu0dnYstLIGECQQC2lg2VHy9jCKy5fMuFL5TGJSxohlTKI4hSEWqHH43fnL5i7TCSAG+ug1r7B7zQNObiG0ip+n2cijbe9FGJlD4BAkEAqau/IgUa+OMSdH4 bRfYejoysaQySdwXuCs/L30KeD2d2hfqJh/+5K8pHUg8weZ3yl28qh7LXuuiibCUJ2z5tFg=="
export JWT_PUBLIC_KEY="MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQChKIKehVUxKvr2qZW0n7A2zuG/XnZ5sBypdhCBb6NdMD44mfyvQq5TPEESYz5HR+OvnIr1sNOh7LtXzWj1oY/CyqrZCfELrL60yspFtN4QMFhOggJ40h5I2/pDTeKbSqSe GwmBYRmaTld623V56/MArXrwfH3gLwCuuJCbBDmc3QIDAQAB"
export MULTICAST_CLUSTER_ADDRESS="230.0.0.1"
export DATABASE_HOST="confluence-cluster-611-db"
export DATABASE_USER="confluence"
export DATABASE_PASS="confluence"
export DATABASE_DB="confluence"

#
# SYNCHRONY VARS
#
export PATH_TO_SYNCHRONY_STANDALONE_JAR="/confluence/atlassian-confluence-latest/confluence/WEB-INF/packages/synchrony-standalone.jar"
export JDBC_DRIVER_PATH="/confluence/atlassian-confluence-latest/confluence/WEB-INF/lib/postgresql-9.4.1212.jar"
export SYNCHRONY_PORT="8091"
export CLUSTER_LISTEN_PORT="5701"
export CLUSTER_BASE_PORT="25500"
export MULTICAST_GROUP=$MULTICAST_CLUSTER_ADDRESS
export SERVER_IP=$IP_ADDRESS
export SYNCHRONY_URL="http://confluence-cluster-611-lb:50611/synchrony"

#
# PATCH SETENV.SH
#
NODE_ID="node${NODE_NUMBER}"
sed -i -e "s/export CATALINA_OPTS/#replaced/g" /confluence/atlassian-confluence-latest/bin/setenv.sh
echo -e "CATALINA_OPTS=\"-Dconfluence.cluster.node.name=${NODE_ID} \${CATALINA_OPTS}\"\n" >> /confluence/atlassian-confluence-latest/bin/setenv.sh
echo -e "CATALINA_OPTS=\"-Dsynchrony.service.url=http://confluence-cluster-611-lb:50611/synchrony/v1 \${CATALINA_OPTS}\"\n" >> /confluence/atlassian-confluence-latest/bin/setenv.sh
echo -e "\nexport CATALINA_OPTS" >> /confluence/atlassian-confluence-latest/bin/setenv.sh


#
# WRITE ENV VARIABLES JSON FILE
#
echo -e "{\n" > /work-private/env-variables.json
# ----
echo -e "  \"JWT_PRIVATE_KEY\": \"${JWT_PRIVATE_KEY}\",  \n" >> /work-private/env-variables.json
echo -e "  \"JWT_PUBLIC_KEY\": \"${JWT_PUBLIC_KEY}\",  \n" >> /work-private/env-variables.json
echo -e "  \"MULTICAST_CLUSTER_ADDRESS\": \"${MULTICAST_CLUSTER_ADDRESS}\",  \n" >> /work-private/env-variables.json
echo -e "  \"DATABASE_HOST\": \"${DATABASE_HOST}\",  \n" >> /work-private/env-variables.json
echo -e "  \"DATABASE_USER\": \"${DATABASE_USER}\",  \n" >> /work-private/env-variables.json
echo -e "  \"DATABASE_PASS\": \"${DATABASE_PASS}\",  \n" >> /work-private/env-variables.json
echo -e "  \"DATABASE_DB\": \"${DATABASE_DB}\",  \n" >> /work-private/env-variables.json
echo -e "  \"PATH_TO_SYNCHRONY_STANDALONE_JAR\": \"${PATH_TO_SYNCHRONY_STANDALONE_JAR}\",  \n" >> /work-private/env-variables.json
echo -e "  \"JDBC_DRIVER_PATH\": \"${JDBC_DRIVER_PATH}\",  \n" >> /work-private/env-variables.json
echo -e "  \"SYNCHRONY_PORT\": \"${SYNCHRONY_PORT}\",  \n" >> /work-private/env-variables.json
echo -e "  \"CLUSTER_LISTEN_PORT\": \"${CLUSTER_LISTEN_PORT}\",  \n" >> /work-private/env-variables.json
echo -e "  \"CLUSTER_BASE_PORT\": \"${CLUSTER_BASE_PORT}\",  \n" >> /work-private/env-variables.json
echo -e "  \"MULTICAST_GROUP\": \"${MULTICAST_GROUP}\",  \n" >> /work-private/env-variables.json
echo -e "  \"SERVER_IP\": \"${SERVER_IP}\",  \n" >> /work-private/env-variables.json
echo -e "  \"SYNCHRONY_URL\": \"${SYNCHRONY_URL}\",  \n" >> /work-private/env-variables.json
# ----
echo -e "  \"foo\": \"bar\"\n}" >> /work-private/env-variables.json


if [ "$INIT" == "false" ]
then
    #
    # INIT CONFLUENCE HOME
    #
    echo ">> docker-entrypoint: extracting - pre-initialized confluence-home"
    rm -rf /confluence-home/*
    tar xfjv /work-private/confluence-home.tar.bz2 --strip 1 -C /confluence-home
    jinja2 /work-private/confluence.cfg.xml.jinja2 /work-private/env-variables.json > /confluence-home/confluence.cfg.xml

    #
    # INIT CONFLUENCE SHARED HOME
    #
    if [ -f /confluence-shared-home/confluence.cfg.xml ]
    then
        echo ">> docker-entrypoint: skipping - confluence-shared-home already exists"
    else
        echo ">> docker-entrypoint: extracting - pre-initialized confluence-shared-home"
        tar xfjv /work-private/confluence-shared-home.tar.bz2 --strip 1 -C /confluence-shared-home
        jinja2 /work-private/confluence-shared.cfg.xml.jinja2 /work-private/env-variables.json > /confluence-shared-home/confluence.cfg.xml
    fi

    #
    # INIT DATABASE
    #
    if [ -f /confluence-shared-home/docker-db-is-already-initialized.lock ]
    then
        echo ">> docker-entrypoint: db already initialized"
    else
        echo ">> docker-entrypoint: initializing db"
        cd /work-private/
        export PGPASSWORD="${DATABASE_PASS}"
        psql -h ${DATABASE_HOST} -U ${DATABASE_USER} -d ${DATABASE_DB} < /work-private/confluence-db-dump.sql
        touch /confluence-shared-home/docker-db-is-already-initialized.lock
    fi

    #
    # START SYNCHRONY
    #
    echo ">> docker-entrypoint: starting synchrony"
    jinja2 /work-private/run-synchrony-jar.sh.jinja2 /work-private/env-variables.json > /work-private/run-synchrony-jar.sh
    bash /work-private/run-synchrony-jar.sh
fi

exec "$@"
