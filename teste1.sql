-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema teste1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema teste1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `teste1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `teste1` ;

-- -----------------------------------------------------
-- Table `teste1`.`tb_teste1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `teste1`.`tb_teste1` ;

CREATE TABLE IF NOT EXISTS `teste1`.`tb_teste1` (
  `pk_id_teste1` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_teste1` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`pk_id_teste1`))
ENGINE = MyISAM;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
