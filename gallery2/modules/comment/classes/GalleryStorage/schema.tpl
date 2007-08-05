## mysql
# A_GalleryComment_1.0
ALTER TABLE DB_TABLE_PREFIXComment
  DROP INDEX DB_COLUMN_PREFIXdate,
  ADD INDEX DB_TABLE_PREFIXComment_95610(DB_COLUMN_PREFIXdate);

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=1
  WHERE DB_COLUMN_PREFIXname='Comment' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=0;

# A_GalleryComment_1.1
ALTER TABLE DB_TABLE_PREFIXComment
  ADD COLUMN DB_COLUMN_PREFIXauthor varchar(128);

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=2
  WHERE DB_COLUMN_PREFIXname='Comment' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=1;

# A_GalleryComment_1.2
ALTER TABLE DB_TABLE_PREFIXComment
  ADD COLUMN DB_COLUMN_PREFIXpublishStatus int(11) NOT NULL DEFAULT '0';

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=3
  WHERE DB_COLUMN_PREFIXname='Comment' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=2;

# GalleryComment
CREATE TABLE DB_TABLE_PREFIXComment(
 DB_COLUMN_PREFIXid int(11) NOT NULL,
 DB_COLUMN_PREFIXcommenterId int(11) NOT NULL,
 DB_COLUMN_PREFIXhost varchar(128) NOT NULL,
 DB_COLUMN_PREFIXsubject varchar(128),
 DB_COLUMN_PREFIXcomment text,
 DB_COLUMN_PREFIXdate int(11) NOT NULL,
 DB_COLUMN_PREFIXauthor varchar(128),
 DB_COLUMN_PREFIXpublishStatus int(11) NOT NULL DEFAULT '0',
 PRIMARY KEY(DB_COLUMN_PREFIXid),
 INDEX DB_TABLE_PREFIXComment_95610(DB_COLUMN_PREFIXdate),
 INDEX DB_TABLE_PREFIXComment_70722(DB_COLUMN_PREFIXpublishStatus)
) DB_TABLE_TYPE
/*!40100 DEFAULT CHARACTER SET utf8 */;

INSERT INTO DB_TABLE_PREFIXSchema (
 DB_COLUMN_PREFIXname,
 DB_COLUMN_PREFIXmajor,
 DB_COLUMN_PREFIXminor
) VALUES('Comment', 1, 3);

## postgres
# A_GalleryComment_1.0
DROP INDEX DB_TABLE_PREFIXComment_95610;

CREATE INDEX DB_TABLE_PREFIXComment_95610 ON DB_TABLE_PREFIXComment(DB_COLUMN_PREFIXdate);

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=1
  WHERE DB_COLUMN_PREFIXname='Comment' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=0;

# A_GalleryComment_1.1
ALTER TABLE DB_TABLE_PREFIXComment ADD COLUMN DB_COLUMN_PREFIXauthor VARCHAR(128);

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=2
  WHERE DB_COLUMN_PREFIXname='Comment' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=1;

# A_GalleryComment_1.2
ALTER TABLE DB_TABLE_PREFIXComment ADD COLUMN DB_COLUMN_PREFIXpublishStatus INTEGER;

ALTER TABLE DB_TABLE_PREFIXComment ALTER COLUMN DB_COLUMN_PREFIXpublishStatus SET DEFAULT '0';

UPDATE DB_TABLE_PREFIXComment SET DB_COLUMN_PREFIXpublishStatus = '0';

ALTER TABLE DB_TABLE_PREFIXComment ALTER DB_COLUMN_PREFIXpublishStatus SET NOT NULL;

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=3
  WHERE DB_COLUMN_PREFIXname='Comment' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=2;

# GalleryComment
CREATE TABLE DB_TABLE_PREFIXComment(
 DB_COLUMN_PREFIXid INTEGER NOT NULL,
 DB_COLUMN_PREFIXcommenterId INTEGER NOT NULL,
 DB_COLUMN_PREFIXhost VARCHAR(128) NOT NULL,
 DB_COLUMN_PREFIXsubject VARCHAR(128),
 DB_COLUMN_PREFIXcomment text,
 DB_COLUMN_PREFIXdate INTEGER NOT NULL,
 DB_COLUMN_PREFIXauthor VARCHAR(128),
 DB_COLUMN_PREFIXpublishStatus INTEGER DEFAULT '0' NOT NULL
);

