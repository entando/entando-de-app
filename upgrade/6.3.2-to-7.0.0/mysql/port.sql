-- Script for upgrading MySQL port database from Entando 6.3.2 to 7.0.0

-- core

ALTER TABLE guifragment MODIFY locked smallint;
ALTER TABLE widgetcatalog MODIFY locked smallint;
ALTER TABLE pages MODIFY pos int;
ALTER TABLE localstrings MODIFY stringvalue longtext;

ALTER TABLE widgetconfig MODIFY framepos smallint;
ALTER TABLE widgetconfig_draft MODIFY framepos smallint;

ALTER TABLE sysconfig MODIFY config longtext NOT NULL;
ALTER TABLE widgetconfig MODIFY config longtext;
ALTER TABLE widgetconfig_draft MODIFY config longtext;
ALTER TABLE widgetcatalog MODIFY configui longtext;
ALTER TABLE widgetcatalog MODIFY defaultconfig longtext;
ALTER TABLE widgetcatalog MODIFY parameters longtext;
ALTER TABLE widgetcatalog MODIFY titles longtext NOT NULL;
ALTER TABLE guifragment MODIFY defaultgui longtext;
ALTER TABLE guifragment MODIFY gui longtext;
ALTER TABLE pages_metadata_draft MODIFY extraconfig longtext;
ALTER TABLE pages_metadata_draft MODIFY titles longtext NOT NULL;
ALTER TABLE pages_metadata_online MODIFY extraconfig longtext;
ALTER TABLE pages_metadata_online MODIFY titles longtext NOT NULL;
ALTER TABLE pagemodels MODIFY frames longtext;
ALTER TABLE pagemodels MODIFY templategui longtext;
ALTER TABLE categories MODIFY titles longtext NOT NULL;

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
  ('00000000000001_schemaPort','entando','liquibase/port/00000000000001_schemaPort.xml','2022-03-03 12:12:32.446304',1,'EXECUTED','8:ca0f8957e59d0a535f286d630767e814','createTable tableName=sysconfig; createTable tableName=categories; createTable tableName=localstrings; createTable tableName=pagemodels; createTable tableName=pages; createTable tableName=pages_metadata_online; addForeignKeyConstraint baseTableNam...','',NULL,'4.4.3',NULL,NULL,'6305951931'),
  ('00000000000001_dataPort_production','entando','liquibase/port/00000000000001_dataPort_production.xml','2022-03-03 12:12:32.72679',2,'EXECUTED','8:f1d2f81737cddd29dfa883fdc990faa0','insert tableName=categories; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; i...','',NULL,'4.4.3','production',NULL,'6305951931'),
  ('00000000000001_de_defaultResources_dataPort_production','entando','liquibase/defaultResources/port/00000000000001_dataPort_production.xml','2022-03-03 12:12:35.532485',6,'EXECUTED','8:7de85f47914acfe5b22c8c7db3228f09','insert tableName=widgetcatalog; insert tableName=guifragment; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings;...','',NULL,'4.4.3','production',NULL,'6305955238');         

-- jacms

ALTER TABLE contentattributeroles MODIFY attrname varchar(30);
ALTER TABLE contentattributeroles MODIFY rolename varchar(50);
ALTER TABLE contentsearch MODIFY attrname varchar(30);
ALTER TABLE workcontentattributeroles MODIFY attrname varchar(30);
ALTER TABLE workcontentattributeroles MODIFY rolename varchar(30);
ALTER TABLE workcontentsearch MODIFY attrname varchar(30);
ALTER TABLE resourcerelations MODIFY refcategory varchar(30);

ALTER TABLE contentmodels MODIFY model longtext;
ALTER TABLE contents MODIFY onlinexml longtext;
ALTER TABLE contents MODIFY workxml longtext NOT NULL;
ALTER TABLE resources MODIFY resourcexml longtext NOT NULL;

INSERT INTO DATABASECHANGELOG (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES
  ('00000000000001_jacms_schemaPort','entando','liquibase/jacms/port/00000000000001_schemaPort.xml','2022-03-03 12:12:34.162904',3,'EXECUTED','8:4b138e1a635c359489a8b4dbeae439cb','createTable tableName=contentmodels; createTable tableName=contents; createIndex indexName=contents_contenttype_idx, tableName=contents; createIndex indexName=contents_lastmodified_idx, tableName=contents; createIndex indexName=contents_maingroup_...','',NULL,'4.4.3',NULL,NULL,'6305953882'),
  ('00000000000001_jacms_dataPort_production','entando','liquibase/jacms/port/00000000000001_dataPort_production.xml','2022-03-03 12:12:34.262709',4,'EXECUTED','8:563907e57e3ac8a1e6e8f1dc4a7467d0','insert tableName=sysconfig; insert tableName=sysconfig; insert tableName=sysconfig; insert tableName=sysconfig; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; insert tableName=localstrings; insert tabl...','',NULL,'4.4.3','production',NULL,'6305953882');

-- jpversioning

ALTER TABLE jpversioning_versionedcontents MODIFY descr varchar(256) NOT NULL;

ALTER TABLE jpversioning_versionedcontents MODIFY contentxml longtext NOT NULL;
ALTER TABLE jpversioning_trashedresources MODIFY resxml longtext NOT NULL;

INSERT INTO DATABASECHANGELOG (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES
  ('00000000000001_jpversioning_schemaPort','entando','liquibase/jpversioning/port/00000000000001_schemaPort.xml','2022-03-03 12:12:35.877767',7,'EXECUTED','8:fa3f7bbe1e84964a52b5d49609df135b','createTable tableName=jpversioning_trashedresources; createTable tableName=jpversioning_versionedcontents; addUniqueConstraint constraintName=jpvers_contentvers_key, tableName=jpversioning_versionedcontents','',NULL,'4.4.3',NULL,NULL,'6305955828');

-- jpmail

INSERT INTO DATABASECHANGELOG (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES
  ('00000000000001_jpmail_dataPort_production','entando','liquibase/jpmail/port/00000000000001_dataPort_production.xml','2022-03-03 12:12:34.621258',5,'EXECUTED','8:a7e88f5e191c357dd3e503963b0730ba','insert tableName=sysconfig','',NULL,'4.4.3','production',NULL,'6305954611');

-- jpseo

INSERT INTO DATABASECHANGELOG (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) VALUES
  ('00000000000001_jpseo_schemaPort','entando','liquibase/jpseo/port/00000000000001_schemaPort.xml','2022-03-03 12:12:36.252658',8,'EXECUTED','8:0cac575831787759faf345608323ed1f','createTable tableName=jpseo_friendlycode','',NULL,'4.4.3',NULL,NULL,'6305956213'),
  ('00000000000001_jpseo_dataPort_production','entando','liquibase/jpseo/port/00000000000001_dataPort_production.xml','2022-03-03 12:12:36.280257',9,'EXECUTED','8:283a24fe0ff8c95c4806a1fc9ecc5fa9','insert tableName=widgetcatalog; insert tableName=guifragment; insert tableName=guifragment','',NULL,'4.4.3','production',NULL,'6305956213');

-- jpcontentscheduler

INSERT INTO DATABASECHANGELOG (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id)
  VALUES('00000000000001_jpcontentscheduler_dataPort_production', 'entando', 'liquibase/jpcontentscheduler/port/00000000000001_dataPort_production.xml', '2022-03-03 15:44:33.948', 8, 'EXECUTED', '8:ea617c252a9fd7ef7158ce075325969b', 'insert tableName=sysconfig', '', NULL, '4.4.3', 'production', NULL, '6318673902');
