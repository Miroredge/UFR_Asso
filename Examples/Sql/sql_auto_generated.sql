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
-- -----------------------------------------------------
-- Schema ufr_asso
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ufr_asso` ;

-- -----------------------------------------------------
-- Schema ufr_asso
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ufr_asso` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
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
  `PLC` VARCHAR(45) NULL,
  `PCE` DOUBLE NULL DEFAULT NULL,
  `DSC` TEXT NULL DEFAULT NULL,
  `CRE_ASO_ROW_IDT` INT(11) NOT NULL,
  PRIMARY KEY (`ROW_IDT`),
  CONSTRAINT `fk_evt_aso1`
    FOREIGN KEY (`CRE_ASO_ROW_IDT`)
    REFERENCES `mydb`.`aso` (`ROW_IDT`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE INDEX `fk_evt_aso1_idx` ON `mydb`.`evt` (`CRE_ASO_ROW_IDT` ASC) VISIBLE;

SHOW WARNINGS;
CREATE UNIQUE INDEX `UK_EVT` ON `mydb`.`evt` (`NAM` ASC, `STT_DAT_TIM` ASC, `PLC` ASC, `CRE_ASO_ROW_IDT` ASC) VISIBLE;

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
CREATE UNIQUE INDEX `NAM_UNIQUE` ON `mydb`.`rol` (`NAM` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`usr`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`usr` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `mydb`.`usr` (
  `ROW_IDT` INT(11) NOT NULL AUTO_INCREMENT,
  `STU_NBR` VARCHAR(10) NULL,
  `PRF_PIC` BLOB NULL DEFAULT NULL,
  `FST_NAM` VARCHAR(20) NOT NULL,
  `LST_NAM` VARCHAR(25) NOT NULL,
  `GDR` ENUM('M', 'F', 'O') NULL DEFAULT NULL,
  `EML` TEXT NOT NULL,
  `PHN_NBR` VARCHAR(15) NULL DEFAULT NULL,
  `PHN_BOK` TINYINT(3) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  `PWD` CHAR(64) NOT NULL,
  `TMP_PWD` TINYINT NOT NULL DEFAULT 0,
  `NTF` TINYINT NULL DEFAULT NULL,
  PRIMARY KEY (`ROW_IDT`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

SHOW WARNINGS;
CREATE UNIQUE INDEX `NUM_ETU_UNIQUE` ON `mydb`.`usr` (`STU_NBR` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`usr_has_rol_and_aso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`usr_has_rol_and_aso` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `mydb`.`usr_has_rol_and_aso` (
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
CREATE INDEX `fk_USR_has_ROL_ROL1_idx` ON `mydb`.`usr_has_rol_and_aso` (`ROL_ROW_IDT` ASC) VISIBLE;

SHOW WARNINGS;
CREATE INDEX `fk_USR_has_ROL_USR1_idx` ON `mydb`.`usr_has_rol_and_aso` (`USR_ROW_IDT` ASC) VISIBLE;

SHOW WARNINGS;
CREATE INDEX `fk_usr_has_rol_aso1_idx` ON `mydb`.`usr_has_rol_and_aso` (`ASO_ROW_IDT` ASC) VISIBLE;

SHOW WARNINGS;
USE `ufr_asso` ;

-- -----------------------------------------------------
-- Table `ufr_asso`.`aso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ufr_asso`.`aso` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `ufr_asso`.`aso` (
  `row_idt` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `cre_dat` DATETIME NOT NULL,
  `cre_id` VARCHAR(255) NOT NULL,
  `lgo` LONGBLOB NULL DEFAULT NULL,
  `mbr_pce` DOUBLE NOT NULL,
  `nam` VARCHAR(45) NOT NULL,
  `sir_nbr` VARCHAR(14) NOT NULL,
  `upd_dat` DATETIME NOT NULL,
  `upd_id` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`row_idt`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;
CREATE UNIQUE INDEX `UK_m64klpxis7906ddgl2v7virvv` ON `ufr_asso`.`aso` (`sir_nbr` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `ufr_asso`.`evt`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ufr_asso`.`evt` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `ufr_asso`.`evt` (
  `row_idt` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `cre_dat` DATETIME NOT NULL,
  `cre_id` VARCHAR(255) NOT NULL,
  `dsc` VARCHAR(255) NULL DEFAULT NULL,
  `end_dat_tim` DATETIME NOT NULL,
  `nam` VARCHAR(45) NOT NULL,
  `plc` VARCHAR(45) NOT NULL,
  `pce` DOUBLE NULL DEFAULT NULL,
  `stt_dat_tim` DATETIME NOT NULL,
  `upd_dat` DATETIME NOT NULL,
  `upd_id` VARCHAR(255) NOT NULL,
  `cre_aso_row_idt` BIGINT(20) NOT NULL,
  PRIMARY KEY (`row_idt`),
  CONSTRAINT `FKjcr7l0pl8jeuon5ddpethhjwp`
    FOREIGN KEY (`cre_aso_row_idt`)
    REFERENCES `ufr_asso`.`aso` (`row_idt`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;
CREATE UNIQUE INDEX `UKbn1p0jsgyxbs4istqnbix74wg` ON `ufr_asso`.`evt` (`nam` ASC, `stt_dat_tim` ASC, `plc` ASC, `cre_aso_row_idt` ASC) VISIBLE;

SHOW WARNINGS;
CREATE INDEX `FKjcr7l0pl8jeuon5ddpethhjwp` ON `ufr_asso`.`evt` (`cre_aso_row_idt` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `ufr_asso`.`aso_has_evt`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ufr_asso`.`aso_has_evt` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `ufr_asso`.`aso_has_evt` (
  `row_idt` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `cre_dat` DATETIME NOT NULL,
  `cre_id` VARCHAR(255) NOT NULL,
  `upd_dat` DATETIME NOT NULL,
  `upd_id` VARCHAR(255) NOT NULL,
  `aso_row_idt` BIGINT(20) NOT NULL,
  `evt_row_idt` BIGINT(20) NOT NULL,
  PRIMARY KEY (`row_idt`),
  CONSTRAINT `FKdq8twpvsrf7w87aq0cyyj922w`
    FOREIGN KEY (`aso_row_idt`)
    REFERENCES `ufr_asso`.`aso` (`row_idt`),
  CONSTRAINT `FKh68qvcj5628vpswgdipx9gjye`
    FOREIGN KEY (`evt_row_idt`)
    REFERENCES `ufr_asso`.`evt` (`row_idt`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;
CREATE INDEX `FKdq8twpvsrf7w87aq0cyyj922w` ON `ufr_asso`.`aso_has_evt` (`aso_row_idt` ASC) VISIBLE;

SHOW WARNINGS;
CREATE INDEX `FKh68qvcj5628vpswgdipx9gjye` ON `ufr_asso`.`aso_has_evt` (`evt_row_idt` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `ufr_asso`.`bdg`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ufr_asso`.`bdg` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `ufr_asso`.`bdg` (
  `row_idt` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `amt` DOUBLE NOT NULL,
  `cre_dat` DATETIME NOT NULL,
  `cre_id` VARCHAR(255) NOT NULL,
  `mns` ENUM('CASH', 'CHECK', 'BANK_TRANSFER', 'CREDIT_CARD', 'DEBIT_CARD', 'PAYPAL', 'BITCOIN', 'OTHER') NOT NULL,
  `nam` VARCHAR(255) NOT NULL,
  `opt_dat` DATE NOT NULL,
  `typ` ENUM('INCOME', 'OUTCOME') NOT NULL,
  `upd_dat` DATETIME NOT NULL,
  `upd_id` VARCHAR(255) NOT NULL,
  `aso_row_idt` BIGINT(20) NOT NULL,
  PRIMARY KEY (`row_idt`),
  CONSTRAINT `FKdqa9xwjy1usdjx14sugmtwc1b`
    FOREIGN KEY (`aso_row_idt`)
    REFERENCES `ufr_asso`.`aso` (`row_idt`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;
CREATE INDEX `FKdqa9xwjy1usdjx14sugmtwc1b` ON `ufr_asso`.`bdg` (`aso_row_idt` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `ufr_asso`.`nws_ltr`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ufr_asso`.`nws_ltr` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `ufr_asso`.`nws_ltr` (
  `row_idt` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `cre_dat` DATETIME NOT NULL,
  `cre_id` VARCHAR(255) NOT NULL,
  `dsc` VARCHAR(255) NULL DEFAULT NULL,
  `nam` VARCHAR(45) NOT NULL,
  `txt` VARCHAR(255) NOT NULL,
  `upd_dat` DATETIME NOT NULL,
  `upd_id` VARCHAR(255) NOT NULL,
  `aso_row_idt` BIGINT(20) NOT NULL,
  PRIMARY KEY (`row_idt`),
  CONSTRAINT `FKkjqkxehvuy9qt000ok6dm2fp9`
    FOREIGN KEY (`aso_row_idt`)
    REFERENCES `ufr_asso`.`aso` (`row_idt`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;
CREATE INDEX `FKkjqkxehvuy9qt000ok6dm2fp9` ON `ufr_asso`.`nws_ltr` (`aso_row_idt` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `ufr_asso`.`opn_hrs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ufr_asso`.`opn_hrs` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `ufr_asso`.`opn_hrs` (
  `row_idt` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `clo` TIME NOT NULL,
  `cre_dat` DATETIME NOT NULL,
  `cre_id` VARCHAR(255) NOT NULL,
  `day_wek` VARCHAR(10) NOT NULL,
  `opn` TIME NOT NULL,
  `upd_dat` DATETIME NOT NULL,
  `upd_id` VARCHAR(255) NOT NULL,
  `aso_row_idt` BIGINT(20) NOT NULL,
  PRIMARY KEY (`row_idt`),
  CONSTRAINT `FKi1aqdnmnr95xtopi9t78na1q`
    FOREIGN KEY (`aso_row_idt`)
    REFERENCES `ufr_asso`.`aso` (`row_idt`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;
CREATE INDEX `FKi1aqdnmnr95xtopi9t78na1q` ON `ufr_asso`.`opn_hrs` (`aso_row_idt` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `ufr_asso`.`rol`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ufr_asso`.`rol` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `ufr_asso`.`rol` (
  `row_idt` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `cre_dat` DATETIME NOT NULL,
  `cre_id` VARCHAR(255) NOT NULL,
  `nam` VARCHAR(25) NOT NULL,
  `upd_dat` DATETIME NOT NULL,
  `upd_id` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`row_idt`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;
CREATE UNIQUE INDEX `UK_f8fsngb4vee9hmw14im5isdwl` ON `ufr_asso`.`rol` (`nam` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `ufr_asso`.`usr`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ufr_asso`.`usr` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `ufr_asso`.`usr` (
  `row_idt` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `cre_dat` DATETIME NOT NULL,
  `cre_id` VARCHAR(45) NOT NULL,
  `eml` VARCHAR(255) NOT NULL,
  `fst_nam` VARCHAR(20) NOT NULL,
  `gdr` ENUM('M', 'F', 'O') NULL DEFAULT NULL,
  `lst_nam` VARCHAR(25) NOT NULL,
  `ntf` BIT(1) NOT NULL,
  `pwd` VARCHAR(64) NOT NULL,
  `phn_bok` BIT(1) NOT NULL,
  `phn_nbr` VARCHAR(15) NULL DEFAULT NULL,
  `prf_pic` LONGBLOB NULL DEFAULT NULL,
  `stu_nbr` VARCHAR(10) NULL DEFAULT NULL,
  `tmp_pwd` BIT(1) NOT NULL,
  `upd_dat` DATETIME NOT NULL,
  `upd_id` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`row_idt`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;
CREATE UNIQUE INDEX `UK_USR_2` ON `ufr_asso`.`usr` (`fst_nam` ASC, `lst_nam` ASC, `eml` ASC) VISIBLE;

SHOW WARNINGS;
CREATE UNIQUE INDEX `UK_USR_1` ON `ufr_asso`.`usr` (`stu_nbr` ASC) VISIBLE;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `ufr_asso`.`usr_has_aso_and_rol`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ufr_asso`.`usr_has_aso_and_rol` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `ufr_asso`.`usr_has_aso_and_rol` (
  `row_idt` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `cre_dat` DATETIME NOT NULL,
  `cre_id` VARCHAR(255) NOT NULL,
  `upd_dat` DATETIME NOT NULL,
  `upd_id` VARCHAR(255) NOT NULL,
  `aso_row_idt` BIGINT(20) NULL DEFAULT NULL,
  `rol_row_idt` BIGINT(20) NOT NULL,
  `usr_row_idt` BIGINT(20) NOT NULL,
  PRIMARY KEY (`row_idt`),
  CONSTRAINT `FK28odnmr9t63ysgcgd0ojvep8p`
    FOREIGN KEY (`rol_row_idt`)
    REFERENCES `ufr_asso`.`rol` (`row_idt`),
  CONSTRAINT `FKk05hr5m77g4c358hc16hsllxf`
    FOREIGN KEY (`aso_row_idt`)
    REFERENCES `ufr_asso`.`aso` (`row_idt`),
  CONSTRAINT `FKpoh3yx4u44fqipkhg6ia86wcr`
    FOREIGN KEY (`usr_row_idt`)
    REFERENCES `ufr_asso`.`usr` (`row_idt`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

SHOW WARNINGS;
CREATE INDEX `FKk05hr5m77g4c358hc16hsllxf` ON `ufr_asso`.`usr_has_aso_and_rol` (`aso_row_idt` ASC) VISIBLE;

SHOW WARNINGS;
CREATE INDEX `FK28odnmr9t63ysgcgd0ojvep8p` ON `ufr_asso`.`usr_has_aso_and_rol` (`rol_row_idt` ASC) VISIBLE;

SHOW WARNINGS;
CREATE INDEX `FKpoh3yx4u44fqipkhg6ia86wcr` ON `ufr_asso`.`usr_has_aso_and_rol` (`usr_row_idt` ASC) VISIBLE;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