ALTER TABLE DB_TABLE_PREFIXComment ADD PRIMARY KEY (DB_COLUMN_PREFIXid);

CREATE INDEX DB_TABLE_PREFIXComment_95610 ON DB_TABLE_PREFIXComment(DB_COLUMN_PREFIXdate);

CREATE INDEX DB_TABLE_PREFIXComment_70722 ON DB_TABLE_PREFIXComment(DB_COLUMN_PREFIXpublishStatus);

INSERT INTO DB_TABLE_PREFIXSchema (
 DB_COLUMN_PREFIXname,
 DB_COLUMN_PREFIXmajor,
 DB_COLUMN_PREFIXminor
) VALUES('Comment', 1, 3);

## oracle
# A_GalleryComment_1.0
  DROP INDEX DB_TABLE_PREFIXComment_95610;

CREATE INDEX DB_TABLE_PREFIXComment_95610 ON DB_TABLE_PREFIXComment(DB_COLUMN_PREFIXdate);

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=1
  WHERE DB_COLUMN_PREFIXname='Comment' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=0;

# A_GalleryComment_1.1
ALTER TABLE DB_TABLE_PREFIXComment
  ADD (DB_COLUMN_PREFIXauthor VARCHAR2(128));

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=2
  WHERE DB_COLUMN_PREFIXname='Comment' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=1;

# A_GalleryComment_1.2
ALTER TABLE DB_TABLE_PREFIXComment
  ADD (DB_COLUMN_PREFIXpublishStatus INTEGER DEFAULT '0' NOT NULL);

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=3
  WHERE DB_COLUMN_PREFIXname='Comment' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=2;

# GalleryComment
CREATE TABLE DB_TABLE_PREFIXComment(
 DB_COLUMN_PREFIXid INTEGER NOT NULL,
 DB_COLUMN_PREFIXcommenterId INTEGER NOT NULL,
 DB_COLUMN_PREFIXhost VARCHAR2(128) NOT NULL,
 DB_COLUMN_PREFIXsubject VARCHAR2(128),
 DB_COLUMN_PREFIXcomment VARCHAR2(4000),
 DB_COLUMN_PREFIXdate INTEGER NOT NULL,
 DB_COLUMN_PREFIXauthor VARCHAR2(128),
 DB_COLUMN_PREFIXpublishStatus INTEGER DEFAULT '0' NOT NULL
);

CREATE INDEX DB_TABLE_PREFIXComment_95610
   ON DB_TABLE_PREFIXComment(DB_COLUMN_PREFIXdate);

CREATE INDEX DB_TABLE_PREFIXComment_70722
   ON DB_TABLE_PREFIXComment(DB_COLUMN_PREFIXpublishStatus);

ALTER TABLE DB_TABLE_PREFIXComment
 ADD PRIMARY KEY (DB_COLUMN_PREFIXid)
;

INSERT INTO DB_TABLE_PREFIXSchema (
 DB_COLUMN_PREFIXname,
 DB_COLUMN_PREFIXmajor,
 DB_COLUMN_PREFIXminor
) VALUES('Comment', 1, 3);

## db2
# A_GalleryComment_1.0
DROP INDEX DB_TABLE_PREFIXCommefc_95610;

CREATE INDEX DB_TABLE_PREFIXCommefc_95610 ON DB_TABLE_PREFIXComment(DB_COLUMN_PREFIXdate);

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=1
  WHERE DB_COLUMN_PREFIXname='Comment' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=0;

# A_GalleryComment_1.1
ALTER TABLE DB_TABLE_PREFIXComment ADD COLUMN DB_COLUMN_PREFIXauthor VARCHAR(128);

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=2
  WHERE DB_COLUMN_PREFIXname='Comment' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=1;

