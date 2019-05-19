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
  `Stakeholder_ID` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`, `UserRole_ID`, `Stakeholder_ID`),
  INDEX `fk_User_UserRole1_idx` (`UserRole_ID` ASC),
  CONSTRAINT `fk_User_UserRole1`
    FOREIGN KEY (`UserRole_ID`)
    REFERENCES `dbREDB`.`UserRole` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  INDEX `fk_User_Stakeholder1_idx` (`Stakeholder_ID` ASC),
  CONSTRAINT `fk_User_Stakeholder1`
    FOREIGN KEY (`Stakeholder_ID`)
    REFERENCES `dbREDB`.`Stakeholder` (`ID`)
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

CREATE TABLE IF NOT EXISTS `dbREDB`.`Stakeholder` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NOT NULL,
  `Surname` VARCHAR(100) NOT NULL,
  `StakeholderType_ID` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`, `StakeholderType_ID`),
  INDEX `fk_Stakeholder_StakeholderType1_idx` (`StakeholderType_ID` ASC),
  CONSTRAINT `fk_Stakeholder_StakeholderType1`
    FOREIGN KEY (`StakeholderType_ID`)
    REFERENCES `dbREDB`.`StakeholderType` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = latin1;

CREATE TABLE IF NOT EXISTS `dbREDB`.`StakeholderType` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`ID`))
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = latin1;

