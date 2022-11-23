-- Active: 1668639301205@@localhost@3306@ufr_asso
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ufr_asso
-- -----------------------------------------------------
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
,  NAM 			VARCHAR		(45)	NOT NULL
,  LGO 			BLOB 			NOT NULL
,  SIR_NBR 		VARCHAR		(14)	NOT NULL
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

-- -----------------------------------------------------SHOW
-- Table ufr_asso.evt_has_aso
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.evt_has_aso ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.evt_has_aso (
   EVT_ROW_IDT		BIGINT		(20)	NOT NULL
,  ASO_ROW_IDT		BIGINT		(20)	NOT NULL
--
,  CRE_ID		VARCHAR		(255)	NOT NULL
,  CRE_DAT		TIMESTAMP		NOT NULL
,  UPD_ID		VARCHAR		(255)	NOT NULL
,  UPD_DAT		TIMESTAMP		NOT NULL
--
, PRIMARY KEY (EVT_ROW_IDT, ASO_ROW_IDT)
, CONSTRAINT fk_evt_has_aso_aso1
    FOREIGN KEY (ASO_ROW_IDT)
    REFERENCES ufr_asso.aso (ROW_IDT)
, CONSTRAINT fk_evt_has_aso_evt1
    FOREIGN KEY (EVT_ROW_IDT)
    REFERENCES ufr_asso.evt (ROW_IDT)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE 		INDEX fk_evt_has_aso_aso_1_idx	ON ufr_asso.evt_has_aso (ASO_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;
CREATE 		INDEX fk_evt_has_aso_evt_1_idx	ON ufr_asso.evt_has_aso (EVT_ROW_IDT ASC) VISIBLE;

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

-- TODO : Clean the script below

-- -----------------------------------------------------
-- Table ufr_asso.opn_hrs
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.opn_hrs ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.opn_hrs (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
, DAY_WEK VARCHAR(10) NOT NULL
, OPN TIME NOT NULL
, CLO TIME NOT NULL
, ASO_ROW_IDT BIGINT		(20) NOT NULL
--
,  CRE_ID		VARCHAR		(255)	NOT NULL
,  CRE_DAT		TIMESTAMP		NOT NULL
,  UPD_ID		VARCHAR		(255)	NOT NULL
,  UPD_DAT		TIMESTAMP		NOT NULL
--
, PRIMARY KEY (ROW_IDT)
, CONSTRAINT fk_opn_hrs_aso_1
    FOREIGN KEY (ASO_ROW_IDT)
    REFERENCES ufr_asso.aso (ROW_IDT))
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
, NAM VARCHAR(25) NULL DEFAULT NULL
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
-- Table ufr_asso.usr
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.usr ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.usr (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
, STU_NBR VARCHAR(10) NULL
, PRF_PIC BLOB NULL DEFAULT NULL
, FST_NAM VARCHAR(20) NOT NULL
, LST_NAM VARCHAR(25) NOT NULL
, GDR ENUM('M', 'F', 'O') NULL DEFAULT NULL
, EML TEXT NOT NULL
, PHN_NBR VARCHAR(15) NULL DEFAULT NULL
, PHN_BOK TINYINT(3) UNSIGNED ZEROFILL NULL DEFAULT NULL
, PWD CHAR(64) NOT NULL
, TMP_PWD TINYINT NOT NULL DEFAULT 0
, NTF TINYINT NULL DEFAULT NULL
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
CREATE UNIQUE	INDEX uk_usr_1_idx		ON ufr_asso.usr (STU_NBR ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.aso
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.aso ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.aso (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
, lgo LONGBLOB NULL DEFAULT NULL
, mbr_pce DOUBLE NOT NULL
, nam VARCHAR(45) NOT NULL
, sir_nbr VARCHAR(14) NOT NULL
--
,  CRE_ID		VARCHAR		(255)	NOT NULL
,  CRE_DAT		TIMESTAMP		NOT NULL
,  UPD_ID		VARCHAR		(255)	NOT NULL
,  UPD_DAT		TIMESTAMP		NOT NULL
--
, PRIMARY KEY (row_idt))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;
CREATE UNIQUE	INDEX uk_aso_1_idx	ON ufr_asso.aso (sir_nbr ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.evt
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.evt ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.evt (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
, dsc VARCHAR(255) NULL DEFAULT NULL
, end_dat_tim DATETIME NOT NULL
, nam VARCHAR(45) NOT NULL
, plc VARCHAR(45) NOT NULL
, pce DOUBLE NULL DEFAULT NULL
, stt_dat_tim DATETIME NOT NULL
, cre_aso_row_idt BIGINT(20) NOT NULL
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
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;
CREATE UNIQUE	INDEX uk_evt_1_idx		ON ufr_asso.evt (NAM ASC, STT_DAT_TIM ASC, PLC ASC, CRE_ASO_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;
CREATE		INDEX fk_evt_aso_1_idx		ON ufr_asso.evt (CRE_ASO_ROW_IDT ASC) VISIBLE;

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
-- Table ufr_asso.nws_ltr
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.nws_ltr ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.nws_ltr (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
, dsc VARCHAR(255) NULL DEFAULT NULL
, nam VARCHAR(45) NOT NULL
, txt VARCHAR(255) NOT NULL
, aso_row_idt BIGINT(20) NOT NULL
--
,  CRE_ID		VARCHAR		(255)	NOT NULL
,  CRE_DAT		TIMESTAMP		NOT NULL
,  UPD_ID		VARCHAR		(255)	NOT NULL
,  UPD_DAT		TIMESTAMP		NOT NULL
--
  , PRIMARY KEY (row_idt)
  , CONSTRAINT fk_nws_ltr_aso_1
    FOREIGN KEY (aso_row_idt)
    REFERENCES ufr_asso.aso (row_idt)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
;

SHOW WARNINGS;
CREATE		INDEX fk_nws_ltr_aso_1_idx	 ON ufr_asso.nws_ltr (aso_row_idt ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.opn_hrs
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.opn_hrs ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.opn_hrs (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
,  CLO			TIME			NOT NULL
,  DAY_WEK		VARCHAR		(10)	NOT NULL
,  OPN			TIME			NOT NULL
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
DEFAULT CHARACTER SET = utf8
;

SHOW WARNINGS;
CREATE		INDEX	fk_opn_hrs_aso_1_idx		ON ufr_asso.opn_hrs (aso_row_idt ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.rol
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.rol ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.rol (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
,  NAM			VARCHAR		(25)	NOT NULL
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
CREATE UNIQUE	INDEX uk_rol_1_idx	ON ufr_asso.rol (nam ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table ufr_asso.usr
-- -----------------------------------------------------
DROP TABLE IF EXISTS ufr_asso.usr ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS ufr_asso.usr (
   ROW_IDT		BIGINT		(20)	NOT NULL AUTO_INCREMENT
--
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
CREATE		INDEX	fk_usr_has_aso_and_rol_usr_1_idx	ON ufr_asso.usr_has_aso_and_rol (usr_row_idt ASC) VISIBLE;

SHOW WARNINGS;
CREATE		INDEX	fk_usr_has_aso_and_rol_aso_1_idx	ON ufr_asso.usr_has_aso_and_rol	(aso_row_idt ASC) VISIBLE;

SHOW WARNINGS;
CREATE		INDEX	fk_usr_has_aso_and_rol_rol_1_idx	ON ufr_asso.usr_has_aso_and_rol (rol_row_idt ASC) VISIBLE;

SHOW WARNINGS;

CREATE UNIQUE	INDEX uk_usr_has_aso_and_rol_1_idx	ON ufr_asso.usr_has_aso_and_rol 	(USR_ROW_IDT ASC, ASO_ROW_IDT ASC, ROL_ROW_IDT ASC) VISIBLE;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
