-- MySQL Script generated by MySQL Workbench
-- Tue Apr  7 11:26:17 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema vehicule
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `vehicule` ;

-- -----------------------------------------------------
-- Schema vehicule
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `vehicule` DEFAULT CHARACTER SET utf8 ;
USE `vehicule` ;

-- -----------------------------------------------------
-- Table `vehicule`.`marque`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vehicule`.`marque` ;

CREATE TABLE IF NOT EXISTS `vehicule`.`marque` (
  `idMarque` INT(11) NOT NULL AUTO_INCREMENT,
  `nomMarque` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idMarque`),
  UNIQUE INDEX `idMarque_UNIQUE` (`idMarque` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `vehicule`.`modele`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vehicule`.`modele` ;

CREATE TABLE IF NOT EXISTS `vehicule`.`modele` (
  `idModele` INT(11) NOT NULL AUTO_INCREMENT,
  `nomModele` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idModele`),
  UNIQUE INDEX `idModele_UNIQUE` (`idModele` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `vehicule`.`vehicule`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `vehicule`.`vehicule` ;

CREATE TABLE IF NOT EXISTS `vehicule`.`vehicule` (
  `idVehicule` INT(11) NOT NULL AUTO_INCREMENT,
  `modele_idModele` INT(11) NOT NULL,
  `marque_idMarque` INT(11) NOT NULL,
  PRIMARY KEY (`idVehicule`),
  INDEX `fk_vehicule_modele_idx` (`modele_idModele` ASC),
  INDEX `fk_vehicule_marque1_idx` (`marque_idMarque` ASC),
  UNIQUE INDEX `idVehicule_UNIQUE` (`idVehicule` ASC),
  CONSTRAINT `fk_vehicule_modele`
    FOREIGN KEY (`modele_idModele`)
    REFERENCES `vehicule`.`modele` (`idModele`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_vehicule_marque1`
    FOREIGN KEY (`marque_idMarque`)
    REFERENCES `vehicule`.`marque` (`idMarque`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
