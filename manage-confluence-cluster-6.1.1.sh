#!/bin/bash

####################################################################################
# MIT License
# Copyright (c) 2017 Bernhard Grünewaldt
# See https://github.com/codeclou/docker-atlassian-confluence-data-center/blob/master/LICENSE
####################################################################################

set -e

####################################################################################
#
# CONFIG
#
####################################################################################

CONFLUENCE_VERSION="6.1.1"
CONFLUENCE_VERSION_DOT_FREE="611"
CONFLUENCE_LB_PUBLIC_PORT=50611
POSTGRESQL_VERSION="9.4"

####################################################################################
#
# COLORS
#
####################################################################################

export CLICOLOR=1
C_RED='\x1B[31m'
C_CYN='\x1B[96m'
C_GRN='\x1B[32m'
C_MGN='\x1B[35m'
C_RST='\x1B[39m'

####################################################################################
#
# FUNCTIONS
#
####################################################################################

# Used to be able to use pass-by-reference in bash
#
#
return_by_reference() {
    if unset -v "$1"; then
        eval $1=\"\$2\"
    fi
}

# Returns 1 if the container is running and 0 if not
#
# @usage `_is_named_container_running 'foo' $result` passed variable `result` contains return value
#
# @param $1 {string} name or name-chunk of container
# @param $2 {int} return value passByReference
function _is_named_container_running {
    local ret_value=$(docker ps --format '{{.ID}}' --filter "name=${1}" | wc -l | awk '{print $1}')

    local "$2" && return_by_reference $2 $ret_value
}

# Kill and remove an existing named container
#
# @param $1 {string} the container name or part of it
function _kill_and_remove_named_instance_if_exists {
    container_name=$1
    # KILL
    named_container_running_result=-1
    _is_named_container_running ${container_name} named_container_running_result
    if (( named_container_running_result == 1 )) # arithmetic brackets ... woohoo
    then
        echo -e $C_CYN">> docker kill ........:${C_RST}${C_GRN} Killing${C_RST}   - Named container ${container_name} is running."
        docker kill ${container_name}
    else
        echo -e $C_CYN">> docker kill ........:${C_RST}${C_MGN} Skipping${C_RST}  - Named container ${container_name} is not running."
    fi
}

# Start the loadbalancer instance
#
# @param $1 {integer} amount of confluencenodes
function start_instance_loadbalancer {
    echo -e $C_CYN">> docker run .........:${C_RST}${C_GRN} Starting${C_RST}  - Starting instance confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-lb."
    docker run \
        --rm \
        --name confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-lb \
        --net=confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE} \
        --net-alias=confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-lb \
        --env NODES=${1} \
        -p $CONFLUENCE_LB_PUBLIC_PORT:$CONFLUENCE_LB_PUBLIC_PORT \
        -d codeclou/docker-atlassian-confluence-data-center:loadbalancer-${CONFLUENCE_VERSION}
}

# Kill the loadbalancer instance
#
#
function kill_instance_loadbalancer {
    _kill_and_remove_named_instance_if_exists confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-lb
}

# Start the database instance
#
#
function start_instance_database {
    echo -e $C_CYN">> docker run .........:${C_RST}${C_GRN} Starting${C_RST}  - Starting instance confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-db."
    docker run \
        --rm \
        --name confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-db \
        --net=confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE} \
        --net-alias=confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-db \
        -e POSTGRES_PASSWORD=confluence \
        -e POSTGRES_USER=confluence \
        -d postgres:${POSTGRESQL_VERSION}
}

# Kill the database instance
#
#
function kill_instance_database {
    _kill_and_remove_named_instance_if_exists confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-db
}

# Start a confluencenode instance
#
# @param $1 {int} node ID
function start_instance_confluencenode {
    echo -e $C_CYN">> docker run .........:${C_RST}${C_GRN} Starting${C_RST}  - Starting instance confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-node${1}."
    docker run \
        --rm \
        --name confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-node${1} \
        --net=confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE} \
        --net-alias=confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-node${1} \
        --env NODE_NUMBER=${1} \
        --env CONFLUENCE_DATA_CENTER_LICENSE_611="$CONFLUENCE_DATA_CENTER_LICENSE_611" \
        -v confluence-shared-home-${CONFLUENCE_VERSION_DOT_FREE}:/confluence-shared-home \
        -d codeclou/docker-atlassian-confluence-data-center:confluencenode-${CONFLUENCE_VERSION}
}

