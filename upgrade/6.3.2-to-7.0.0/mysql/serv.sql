-- Script for upgrading MySQL serv database from Entando 6.3.2 to 7.0.0

-- core

DROP TABLE dataobjectattributeroles CASCADE;
DROP TABLE dataobjectmodels CASCADE;
DROP TABLE dataobjectrelations CASCADE;
DROP TABLE dataobjectsearch CASCADE;
DROP TABLE dataobjects CASCADE;

ALTER TABLE authuserprofileattrroles MODIFY attrname varchar(30);
ALTER TABLE authuserprofileattrroles MODIFY rolename varchar(50);
ALTER TABLE authuserprofilesearch MODIFY attrname varchar(30);

ALTER TABLE actionlogrecords MODIFY actionname varchar(40);
ALTER TABLE api_oauth_tokens MODIFY localuser varchar(255);

ALTER TABLE actionlogrecords MODIFY activitystreaminfo longtext;
ALTER TABLE actionlogcommentrecords MODIFY commenttext longtext NOT NULL;
ALTER TABLE api_oauth_consumers MODIFY callbackurl longtext;
ALTER TABLE api_oauth_consumers MODIFY description longtext NOT NULL;
ALTER TABLE apicatalog_services MODIFY description longtext NOT NULL;
ALTER TABLE apicatalog_services MODIFY freeparameters longtext;
ALTER TABLE apicatalog_services MODIFY parameters longtext;
ALTER TABLE actionlogrecords MODIFY namespace longtext;
ALTER TABLE actionlogrecords MODIFY parameters longtext;
ALTER TABLE authuserprofiles MODIFY profilexml longtext NOT NULL;

ALTER TABLE actionlogcommentrecords MODIFY id int AUTO_INCREMENT;

CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
);
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
);

INSERT INTO DATABASECHANGELOG (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES
  ('00000000000001_schemaServ','entando','liquibase/serv/00000000000001_schemaServ.xml','2022-03-03 12:12:33.41696',1,'EXECUTED','8:34d064f27c2a4d67d3797a8c2fb5ef58','createTable tableName=authgroups; createTable tableName=authpermissions; createTable tableName=authroles; createTable tableName=authrolepermissions; addForeignKeyConstraint baseTableName=authrolepermissions, constraintName=authrolepermissions_role...','',NULL,'4.4.3',NULL,NULL,'6305953101'),
  ('00000000000001_schemaServ_consumers','entando','liquibase/serv/00000000000001_schemaServ.xml','2022-03-03 12:12:33.445449',2,'EXECUTED','8:9de859f33cc0ee804dcc703b09b03681','createTable tableName=api_oauth_consumers','',NULL,'4.4.3',NULL,NULL,'6305953101'),
  ('00000000000001_dataServ_production','entando','liquibase/serv/00000000000001_dataServ_production.xml','2022-03-03 12:12:33.492386',3,'EXECUTED','8:e9f08ba4d2b4976f2a016fab54deb591','insert tableName=authgroups; insert tableName=authgroups; insert tableName=authpermissions; insert tableName=authpermissions; insert tableName=authpermissions; insert tableName=authpermissions; insert tableName=authpermissions; insert tableName=au...','',NULL,'4.4.3','production',NULL,'6305953101');

-- admin console

ALTER TABLE authusershortcuts MODIFY config longtext NOT NULL;
 
INSERT INTO DATABASECHANGELOG (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES
  ('00000000000001_adminconsole_schemaServ','entando','liquibase/admin-console/serv/00000000000001_schemaServ.xml','2022-03-03 12:12:34.978668',4,'EXECUTED','8:950e18117492e0486cba83d27a5856f8','createTable tableName=authusershortcuts','',NULL,'4.4.3',NULL,NULL,'6305954961'),
  ('00000000000001_adminconsole_dataServ_production','entando','liquibase/admin-console/serv/00000000000001_dataServ_production.xml','2022-03-03 12:12:34.990755',5,'EXECUTED','8:2b5e09374fa37f80c4d2c8de7e58a2f6','insert tableName=authusershortcuts','',NULL,'4.4.3','production',NULL,'6305954961');
