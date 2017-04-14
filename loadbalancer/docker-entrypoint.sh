#!/bin/bash

set -e

umask u+rxw,g+rwx,o-rwx

#
# WRITE ENV VARIABLES JSON FILE
#
echo -e "{\n" > /work-private/env-variables.json
# ----
echo -e "  \"NODES\": \"${NODES}\",  \n" >> /work-private/env-variables.json
# ----
echo -e "  \"foo\": \"bar\"\n}" >> /work-private/env-variables.json


#
# GENERATE LOADBALANCER CONFIG BASED ON AMOUNT OF NODES
#
echo "generating loadbalancer config for $NODES nodes"
jinja2 /work-private/loadbalancer-virtual-host.conf.jinja2 /work-private/env-variables.json > /work-private/loadbalancer-virtual-host.conf

exec "$@"
