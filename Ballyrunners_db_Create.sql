CREATE DATABASE ballyrunners_db;

CREATE TABLE ballyrunners_db.activity (
  ActivityId int NOT NULL AUTO_INCREMENT,
  ActivityType varchar(80) DEFAULT NULL,
  ActivityName varchar(80) DEFAULT NULL,
  Location varchar(80) DEFAULT NULL,
  Address mediumtext,
  ActivityDateStart date DEFAULT NULL,
  ActivityDateEnd date DEFAULT NULL,
  ProjectManagement decimal(10,2) DEFAULT NULL,
  Transport decimal(10,2) DEFAULT NULL,
  Food decimal(10,2) DEFAULT NULL,
  Activities decimal(10,2) DEFAULT NULL,
  Resources decimal(10,2) DEFAULT NULL,
  Stationary decimal(10,2) DEFAULT NULL,
  Promotion decimal(10,2) DEFAULT NULL,
  IT decimal(10,2) DEFAULT NULL,
  Other decimal(10,2) DEFAULT NULL,
  OtherDescription varchar(255) DEFAULT NULL,
  Tutors decimal(10,2) DEFAULT NULL,
  Venue decimal(10,2) DEFAULT NULL,
  Balance decimal(10,2) DEFAULT NULL,
  Budget decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (ActivityId)
);

CREATE TABLE ballyrunners_db.personal_details (
  DetailsId int NOT NULL AUTO_INCREMENT,
  PPSN varchar(15) DEFAULT NULL,
  FirstName varchar(80) DEFAULT NULL,
  Surname varchar(80) DEFAULT NULL,
  DoB date DEFAULT NULL,
  Gender varchar(20) DEFAULT NULL,
  Address1 varchar(255) DEFAULT NULL,
  Address2 varchar(255) DEFAULT NULL,
  EirCode varchar(15) DEFAULT NULL,
  City varchar(80) DEFAULT NULL,
  PhoneNumber varchar(20) DEFAULT NULL,
  MobileNumber varchar(20) DEFAULT NULL,
  EmailAddress varchar(80) DEFAULT NULL,
  PRIMARY KEY (DetailsId)
);