# Kill a confluencenode instance
#
# @param $1 {int} node ID
function kill_instance_confluencenode {
    _kill_and_remove_named_instance_if_exists confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-node${1}
}

# Cleans the confluence shared-home
#
#
function clean_confluencenode_shared_home {
    local volume_name=confluence-shared-home-${CONFLUENCE_VERSION_DOT_FREE}
    shared_home_exists=$(docker volume ls --filter "name=${volume_name}" --format '{{.Name}}' | wc -l | awk '{print $1}')
    if (( shared_home_exists == 1 )) # arithmetic brackets ... woohoo
    then
        echo -e $C_CYN">> clean shared home ..:${C_RST}${C_GRN} Deleting${C_RST}  - Deleting existing volume ${volume_name}"
        docker volume rm --force ${volume_name}
    fi
    echo -e $C_CYN">> clean shared home ..:${C_RST}${C_GRN} Creating${C_RST}  - Creating volume ${volume_name}"
    docker volume create ${volume_name}
}

# Pulls the latest docker images from docker hub
#
#
function pull_latest_images {
    echo -e $C_CYN">> docker pull ........:${C_RST}${C_GRN} Pulling${C_RST}   - Pulling latest images from Docker Hub."
    docker pull codeclou/docker-atlassian-confluence-data-center:confluencenode-${CONFLUENCE_VERSION}
    docker pull codeclou/docker-atlassian-confluence-data-center:loadbalancer-${CONFLUENCE_VERSION}
    docker pull postgres:${POSTGRESQL_VERSION}
}

# Creates a network for cluster
#
#
function create_network {
    local network_name=confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}
    network_exists=$(docker network ls --filter "name=${network_name}" --format '{{.Name}}' | wc -l | awk '{print $1}')
    if (( network_exists == 1 )) # arithmetic brackets ... woohoo
    then
        echo -e $C_CYN">> docker network .....:${C_RST}${C_MGN} Skipping${C_RST}  - Network ${network_name} exists already."
    else
        echo -e $C_CYN">> docker network .....:${C_RST}${C_GRN} Creating${C_RST}  - Creating network ${network_name}."
        docker network create ${network_name}
    fi
}

# Returns the count of running confluencenode instances
#
# @usage
#     result=-1
#     get_running_confluencenode_count result
#
# @param $1 {int} return value passByReference
function get_running_confluencenode_count {
    local ret_value=-1
    _is_named_container_running "confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-node" ret_value

    local "$1" && return_by_reference $1 $ret_value
}

# Returns an array of docker image names of running confluencenode instances
#
# @usage
#     result=""
#     get_running_confluencenode_name_array result
#
# @param $1 {string} return value passByReference in form of "node1 node2 node"
function get_running_confluencenode_name_array {
    local instance_names_string_newlines=$(docker ps --format '{{.Names}}' --filter "name=confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-node")
    local instance_names_string_oneline=$(echo $instance_names_string_newlines | tr "\n" " ")
    local ret_value=$instance_names_string_oneline

    local "$1" && return_by_reference $1 "$ret_value"
}

# Kills and removes all confluence-cluster-node* instances if present
#
#
function kill_all_running_confluencenodes {
    # NOTE: We must get all names to kill them, since e.g. node1,node4,node5 could be running
    #       so we cannot just use a dumb counter starting from 1!
    local running_confluencenode_count=0
    get_running_confluencenode_count running_confluencenode_count
    if (( running_confluencenode_count > 0 )) # arithmetic brackets ... woohoo
    then
        echo -e $C_CYN">> docker kill nodes ..:${C_RST}${C_GRN} Killing${C_RST}   - Killing all running confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-node* instances."
        local running_instance_names=""
        get_running_confluencenode_name_array running_instance_names
        local running_instance_names_array=($running_instance_names)
        for running_instance_name in "${running_instance_names_array[@]}"
        do
           _kill_and_remove_named_instance_if_exists ${running_instance_name}
        done
    else
        echo -e $C_CYN">> docker kill nodes ..:${C_RST}${C_MGN} Skipping${C_RST}  - No running confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-node* instances present."
    fi
}