CREATE TABLE IF NOT EXISTS `dbREDB`.`ProjectStakeholder` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Stakeholder_ID` INT(10) UNSIGNED NOT NULL,
  `Project_ID` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`, `Stakeholder_ID`, `Project_ID`),
  INDEX `fk_ProjectStakeholder_Stakeholder1_idx` (`Stakeholder_ID` ASC),
  CONSTRAINT `fk_ProjectStakeholder_Stakeholder1`
    FOREIGN KEY (`Stakeholder_ID`)
    REFERENCES `dbREDB`.`Stakeholder` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  INDEX `fk_ProjectStakeholder_Project1_idx` (`Project_ID` ASC),
  CONSTRAINT `fk_ProjectStakeholder_Project1`
    FOREIGN KEY (`Project_ID`)
    REFERENCES `dbREDB`.`Project` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = latin1;

  CREATE TABLE IF NOT EXISTS `dbREDB`.`StakeholderGoal` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Stakeholder_ID` INT(10) UNSIGNED NOT NULL,
  `Goal_ID` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`, `Stakeholder_ID`, `Goal_ID`),
  INDEX `fk_StakeholderGoal_Stakeholder1_idx` (`Stakeholder_ID` ASC),
  CONSTRAINT `fk_StakeholderGoal_Stakeholder1`
    FOREIGN KEY (`Stakeholder_ID`)
    REFERENCES `dbREDB`.`Stakeholder` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  INDEX `fk_StakeholderGoal_Goal1_idx` (`Goal_ID` ASC),
  CONSTRAINT `fk_StakeholderGoal_Goal1`
    FOREIGN KEY (`Goal_ID`)
    REFERENCES `dbREDB`.`Goal` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = latin1;

  CREATE TABLE IF NOT EXISTS `dbREDB`.`Scenario` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(100) NOT NULL,
  `User_ID` INT(10) UNSIGNED NOT NULL,
  `Goal_ID` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`, `User_ID`, `Goal_ID`),
  INDEX `fk_Scenario_User1_idx` (`User_ID` ASC),
  CONSTRAINT `fk_Scenario_User1`
    FOREIGN KEY (`User_ID`)
    REFERENCES `dbREDB`.`User` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  INDEX `fk_Scenario_Goal1_idx` (`Goal_ID` ASC),
  CONSTRAINT `fk_Scenario_Goal1`
    FOREIGN KEY (`Goal_ID`)
    REFERENCES `dbREDB`.`Goal` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = latin1;


-- Darius eindig

-- Danielle begin

CREATE TABLE IF NOT EXISTS `dbredb`.`Project` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `ID` (`ID` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE TABLE IF NOT EXISTS `dbredb`.`RequirementType` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `ID` (`ID` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE TABLE IF NOT EXISTS `dbredb`.`Requirement` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `RequirementType_ID` INT(10) UNSIGNED NOT NULL,
  `Project_ID` INT(10) UNSIGNED NOT NULL,
  `Name` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(100) NOT NULL,
  `Priority` VARCHAR(1) NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `ID` (`ID` ASC),
  INDEX `fk_Requirement_RequirementType_idx` (`RequirementType_ID` ASC),
  CONSTRAINT `fk_Requirement_RequirementType`
    FOREIGN KEY (`RequirementType_ID`)
    REFERENCES `dbREDB`.`RequirementType` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
    INDEX `fk_Requirement_Project_idx` (`Project_ID` ASC),
  CONSTRAINT `fk_Requirement_Project`
    FOREIGN KEY (`Project_ID`)
    REFERENCES `dbREDB`.`Project` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;



CREATE TABLE IF NOT EXISTS `dbREDB`.`ProjectRequirement` (
  `ID` INT(10) UNSIGNED  NOT NULL AUTO_INCREMENT,
  `Project_ID` INT(10) UNSIGNED  NOT NULL,
  `Requirement_ID` INT(10) UNSIGNED  NOT NULL,
 PRIMARY KEY (`ID`, `Project_ID`, `Requirement_ID`),
  INDEX `fk_ProjectRequirement_Requirement_idx` (`Requirement_ID` ASC),
  CONSTRAINT `fk_ProjectRequirement_Project`
    FOREIGN KEY (`Requirement_ID`)
    REFERENCES `dbREDB`.`Requirement` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  INDEX `fk_ProjectRequirement_Project_idx` (`Project_ID` ASC),
  CONSTRAINT `fk_ProjectRequirement_Requirement`
    FOREIGN KEY (`Project_ID`)
    REFERENCES `dbredb`.`Project` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = latin1;

-- Danielle eindig

-- Kobus begin
CREATE TABLE IF NOT EXISTS `dbredb`.`Conflict` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `ID` (`ID` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE TABLE IF NOT EXISTS `dbredb`.`Goal` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Stakeholder_ID` INT(10) UNSIGNED NOT NULL,
  `Project_ID` INT(10) UNSIGNED NOT NULL,
  `Name` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(100) NOT NULL,
  `HasConflict` boolean NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `ID` (`ID` ASC),
  CONSTRAINT `fk_Goal_Stakeholder`
    FOREIGN KEY (`Stakeholder_ID`)
    REFERENCES `dbREDB`.`Stakeholder` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Goal_Project`
    FOREIGN KEY (`Project_ID`)
    REFERENCES `dbREDB`.`Project` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE TABLE IF NOT EXISTS `dbredb`.`GoalConflict` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Goal_ID` INT(10) UNSIGNED NOT NULL,
  `Conflict_ID` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `ID` (`ID` ASC),
  CONSTRAINT `fk_GoalConflict_Goal`
    FOREIGN KEY (`Goal_ID`)
    REFERENCES `dbREDB`.`Goal` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_GoalConflict_Conflict`
    FOREIGN KEY (`Conflict_ID`)
    REFERENCES `dbREDB`.`Conflict` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE TABLE IF NOT EXISTS `dbredb`.`DocumentType` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NOT NULL,
  `Description` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `ID` (`ID` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE TABLE IF NOT EXISTS `dbredb`.`Document` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Type_ID` INT(10) UNSIGNED NOT NULL,
  `Name` VARCHAR(50) NOT NULL,
  `Data` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `ID` (`ID` ASC),
  INDEX `fk_Document_DocumentType_idx` (`Type_ID` ASC),
  CONSTRAINT `fk_Document_DocumentType`
    FOREIGN KEY (`Type_ID`)
    REFERENCES `dbREDB`.`DocumentType` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE TABLE IF NOT EXISTS `dbredb`.`ProjectDocument` (
  `ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Document_ID` INT(10) UNSIGNED NOT NULL,
  `Project_ID` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `ID` (`ID` ASC),
  CONSTRAINT `fk_ProjectDocument_Document`
    FOREIGN KEY (`Document_ID`)
    REFERENCES `dbREDB`.`Document` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProjectDocument_Project`
    FOREIGN KEY (`Project_ID`)
    REFERENCES `dbREDB`.`Project` (`ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;
-- Kobus eindig

-- So as ons alles to en met hierdie lyntjie op n MySQL workbench run sal die db gemaak word.