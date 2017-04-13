#!/bin/bash

set -e

umask u+rxw,g+rwx,o-rwx

if [ "$INIT" == "false" ]
    then
    ### synchrony
    export PATH_TO_SYNCHRONY_STANDALONE_JAR="x"
    export JDBC_DRIVER_PATH="x"
    export SYNCHRONY_PORT="x"
    export CLUSTER_LISTEN_PORT="x"
    export CLUSTER_BASE_PORT="x"
    export MULTICAST_GROUP="x"
    export SERVER_IP="x"
    export SYNCHRONY_URL="x"
    export JWT_PRIVATE_KEY="x"
    export JWT_PUBLIC_KEY="x"
    export CONFLUENCE_DATABASE_URL="x"
    export CONFLUENCE_DATABASE_USERNAME="x"
    export CONFLUENCE_DATABASE_PASSWORD="x"

    export | j2  --format=export /work-private/run-synchrony-jar.sh.jinja2 > /work-private/run-synchrony-jar.sh
    bash /work-private/run-synchrony-jar.sh
fi

exec "$@"
