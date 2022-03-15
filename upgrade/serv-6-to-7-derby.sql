-- Script for upgrading Derby serv database from Entando 6.3.2 to 7.0.0

SET SCHEMA AGILE;

-- core

DROP TABLE dataobjectattributeroles;
DROP TABLE dataobjectmodels;
DROP TABLE dataobjectrelations;
DROP TABLE dataobjectsearch;
DROP TABLE dataobjects;

ALTER TABLE authuserprofileattrroles ALTER COLUMN attrname DROP NOT NULL;
ALTER TABLE authuserprofileattrroles ALTER COLUMN rolename DROP NOT NULL;
ALTER TABLE authuserprofilesearch ALTER COLUMN attrname DROP NOT NULL;

ALTER TABLE actionlogrecords ADD COLUMN new_actionname varchar(40); 
UPDATE actionlogrecords SET new_actionname = actionname;
ALTER TABLE actionlogrecords DROP COLUMN actionname;
RENAME COLUMN actionlogrecords.new_actionname TO actionname;

ALTER TABLE api_oauth_tokens ALTER localuser SET DATA TYPE VARCHAR(255);

CREATE TABLE DATABASECHANGELOG (
	ID VARCHAR(255) NOT NULL,
	AUTHOR VARCHAR(255) NOT NULL,
	FILENAME VARCHAR(255) NOT NULL,
	DATEEXECUTED TIMESTAMP NOT NULL,
	ORDEREXECUTED INTEGER NOT NULL,
	EXECTYPE VARCHAR(10) NOT NULL,
	MD5SUM VARCHAR(35),
	DESCRIPTION VARCHAR(255),
	COMMENTS VARCHAR(255),
	TAG VARCHAR(255),
	LIQUIBASE VARCHAR(20),
	CONTEXTS VARCHAR(255),
	LABELS VARCHAR(255),
	DEPLOYMENT_ID VARCHAR(10)
);
CREATE TABLE DATABASECHANGELOGLOCK (
	ID INTEGER NOT NULL,
	LOCKED BOOLEAN NOT NULL,
	LOCKGRANTED TIMESTAMP,
	LOCKEDBY VARCHAR(255),
	CONSTRAINT PK_DATABASECHANGELOGLOCK PRIMARY KEY (ID)
);

INSERT INTO databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES
  ('00000000000001_schemaServ','entando','liquibase/serv/00000000000001_schemaServ.xml','2022-03-03 12:12:33.41696',1,'EXECUTED','8:34d064f27c2a4d67d3797a8c2fb5ef58','createTable tableName=authgroups; createTable tableName=authpermissions; createTable tableName=authroles; createTable tableName=authrolepermissions; addForeignKeyConstraint baseTableName=authrolepermissions, constraintName=authrolepermissions_role...','',NULL,'4.4.3',NULL,NULL,'6305953101'),
  ('00000000000001_schemaServ_consumers','entando','liquibase/serv/00000000000001_schemaServ.xml','2022-03-03 12:12:33.445449',2,'EXECUTED','8:9de859f33cc0ee804dcc703b09b03681','createTable tableName=api_oauth_consumers','',NULL,'4.4.3',NULL,NULL,'6305953101'),
  ('00000000000001_dataServ_production','entando','liquibase/serv/00000000000001_dataServ_production.xml','2022-03-03 12:12:33.492386',3,'EXECUTED','8:e9f08ba4d2b4976f2a016fab54deb591','insert tableName=authgroups; insert tableName=authgroups; insert tableName=authpermissions; insert tableName=authpermissions; insert tableName=authpermissions; insert tableName=authpermissions; insert tableName=authpermissions; insert tableName=au...','',NULL,'4.4.3','production',NULL,'6305953101');

INSERT INTO databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES
  ('00000000000001_schemaServ_consumers_derby', 'entando', 'liquibase/serv/00000000000001_schemaServ.xml', '2022-03-04 15:43:54.456', 2, 'EXECUTED', '8:791c241b3c1d4b98c79cf82f9c238f0c', 'sql', '', NULL, '4.4.3', NULL, NULL, '6405032830');

-- admin console

INSERT INTO databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES
  ('00000000000001_adminconsole_schemaServ','entando','liquibase/admin-console/serv/00000000000001_schemaServ.xml','2022-03-03 12:12:34.978668',4,'EXECUTED','8:950e18117492e0486cba83d27a5856f8','createTable tableName=authusershortcuts','',NULL,'4.4.3',NULL,NULL,'6305954961'),
  ('00000000000001_adminconsole_dataServ_production','entando','liquibase/admin-console/serv/00000000000001_dataServ_production.xml','2022-03-03 12:12:34.990755',5,'EXECUTED','8:2b5e09374fa37f80c4d2c8de7e58a2f6','insert tableName=authusershortcuts','',NULL,'4.4.3','production',NULL,'6305954961');