# Removes all images with confluence-cluster-node* name
#
#
function remove_all_dangling_confluencenodes {
    echo -e $C_CYN">> docker rm images ...:${C_RST}${C_GRN} Removing${C_RST}  - Removing dangling confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-node* images."
    local dangling_ids=$(docker images | grep confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-node | awk '{ print $3 }')
    for dangling_id in $dangling_ids
    do
        docker rm $dangling_id
    done
}


# Check if license is not empty
#
#
function check_if_license_env_var_is_set {
    if [ -z "$CONFLUENCE_DATA_CENTER_LICENSE_611" ]
    then
        echo -e $C_CYN">> license ............:${C_RST}${C_RED} ERROR${C_RST}     - license env var seems to not be set. Please set CONFLUENCE_DATA_CENTER_LICENSE_611"$C_RST
        exit 1
    else
        echo -e $C_CYN">> license ............:${C_RST}${C_GRN} OK${C_RST}        - license env var seems to be set."$C_RST
    fi
}

# Prints info
#
#
function print_cluster_ready_info {
    echo -e $C_CYN">> ----------------------------------------------------------------------------------------------------"$C_RST
    echo -e $C_CYN">> info ...............:${C_RST}${C_GRN} Ready${C_RST}     - Wait for Confluence nodes to startup, might take some minutes."
    echo -e $C_CYN">> info ...............:${C_RST}${C_GRN} http://confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-lb:${CONFLUENCE_LB_PUBLIC_PORT}${C_RST} "
    echo -e $C_CYN">> info ...............:${C_RST} Do not forget to:"
    echo -e $C_CYN">> info ...............:${C_RST}   [1] put '127.0.0.1 confluence-cluster-${CONFLUENCE_VERSION_DOT_FREE}-lb' to /etc/hosts."
    echo -e $C_CYN">> info ...............:${C_RST}   [2] enable IP Forwarding to support multicast."
    echo -e $C_CYN">> ----------------------------------------------------------------------------------------------------"$C_RST
}

####################################################################################
#
# PARAMETERS AND BANNER
#
####################################################################################

while [[ $# > 1 ]]
do
key="$1"
case $key in
    -s|--scale)
    SCALE="$2"
    shift
    ;;
    -m|--multicast)
    MULTICAST_PARAM="$2"
    shift
    ;;
    -a|--action)
    ACTION="$2"
    shift
    ;;
    -i|--id)
    NODE_ID="$2"
    shift
    ;;
    *)
       # unknown option
    ;;
esac
shift
done

echo ""
echo -e $C_MGN'      __  ___                                ________           __           '$C_RST
echo -e $C_MGN'     /  |/  /___ _____  ____ _____ ____     / ____/ /_  _______/ /____  _____'$C_RST
echo -e $C_MGN'    / /|_/ / __ `/ __ \/ __ `/ __ `/ _ \   / /   / / / / / ___/ __/ _ \/ ___/'$C_RST
echo -e $C_MGN'   / /  / / /_/ / / / / /_/ / /_/ /  __/  / /___/ / /_/ (__  ) /_/  __/ /    '$C_RST
echo -e $C_MGN'  /_/  /_/\__,_/_/ /_/\__,_/\__, /\___/   \____/_/\__,_/____/\__/\___/_/     '$C_RST
echo -e $C_MGN'                           /____/                                            '$C_RST
echo ""
echo -e $C_MGN'  Manage local Confluence® Data Center cluster during Plugin development with Docker'$C_RST
echo -e $C_MGN'  https://github.com/codeclou/docker-atlassian-confluence-data-center/tree/6.1.1'$C_RST
echo -e $C_MGN"  Confluence Version: ${CONFLUENCE_VERSION}"$C_RST
echo -e $C_MGN"  PostgreSQL Version: ${POSTGRESQL_VERSION}"$C_RST
echo -e $C_MGN'  ------'$C_RST
echo ""

EXIT=0
if [ ! $ACTION ]
then
    echo -e $C_RED">> param error ........: Please specify action as parameter -a or --action"$C_RST
    EXIT=1
