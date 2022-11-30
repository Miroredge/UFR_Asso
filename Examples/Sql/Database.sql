-- Active: 1668639301205@@localhost@3306@ufr_asso
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- ------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------

-- -----------------------------------------------------
-- Schema ufr_asso
-- -----------------------------------------------------
DROP SCHEMA ufr_asso;
CREATE SCHEMA IF NOT EXISTS ufr_asso DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
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
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
,  SIR_NBR 		VARCHAR		(14)	NOT NULL
,  NAM 			VARCHAR		(45)	NOT NULL
,  LOC			VARCHAR		(45)	    NULL	DEFAULT NULL
,  LGO 			BLOB 			  NULL
,  MBR_PCE 		DOUBLE			NOT NULL
--
,  CRE_ID		VARCHAR		(255)	NOT NULL
,  CRE_DAT		TIMESTAMP		NOT NULL
,  UPD_ID		VARCHAR		(255)	NOT NULL
,  UPD_DAT		TIMESTAMP		NOT NULL
--
, PRIMARY KEY (ROW_IDT)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE UNIQUE	INDEX uk_aso_1_idx			ON ufr_asso.aso		(SIR_NBR ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.bdg
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.bdg ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.bdg (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
,  OPT_DAT		DATE			NOT NULL
,  TYP			VARCHAR		(45)	NOT NULL				COMMENT 'Cheque / retrait / virement / prelevement'
,  NAM			TEXT			NOT NULL
,  AMT			DECIMAL		(7,2)	NOT NULL
,  ASO_ROW_IDT		BIGINT		(20)	NOT NULL
--
,  CRE_ID		VARCHAR		(255)	NOT NULL
,  CRE_DAT		TIMESTAMP		NOT NULL
,  UPD_ID		VARCHAR		(255)	NOT NULL
,  UPD_DAT		TIMESTAMP		NOT NULL
--
, PRIMARY KEY (ROW_IDT)
, CONSTRAINT fk_bdg_aso_1
  FOREIGN KEY (ASO_ROW_IDT)
  REFERENCES ufr_asso.aso (ROW_IDT)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE 		INDEX fk_bdg_aso_1_idx		ON ufr_asso.bdg		(ASO_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.evt
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.evt ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.evt (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
,  EVT_ID		VARCHAR		(8)	NOT NULL
,  NAM			VARCHAR		(45)	NOT NULL
,  STT_DAT_TIM		TIMESTAMP		NOT NULL
,  END_DAT_TIM		TIMESTAMP		NOT NULL
,  PLC			VARCHAR		(45)	    NULL	DEFAULT NULL -- NULLABLE ????? In the UK
,  PCE			DOUBLE			    NULL	DEFAULT NULL
,  DSC			TEXT			    NULL	DEFAULT NULL
,  CRE_ASO_ROW_IDT	BIGINT		(20)	NOT NULL
--
,  CRE_ID		VARCHAR		(255)	NOT NULL
,  CRE_DAT		TIMESTAMP		NOT NULL
,  UPD_ID		VARCHAR		(255)	NOT NULL
,  UPD_DAT		TIMESTAMP		NOT NULL
--
, PRIMARY KEY (ROW_IDT)
, CONSTRAINT fk_evt_aso_1
    FOREIGN KEY (CRE_ASO_ROW_IDT)
    REFERENCES ufr_asso.aso (ROW_IDT)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE 		INDEX fk_evt_aso_1_idx		ON ufr_asso.evt		(CRE_ASO_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;
CREATE UNIQUE	INDEX uk_evt_1_idx		ON ufr_asso.evt		(NAM ASC, STT_DAT_TIM ASC, PLC ASC, CRE_ASO_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;
CREATE UNIQUE    INDEX uk_evt_2_idx    ON ufr_asso.evt (EVT_ID ASC) VISIBLE;
 
SHOW WARNINGS;
 
-- -----------------------------------------------------
-- Table ufr_asso.nws_ltr
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.nws_ltr ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.nws_ltr (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
,  NAM			VARCHAR		(45)	NOT NULL
,  TXT			TEXT			NOT NULL
,  DSC			TEXT			NOT NULL
,  ASO_ROW_IDT		BIGINT		(20)	NOT NULL
--
,  CRE_ID		VARCHAR		(255)	NOT NULL
,  CRE_DAT		TIMESTAMP		NOT NULL
,  UPD_ID		VARCHAR		(255)	NOT NULL
,  UPD_DAT		TIMESTAMP		NOT NULL
--
, PRIMARY KEY (ROW_IDT)
, CONSTRAINT fk_nws_ltr_aso_1
    FOREIGN KEY (ASO_ROW_IDT)
    REFERENCES ufr_asso.aso (ROW_IDT)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE 		INDEX fk_nws_ltr_aso_1_idx 	ON ufr_asso.nws_ltr	(ASO_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.opn_hrs
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.opn_hrs ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.opn_hrs (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
,  DAY_WEK		VARCHAR		(10)	NOT NULL
,  OPN			TIME			NOT NULL
,  CLO 			TIME			NOT NULL
,  ASO_ROW_IDT		BIGINT		(20)	NOT NULL
--
,  CRE_ID		VARCHAR		(255)	NOT NULL
,  CRE_DAT		TIMESTAMP		NOT NULL
,  UPD_ID		VARCHAR		(255)	NOT NULL
,  UPD_DAT		TIMESTAMP		NOT NULL
--
, PRIMARY KEY (ROW_IDT)
, CONSTRAINT fk_opn_hrs_aso_1
    FOREIGN KEY (ASO_ROW_IDT)
    REFERENCES ufr_asso.aso (ROW_IDT)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE		INDEX fk_opn_hrs_aso_1_idx 	ON ufr_asso.opn_hrs	(ASO_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.rol
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.rol ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.rol (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
,  NAM			VARCHAR		(25)	    NULL DEFAULT NULL
--
,  CRE_ID		VARCHAR		(255)	NOT NULL
,  CRE_DAT		TIMESTAMP		NOT NULL
,  UPD_ID		VARCHAR		(255)	NOT NULL
,  UPD_DAT		TIMESTAMP		NOT NULL
--
, PRIMARY KEY (ROW_IDT)
)
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
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
,  ASO_ROW_IDT		BIGINT		(20)	NOT NULL
,  EVT_ROW_IDT		BIGINT		(20)	NOT NULL
--
,  CRE_ID		VARCHAR		(255)	NOT NULL
,  CRE_DAT		TIMESTAMP		NOT NULL
,  UPD_ID		VARCHAR		(255)	NOT NULL
,  UPD_DAT		TIMESTAMP		NOT NULL
--
, PRIMARY KEY (ROW_IDT)
, CONSTRAINT fk_aso_has_evt_aso_1
    FOREIGN KEY (ASO_ROW_IDT)
    REFERENCES ufr_asso.aso (ROW_IDT)
, CONSTRAINT fk_aso_has_evt_evt_1
    FOREIGN KEY (EVT_ROW_IDT)
    REFERENCES ufr_asso.evt (ROW_IDT)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
;

SHOW WARNINGS;
CREATE		INDEX fk_aso_has_evt_aso_1_idx	ON ufr_asso.aso_has_evt (ASO_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;
CREATE		INDEX fk_aso_has_evt_evt_1_idx	ON ufr_asso.aso_has_evt (EVT_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.bdg
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.bdg ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.bdg (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
,  AMT			DOUBLE			NOT NULL
,  MNS			ENUM('CASH'
                           , 'CHECK'
                           , 'BANK_TRANSFER'
                           , 'CREDIT_CARD'
                           , 'DEBIT_CARD'
                           , 'PAYPAL'
                           , 'BITCOIN'
                           , 'OTHER')		NOT NULL
,  NAM			VARCHAR		(255)	NOT NULL
,  OPT_DAT		DATE			NOT NULL
,  TYP			ENUM('INCOME'
                           , 'OUTCOME')		NOT NULL
,  ASO_ROW_IDT		BIGINT		(20)	NOT NULL
--
,  CRE_ID		VARCHAR		(255)	NOT NULL
,  CRE_DAT		TIMESTAMP		NOT NULL
,  UPD_ID		VARCHAR		(255)	NOT NULL
,  UPD_DAT		TIMESTAMP		NOT NULL
--
, PRIMARY KEY (ROW_IDT)
, CONSTRAINT fk_bdg_aso_1
    FOREIGN KEY (ASO_ROW_IDT)
    REFERENCES ufr_asso.aso (ROW_IDT)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
;

SHOW WARNINGS;
CREATE		INDEX fk_bdg_aso_1_idx		ON ufr_asso.bdg (ASO_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.usr
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.usr ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.usr (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
,  USR_ID		VARCHAR		(8)	NOT NULL
,  STU_NBR		VARCHAR		(10)	    NULL	DEFAULT NULL
,  FST_NAM		VARCHAR		(20)	NOT NULL
,  LST_NAM		VARCHAR		(25)	NOT NULL
,  GDR			ENUM('M'
                           , 'F'
                           , 'O')		    NULL	DEFAULT NULL
,  PRF_PIC		LONGBLOB		    NULL	DEFAULT NULL
,  EML			VARCHAR(255)		NOT NULL
,  PHN_NBR		VARCHAR		(15)	    NULL	DEFAULT NULL
,  PHN_BOK		BOOLEAN			NOT NULL
,  NTF			BOOLEAN			NOT NULL
,  PWD			VARCHAR		(64)	NOT NULL
,  TMP_PWD		BOOLEAN			NOT NULL
--
,  CRE_ID		VARCHAR		(255)	NOT NULL
,  CRE_DAT		TIMESTAMP		NOT NULL
,  UPD_ID		VARCHAR		(255)	NOT NULL
,  UPD_DAT		TIMESTAMP		NOT NULL
--
, PRIMARY KEY (ROW_IDT)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
;

SHOW WARNINGS;
CREATE UNIQUE	INDEX uk_usr_1_idx	ON ufr_asso.usr (FST_NAM ASC, LST_NAM ASC, EML ASC) VISIBLE;

SHOW WARNINGS;
CREATE UNIQUE	INDEX uk_usr_2_idx	ON ufr_asso.usr (STU_NBR ASC) VISIBLE;


SHOW WARNINGS;
CREATE UNIQUE	INDEX uk_usr_3_idx	ON ufr_asso.usr (USR_ID ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.usr_has_aso_and_rol
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.usr_has_aso_and_rol ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.usr_has_aso_and_rol (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
,  USR_ROW_IDT		BIGINT		(20)	NOT NULL
,  ASO_ROW_IDT		BIGINT		(20)	    NULL	DEFAULT NULL
,  ROL_ROW_IDT		BIGINT		(20)	NOT NULL
--
,  CRE_ID		VARCHAR		(255)	NOT NULL
,  CRE_DAT		TIMESTAMP		NOT NULL
,  UPD_ID		VARCHAR		(255)	NOT NULL
,  UPD_DAT		TIMESTAMP		NOT NULL
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
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
,  USR_ROW_IDT		BIGINT		(20)	NOT NULL
,  EVT_ROW_IDT		BIGINT		(20)	NOT NULL
--
,  CRE_ID		VARCHAR		(255)	NOT NULL
,  CRE_DAT		TIMESTAMP		NOT NULL
,  UPD_ID		VARCHAR		(255)	NOT NULL
,  UPD_DAT		TIMESTAMP		NOT NULL
--
, PRIMARY KEY (ROW_IDT)
, CONSTRAINT fk_usr_has_evt_usr_1
    FOREIGN KEY (USR_ROW_IDT)
    REFERENCES ufr_asso.usr (ROW_IDT)
, CONSTRAINT fk_usr_has_evt_evt_1
    FOREIGN KEY (EVT_ROW_IDT)
    REFERENCES ufr_asso.evt (ROW_IDT)
)
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
-- Sequence ufr_asso.seq_usr
-- -----------------------------------------------------

DROP TABLE IF EXISTS ufr_asso.seq_usr;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.seq_usr (
   SEQ_NUM		BIGINT		(20)	NOT NULL AUTO_INCREMENT
, NAM			ENUM('USR')		NOT NULL
, PRIMARY KEY (SEQ_NUM)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
;

CREATE UNIQUE	INDEX uk_seq_usr_1_idx	ON ufr_asso.seq_usr	 	(SEQ_NUM) VISIBLE;

SHOW WARNINGS;

-- Default values for table ufr_asso.seq_usr
INSERT INTO ufr_asso.seq_usr (SEQ_NUM, NAM) VALUES (1, 'USR');

-- -----------------------------------------------------
-- Sequence ufr_asso.seq_evt
-- -----------------------------------------------------

DROP TABLE IF EXISTS ufr_asso.seq_evt;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.seq_evt (
   SEQ_NUM		BIGINT		(20)	NOT NULL AUTO_INCREMENT
, NAM			ENUM('EVT')		NOT NULL
, PRIMARY KEY (SEQ_NUM)
)
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

DROP FUNCTION IF EXISTS `generateId_User`$$

CREATE FUNCTION generateId_User()
RETURNS BIGINT(20)
DETERMINISTIC -- NOT TRUE (IN THE TRUE TRUTH)
BEGIN
        -- INSERT INTO `ufr_asso`.`seq_usr` (NAM, SEQ_NUM) VALUES ('USR', LAST_INSERT_ID(1)) ON DUPLICATE KEY UPDATE seq_num = LAST_INSERT_ID(seq_num + 1); -- V1 Deprecated
        -- INSERT INTO `ufr_asso`.`seq_usr` (NAM, SEQ_NUM) SELECT 'USR', MAX(SEQ_NUM) AS seq_num FROM seq_usr ON DUPLICATE KEY UPDATE seq_num = LAST_INSERT_ID(seq_num + 1); -- V2 (works ?)
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