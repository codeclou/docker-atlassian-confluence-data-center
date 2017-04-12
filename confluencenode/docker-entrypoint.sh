#!/bin/bash

set -e

umask u+rxw,g+rwx,o-rwx

env | j2  --format=env /work-private/run-synchrony-jar.sh.jinja2 > /work-private/run-synchrony-jar.sh

bash /work-private/run-synchrony-jar.sh

exec "$@"
