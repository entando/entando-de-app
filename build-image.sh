#!/usr/bin/env bash
#HOST=$(kubectl config view --minify -o go-template='{{with index .clusters 0 }}{{.cluster.server}}{{end}}'|awk -F[/:] '{print $4}')
HOST=docker-registry-default.apps.serv.run
USER=$(kubectl config view --minify -o go-template='{{with index .users 0 }}{{.user.username}}{{end}}')
PWD=$(kubectl config view --minify -o go-template='{{with index .users 0 }}{{.user.password}}{{end}}')
docker login -u $USER  -p $PWD $HOST
mvn clean package -DskipTests -Pwildfly -Pderby
docker tag entando/entando-de-app-wildfly:6.0.0-SNAPSHOT $HOST/entando/entando-de-app-wildfly:6.0.0-SNAPSHOT
docker push $HOST/entando/entando-de-app-wildfly:6.0.0-SNAPSHOT