else
    if [[ ("$ACTION" == "create" || "$ACTION" == "update") && ! $SCALE ]]
    then
        echo -e $C_RED">> param error ........: Please specify scale as parameter -s or --scale. E.g. --scale 3"$C_RST
        EXIT=1
    fi
    if [[ "$ACTION" == "restart-node" && ! $NODE_ID ]]
    then
        echo -e $C_RED">> param error ........: Please specify id as parameter -i or --id. E.g. --id3"$C_RST
        EXIT=1
    fi
    if [[ "$ACTION" != "info" && "$ACTION" != "restart-node" && "$ACTION" != "create" && "$ACTION" != "destroy" && "$ACTION" != "update" ]]
    then
        echo -e $C_RED">> param error ........: Please specify action as one of [ destroy, create, update, restart-node, info ]"$C_RST
        EXIT=1
    fi
fi

if [ $EXIT -eq 1 ]
then
    echo -e $C_RED">> exit ...............: quitting because of previous errors"$C_RST
    echo ""
    exit 1
fi

####################################################################################
#
# CLUSTER LOGIC
#
####################################################################################

if [ "$ACTION" == "create" ]
then
    echo -e $C_CYN">> action .............:${C_RST}${C_GRN} CREATE${C_RST}    - Creating new cluster and destroying existing if exists"$C_RST
    echo ""

    pull_latest_images
    echo ""

    check_if_license_env_var_is_set
    echo ""

    create_network
    echo ""

    kill_all_running_confluencenodes
    echo ""

    remove_all_dangling_confluencenodes
    echo ""

    clean_confluencenode_shared_home
    echo ""

    kill_instance_database
    start_instance_database
    echo ""

    kill_instance_loadbalancer
    start_instance_loadbalancer $SCALE
    echo ""

    sleep 10

    for (( node_id=1; node_id<=$SCALE; node_id++ ))
    do
        kill_instance_confluencenode $node_id
        start_instance_confluencenode $node_id
        echo ""
    done
    echo ""

    print_cluster_ready_info
    echo ""
fi

if [ "$ACTION" == "destroy" ]
then
    echo -e $C_CYN">> action .............:${C_RST}${C_GRN} DESTROY${C_RST}   - Shutting down cluster and destroying instances."$C_RST
    echo ""

    kill_all_running_confluencenodes
    echo ""

    kill_instance_database
    echo ""

    kill_instance_loadbalancer
    echo ""
fi

if [ "$ACTION" == "update" ]
then
    echo -e $C_CYN">> action .............:${C_RST}${C_GRN} UPDATE${C_RST}    - Update running cluster."$C_RST
    echo ""

    check_if_license_env_var_is_set
    echo ""

    running_confluencenode_count=0
    get_running_confluencenode_count running_confluencenode_count
    if (( running_confluencenode_count > 0 )) # arithmetic brackets ... woohoo
    then
        echo -e $C_CYN">> update .............:${C_RST}${C_GRN} OK${C_RST}        - currently ${running_confluencenode_count} Confluence nodes are running. Cluster should be scaled to ${SCALE} Confluence nodes."$C_RST
        start_node_id=$(($running_confluencenode_count + 1))
        for (( node_id=$start_node_id; node_id<=$SCALE; node_id++ ))
        do
            kill_instance_confluencenode $node_id
            start_instance_confluencenode $node_id
            echo ""
        done
        echo ""

        kill_instance_loadbalancer
        start_instance_loadbalancer $SCALE
        echo ""
    else
        echo -e $C_CYN">> update .............:${C_RST}${C_RED} FAIL${C_RST}      - currently 0 Confluence nodes are running. Try to create the cluster first."$C_RST
    fi
    echo ""
fi

if [ "$ACTION" == "restart-node" ]
then
    echo -e $C_CYN">> action .............:${C_RST}${C_GRN} RESTART-N${C_RST} - Restarting Confluence node ${NODE_ID}."$C_RST
    echo ""

    kill_instance_confluencenode $NODE_ID
    start_instance_confluencenode $NODE_ID
    echo ""
fi

if [ "$ACTION" == "info" ]
then
    echo -e $C_CYN">> action .............:${C_RST}${C_GRN} INFO${C_RST}      - Cluster information."$C_RST
    echo ""

    running_confluencenode_count=0
    get_running_confluencenode_count running_confluencenode_count
    echo -e $C_CYN">> info ...............:${C_RST}${C_GRN} OK${C_RST}        - currently ${running_confluencenode_count} Confluence node(s) are running. Showing 'docker ps' for cluster:"$C_RST
    echo ""
    docker ps --format '{{.ID}}\t {{.Names}}\t {{.Ports}}' --filter "name=confluence-cluster*"
    echo ""
fi
