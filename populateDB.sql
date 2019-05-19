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

INSERT INTO `dbredb`.`role` (`Name`, `Description`) VALUES ('Full Access', 'Full access');
INSERT INTO `dbredb`.`role` (`Name`, `Description`) VALUES ('Monitor and Limited Settings', 'Access to monitoring and limited settings');
INSERT INTO `dbredb`.`role` (`Name`, `Description`) VALUES ('Monitor and Settings', 'Access to monitoring and settings');
INSERT INTO `dbredb`.`role` (`Name`, `Description`) VALUES ('Settings and Diagnosis', 'Access to monitoring and diagnostics');
INSERT INTO `dbredb`.`role` (`Name`, `Description`) VALUES ('Monitor', 'Access to monitoring');
INSERT INTO `dbredb`.`role` (`Name`, `Description`) VALUES ('Print', 'Access to printing reports');

INSERT INTO `dbredb`.`stakeholder` (`Name`, `Surname`, `StakeholderType_ID`) VALUES ('Bill ', 'Naidoo', '2');
INSERT INTO `dbredb`.`stakeholder` (`Name`, `Surname`, `StakeholderType_ID`) VALUES ('Lucy ', 'Cook', '1');
INSERT INTO `dbredb`.`stakeholder` (`Name`, `Surname`, `StakeholderType_ID`) VALUES ('Mark Real', 'Willrow', '3');
INSERT INTO `dbredb`.`stakeholder` (`Name`, `Surname`, `StakeholderType_ID`) VALUES ('Sloan', 'Bark', '4');
INSERT INTO `dbredb`.`stakeholder` (`Name`, `Surname`, `StakeholderType_ID`) VALUES ('Geoff', 'Nunder', '5');
INSERT INTO `dbredb`.`stakeholder` (`Name`, `Surname`, `StakeholderType_ID`) VALUES ('Nadine Amy', 'Swart', '6');
INSERT INTO `dbredb`.`stakeholder` (`Name`, `Surname`, `StakeholderType_ID`) VALUES ('Jen', 'Bennet', '7');
INSERT INTO `dbredb`.`stakeholder` (`Name`, `Surname`, `StakeholderType_ID`) VALUES ('Garth', 'Bean', '1');
INSERT INTO `dbredb`.`stakeholder` (`Name`, `Surname`, `StakeholderType_ID`) VALUES ('Diane', 'Embling', '2');
INSERT INTO `dbredb`.`stakeholder` (`Name`, `Surname`, `StakeholderType_ID`) VALUES ('Rolf', 'Meyer', '3');
INSERT INTO `dbredb`.`stakeholder` (`Name`, `Surname`, `StakeholderType_ID`) VALUES ('Zedd', 'Gear', '4');
INSERT INTO `dbredb`.`stakeholder` (`Name`, `Surname`, `StakeholderType_ID`) VALUES ('Maiden', 'Temp', '5');
INSERT INTO `dbredb`.`stakeholder` (`Name`, `Surname`, `StakeholderType_ID`) VALUES ('Alice', 'Lane', '6');
INSERT INTO `dbredb`.`stakeholder` (`Name`, `Surname`, `StakeholderType_ID`) VALUES ('Game Zeal', 'Codac', '7');
INSERT INTO `dbredb`.`stakeholder` (`Name`, `Surname`, `StakeholderType_ID`) VALUES ('Ellen', 'Lace', '7');

INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `DocData`) VALUES (1, 'Requirements Specification', "");
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `DocData`) VALUES (2, 'Why We Need Better Managed Pacemakers. TheMed Journal Article', "");
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `DocData`) VALUES (3, 'Functional Specification', "");
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `DocData`) VALUES (4, 'Documented Conflicts as on executive meeting on 19052019', "");
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `DocData`) VALUES (5, 'User manual.', "");
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `DocData`) VALUES (6, 'Patient Profiles.', "");
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `DocData`) VALUES (6, 'PR Profiles.', "");
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `DocData`) VALUES (6, 'Hopsital Staff Profiles.', "");
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `DocData`) VALUES (6, 'Executive Profiles.', "");
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `DocData`) VALUES (7, 'PACEMAKER', "");
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `DocData`) VALUES (8, 'Pacemaker for Doctors', "");
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `DocData`) VALUES (9, 'A Healthy Patient', "");
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `DocData`) VALUES (9, 'A Wealthy Doctor', "");
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `DocData`) VALUES (10, 'Requirement Types', "");
INSERT INTO `dbredb`.`Document` (`Type_ID`, `Name`, `DocData`) VALUES (11, 'Doctor Patient Relationships', "");

