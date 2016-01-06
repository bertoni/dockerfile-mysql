-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema teste2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema teste2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `teste2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `teste2` ;

-- -----------------------------------------------------
-- Table `teste2`.`tb_teste2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `teste2`.`tb_teste2` ;

CREATE TABLE IF NOT EXISTS `teste2`.`tb_teste2` (
  `pk_id_teste2` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_teste2` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`pk_id_teste2`))
ENGINE = MyISAM;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
