SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema dbERPCOIN
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dbREDB` DEFAULT CHARACTER SET latin1 ;
USE `dbREDB` ;

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

-- -----------------------------------------------------
-- Table `dbERPCOIN`.`tblUser`
-- -----------------------------------------------------
-- Description: Stores basic informtion about an user.
-- usrWalletAddress: The address of the user's blockchain wallet.
-- usrLastPointTime: The time when the user previously sent his coordinate
CREATE TABLE IF NOT EXISTS `dbSonopApp`.`tblAnnouncement` (
  `annID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `annTitle` VARCHAR(50) NOT NULL,
  `annMessage` VARCHAR(10000) NOT NULL,
  `annDatePosted` BIGINT NOT NULL,
  `annPriority` BOOLEAN NOT NULL,
  `tblUser_usrID` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`annID`, `tblUser_usrID`),
  INDEX `fk_tblAnnouncement_tblUser1_idx` (`tblUser_usrID` ASC),
  CONSTRAINT `fk_tblAnnouncement_tblUser1`
    FOREIGN KEY (`tblUser_usrID`)
    REFERENCES `dbSonopApp`.`tblUser` (`usrID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE TABLE IF NOT EXISTS `dbSonopApp`.`tblWeekendSignIn` (
  `wsiID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `wsiFridayDinner` boolean,
  `wsiSaturdayBrunch` boolean,
  `wsiSaturdayDinner` boolean,
  `wsiSundayBreakfast` boolean,
  `wsiSundayLunch` boolean,
  `wsiSundayDinner` boolean,
  `tblUser_usrID` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`wsiID`, `tblUser_usrID`),
  INDEX `fk_tblWeekendSignIn_tblUser1_idx` (`tblUser_usrID` ASC),
  CONSTRAINT `fk_tblWeekendSignIn_tblUser1`
    FOREIGN KEY (`tblUser_usrID`)
    REFERENCES `dbSonopApp`.`tblUser` (`usrID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE TABLE IF NOT EXISTS `dbSonopApp`.`tblBedieningTable` (
  `talID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `talName` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`talID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

CREATE TABLE IF NOT EXISTS `dbSonopApp`.`tblWeeklySignOut` (
  `wsoID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `wsoMondayLunch` INT(2) UNSIGNED, #0 = permanet sign out #1 = sign out #2 = signed in
  `wsoMondayDinner` INT(2) UNSIGNED,
  `wsoTuesdayLunch` INT(2) UNSIGNED,
  `wsoTuesdayDinner` INT(2) UNSIGNED,
  `wsoWednesdayLunch` INT(2) UNSIGNED,
  `wsoWednesdayDinner` INT(2) UNSIGNED,
  `wsoThursdayLunch` INT(2) UNSIGNED,
  `wsoThursdayDinner` INT(2) UNSIGNED,
  `wsoFridayLunch` INT(2) UNSIGNED,
  `tblUser_usrID` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`wsoID`, `tblUser_usrID`),
  INDEX `fk_tblWeeklySignOut_tblUser1_idx` (`tblUser_usrID` ASC),
  CONSTRAINT `fk_tblWeeklySignOut_tblUser1`
    FOREIGN KEY (`tblUser_usrID`)
    REFERENCES `dbSonopApp`.`tblUser` (`usrID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


-- 2 Foreign Keys Example
CREATE TABLE IF NOT EXISTS `dbERPCOIN`.`tblAlert` (
	`aleID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`aleHeader` VARCHAR(100) NOT NULL,
	`aleDescription` VARCHAR(255) NOT NULL,
	`aleSeverity` INT UNSIGNED NOT NULL,
	`aleImage` mediumblob ,
	`aleBroadcast` BIT(1) NOT NULL,
	`aleLocation` VARCHAR(100) NOT NULL,
	`aleTimeSent`  BIGINT NOT NULL,
	`tblConservationArea_conID` INT UNSIGNED NOT NULL,
	`tblUser_usrID` INT UNSIGNED,
	PRIMARY KEY (`aleID`),
	INDEX `fk_tblAlert_tblConservationArea1_idx` (`tblConservationArea_conID` ASC),
	CONSTRAINT `fk_tblAlert_tblConservationArea1`
	FOREIGN KEY (`tblConservationArea_conID`)
	REFERENCES `dbERPCOIN`.`tblConservationArea` (`conID`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION,
	INDEX `fk_tblAlert_tblUser1_idx` (`tblUser_usrID` ASC),
	CONSTRAINT `fk_tblAlert_tblUser1`
	FOREIGN KEY (`tblUser_usrID`)
	REFERENCES `dbERPCOIN`.`tblUser` (`usrID`)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;