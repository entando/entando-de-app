#!/usr/bin/env bash

#TODO refactor this to generically iterate through all DB prefixes
function extract_database_name(){
#support both the standard '/'-delimited and oracle's ':'-delimited urls. Always the last segment
  path="$(echo $1 |  grep 'jdbc:' | rev | cut -d/ -f1| cut -d: -f1| rev )"
  echo $path
}
function extract_database_driver(){
  path="$(echo $1 | grep 'jdbc:' | cut -d: -f2)"
  echo $path
}
#Derive URL from variables compatible with the EAP Image when connecting to a database service
if [ -n "$PORTDB_POSTGRESQL_SERVICE_HOST" ]; then
  export PORTDB_URL="jdbc:postgresql://$PORTDB_POSTGRESQL_SERVICE_HOST:${PORTDB_POSTGRESQL_SERVICE_PORT:-5432}/${PORTDB_DATABASE:-entandoPort}"
elif [ -n "$PORTDB_MYSQL_SERVICE_HOST" ]; then
  export PORTDB_URL="jdbc:mysql://$PORTDB_MYSQL_SERVICE_HOST:${PORTDB_MYSQL_SERVICE_PORT:-3306}/${PORTDB_DATABASE:-entandoPort}"
fi
if [ -n "$SERVDB_POSTGRESQL_SERVICE_HOST" ]; then
  export SERVDB_URL="jdbc:postgresql://$SERVDB_POSTGRESQL_SERVICE_HOST:${SERVDB_POSTGRESQL_SERVICE_PORT:-5432}/${SERVDB_DATABASE:-entandoServ}"
elif [ -n "$SERVDB_MYSQL_SERVICE_HOST" ]; then
  export SERVDB_URL="jdbc:mysql://$SERVDB_MYSQL_SERVICE_HOST:${SERVDB_MYSQL_SERVICE_PORT:-3306}/${SERVDB_DATABASE:-entandoServ}"
fi
#Derive variables from URLs to increase robustness
if [ -n "$PORTDB_URL" ]; then
  export PORTDB_DRIVER=$(extract_database_driver $PORTDB_URL)
  export PORTDB_DATABASE=$(extract_database_name $PORTDB_URL)
fi
if [ -n "$SERVDB_URL" ]; then
  export SERVDB_DRIVER=$(extract_database_driver $SERVDB_URL)
  export SERVDB_DATABASE=$(extract_database_name $SERVDB_URL)
fi
#Derive Entando's confusing datasourceclassname variable
if [ -n "$PORTDB_DRIVER" ]; then
  export PORTDATASOURCECLASSNAME=$($(dirname ${BASH_SOURCE[0]})/determine-driver.sh ${PORTDB_DRIVER})
fi
if [ -n "$SERVDB_DRIVER" ]; then
  export SERVDATASOURCECLASSNAME=$($(dirname ${BASH_SOURCE[0]})/determine-driver.sh ${SERVDB_DRIVER})
fi
if [ -z "$ENTANDO_WEB_CONTEXT" ]; then
  WARS="$(dir $DEPLOYMENTS_DIR/*.war)"
  if [ ${#WARS[@]}  -gt  0 ] ; then

    WAR_FILE=${WARS[0]}
    #Strip .war
    WEB_CONTEXT="${WAR_FILE%.war}"
    while [[ "$WEB_CONTEXT" == *"/"* ]] ; do
    #Strip all segments that still contain a /
      WEB_CONTEXT=${WEB_CONTEXT#*/}
    done
    #Export context
    export ENTANDO_WEB_CONTEXT="/${WEB_CONTEXT}"
  fi
fi

RESOURCES_PATH_NAME="resources"

if [[ "$ENTANDO_WEB_CONTEXT" = "/" ]] ; then
  export RESOURCEROOTURL="/${RESOURCES_PATH_NAME}/"
else
  export RESOURCEROOTURL="${ENTANDO_WEB_CONTEXT}/${RESOURCES_PATH_NAME}/"
fi
