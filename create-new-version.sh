#!/bin/bash

# USAGE SEE README_CREATE_NEW_VERSION.md

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
# COPY MASTER BRANCH MANAGEMENT SCRIPTS
#
####################################################################################
echo -e $C_CYN">> trying to clone management scripts on master branch${C_RST}"
git checkout master > /dev/null 2>&1
current_branch=$(git rev-parse --abbrev-ref HEAD)
if [ "$current_branch" == "master" ]
then
  echo -e $C_GRN"   we are on master branch ...${C_RST}"
else
  echo -e $C_RED"   we are NOT on master branch. EXIT${C_RST}"
  exit 1
fi


cp -r ${LAST_VERSION} ${NEW_VERSION}
echo -e $C_GRN"   copy ./${LAST_VERSION}/ to ./${NEW_VERSION}/${C_RST}"

mv ./${NEW_VERSION}/manage-confluence-cluster-${LAST_VERSION}.sh ./${NEW_VERSION}/manage-confluence-cluster-${NEW_VERSION}.sh
echo -e $C_GRN"   rename manage-confluence-cluster-${LAST_VERSION}.sh to manage-confluence-cluster-${NEW_VERSION}.sh${C_RST}"

mv ./${NEW_VERSION}/manage-confluence-cluster-${LAST_VERSION}-version.txt ./${NEW_VERSION}/manage-confluence-cluster-${NEW_VERSION}-version.txt
echo -e $C_GRN"   rename manage-confluence-cluster-${LAST_VERSION}-version.txt to manage-confluence-cluster-${NEW_VERSION}-version.txt${C_RST}"

sed -i .bak "s/${LAST_VERSION}/${NEW_VERSION}/g" ./${NEW_VERSION}/manage-confluence-cluster-${NEW_VERSION}.sh && rm -f ./${NEW_VERSION}/*.bak
echo -e $C_GRN"   replace ${LAST_VERSION} by ${NEW_VERSION} in manage-confluence-cluster-${NEW_VERSION}.sh${C_RST}"
sed -i .bak "s/${LAST_VERSION}/${NEW_VERSION}/g" ./${NEW_VERSION}/README.md && rm -f ./${NEW_VERSION}/*.bak
echo -e $C_GRN"   replace ${LAST_VERSION} by ${NEW_VERSION} in README.md${C_RST}"

sed -i .bak "s/${LAST_VERSION_NO_DOTS}/${NEW_VERSION_NO_DOTS}/g" ./${NEW_VERSION}/manage-confluence-cluster-${NEW_VERSION}.sh && rm -f ./${NEW_VERSION}/*.bak
echo -e $C_GRN"   replace ${LAST_VERSION_NO_DOTS} by ${NEW_VERSION_NO_DOTS} in manage-confluence-cluster-${NEW_VERSION}.sh${C_RST}"
sed -i .bak "s/${LAST_VERSION_NO_DOTS}/${NEW_VERSION_NO_DOTS}/g" ./${NEW_VERSION}/README.md && rm -f ./${NEW_VERSION}/*.bak
echo -e $C_GRN"   replace ${LAST_VERSION_NO_DOTS} by ${NEW_VERSION_NO_DOTS} in README.md${C_RST}"


git add ./${NEW_VERSION}
git commit -m "automated creation of version ${NEW_VERSION}"
git push
echo -e $C_GRN"   adding new files and pushing to GitHub"

echo ""


####################################################################################
#
# COPY CONFLUENCE-NODE BRANCH
#
####################################################################################
echo -e $C_CYN">> trying to clone confluencenode-${LAST_VERSION} branch${C_RST}"
git checkout confluencenode-${LAST_VERSION} > /dev/null 2>&1
current_branch=$(git rev-parse --abbrev-ref HEAD)
if [ "$current_branch" == "confluencenode-${LAST_VERSION}" ]
then
  echo -e $C_GRN"   we are on confluencenode-${LAST_VERSION} branch ...${C_RST}"
else
  echo -e $C_RED"   we are NOT on confluencenode-${LAST_VERSION} branch. EXIT${C_RST}"
  exit 1
fi
