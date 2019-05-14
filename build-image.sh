#!/usr/bin/env bash
HOST=$(kubectl config view --minify -o go-template='{{with index .clusters 0 }}{{.cluster.server}}{{end}}'|awk -F[/:] '{print $4}')
USER=$(kubectl config view --minify -o go-template='{{with index .users 0 }}{{.user.username}}{{end}}')
PWD=$(kubectl config view --minify -o go-template='{{with index .users 0 }}{{.user.password}}{{end}}')
docker login -u $USER  -p $PWD $HOST:32000
mvn clean package -DskipTests -Pwildfly -Pmysql
docker tag entando/entando-de-app-mysql:5.2.0-SNAPSHOT $HOST:32000/entando/entando-de-app-mysql:5.2.0-SNAPSHOT
docker tag entando/entando-de-app-wildfly:5.2.0-SNAPSHOT $HOST:32000/entando/entando-de-app-wildfly:5.2.0-SNAPSHOT
docker push $HOST:32000/entando/entando-de-app-mysql:5.2.0-SNAPSHOT
docker push $HOST:32000/entando/entando-de-app-wildfly:5.2.0-SNAPSHOT
