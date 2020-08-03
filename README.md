1231232

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

If you want to use keycloak as external authorization service, add the keycloak profile and update the proper variables (you can find them in the `properties` tag in the pom)

```
mvn clean package jetty:run-war -Pjetty-local -Pderby -Pkeycloak
```

## Using docker
You can use the fabric8 plugin both to build and run the docker images for this project. 
You can choose between different profiles both for the servlet container (jetty, tomcat, wildfly, eap) 
and the the dbms to use (derby, mysql, postgresql).

Here the command to build the images (in this case I'm choosing to build the images using wildfly and postgresql)
```
mvn clean package -Pwildfly -Ppostgresql docker:build
```

If you want also to automatically run the images you can use the `docker:run` command. Here an example using jetty-container, mysql and also keycloak
```
mvn clean package -Pjetty-container -Pmysql -Pkeycloak -DskipTests docker:run
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
