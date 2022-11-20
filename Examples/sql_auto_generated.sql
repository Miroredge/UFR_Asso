-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`aso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`aso` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `mydb`.`aso` (
  `ROW_IDT` INT(11) NOT NULL AUTO_INCREMENT,
  `NAM` VARCHAR(45) NOT NULL,
  `LGO` BLOB NOT NULL,
  `SIR_NBR` VARCHAR(14) NOT NULL,
  `MBR_PCE` DOUBLE NOT NULL,
  PRIMARY KEY (`ROW_IDT`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE UNIQUE INDEX `NAM_UNIQUE` ON `mydb`.`aso` (`NAM` ASC) VISIBLE;

SHOW WARNINGS;
CREATE UNIQUE INDEX `NUM_SIR_UNIQUE` ON `mydb`.`aso` (`SIR_NBR` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`bdg`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`bdg` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `mydb`.`bdg` (
  `ROW_IDT` INT(11) NOT NULL AUTO_INCREMENT,
  `OPT_DAT` DATE NOT NULL,
  `TYP` VARCHAR(45) NOT NULL COMMENT 'Cheque / retrait / virement / prelevement',
  `NAM` TEXT NOT NULL,
  `AMT` DECIMAL(7,2) NOT NULL,
  `ASO_ROW_IDT` INT(11) NOT NULL,
  PRIMARY KEY (`ROW_IDT`),
  CONSTRAINT `fk_BDG_ASO1`
    FOREIGN KEY (`ASO_ROW_IDT`)
    REFERENCES `mydb`.`aso` (`ROW_IDT`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE INDEX `fk_BDG_ASO1_idx` ON `mydb`.`bdg` (`ASO_ROW_IDT` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`evt`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`evt` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `mydb`.`evt` (
  `ROW_IDT` INT(11) NOT NULL AUTO_INCREMENT,
  `NAM` VARCHAR(45) NOT NULL,
  `STT_DAT_TIM` TIMESTAMP NOT NULL,
  `END_DAT_TIM` TIMESTAMP NOT NULL,
  `ORG_NAM` VARCHAR(45) NOT NULL,
  `PLC` VARCHAR(45) NULL DEFAULT NULL,
  `PCE` DOUBLE NULL DEFAULT NULL,
  `DSC` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`ROW_IDT`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`evt_has_aso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`evt_has_aso` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `mydb`.`evt_has_aso` (
  `EVT_ROW_IDT` INT(11) NOT NULL,
  `ASO_ROW_IDT` INT(11) NOT NULL,
  PRIMARY KEY (`EVT_ROW_IDT`, `ASO_ROW_IDT`),
  CONSTRAINT `fk_EVT_has_ASO_ASO1`
    FOREIGN KEY (`ASO_ROW_IDT`)
    REFERENCES `mydb`.`aso` (`ROW_IDT`),
  CONSTRAINT `fk_EVT_has_ASO_EVT1`
    FOREIGN KEY (`EVT_ROW_IDT`)
    REFERENCES `mydb`.`evt` (`ROW_IDT`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE INDEX `fk_EVT_has_ASO_ASO1_idx` ON `mydb`.`evt_has_aso` (`ASO_ROW_IDT` ASC) VISIBLE;

SHOW WARNINGS;
CREATE INDEX `fk_EVT_has_ASO_EVT1_idx` ON `mydb`.`evt_has_aso` (`EVT_ROW_IDT` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`nws_ltr`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`nws_ltr` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `mydb`.`nws_ltr` (
  `ROW_IDT` INT(11) NOT NULL AUTO_INCREMENT,
  `NAM` VARCHAR(45) NOT NULL,
  `CRA_DAT` TIMESTAMP NOT NULL,
  `TXT` TEXT NOT NULL,
  `DSC` TEXT NOT NULL,
  `ASO_ROW_IDT` INT(11) NOT NULL,
  PRIMARY KEY (`ROW_IDT`),
  CONSTRAINT `fk_NWS_LTR_ASO1`
    FOREIGN KEY (`ASO_ROW_IDT`)
    REFERENCES `mydb`.`aso` (`ROW_IDT`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE INDEX `fk_NWS_LTR_ASO1_idx` ON `mydb`.`nws_ltr` (`ASO_ROW_IDT` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`opn_hrs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`opn_hrs` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `mydb`.`opn_hrs` (
  `ROW_IDT` INT(11) NOT NULL AUTO_INCREMENT,
  `DAY_WEK` VARCHAR(10) NOT NULL,
  `OPN` TIME NOT NULL,
  `CLO` TIME NOT NULL,
  `ASO_ROW_IDT` INT(11) NOT NULL,
  PRIMARY KEY (`ROW_IDT`),
  CONSTRAINT `fk_OPN_HRS_ASO1`
    FOREIGN KEY (`ASO_ROW_IDT`)
    REFERENCES `mydb`.`aso` (`ROW_IDT`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE INDEX `fk_OPN_HRS_ASO1_idx` ON `mydb`.`opn_hrs` (`ASO_ROW_IDT` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`rol`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`rol` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `mydb`.`rol` (
  `ROW_IDT` INT(11) NOT NULL AUTO_INCREMENT,
  `NAM` VARCHAR(25) NULL DEFAULT NULL,
  `RGT` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ROW_IDT`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`usr`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`usr` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `mydb`.`usr` (
  `ROW_IDT` INT(11) NOT NULL AUTO_INCREMENT,
  `STU_NBR` VARCHAR(10) NOT NULL,
  `PRF_PIC` BLOB NULL DEFAULT NULL,
  `FST_NAM` VARCHAR(20) NULL DEFAULT NULL,
  `LST_NAM` VARCHAR(25) NULL DEFAULT NULL,
  `SEX` VARCHAR(20) NULL DEFAULT NULL,
  `EML` TEXT NULL DEFAULT NULL,
  `PHN_NBR` VARCHAR(15) NULL DEFAULT NULL,
  `PHN_BOK` TINYINT(3) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `PWD` CHAR(64) NULL DEFAULT NULL,
  `TMP_PWD` TINYINT(4) NULL DEFAULT NULL,
  `NTF` TINYINT(4) NULL DEFAULT NULL,
  PRIMARY KEY (`ROW_IDT`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE UNIQUE INDEX `NUM_ETU_UNIQUE` ON `mydb`.`usr` (`STU_NBR` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`usr_has_rol`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`usr_has_rol` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `mydb`.`usr_has_rol` (
  `USR_ROW_IDT` INT(11) NOT NULL,
  `ASO_ROW_IDT` INT(11) NULL,
  `ROL_ROW_IDT` INT(11) NOT NULL,
  PRIMARY KEY (`USR_ROW_IDT`, `ASO_ROW_IDT`, `ROL_ROW_IDT`),
  CONSTRAINT `fk_USR_has_ROL_ROL1`
    FOREIGN KEY (`ROL_ROW_IDT`)
    REFERENCES `mydb`.`rol` (`ROW_IDT`),
  CONSTRAINT `fk_USR_has_ROL_USR1`
    FOREIGN KEY (`USR_ROW_IDT`)
    REFERENCES `mydb`.`usr` (`ROW_IDT`),
  CONSTRAINT `fk_usr_has_rol_aso1`
    FOREIGN KEY (`ASO_ROW_IDT`)
    REFERENCES `mydb`.`aso` (`ROW_IDT`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE INDEX `fk_USR_has_ROL_ROL1_idx` ON `mydb`.`usr_has_rol` (`ROL_ROW_IDT` ASC) VISIBLE;

SHOW WARNINGS;
CREATE INDEX `fk_USR_has_ROL_USR1_idx` ON `mydb`.`usr_has_rol` (`USR_ROW_IDT` ASC) VISIBLE;

SHOW WARNINGS;
CREATE INDEX `fk_usr_has_rol_aso1_idx` ON `mydb`.`usr_has_rol` (`ASO_ROW_IDT` ASC) VISIBLE;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