INSERT INTO `dbredb`.`projectdocument` (`Document_ID`, `Project_ID`) VALUES ('1', '1');
INSERT INTO `dbredb`.`projectdocument` (`Document_ID`, `Project_ID`) VALUES ('2', '1');
INSERT INTO `dbredb`.`projectdocument` (`Document_ID`, `Project_ID`) VALUES ('3', '1');
INSERT INTO `dbredb`.`projectdocument` (`Document_ID`, `Project_ID`) VALUES ('4', '1');
INSERT INTO `dbredb`.`projectdocument` (`Document_ID`, `Project_ID`) VALUES ('5', '1');
INSERT INTO `dbredb`.`projectdocument` (`Document_ID`, `Project_ID`) VALUES ('6', '1');
INSERT INTO `dbredb`.`projectdocument` (`Document_ID`, `Project_ID`) VALUES ('7', '1');
INSERT INTO `dbredb`.`projectdocument` (`Document_ID`, `Project_ID`) VALUES ('8', '1');
INSERT INTO `dbredb`.`projectdocument` (`Document_ID`, `Project_ID`) VALUES ('9', '1');
INSERT INTO `dbredb`.`projectdocument` (`Document_ID`, `Project_ID`) VALUES ('10', '1');
INSERT INTO `dbredb`.`projectdocument` (`Document_ID`, `Project_ID`) VALUES ('11', '1');
INSERT INTO `dbredb`.`projectdocument` (`Document_ID`, `Project_ID`) VALUES ('12', '1');
INSERT INTO `dbredb`.`projectdocument` (`Document_ID`, `Project_ID`) VALUES ('13', '1');
INSERT INTO `dbredb`.`projectdocument` (`Document_ID`, `Project_ID`) VALUES ('14', '1');
INSERT INTO `dbredb`.`projectdocument` (`Document_ID`, `Project_ID`) VALUES ('15', '1');

INSERT INTO `dbredb`.`user` (`Description`,`StakeHolder_ID`) VALUES ('Implanting and Follow Up', 1);
INSERT INTO `dbredb`.`user` (`Description`,`StakeHolder_ID`) VALUES ('Validation and Maintenance of the System', 3);
INSERT INTO `dbredb`.`user` (`Description`,`StakeHolder_ID`) VALUES ('Monitor and Limited Treatment of Patient', 4);
INSERT INTO `dbredb`.`user` (`Description`,`StakeHolder_ID`) VALUES ('Monitor Patient', 15);


INSERT INTO `dbredb`.`userrole` (`User_ID`, `Role_ID`) VALUES ('1', '10');
INSERT INTO `dbredb`.`userrole` (`User_ID`, `Role_ID`) VALUES ('1', '11');
INSERT INTO `dbredb`.`userrole` (`User_ID`, `Role_ID`) VALUES ('2', '11');
INSERT INTO `dbredb`.`userrole` (`User_ID`, `Role_ID`) VALUES ('2', '12');
INSERT INTO `dbredb`.`userrole` (`User_ID`, `Role_ID`) VALUES ('3', '11');
INSERT INTO `dbredb`.`userrole` (`User_ID`, `Role_ID`) VALUES ('4', '1');
INSERT INTO `dbredb`.`userrole` (`User_ID`, `Role_ID`) VALUES ('5', '10');
INSERT INTO `dbredb`.`userrole` (`User_ID`, `Role_ID`) VALUES ('5', '11');
INSERT INTO `dbredb`.`userrole` (`User_ID`, `Role_ID`) VALUES ('5', '12');

INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('1', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('2', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('3', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('4', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('5', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('6', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('7', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('8', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('9', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('10', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('11', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('12', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('13', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('14', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('15', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('16', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('17', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('18', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('19', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('20', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('21', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('22', '1');
INSERT INTO `dbredb`.`projectstakeholder` (`Stakeholder_ID`, `Project_ID`) VALUES ('23', '1');

INSERT INTO `dbredb`.`projectrequirement` (`Project_ID`, `Requirement_ID`) VALUES ('1', '1');
INSERT INTO `dbredb`.`projectrequirement` (`Project_ID`, `Requirement_ID`) VALUES ('1', '2');
INSERT INTO `dbredb`.`projectrequirement` (`Project_ID`, `Requirement_ID`) VALUES ('1', '3');
INSERT INTO `dbredb`.`projectrequirement` (`Project_ID`, `Requirement_ID`) VALUES ('1', '4');
INSERT INTO `dbredb`.`projectrequirement` (`Project_ID`, `Requirement_ID`) VALUES ('1', '5');
INSERT INTO `dbredb`.`projectrequirement` (`Project_ID`, `Requirement_ID`) VALUES ('1', '6');
INSERT INTO `dbredb`.`projectrequirement` (`Project_ID`, `Requirement_ID`) VALUES ('1', '7');
INSERT INTO `dbredb`.`projectrequirement` (`Project_ID`, `Requirement_ID`) VALUES ('1', '8');
INSERT INTO `dbredb`.`projectrequirement` (`Project_ID`, `Requirement_ID`) VALUES ('1', '9');
INSERT INTO `dbredb`.`projectrequirement` (`Project_ID`, `Requirement_ID`) VALUES ('1', '10');
INSERT INTO `dbredb`.`projectrequirement` (`Project_ID`, `Requirement_ID`) VALUES ('1', '11');
INSERT INTO `dbredb`.`projectrequirement` (`Project_ID`, `Requirement_ID`) VALUES ('1', '12');

