#!/usr/bin/env bash
#Initialization
APPLICATION_NAME="entando-de-app"
JEE_SERVER=${1:-eap}
DBMS=${2:-mysql}

echo "Running smoke tests for ${APPLICATION_NAME} using $JEE_SERVER and $DBMS"

#pre-test cleanup
mvn -DskipDocker=false -P${JEE_SERVER} -P${DBMS} docker:stop 2>/dev/null
docker volume rm ${APPLICATION_NAME}-entando-data ${APPLICATION_NAME}-entando-db-data 2>/dev/null

#run full tests
mvn dependency:purge-local-repository -DsnapshotsOnly=true 
mvn clean package   -P${JEE_SERVER} -P${DBMS} docker:start || { echo "Maven build failed"; exit 1; }
docker run --rm --network=${APPLICATION_NAME}-network \
    -e ENTANDO_APPBUILDER_URL=http://appbuilder:5000  \
    entando/entando-smoke-tests:5.1.0-SNAPSHOT mvn verify -Dtest=org.entando.selenium.smoketests.STAddTestUserTest \
    || { echo "AddTestUser smoke test failed"; exit 2; }
mvn -P${JEE_SERVER} -P${DBMS} docker:stop || { echo "Stopping containers from Maven failed"; exit 3; }
mvn -P${JEE_SERVER} -P${DBMS} docker:start || { echo "Restarting containers from Maven failed"; exit 4; }
docker run --rm --network=${APPLICATION_NAME}-network \
    -e ENTANDO_ENGINE_URL=http://${APPLICATION_NAME}-engine:8080/${APPLICATION_NAME} \
    -e ENTANDO_APPBUILDER_URL=http://appbuilder:5000  \
    entando/entando-smoke-tests:5.1.0-SNAPSHOT mvn verify -Dtest=org.entando.selenium.smoketests.STLoginWithTestUserTest \
    || { echo "LoginWithTestUser smoke test failed"; exit 5; }

#post-test cleanup
mvn -P${JEE_SERVER} -P${DBMS} docker:stop 2>/dev/null || true
docker volume rm ${APPLICATION_NAME}-entando-data ${APPLICATION_NAME}-entando-db-data 2>/dev/null || true
