-- Script for upgrading Derby port database from Entando 6.3.2 to 7.0.0

SET SCHEMA AGILE;

-- core

ALTER TABLE guifragment ALTER COLUMN locked DROP NOT NULL;
ALTER TABLE widgetcatalog ALTER COLUMN locked DROP NOT NULL;
ALTER TABLE pages ALTER COLUMN pos DROP NOT NULL;
ALTER TABLE localstrings ALTER COLUMN stringvalue DROP NOT NULL;

ALTER TABLE WIDGETCONFIG ADD COLUMN NEW_FRAMEPOS SMALLINT NOT NULL DEFAULT 0; 
UPDATE WIDGETCONFIG SET NEW_FRAMEPOS = FRAMEPOS;
ALTER TABLE WIDGETCONFIG DROP COLUMN FRAMEPOS;
RENAME COLUMN WIDGETCONFIG.NEW_FRAMEPOS TO FRAMEPOS;
ALTER TABLE WIDGETCONFIG ADD PRIMARY KEY (PAGECODE,FRAMEPOS);
ALTER TABLE WIDGETCONFIG ALTER COLUMN FRAMEPOS SET DEFAULT NULL;

ALTER TABLE WIDGETCONFIG_DRAFT ADD COLUMN NEW_FRAMEPOS SMALLINT NOT NULL DEFAULT 0; 
UPDATE WIDGETCONFIG_DRAFT SET NEW_FRAMEPOS = FRAMEPOS;
ALTER TABLE WIDGETCONFIG_DRAFT DROP COLUMN FRAMEPOS;
RENAME COLUMN WIDGETCONFIG_DRAFT.NEW_FRAMEPOS TO FRAMEPOS;
ALTER TABLE WIDGETCONFIG_DRAFT ADD PRIMARY KEY (PAGECODE,FRAMEPOS);
ALTER TABLE WIDGETCONFIG_DRAFT ALTER COLUMN FRAMEPOS SET DEFAULT NULL;

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
  ('00000000000001_schemaPort','entando','liquibase/port/00000000000001_schemaPort.xml','2022-03-03 12:12:32.446304',1,'EXECUTED','8:ca0f8957e59d0a535f286d630767e814','createTable tableName=sysconfig; createTable tableName=categories; createTable tableName=localstrings; createTable tableName=pagemodels; createTable tableName=pages; createTable tableName=pages_metadata_online; addForeignKeyConstraint baseTableNam...','',NULL,'4.4.3',NULL,NULL,'6305951931'),
  ('00000000000001_dataPort_production','entando','liquibase/port/00000000000001_dataPort_production.xml','2022-03-03 12:12:32.72679',2,'EXECUTED','8:f1d2f81737cddd29dfa883fdc990faa0','insert tableName=categories; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; i...','',NULL,'4.4.3','production',NULL,'6305951931'),
  ('00000000000001_de_defaultResources_dataPort_production','entando','liquibase/defaultResources/port/00000000000001_dataPort_production.xml','2022-03-03 12:12:35.532485',6,'EXECUTED','8:7de85f47914acfe5b22c8c7db3228f09','insert tableName=widgetcatalog; insert tableName=guifragment; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings;...','',NULL,'4.4.3','production',NULL,'6305955238');         

-- jacms

ALTER TABLE contentattributeroles ALTER COLUMN attrname DROP NOT NULL;
ALTER TABLE contentattributeroles ALTER COLUMN rolename DROP NOT NULL;
ALTER TABLE contentsearch ALTER COLUMN attrname DROP NOT NULL;
ALTER TABLE workcontentattributeroles ALTER COLUMN attrname DROP NOT NULL;
ALTER TABLE workcontentattributeroles ALTER COLUMN rolename DROP NOT NULL;
ALTER TABLE workcontentsearch ALTER COLUMN attrname DROP NOT NULL;
ALTER TABLE resourcerelations ALTER COLUMN refcategory DROP NOT NULL;

ALTER TABLE workcontentattributeroles ADD COLUMN new_rolename varchar(30); 
UPDATE workcontentattributeroles SET new_rolename = rolename;
ALTER TABLE workcontentattributeroles DROP COLUMN rolename;
RENAME COLUMN workcontentattributeroles.new_rolename TO rolename;

INSERT INTO databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES
  ('00000000000001_jacms_schemaPort','entando','liquibase/jacms/port/00000000000001_schemaPort.xml','2022-03-03 12:12:34.162904',3,'EXECUTED','8:4b138e1a635c359489a8b4dbeae439cb','createTable tableName=contentmodels; createTable tableName=contents; createIndex indexName=contents_contenttype_idx, tableName=contents; createIndex indexName=contents_lastmodified_idx, tableName=contents; createIndex indexName=contents_maingroup_...','',NULL,'4.4.3',NULL,NULL,'6305953882'),
  ('00000000000001_jacms_dataPort_production','entando','liquibase/jacms/port/00000000000001_dataPort_production.xml','2022-03-03 12:12:34.262709',4,'EXECUTED','8:563907e57e3ac8a1e6e8f1dc4a7467d0','insert tableName=sysconfig; insert tableName=sysconfig; insert tableName=sysconfig; insert tableName=sysconfig; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; insert tabl...','',NULL,'4.4.3','production',NULL,'6305953882');

-- jpversioning

ALTER TABLE jpversioning_versionedcontents ALTER descr SET DATA TYPE VARCHAR(256);

INSERT INTO databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES
  ('00000000000001_jpversioning_schemaPort','entando','liquibase/jpversioning/port/00000000000001_schemaPort.xml','2022-03-03 12:12:35.877767',7,'EXECUTED','8:fa3f7bbe1e84964a52b5d49609df135b','createTable tableName=jpversioning_trashedresources; createTable tableName=jpversioning_versionedcontents; addUniqueConstraint constraintName=jpvers_contentvers_key, tableName=jpversioning_versionedcontents','',NULL,'4.4.3',NULL,NULL,'6305955828');

-- jpmail

INSERT INTO databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES
  ('00000000000001_jpmail_dataPort_production','entando','liquibase/jpmail/port/00000000000001_dataPort_production.xml','2022-03-03 12:12:34.621258',5,'EXECUTED','8:a7e88f5e191c357dd3e503963b0730ba','insert tableName=sysconfig','',NULL,'4.4.3','production',NULL,'6305954611');

-- jpseo

INSERT INTO databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES
  ('00000000000001_jpseo_schemaPort','entando','liquibase/jpseo/port/00000000000001_schemaPort.xml','2022-03-03 12:12:36.252658',8,'EXECUTED','8:0cac575831787759faf345608323ed1f','createTable tableName=jpseo_friendlycode','',NULL,'4.4.3',NULL,NULL,'6305956213'),
  ('00000000000001_jpseo_dataPort_production','entando','liquibase/jpseo/port/00000000000001_dataPort_production.xml','2022-03-03 12:12:36.280257',9,'EXECUTED','8:283a24fe0ff8c95c4806a1fc9ecc5fa9','insert tableName=widgetcatalog; insert tableName=guifragment; insert tableName=guifragment','',NULL,'4.4.3','production',NULL,'6305956213');

-- jpcontentscheduler

INSERT INTO databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id)
  VALUES('00000000000001_jpcontentscheduler_dataPort_production', 'entando', 'liquibase/jpcontentscheduler/port/00000000000001_dataPort_production.xml', '2022-03-03 15:44:33.948', 8, 'EXECUTED', '8:ea617c252a9fd7ef7158ce075325969b', 'insert tableName=sysconfig', '', NULL, '4.4.3', 'production', NULL, '6318673902');
