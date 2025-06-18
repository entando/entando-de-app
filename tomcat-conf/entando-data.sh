#!/bin/bash

source "/usr/local/tomcat/bin/translate-jboss-variables.sh"

#set var to use custom context
if [ "$ENTANDO_WEB_CONTEXT" == "/" ]; then
  MYCONTEXT="ROOT"
  sed -i "s|CONTEXT_PATH||g" /usr/local/tomcat/conf/server.xml
else
  MYCONTEXT="${ENTANDO_WEB_CONTEXT}"
  sed -i "s|CONTEXT_PATH|${ENTANDO_WEB_CONTEXT}|g" /usr/local/tomcat/conf/server.xml
fi

mv /usr/local/tomcat/webapps/entando-de-app.war "/usr/local/tomcat/webapps/$MYCONTEXT.war" | true


DEPLOYMENTS_DIR="/usr/local/tomcat/webapps"

function extract_resources(){
  mkdir -p /tmp/exploded-war
  pushd /tmp/exploded-war
  for WAR in ${DEPLOYMENTS_DIR}/*.war; do
    jar xf ${WAR}
    mkdir -p /entando-data/resources/ > /dev/null 2>&1
    mkdir -p /entando-data/protected/ > /dev/null 2>&1

    if [ "$OVEWRITE_RESOURCES_FROM_WAR" = "true" ]; then
      cp resources/* /entando-data/resources/ -rf
      cp protected/* /entando-data/protected/ -rf
    else
      cp resources/* /entando-data/resources/ -rn
      cp protected/* /entando-data/protected/ -rn
    fi
  done
  popd
  rm -Rf /tmp/exploded-war
}
