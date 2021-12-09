# entando-de-app
[![Build Status](https://jenkins.entandocloud.com/buildStatus/icon?job=de-entando-de-app-master)](https://jenkins.entandocloud.com/job/de-entando-de-app-master/)
Application to act as the starting point for an Entando application integrated with a Digital Exchange instance
TODO instructions on Docker images

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

## Using swagger

In order to enable swagger, it's enough to pass `-Dspring.profiles.active=swagger` parameter. Swagger UI will be
reachable [here](http://localhost:8080/entando-de-app/api/swagger-ui.html)

## Using docker

You can use the fabric8 plugin both to build and run the docker images for this project. You can choose between
different profiles both for the servlet container (jetty, tomcat, wildfly, eap)
and the the dbms to use (derby, mysql, postgresql).

Here the command to build the images (in this case I'm choosing to build the images using wildfly and postgresql)

```
mvn clean package
docker build . -f Dockerfile.wildfly -t <YOUR-USER>/<YOUR-REPO-NAME>:<YOUR-VERSION>

```

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
