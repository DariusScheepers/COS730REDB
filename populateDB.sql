INSERT INTO `dbredb`.`project` (`Name`, `Description`) VALUES ('Pacemaker', 'Pacemaker Software System');
INSERT INTO `dbredb`.`stakeholdertype` (`Name`, `Description`) VALUES ('Patient', 'Using the pacemaker');
INSERT INTO `dbredb`.`stakeholdertype` (`Name`, `Description`) VALUES ('Physician', 'Physician implanting or setting the pacemaker');
INSERT INTO `dbredb`.`stakeholdertype` (`Name`, `Description`) VALUES ('Technician', 'Setting the pacemaker');
INSERT INTO `dbredb`.`stakeholdertype` (`Name`, `Description`) VALUES ('Nurse', 'Setting the pacemaker');
INSERT INTO `dbredb`.`stakeholdertype` (`Name`, `Description`) VALUES ('Software Engineer', 'Developing and maintaining the system');
INSERT INTO `dbredb`.`stakeholdertype` (`Name`, `Description`) VALUES ('Hardware Engineer', 'Setting up and maintaining the system hardware');
INSERT INTO `dbredb`.`stakeholdertype` (`Name`, `Description`) VALUES ('General Staff', 'Any hospital staff assisting with using the system');
INSERT INTO `dbredb`.`requirementtype` (`Name`, `Description`) VALUES ('Functional Requirement', 'System Functionality');
INSERT INTO `dbredb`.`requirementtype` (`Name`, `Description`) VALUES ('Performance Requirement', 'System Performance');
INSERT INTO `dbredb`.`requirementtype` (`Name`, `Description`) VALUES ('External Interface Requirement', 'System Interface and UI ');
INSERT INTO `dbredb`.`requirementtype` (`Name`, `Description`) VALUES ('Design Contraint', 'System Limitations');
INSERT INTO `dbredb`.`documenttype` (`Name`, `Description`) VALUES ('Requirement', 'Document related to the requirement');
INSERT INTO `dbredb`.`documenttype` (`Name`, `Description`) VALUES ('Goal', 'Document related to the goal');
INSERT INTO `dbredb`.`documenttype` (`Name`, `Description`) VALUES ('Scenario', 'Document related to the scenario');
INSERT INTO `dbredb`.`documenttype` (`Name`, `Description`) VALUES ('Conflict', 'Document related to the conflict');
INSERT INTO `dbredb`.`documenttype` (`Name`, `Description`) VALUES ('User', 'Document related to the user');
INSERT INTO `dbredb`.`documenttype` (`Name`, `Description`) VALUES ('Stakeholder', 'Document related to stakeholder');
INSERT INTO `dbredb`.`documenttype` (`Name`, `Description`) VALUES ('Project', 'Document related to the project');
INSERT INTO `dbredb`.`documenttype` (`Name`, `Description`) VALUES ('User Role', 'Document related to the user role');
INSERT INTO `dbredb`.`documenttype` (`Name`, `Description`) VALUES ('StakeHolder Goal', 'Document related to the stakeholder goal');
INSERT INTO `dbredb`.`documenttype` (`Name`, `Description`) VALUES ('Requirement Type', 'Document related to the requirement type');
INSERT INTO `dbredb`.`documenttype` (`Name`, `Description`) VALUES ('Role', 'Document related to the role');

INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `Data`) VALUES (1, 'Requirements Specification', ``);
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `Data`) VALUES (2, 'Why We Need Better Managed Pacemakers. TheMed Journal Article', ``);
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `Data`) VALUES (3, 'Functional Specification', ``);
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `Data`) VALUES (4, 'Documented Conflicts as on executive meeting on 19052019', ``);
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `Data`) VALUES (5, 'User manual.', ``);
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `Data`) VALUES (6, 'Patient Profiles.', ``);
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `Data`) VALUES (6, 'PR Profiles.', ``);
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `Data`) VALUES (6, 'Hopsital Staff Profiles.', ``);
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `Data`) VALUES (6, 'Executive Profiles.', ``);
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `Data`) VALUES (7, 'PACEMAKER', ``);
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `Data`) VALUES (8, 'Pacemaker for Doctors', ``);
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `Data`) VALUES (9, 'A Healthy Patient', ``);
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `Data`) VALUES (9, 'A Wealthy Doctor', ``);
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `Data`) VALUES (10, 'Requirement Types', ``);
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `Data`) VALUES (11, 'Doctor Patient Relationships', ``);