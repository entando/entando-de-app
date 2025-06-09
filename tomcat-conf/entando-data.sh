#!/bin/bash

source "/usr/local/tomcat/bin/translate-jboss-variables.sh"

sed -i "s|CONTEXT_PATH|${ENTANDO_WEB_CONTEXT}|g" /usr/local/tomcat/conf/server.xml

DEPLOYMENTS_DIR="/usr/local/tomcat/webapps"

function extract_resources(){
  mkdir -p /tmp/exploded-war
  pushd /tmp/exploded-war
  for WAR in ${DEPLOYMENTS_DIR}/*.war; do
    jar xf ${WAR}
    mkdir -p /entando-data/resources/ > /dev/null 2>&1
    mkdir -p /entando-data/protected/ > /dev/null 2>&1

    cp resources/* /entando-data/resources/ -rf
    cp protected/* /entando-data/protected/ -rf
  done
  popd
  rm -Rf /tmp/exploded-war
}
