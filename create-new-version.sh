#!/bin/bash

####################################################################################
# MIT License
# Copyright (c) 2018 Bernhard Grünewaldt
# See https://github.com/codeclou/docker-atlassian-confluence-data-center/blob/master/LICENSE
####################################################################################

set -e

####################################################################################
#
# VERSIONS
#
####################################################################################

LAST_VERSION="6.6.0"
NEW_VERSION="6.7.1"


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
# VERSION CHECK
#
####################################################################################

NEW_VERSION_NO_DOTS=${NEW_VERSION//[.]/}
LAST_VERSION_NO_DOTS=${LAST_VERSION//[.]/}
echo ""
echo -e $C_CYN">> trying to create new version ${NEW_VERSION} from old version ${LAST_VERSION}.${C_RST}"

if [ -d "${NEW_VERSION}" ]
then
  echo -e $C_RED"   new version ${NEW_VERSION} already exists. EXIT${C_RST}"
  exit 1
else
  echo -e $C_GRN"   new version ${NEW_VERSION} does not yet exist. CONTINUE${C_RST}"
fi
echo ""

####################################################################################
#
# COPY MASTER BRANCH
#
####################################################################################
echo -e $C_CYN">> trying to clone management scripts on master branch${C_RST}"
git checkout master
current_branch=$(git rev-parse --abbrev-ref HEAD)
if [ "$current_branch" == "master" ]
then
  echo -e $C_GRN"   we are on master branch ...${C_RST}"
else
  echo -e $C_RED"   we are NOT on master branch. EXIT${C_RST}"
  exit 1
fi