# A_GalleryComment_1.2
ALTER TABLE DB_TABLE_PREFIXComment ADD COLUMN DB_COLUMN_PREFIXpublishStatus INTEGER NOT NULL DEFAULT 0;

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=3
  WHERE DB_COLUMN_PREFIXname='Comment' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=2;

# GalleryComment
CREATE TABLE DB_TABLE_PREFIXComment(
 DB_COLUMN_PREFIXid INTEGER NOT NULL,
 DB_COLUMN_PREFIXcommenterId INTEGER NOT NULL,
 DB_COLUMN_PREFIXhost VARCHAR(128) NOT NULL,
 DB_COLUMN_PREFIXsubject VARCHAR(128),
 DB_COLUMN_PREFIXcomment VARCHAR(10000),
 DB_COLUMN_PREFIXdate INTEGER NOT NULL,
 DB_COLUMN_PREFIXauthor VARCHAR(128),
 DB_COLUMN_PREFIXpublishStatus INTEGER NOT NULL DEFAULT 0
);

ALTER TABLE DB_TABLE_PREFIXComment ADD PRIMARY KEY (DB_COLUMN_PREFIXid);

CREATE INDEX DB_TABLE_PREFIXCommefc_95610
   ON DB_TABLE_PREFIXComment(DB_COLUMN_PREFIXdate);

CREATE INDEX DB_TABLE_PREFIXCommefc_70722
   ON DB_TABLE_PREFIXComment(DB_COLUMN_PREFIXpublishStatus);

INSERT INTO DB_TABLE_PREFIXSchema (
 DB_COLUMN_PREFIXname,
 DB_COLUMN_PREFIXmajor,
 DB_COLUMN_PREFIXminor
) VALUES('Comment', 1, 3);

## mssql
# A_GalleryComment_1.0
DROP INDEX DB_TABLE_PREFIXComment.DB_TABLE_PREFIXComment_95610;

CREATE INDEX DB_TABLE_PREFIXComment_95610 ON DB_TABLE_PREFIXComment(DB_COLUMN_PREFIXdate);

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=1
  WHERE DB_COLUMN_PREFIXname='Comment' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=0;

# A_GalleryComment_1.1
ALTER TABLE DB_TABLE_PREFIXComment ADD DB_COLUMN_PREFIXauthor NVARCHAR(128) NULL;

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=2
  WHERE DB_COLUMN_PREFIXname='Comment' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=1;

# A_GalleryComment_1.2
ALTER TABLE DB_TABLE_PREFIXComment ADD DB_COLUMN_PREFIXpublishStatus INT DEFAULT '0' NOT NULL;

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=3
  WHERE DB_COLUMN_PREFIXname='Comment' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=2;

# GalleryComment
CREATE TABLE DB_TABLE_PREFIXComment(
 DB_COLUMN_PREFIXid INT NOT NULL,
 DB_COLUMN_PREFIXcommenterId INT NOT NULL,
 DB_COLUMN_PREFIXhost NVARCHAR(128) NOT NULL,
 DB_COLUMN_PREFIXsubject NVARCHAR(128) NULL,
 DB_COLUMN_PREFIXcomment NVARCHAR(MAX) NULL,
 DB_COLUMN_PREFIXdate INT NOT NULL,
 DB_COLUMN_PREFIXauthor NVARCHAR(128) NULL,
 DB_COLUMN_PREFIXpublishStatus INT DEFAULT '0' NOT NULL
);

ALTER TABLE DB_TABLE_PREFIXComment ADD PRIMARY KEY (DB_COLUMN_PREFIXid);

CREATE INDEX DB_TABLE_PREFIXComment_95610 ON DB_TABLE_PREFIXComment(DB_COLUMN_PREFIXdate);

CREATE INDEX DB_TABLE_PREFIXComment_70722 ON DB_TABLE_PREFIXComment(DB_COLUMN_PREFIXpublishStatus);

INSERT INTO DB_TABLE_PREFIXSchema (
 DB_COLUMN_PREFIXname,
 DB_COLUMN_PREFIXmajor,
 DB_COLUMN_PREFIXminor
) VALUES('Comment', 1, 3);

