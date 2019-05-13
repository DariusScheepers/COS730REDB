SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema dbERDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dbREDB` DEFAULT CHARACTER SET latin1 ;
USE `dbREDB` ;

-- Darius begin

CREATE TABLE IF NOT EXISTS `dbREDB`.`User` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(100) NOT NULL,
  `UserRole_ID` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`, `UserRole_ID`),
  INDEX `fk_User_UserRole1_idx` (`UserRole_ID` ASC),
  CONSTRAINT `fk_User_UserRole1`
    FOREIGN KEY (`UserRole_ID`)
    REFERENCES `dbREDB`.`UserRole` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
  ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


CREATE TABLE IF NOT EXISTS `dbREDB`.`UserRole` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `User_ID` INT(10) UNSIGNED NOT NULL,
  `Role_ID` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`, `User_ID`, `Role_ID`),
  INDEX `fk_UserRole_User1_idx` (`User_ID` ASC),
  CONSTRAINT `fk_UserRole_User1`
    FOREIGN KEY (`User_ID`)
    REFERENCES `dbREDB`.`User` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    INDEX `fk_UserRole_Role1_idx` (`Role_ID` ASC),
    CONSTRAINT `fk_UserRole_Role1`
    FOREIGN KEY (`Role_ID`)
    REFERENCES `dbREDB`.`Role` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
  ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE TABLE IF NOT EXISTS `dbREDB`.`Role` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(100) NOT NULL,
  `UserRole_ID` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`, `UserRole_ID`),
  INDEX `fk_Role_UserRole1_idx` (`UserRole_ID` ASC),
  CONSTRAINT `fk_Role_UserRole1`
    FOREIGN KEY (`UserRole_ID`)
    REFERENCES `dbREDB`.`UserRole` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
  ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

-- Darius eindig

-- Danielle begin

-- Danielle eindig

-- Kobus begin

-- Kobus eindig

-- So as ons alles to en met hierdie lyntjie op n MySQL workbench run sal die db gemaak word.