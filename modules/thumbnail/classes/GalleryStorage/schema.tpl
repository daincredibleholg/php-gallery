## mysql
# A_ThumbnailImage_1.0
UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=1
  WHERE DB_COLUMN_PREFIXname='ThumbnailImage' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=0;

# A_ThumbnailImage_1.1
ALTER TABLE DB_TABLE_PREFIXThumbnailImage
  DROP COLUMN DB_COLUMN_PREFIXfileName;

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=2
  WHERE DB_COLUMN_PREFIXname='ThumbnailImage' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=1;

# ThumbnailImage
CREATE TABLE DB_TABLE_PREFIXThumbnailImage(
 DB_COLUMN_PREFIXid int(11) NOT NULL,
 DB_COLUMN_PREFIXmimeType varchar(128),
 DB_COLUMN_PREFIXsize int(11),
 DB_COLUMN_PREFIXwidth int(11),
 DB_COLUMN_PREFIXheight int(11),
 DB_COLUMN_PREFIXitemMimeTypes varchar(128),
 PRIMARY KEY(DB_COLUMN_PREFIXid)
) DB_TABLE_TYPE
/*!40100 DEFAULT CHARACTER SET utf8 */;

INSERT INTO DB_TABLE_PREFIXSchema (
 DB_COLUMN_PREFIXname,
 DB_COLUMN_PREFIXmajor,
 DB_COLUMN_PREFIXminor
) VALUES('ThumbnailImage', 1, 2);

## postgres
# A_ThumbnailImage_1.0
UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=1
  WHERE DB_COLUMN_PREFIXname='ThumbnailImage' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=0;

# A_ThumbnailImage_1.1
ALTER TABLE DB_TABLE_PREFIXThumbnailImage DROP COLUMN DB_COLUMN_PREFIXfileName;

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=2
  WHERE DB_COLUMN_PREFIXname='ThumbnailImage' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=1;

# ThumbnailImage
CREATE TABLE DB_TABLE_PREFIXThumbnailImage(
 DB_COLUMN_PREFIXid INTEGER NOT NULL,
 DB_COLUMN_PREFIXmimeType VARCHAR(128),
 DB_COLUMN_PREFIXsize INTEGER,
 DB_COLUMN_PREFIXwidth INTEGER,
 DB_COLUMN_PREFIXheight INTEGER,
 DB_COLUMN_PREFIXitemMimeTypes VARCHAR(128)
);

ALTER TABLE DB_TABLE_PREFIXThumbnailImage ADD PRIMARY KEY (DB_COLUMN_PREFIXid);

INSERT INTO DB_TABLE_PREFIXSchema (
 DB_COLUMN_PREFIXname,
 DB_COLUMN_PREFIXmajor,
 DB_COLUMN_PREFIXminor
) VALUES('ThumbnailImage', 1, 2);

## oracle
# A_ThumbnailImage_1.0
UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=1
  WHERE DB_COLUMN_PREFIXname='ThumbnailImage' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=0;

# A_ThumbnailImage_1.1
ALTER TABLE DB_TABLE_PREFIXThumbnailImage
  DROP (DB_COLUMN_PREFIXfileName);

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=2
  WHERE DB_COLUMN_PREFIXname='ThumbnailImage' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=1;

# ThumbnailImage
CREATE TABLE DB_TABLE_PREFIXThumbnailImage(
 DB_COLUMN_PREFIXid INTEGER NOT NULL,
 DB_COLUMN_PREFIXmimeType VARCHAR2(128),
 DB_COLUMN_PREFIXsize INTEGER,
 DB_COLUMN_PREFIXwidth INTEGER,
 DB_COLUMN_PREFIXheight INTEGER,
 DB_COLUMN_PREFIXitemMimeTypes VARCHAR2(128)
);

ALTER TABLE DB_TABLE_PREFIXThumbnailImage
 ADD PRIMARY KEY (DB_COLUMN_PREFIXid)
;

INSERT INTO DB_TABLE_PREFIXSchema (
 DB_COLUMN_PREFIXname,
 DB_COLUMN_PREFIXmajor,
 DB_COLUMN_PREFIXminor
) VALUES('ThumbnailImage', 1, 2);

## db2
# A_ThumbnailImage_1.0
UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=1
  WHERE DB_COLUMN_PREFIXname='ThumbnailImage' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=0;

# A_ThumbnailImage_1.1
ALTER TABLE DB_TABLE_PREFIXThumbnailImage DROP COLUMN DB_COLUMN_PREFIXfileName;

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=2
  WHERE DB_COLUMN_PREFIXname='ThumbnailImage' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=1;

# ThumbnailImage
CREATE TABLE DB_TABLE_PREFIXThumbnailImage(
 DB_COLUMN_PREFIXid INTEGER NOT NULL,
 DB_COLUMN_PREFIXmimeType VARCHAR(128),
 DB_COLUMN_PREFIXsize INTEGER,
 DB_COLUMN_PREFIXwidth INTEGER,
 DB_COLUMN_PREFIXheight INTEGER,
 DB_COLUMN_PREFIXitemMimeTypes VARCHAR(128)
);

ALTER TABLE DB_TABLE_PREFIXThumbnailImage ADD PRIMARY KEY (DB_COLUMN_PREFIXid);

INSERT INTO DB_TABLE_PREFIXSchema (
 DB_COLUMN_PREFIXname,
 DB_COLUMN_PREFIXmajor,
 DB_COLUMN_PREFIXminor
) VALUES('ThumbnailImage', 1, 2);

## mssql
# A_ThumbnailImage_1.0
UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=1
  WHERE DB_COLUMN_PREFIXname='ThumbnailImage' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=0;

# A_ThumbnailImage_1.1
ALTER TABLE DB_TABLE_PREFIXThumbnailImage DROP COLUMN DB_COLUMN_PREFIXfileName;

UPDATE DB_TABLE_PREFIXSchema
  SET DB_COLUMN_PREFIXmajor=1, DB_COLUMN_PREFIXminor=2
  WHERE DB_COLUMN_PREFIXname='ThumbnailImage' AND DB_COLUMN_PREFIXmajor=1 AND DB_COLUMN_PREFIXminor=1;

# ThumbnailImage
CREATE TABLE DB_TABLE_PREFIXThumbnailImage(
 DB_COLUMN_PREFIXid INT NOT NULL,
 DB_COLUMN_PREFIXmimeType NVARCHAR(128) NULL,
 DB_COLUMN_PREFIXsize INT NULL,
 DB_COLUMN_PREFIXwidth INT NULL,
 DB_COLUMN_PREFIXheight INT NULL,
 DB_COLUMN_PREFIXitemMimeTypes NVARCHAR(128) NULL
);

ALTER TABLE DB_TABLE_PREFIXThumbnailImage ADD PRIMARY KEY (DB_COLUMN_PREFIXid);

INSERT INTO DB_TABLE_PREFIXSchema (
 DB_COLUMN_PREFIXname,
 DB_COLUMN_PREFIXmajor,
 DB_COLUMN_PREFIXminor
) VALUES('ThumbnailImage', 1, 2);

