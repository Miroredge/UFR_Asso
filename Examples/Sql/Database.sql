-- Active: 1668639301205@@localhost@3306@ufr_asso
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- ------------------------------------------------------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------  --------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------

-- -----------------------------------------------------
-- Schema ufr_asso
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS ufr_asso ;

-- -----------------------------------------------------
-- Schema ufr_asso
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS ufr_asso DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
SHOW WARNINGS;
USE ufr_asso ;

-- -----------------------------------------------------
-- Table ufr_asso.aso
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.aso ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.aso (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT		COMMENT 'Technical ID'
--
,  SIR_NBR 		VARCHAR		(14)	NOT NULL			COMMENT 'SIRET number (Unique)'
,  NAM 			VARCHAR		(45)	NOT NULL			COMMENT 'Name of the organisation'
,  LOC			VARCHAR		(45)	    NULL	DEFAULT NULL	COMMENT 'Location of the organisation'
,  LGO 			BLOB 			    NULL			COMMENT 'Logo (Base64 encoded)'
,  MBR_PCE 		DOUBLE			NOT NULL			COMMENT 'Price of the membership (currency Euro)'
--
,  CRE_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Creator ID'
,  CRE_DAT		TIMESTAMP		NOT NULL			COMMENT 'Creator date-time'
,  UPD_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Updator ID'
,  UPD_DAT		TIMESTAMP		NOT NULL			COMMENT 'Update date-time'
--
, PRIMARY KEY (ROW_IDT)
)
COMMENT 'Organisation/Association'
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE UNIQUE	INDEX uk_aso_1_idx			ON ufr_asso.aso		(SIR_NBR ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.evt
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.evt ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.evt (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT		COMMENT 'Technical ID'
--
,  UNQ_ID		VARCHAR		(8)	NOT NULL			COMMENT 'Unique API Identifier (Base36)'
,  NAM			VARCHAR		(45)	NOT NULL			COMMENT 'Name of the event'
,  STT_DAT_TIM		TIMESTAMP		NOT NULL			COMMENT 'Start date-time of the event'
,  END_DAT_TIM		TIMESTAMP		NOT NULL			COMMENT 'End date-time of the event'
,  PLC			VARCHAR		(200)	    NULL	DEFAULT NULL	COMMENT 'Location of the event (Country, Address, City, Zip code, ...)'
,  PCE			DOUBLE			    NULL	DEFAULT NULL	COMMENT 'Price of subscription to the event (currency Euro)'
,  DSC			TEXT			    NULL	DEFAULT NULL	COMMENT 'Description of the event'
,  CRE_ASO_ROW_IDT	BIGINT		(20)	NOT NULL			COMMENT 'Technical identifier of the Organisation that created the Event'
--
,  CRE_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Creator ID'
,  CRE_DAT		TIMESTAMP		NOT NULL			COMMENT 'Creator date-time'
,  UPD_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Updator ID'
,  UPD_DAT		TIMESTAMP		NOT NULL			COMMENT 'Update date-time'
--
, PRIMARY KEY (ROW_IDT)
, CONSTRAINT fk_evt_aso_1
    FOREIGN KEY (CRE_ASO_ROW_IDT)
    REFERENCES ufr_asso.aso (ROW_IDT)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
COMMENT 'Event/Party created by an Organisation'
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE 		INDEX fk_evt_aso_1_idx		ON ufr_asso.evt		(CRE_ASO_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;
CREATE UNIQUE	INDEX uk_evt_1_idx		ON ufr_asso.evt		(NAM ASC, STT_DAT_TIM ASC, PLC ASC, CRE_ASO_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;
CREATE UNIQUE	INDEX uk_evt_2_idx		ON ufr_asso.evt (UNQ_ID ASC) VISIBLE;
 
SHOW WARNINGS;
 
-- -----------------------------------------------------
-- Table ufr_asso.nws_ltr
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.nws_ltr ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.nws_ltr (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT		COMMENT 'Technical ID'
--
,  UNQ_ID		VARCHAR		(8)	NOT NULL			COMMENT 'Unique API Identifier (Base36)'
,  TTL			VARCHAR		(100)	NOT NULL			COMMENT 'Title of the Newsletter'
,  DSC			TEXT			NOT NULL			COMMENT 'Short description/Summary of the Newsletter'
,  BDY			TEXT			NOT NULL			COMMENT 'Body of the Newsletter'
,  PBL_DAT		TIMESTAMP		    NULL			COMMENT 'Publishing date of the Newsletter - If not set, the newsletter is still a draft'
,  ASO_ROW_IDT		BIGINT		(20)	NOT NULL			COMMENT 'Technical identifier of the Organisation that created the Newsletter'
--
,  CRE_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Creator ID'
,  CRE_DAT		TIMESTAMP		NOT NULL			COMMENT 'Creator date-time'
,  UPD_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Updator ID'
,  UPD_DAT		TIMESTAMP		NOT NULL			COMMENT 'Update date-time'
--
, PRIMARY KEY (ROW_IDT)
, CONSTRAINT fk_nws_ltr_aso_1
    FOREIGN KEY (ASO_ROW_IDT)
    REFERENCES ufr_asso.aso (ROW_IDT)
)
COMMENT 'Newsletter published by an Organisation'
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE 		INDEX fk_nws_ltr_aso_1_idx	ON ufr_asso.nws_ltr	(ASO_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;
CREATE UNIQUE	INDEX uk_nws_ltr_1_idx		ON ufr_asso.nws_ltr (UNQ_ID ASC) VISIBLE;
 
SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.opn_hrs
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.opn_hrs ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.opn_hrs (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT		COMMENT 'Technical ID'
--
,  UNQ_ID		VARCHAR		(8)	NOT NULL			COMMENT 'Unique API Identifier (Base36)'
,  DAY_WEK		VARCHAR		(10)	NOT NULL			COMMENT 'Day of the week'
,  OPN			TIME			NOT NULL			COMMENT 'Opening time'
,  CLO 			TIME			NOT NULL			COMMENT 'Closing time'
,  ASO_ROW_IDT		BIGINT		(20)	NOT NULL			COMMENT 'Identifier of the Organisation that declared the time slot'
--
,  CRE_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Creator ID'
,  CRE_DAT		TIMESTAMP		NOT NULL			COMMENT 'Creator date-time'
,  UPD_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Updator ID'
,  UPD_DAT		TIMESTAMP		NOT NULL			COMMENT 'Update date-time'
--
, PRIMARY KEY (ROW_IDT)
, CONSTRAINT fk_opn_hrs_aso_1
    FOREIGN KEY (ASO_ROW_IDT)
    REFERENCES ufr_asso.aso (ROW_IDT)
)
COMMENT 'Opening time slots of an Organisation'
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE		INDEX fk_opn_hrs_aso_1_idx 	ON ufr_asso.opn_hrs	(ASO_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;
CREATE UNIQUE	INDEX uk_opn_hrs_1_idx		ON ufr_asso.opn_hrs (UNQ_ID ASC) VISIBLE;
 
SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.rol
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.rol;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.rol (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT		COMMENT 'Technical ID'
--
,  NAM			VARCHAR		(25)	    NULL DEFAULT NULL		COMMENT 'Role'
--
,  CRE_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Creator ID'
,  CRE_DAT		TIMESTAMP		NOT NULL			COMMENT 'Creator date-time'
,  UPD_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Updator ID'
,  UPD_DAT		TIMESTAMP		NOT NULL			COMMENT 'Update date-time'
--
, PRIMARY KEY (ROW_IDT)
)
COMMENT 'List of Roles'
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE UNIQUE	INDEX uk_rol_1_idx		ON ufr_asso.rol (NAM ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.aso_has_evt
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.aso_has_evt ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.aso_has_evt (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT		COMMENT 'Technical ID'
--
,  ASO_ROW_IDT		BIGINT		(20)	NOT NULL			COMMENT 'Technical identifier of the Organisation'
,  EVT_ROW_IDT		BIGINT		(20)	NOT NULL			COMMENT 'Technical identifier of the Event'
--
,  CRE_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Creator ID'
,  CRE_DAT		TIMESTAMP		NOT NULL			COMMENT 'Creator date-time'
,  UPD_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Updator ID'
,  UPD_DAT		TIMESTAMP		NOT NULL			COMMENT 'Update date-time'
--
, PRIMARY KEY (ROW_IDT)
, CONSTRAINT fk_aso_has_evt_aso_1
    FOREIGN KEY (ASO_ROW_IDT)
    REFERENCES ufr_asso.aso (ROW_IDT)
, CONSTRAINT fk_aso_has_evt_evt_1
    FOREIGN KEY (EVT_ROW_IDT)
    REFERENCES ufr_asso.evt (ROW_IDT)
)
COMMENT 'Link Organisation-Event'
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
;

SHOW WARNINGS;
CREATE		INDEX fk_aso_has_evt_aso_1_idx	ON ufr_asso.aso_has_evt (ASO_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;
CREATE		INDEX fk_aso_has_evt_evt_1_idx	ON ufr_asso.aso_has_evt (EVT_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.boo_ety
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.boo_ety;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.boo_ety (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT		COMMENT 'Technical ID'
--
,  UNQ_ID		VARCHAR		(8)	NOT NULL			COMMENT 'Unique API Identifier (Base36)'
,  OPT_DAT		DATE			NOT NULL			COMMENT 'Date-time of the operation'
,  MDE			ENUM('CASH'
                           , 'CHECK'
                           , 'BANK_TRANSFER'
                           , 'CREDIT_CARD'
                           , 'DEBIT_CARD'
                           , 'INTERNET'
                           , 'CRYPTO'
                           , 'OTHER')		NOT NULL			COMMENT 'Mode of payment'
,  NAM			VARCHAR		(255)	NOT NULL			COMMENT 'Description of the operation'
,  TYP			ENUM('INCOME'
                           , 'PAYMENT')		NOT NULL			COMMENT 'Payment or Income'
,  AMT			DOUBLE			NOT NULL			COMMENT 'Amount of the operation'
,  ASO_ROW_IDT		BIGINT		(20)	NOT NULL			COMMENT 'Technical identifier of the Organisation that recordred the transaction'
--
,  CRE_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Creator ID'
,  CRE_DAT		TIMESTAMP		NOT NULL			COMMENT 'Creator date-time'
,  UPD_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Updator ID'
,  UPD_DAT		TIMESTAMP		NOT NULL			COMMENT 'Update date-time'
--
, PRIMARY KEY (ROW_IDT)
, CONSTRAINT fk_boo_ety_aso_1
    FOREIGN KEY (ASO_ROW_IDT)
    REFERENCES ufr_asso.aso (ROW_IDT)
)
COMMENT 'Book entries of an Organisation'
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
;

SHOW WARNINGS;
CREATE		INDEX fk_boo_ety_aso_1_idx		ON ufr_asso.boo_ety (ASO_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;
CREATE UNIQUE	INDEX uk_boo_ety_1_idx			ON ufr_asso.boo_ety (UNQ_ID ASC) VISIBLE;
 
SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.usr
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.usr ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.usr (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT		COMMENT 'Technical ID'
--
,  PSD		VARCHAR		(50)	NOT NULL				COMMENT 'Pseudo (Unique)'
,  STU_NBR		VARCHAR		(10)	    NULL	DEFAULT NULL	COMMENT 'Student number'
,  FST_NAM		VARCHAR		(20)	NOT NULL			COMMENT 'First name'
,  LST_NAM		VARCHAR		(25)	NOT NULL			COMMENT 'Last name'
,  GDR			ENUM('M'
                           , 'F'
                           , 'O')		    NULL	DEFAULT NULL	COMMENT 'Gender (Male : M, F : Female, O : Other)'
,  PRF_PIC		LONGBLOB		    NULL	DEFAULT NULL	COMMENT 'Picture (Base64 encoded)'
,  EML			VARCHAR(255)		NOT NULL			COMMENT 'Email'
,  PHN_NBR		VARCHAR		(15)	    NULL	DEFAULT NULL	COMMENT 'Phone humber'
,  PHN_BOK		BOOLEAN			NOT NULL			COMMENT 'Accept(true)/Refuse(false) to be displayed in the PhoneBook'
,  NTF			BOOLEAN			NOT NULL			COMMENT 'Accept(true)/Refuse(false) to receive the notifications'
,  PWD			VARCHAR		(64)	NOT NULL			COMMENT 'Hash of the Password'
,  TMP_PWD		BOOLEAN			NOT NULL			COMMENT 'Hash of the Temporary password'
--
,  CRE_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Creator ID'
,  CRE_DAT		TIMESTAMP		NOT NULL			COMMENT 'Creator date-time'
,  UPD_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Updator ID'
,  UPD_DAT		TIMESTAMP		NOT NULL			COMMENT 'Update date-time'
--
, PRIMARY KEY (ROW_IDT)
)
COMMENT 'Users'
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
;

SHOW WARNINGS;
CREATE UNIQUE	INDEX uk_usr_1_idx	ON ufr_asso.usr (FST_NAM ASC, LST_NAM ASC, EML ASC) VISIBLE;

SHOW WARNINGS;
CREATE UNIQUE	INDEX uk_usr_2_idx	ON ufr_asso.usr (STU_NBR ASC) VISIBLE;


SHOW WARNINGS;
CREATE UNIQUE	INDEX uk_usr_3_idx	ON ufr_asso.usr (PSD ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.usr_has_aso_and_rol
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.usr_has_aso_and_rol ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.usr_has_aso_and_rol (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT		COMMENT 'Technical ID'
--
,  USR_ROW_IDT		BIGINT		(20)	NOT NULL			COMMENT 'Technical identifier of the User'
,  ASO_ROW_IDT		BIGINT		(20)	    NULL	DEFAULT NULL	COMMENT 'Technical identifier of the Organisation'
,  ROL_ROW_IDT		BIGINT		(20)	NOT NULL			COMMENT 'Technical identifier of the Role'
--
,  CRE_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Creator ID'
,  CRE_DAT		TIMESTAMP		NOT NULL			COMMENT 'Creator date-time'
,  UPD_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Updator ID'
,  UPD_DAT		TIMESTAMP		NOT NULL			COMMENT 'Update date-time'
--
, PRIMARY KEY (ROW_IDT)
, CONSTRAINT fk_usr_has_aso_and_rol_usr_1
    FOREIGN KEY (USR_ROW_IDT)
    REFERENCES ufr_asso.usr (ROW_IDT)
, CONSTRAINT fk_usr_has_aso_and_rol_aso_1
    FOREIGN KEY (ASO_ROW_IDT)
    REFERENCES ufr_asso.aso (ROW_IDT)
, CONSTRAINT fk_usr_has_aso_and_rol_rol_1
    FOREIGN KEY (ROL_ROW_IDT)
    REFERENCES ufr_asso.rol (ROW_IDT)
)
COMMENT 'Link User-Organisation-Role'
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
;

SHOW WARNINGS;
CREATE		INDEX	fk_usr_has_aso_and_rol_usr_1_idx	ON ufr_asso.usr_has_aso_and_rol (USR_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;
CREATE		INDEX	fk_usr_has_aso_and_rol_aso_1_idx	ON ufr_asso.usr_has_aso_and_rol	(ASO_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;
CREATE		INDEX	fk_usr_has_aso_and_rol_rol_1_idx	ON ufr_asso.usr_has_aso_and_rol (ROL_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;

CREATE UNIQUE	INDEX uk_usr_has_aso_and_rol_1_idx		ON ufr_asso.usr_has_aso_and_rol	(USR_ROW_IDT ASC, ASO_ROW_IDT ASC, ROL_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.usr_has_evt
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.usr_has_evt ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.usr_has_evt

 (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT		COMMENT 'Technical ID'
--
,  USR_ROW_IDT		BIGINT		(20)	NOT NULL			COMMENT 'Technical identifier of the User'
,  EVT_ROW_IDT		BIGINT		(20)	NOT NULL			COMMENT 'Technical identifier of the Event'
--
,  CRE_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Creator ID'
,  CRE_DAT		TIMESTAMP		NOT NULL			COMMENT 'Creator date-time'
,  UPD_ID		VARCHAR		(255)	NOT NULL			COMMENT 'Updator ID'
,  UPD_DAT		TIMESTAMP		NOT NULL			COMMENT 'Update date-time'
--
, PRIMARY KEY (ROW_IDT)
, CONSTRAINT fk_usr_has_evt_usr_1
    FOREIGN KEY (USR_ROW_IDT)
    REFERENCES ufr_asso.usr (ROW_IDT)
, CONSTRAINT fk_usr_has_evt_evt_1
    FOREIGN KEY (EVT_ROW_IDT)
    REFERENCES ufr_asso.evt (ROW_IDT)
)
COMMENT 'Link User-Event'
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
;

SHOW WARNINGS;
CREATE		INDEX	fk_usr_has_evt_usr_1_idx		ON ufr_asso.usr_has_evt (USR_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;
CREATE		INDEX	fk_usr_has_evt_evt_1_idx		ON ufr_asso.usr_has_evt (EVT_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;

CREATE UNIQUE	INDEX uk_usr_has_evt_1_idx		ON ufr_asso.usr_has_evt	(USR_ROW_IDT ASC, EVT_ROW_IDT ASC) VISIBLE;
SHOW WARNINGS;

-- -----------------------------------------------------
-- Sequence ufr_asso.seq_boo_ety
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.seq_boo_ety;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.seq_boo_ety (
   SEQ_NUM		BIGINT		(20)	NOT NULL AUTO_INCREMENT		COMMENT 'Technical ID'
, NAM			ENUM('BOO_ETY')		NOT NULL			COMMENT 'Unique Sequence identifier'
, PRIMARY KEY (SEQ_NUM)
)
COMMENT 'Sequence management of the Book entries'
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
;

CREATE UNIQUE	INDEX uk_seq_boo_ety_1_idx	ON ufr_asso.seq_boo_ety	 	(SEQ_NUM) VISIBLE;

SHOW WARNINGS;

-- default values for table ufr_asso.seq_boo_ety
INSERT INTO ufr_asso.seq_boo_ety (SEQ_NUM, NAM) VALUES (1, 'BOO_ETY');

-- -----------------------------------------------------
-- Sequence ufr_asso.seq_nws_ltr
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.seq_nws_ltr;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.seq_nws_ltr (
  SEQ_NUM		BIGINT		(20)	NOT NULL AUTO_INCREMENT		COMMENT 'Technical ID'
, NAM			ENUM('NWS_LTR')		NOT NULL			COMMENT 'Unique Sequence identifier'
, PRIMARY KEY (SEQ_NUM)
)
COMMENT 'Sequence management of the Newsletters'
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
;

CREATE UNIQUE	INDEX uk_seq_nws_ltr_1_idx	ON ufr_asso.seq_nws_ltr	(SEQ_NUM) VISIBLE;

SHOW WARNINGS;

-- default values for table ufr_asso.seq_nws_ltr
INSERT INTO ufr_asso.seq_nws_ltr (SEQ_NUM, NAM) VALUES (1, 'NWS_LTR');

-- -----------------------------------------------------
-- Sequence ufr_asso.seq_opn_hrs
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.seq_opn_hrs;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.seq_opn_hrs (
  SEQ_NUM		BIGINT		(20)	NOT NULL AUTO_INCREMENT		COMMENT 'Technical ID'
, NAM			ENUM('OPN_HRS')		NOT NULL			COMMENT 'Unique Sequence identifier'
, PRIMARY KEY (SEQ_NUM)
)
COMMENT 'Sequence management of the Opening hours'
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
;

CREATE UNIQUE	INDEX uk_seq_opn_hrs_1_idx	ON ufr_asso.seq_opn_hrs	 	(SEQ_NUM) VISIBLE;

SHOW WARNINGS;

-- default values for table ufr_asso.seq_opn_hrs
INSERT INTO ufr_asso.seq_opn_hrs (SEQ_NUM, NAM) VALUES (1, 'OPN_HRS');


-- -----------------------------------------------------
-- Sequence ufr_asso.seq_usr
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.seq_usr;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.seq_usr (
  SEQ_NUM		BIGINT		(20)	NOT NULL AUTO_INCREMENT		COMMENT 'Technical ID'
, NAM			ENUM('USR')		NOT NULL			COMMENT 'Unique Sequence identifier'
, PRIMARY KEY (SEQ_NUM)
)
COMMENT 'Sequence management of the Users'
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
;

CREATE UNIQUE	INDEX uk_seq_usr_1_idx	ON ufr_asso.seq_usr	 	(SEQ_NUM) VISIBLE;

SHOW WARNINGS;

-- default values for table ufr_asso.seq_usr
INSERT INTO ufr_asso.seq_usr (SEQ_NUM, NAM) VALUES (1, 'USR');

-- -----------------------------------------------------
-- Sequence ufr_asso.seq_evt
-- -----------------------------------------------------

DROP TABLE IF EXISTS ufr_asso.seq_evt;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.seq_evt (
  SEQ_NUM		BIGINT		(20)	NOT NULL AUTO_INCREMENT		COMMENT 'Technical ID'
, NAM			ENUM('EVT')		NOT NULL			COMMENT 'Unique Sequence identifier'
, PRIMARY KEY (SEQ_NUM)
)
COMMENT 'Sequence management of the Events'
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
;

CREATE UNIQUE	INDEX uk_seq_evt_1_idx	ON ufr_asso.seq_evt	 	(SEQ_NUM) VISIBLE;

SHOW WARNINGS;

-- default values for table ufr_asso.seq_evt
INSERT INTO ufr_asso.seq_evt (SEQ_NUM, NAM) VALUES (1, 'EVT');

-- --------------------------------------------------------
-- Stored functions that mimic the Oracle sequence.nextval
-- --------------------------------------------------------

DELIMITER $$

-- DROP PROCEDURE IF EXISTS `generateId`$$

-- CREATE PROCEDURE generateId(IN i_tableName VARCHAR(255),IN i_type VARCHAR(255), OUT o_lastId BIGINT(20))
-- BEGIN
--         SET @query=CONCAT('INSERT INTO `ufr_asso`.`',i_tableName,'` (NAM, SEQ_NUM) VALUES (''',i_type,''', LAST_INSERT_ID(1)) ON DUPLICATE KEY UPDATE seq_num = LAST_INSERT_ID(seq_num + 1)');
--         PREPARE stmt FROM  @query;
--         EXECUTE stmt;
--         DEALLOCATE PREPARE stmt;
--         SELECT LAST_INSERT_ID() INTO o_lastId;
-- END$$

DROP FUNCTION IF EXISTS `generateId_OpeningHour`$$

CREATE FUNCTION generateId_OpeningHour()
RETURNS BIGINT(20)
DETERMINISTIC -- NOT TRUE (IN THE TRUE TRUTH)
BEGIN
        UPDATE `ufr_asso`.`seq_opn_hrs` SET seq_num = LAST_INSERT_ID(seq_num + 1) where NAM = 'OPN_HRS'; -- V3
         RETURN LAST_INSERT_ID();
END$$


DROP FUNCTION IF EXISTS `generateId_Newsletter`$$

CREATE FUNCTION generateId_Newsletter()
RETURNS BIGINT(20)
DETERMINISTIC -- NOT TRUE (IN THE TRUE TRUTH)
BEGIN
        UPDATE `ufr_asso`.`seq_nws_ltr` SET seq_num = LAST_INSERT_ID(seq_num + 1) where NAM = 'NWS_LTR'; -- V3
         RETURN LAST_INSERT_ID();
END$$

DROP FUNCTION IF EXISTS `generateId_BookEntry`$$

CREATE FUNCTION generateId_BookEntry()
RETURNS BIGINT(20)
DETERMINISTIC -- NOT TRUE (IN THE TRUE TRUTH)
BEGIN
        UPDATE `ufr_asso`.`seq_boo_ety` SET seq_num = LAST_INSERT_ID(seq_num + 1) where NAM = 'BOO_ETY'; -- V3
         RETURN LAST_INSERT_ID();
END$$

DROP FUNCTION IF EXISTS `generateId_User`$$

CREATE FUNCTION generateId_User()
RETURNS BIGINT(20)
DETERMINISTIC -- NOT TRUE (IN THE TRUE TRUTH)
BEGIN
        UPDATE `ufr_asso`.`seq_usr` SET seq_num = LAST_INSERT_ID(seq_num + 1) where NAM = 'USR'; -- V3
         RETURN LAST_INSERT_ID();
END$$

DROP FUNCTION IF EXISTS `generateId_Event`$$

CREATE FUNCTION generateId_Event()
RETURNS BIGINT(20)
DETERMINISTIC -- NOT TRUE (IN THE TRUE TRUTH)
BEGIN
        -- INSERT INTO `ufr_asso`.`seq_evt` (NAM, SEQ_NUM) VALUES ('EVT', LAST_INSERT_ID(1)) ON DUPLICATE KEY UPDATE seq_num = LAST_INSERT_ID(seq_num + 1); -- V1 Deprecated
        -- INSERT INTO `ufr_asso`.`seq_evt` (NAM, SEQ_NUM) SELECT 'EVT', MAX(SEQ_NUM) AS seq_num FROM seq_evt ON DUPLICATE KEY UPDATE seq_num = LAST_INSERT_ID(seq_num + 1); -- V2 (Works ?)
        UPDATE `ufr_asso`.`seq_evt` SET seq_num = LAST_INSERT_ID(seq_num + 1) where NAM = 'EVT'; -- V3
         RETURN LAST_INSERT_ID();
END$$

DELIMITER ;

-- ------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;