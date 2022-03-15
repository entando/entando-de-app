# entando-de-app
[![Build Status](https://jenkins.entandocloud.com/buildStatus/icon?job=de-entando-de-app-master)](https://jenkins.entandocloud.com/job/de-entando-de-app-master/)
Application to act as the starting point for an Entando application integrated with a Digital Exchange instance

## Develop using the jetty-maven-plugin
If you need to develop fast against this project, you can run the application using the jetty-maven-plugin.
You will need though to use the correct profiles to run it.

Here the command to use

```
mvn clean package jetty:run-war -Pjetty-local -Pderby
```

If you want to use keycloak as external authorization service, add the keycloak profile and update the proper
variables (you can find them in the `properties` tag in the pom)

```
mvn clean package jetty:run-war -Pjetty-local -Pderby -Pkeycloak
```

You can also add the option `-Dlicense.skipDownloadLicenses` to speed up the startup process.

To use an external DBMS you can activate the dedicated profile and pass the connection parameters
using the properties. The following example shows how to connect to a PostgreSQL database:

```
mvn clean package jetty:run-war -Pjetty-local -Ppostgresql -DskipDatabaseImage=true -Dlicense.skipDownloadLicenses \
  -Dportdb.url=jdbc:postgresql://localhost:5432/portdb -Dportdb.username=dbuser -Dportdb.password=password \
  -Dservdb.url=jdbc:postgresql://localhost:5432/servdb -Dservdb.username=dbuser -Dservdb.password=password
```

## Using swagger

In order to enable swagger, it's enough to pass `-Dspring.profiles.active=swagger` parameter. Swagger UI will be
reachable [here](http://localhost:8080/entando-de-app/api/swagger-ui.html)

## Using docker

You can use the fabric8 plugin both to build and run the docker images for this project. You can choose between
different profiles both for the servlet container (wildfly, eap)
and the the DBMS to use (derby, mysql, postgresql).

For example, to run the application on Wildfly using PostgreSQL you can use the following command:

```
mvn clean package docker:run -Pwildfly,postgresql
```

You can also build your image using the Dockerfiles in the root of this repository:

```
mvn clean package
docker build . -f Dockerfile.wildfly -t <YOUR-USER>/<YOUR-REPO-NAME>:<YOUR-VERSION>
```

## Upgrading database from Entando 6.3.2 to 7.0.0

Use the scripts inside the `upgrade` folder to upgrade your Entando database from version 6.3.2 to version 7.0.0. There are different scripts for PostgreSQL, MySQL and Derby.

Starting from version 7.0.0 Entando uses Liquibase, a tool that handle database changes, so you will not need to run any manual queries to upgrade your database from versions higher than 7.0.0.

# Deploying to Kubernetes
Clone the repository
Change the project name to your preferred project name. From your favourite IDE
 - files update should be pom.xml, entando-app.yaml
Deploy your Entando Kubernetes operator to K8S
Setup Keycloak
    - Point to an existing Keycloak instance
    - Install lightweight instance
Deploy Entando App itself
Point to ...       