CREATE TABLE ballyrunners_db.tutors (
  TutorId int NOT NULL AUTO_INCREMENT,
  DetailsId int DEFAULT NULL,
  Skills varchar(80) DEFAULT NULL,
  HourlyRate decimal(10,0) DEFAULT NULL,
  RecivedCV tinyint(1) DEFAULT NULL,
  ContractSigned tinyint(1) DEFAULT NULL,
  PRIMARY KEY (TutorId),
  KEY DetailsId_idx (DetailsId),
  CONSTRAINT TutDetailsId FOREIGN KEY (DetailsId) REFERENCES personal_details (DetailsId) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ballyrunners_db.students (
  StudentId int NOT NULL AUTO_INCREMENT,
  DetailsId int DEFAULT NULL,
  EducationLevel varchar(200) DEFAULT NULL,
  ReferralSource varchar(255) DEFAULT NULL,
  Interview tinyint(1) DEFAULT NULL,
  PlaceOffered tinyint(1) DEFAULT NULL,
  PlaceAccepted tinyint(1) DEFAULT NULL,
  RegistredWithBLJC tinyint(1) DEFAULT NULL,
  GuidanceOfficer varchar(255) DEFAULT NULL,
  EngagedWithOtherAgencies tinyint(1) DEFAULT NULL,
  Responsibilities tinyint(1) DEFAULT NULL,
  PhotoConsent tinyint(1) DEFAULT NULL,
  DataConsent tinyint(1) DEFAULT NULL,
  PersonalPropertyConsent tinyint(1) DEFAULT NULL,
  Notes mediumtext,
  MedicalIssue mediumtext,
  NextofKin tinyint DEFAULT NULL,
  BackgroundYoungPerson mediumtext,
  ReferrerAgencyName varchar(200) DEFAULT NULL,
  ReferrerName varchar(80) DEFAULT NULL,
  ReferrerAddress mediumtext,
  ReferrerPhone varchar(45) DEFAULT NULL,
  ReferrerMail varchar(80) DEFAULT NULL,
  DateOfReferral datetime DEFAULT NULL,
  IsStudent tinyint DEFAULT NULL,
  PRIMARY KEY (StudentId),
  KEY DetailsId (DetailsId),
  CONSTRAINT DetailsId FOREIGN KEY (DetailsId) REFERENCES personal_details (DetailsId) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE ballyrunners_db.contact_details (
  ContactId int NOT NULL AUTO_INCREMENT,
  FirstName varchar(80) DEFAULT NULL,
  Surname varchar(80) DEFAULT NULL,
  Address1 varchar(255) DEFAULT NULL,
  Address2 varchar(255) DEFAULT NULL,
  EirCode varchar(15) DEFAULT NULL,
  City varchar(80) DEFAULT NULL,
  PhoneNumber varchar(20) DEFAULT NULL,
  MobileNumber varchar(20) DEFAULT NULL,
  EmailAddress varchar(80) DEFAULT NULL,
  PRIMARY KEY (ContactId)
);

CREATE TABLE ballyrunners_db.committee_members (
  CommitteeId int NOT NULL AUTO_INCREMENT,
  ContactId int DEFAULT NULL,
  OrganizationName varchar(80) DEFAULT NULL,
  PRIMARY KEY (CommitteeId),
  KEY ContactId_idx (ContactId),
  CONSTRAINT ContactId FOREIGN KEY (ContactId) REFERENCES contact_details (ContactId) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ballyrunners_db.support_agencies (
  AgencyId int NOT NULL AUTO_INCREMENT,
  ContactId int DEFAULT NULL,
  AgencyName varchar(80) DEFAULT NULL,
  PRIMARY KEY (AgencyId),
  KEY ContactId_idx (ContactId),
  CONSTRAINT AgContactId FOREIGN KEY (ContactId) REFERENCES contact_details (ContactId)
);

CREATE TABLE ballyrunners_db.attendance (
  AttendanceId int NOT NULL AUTO_INCREMENT,
  StuidentId int DEFAULT NULL,
  AttendanceDate date DEFAULT NULL,
  Attendance tinyint(1) DEFAULT NULL,
  Notes varchar(255) DEFAULT NULL,
  PRIMARY KEY (AttendanceId),
  KEY StuidentId (StuidentId),
  CONSTRAINT attendance_ibfk_1 FOREIGN KEY (StuidentId) REFERENCES students (StudentId) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ballyrunners_db.course (
  CourseId int NOT NULL AUTO_INCREMENT,
  TutorId_TCFK int DEFAULT NULL,
  CourseName varchar(80) DEFAULT NULL,
  StartDate date DEFAULT NULL,
  EndDate date DEFAULT NULL,
  PRIMARY KEY (CourseId),
  KEY TutorId_TCFK_idx (TutorId_TCFK),
  CONSTRAINT TutorId_TCFK FOREIGN KEY (TutorId_TCFK) REFERENCES tutors (TutorId) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE ballyrunners_db.course_student (
  Course_studentId int NOT NULL AUTO_INCREMENT,
  StudentId int DEFAULT NULL,
  CourseId int DEFAULT NULL,
  PRIMARY KEY (Course_studentId),
  KEY StudentId_idx (StudentId),
  KEY CourseId_idx (CourseId),
  CONSTRAINT CourseId FOREIGN KEY (CourseId) REFERENCES course (CourseId),
  CONSTRAINT StudentId FOREIGN KEY (StudentId) REFERENCES students (StudentId)
);

CREATE TABLE ballyrunners_db.league_results (
  LeagueId int NOT NULL AUTO_INCREMENT,
  StuidentId int DEFAULT NULL,
  LeagueDate date DEFAULT NULL,
  LeagueActivity varchar(80) DEFAULT NULL,
  Score int DEFAULT NULL,
  Total int DEFAULT NULL,
  PRIMARY KEY (LeagueId),
  KEY StuidentId (StuidentId),
  CONSTRAINT league_results_ibfk_1 FOREIGN KEY (StuidentId) REFERENCES students (StudentId) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ballyrunners_db.outcome (
  OutcomeId int NOT NULL AUTO_INCREMENT,
  StuidentId int DEFAULT NULL,
  OutcomeDescription varchar(80) DEFAULT NULL,
  OrganizationName varchar(80) DEFAULT NULL,
  ProgrammmeeName varchar(80) DEFAULT NULL,
  JobTitle varchar(80) DEFAULT NULL,
  TrainingAgency varchar(80) DEFAULT NULL,
  OutcomeDate date DEFAULT NULL,
  OutcomeStartDate date DEFAULT NULL,
  OutcomeEndDate date DEFAULT NULL,
  Comments mediumtext,
  PRIMARY KEY (OutcomeId),
  KEY StuidentId (StuidentId),
  CONSTRAINT outcome_ibfk_1 FOREIGN KEY (StuidentId) REFERENCES students (StudentId) ON DELETE RESTRICT
);

CREATE TABLE ballyrunners_db.drug_questions (
  DrugsId int NOT NULL AUTO_INCREMENT,
  StudentId_DFK int DEFAULT NULL,
  D01 mediumtext,
  D02 mediumtext,
  D03 mediumtext,
  D04 mediumtext,
  D05 mediumtext,
  D06 mediumtext,
  D07 mediumtext,
  D08 mediumtext,
  D09 mediumtext,
  D10 mediumtext,
  D11 mediumtext,
  D12 mediumtext,
  PRIMARY KEY (DrugsId),
  KEY StudentId_DFK_idx (StudentId_DFK),
  CONSTRAINT StudentId_DFK FOREIGN KEY (StudentId_DFK) REFERENCES students (StudentId)
);

CREATE TABLE ballyrunners_db.offending_behaviour_questions (
  OffBehId int NOT NULL AUTO_INCREMENT,
  StudentId_OFK int DEFAULT NULL,
  OB01 varchar(10) DEFAULT NULL,
  OB02 mediumtext,
  OB03 mediumtext,
  OB04 mediumtext,
  OB05 varchar(10) DEFAULT NULL,
  OB06 mediumtext,
  OB07 mediumtext,
  OB08 mediumtext,
  OB09 mediumtext,
  PRIMARY KEY (OffBehId),
  KEY StudentId_OFK_idx (StudentId_OFK),
  CONSTRAINT StudentId_OFK FOREIGN KEY (StudentId_OFK) REFERENCES students (StudentId)
);

CREATE TABLE ballyrunners_db.training_questions (
  TrainingId int NOT NULL AUTO_INCREMENT,
  StudentId_TFK int DEFAULT NULL,
  TB01 varchar(10) DEFAULT NULL,
  TB02 varchar(10) DEFAULT NULL,
  TB03 varchar(10) DEFAULT NULL,
  TB04 varchar(10) DEFAULT NULL,
  TB05 varchar(10) DEFAULT NULL,
  TB06 mediumtext,
  TB07 mediumtext,
  TB08 mediumtext,
  TB09A mediumtext,
  TB09B mediumtext,
  PRIMARY KEY (TrainingId),
  KEY StudentId_TFK_idx (StudentId_TFK),
  CONSTRAINT StudentId_TFK FOREIGN KEY (StudentId_TFK) REFERENCES students (StudentId)
);


select * from ballyrunners_db.personal_details;

