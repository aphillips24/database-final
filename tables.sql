CREATE TABLE STUDENT (
 STU_ID INTEGER PRIMARY KEY,
 STU_FNAME VARCHAR(20) NOT NULL,
 STU_LNAME VARCHAR(20) NOT NULL,
 STU_ADDRESS VARCHAR(50) NOT NULL,
 STU_PHONE VARCHAR(13) NOT NULL,
 STU_EMAIL VARCHAR(50) NOT NULL
);

CREATE TABLE AID (
 AID_ID INTEGER(20) PRIMARY KEY NOT NULL,
 AID_NAME VARCHAR(20) NOT NULL,
 AID_DONORNAME VARCHAR(20) NOT NULL,
 AID_AMNT DECIMAL (10,2) NOT NULL,
 STU_ID INTEGER NOT NULL,
 FOREIGN KEY(STU_ID) REFERENCES STUDENT(STU_ID)
);

CREATE TABLE CHARGE (
CHRG_ID INTEGER(20) PRIMARY KEY NOT NULL,
CHRG_NAME VARCHAR(20) NOT NULL,
CHRG_AMNT INTEGER(20) NOT NULL,
STU_ID INTEGER NOT NULL,
FOREIGN KEY(STU_ID) REFERENCES STUDENT(STU_ID)
);

CREATE TABLE ADMIN (
ADMIN_ID INTEGER(20) PRIMARY KEY NOT NULL,
ADMIN_NAME VARCHAR(50) NOT NULL,
ADMIN_DEPT VARCHAR(50) NOT NULL,
CHRG_ID INTEGER(20),
FOREIGN KEY(CHRG_ID) REFERENCES CHARGE(CHRG_ID)
);

CREATE TABLE PAYMENT(
PMT_ID INTEGER(20) PRIMARY KEY NOT NULL,
PMT_STATUS /*cleared, rejected, pending */ VARCHAR(20) NOT NULL,
PMT_METHOD /*credit or debit card*/ VARCHAR(20) NOT NULL,
MPT_DURATION /*amount of months*/ INTEGER NOT NULL,
ADMIN_ID INTEGER(20) NOT NULL,
FOREIGN KEY (ADMIN_ID) REFERENCES ADMIN(ADMIN_ID)
);

CREATE TABLE HOLD(
HOLD_ID INTEGER(20) PRIMARY KEY NOT NULL,
HOLD_NAME VARCHAR(20) NOT NULL,
CHRG_ID INTEGER(20) NOT NULL,
HOLD_TYPE VARCHAR(20) NOT NULL,
PMT_ID INTEGER(20) NOT NULL,
FOREIGN KEY (CHRG_ID) REFERENCES CHARGE(CHRG_ID),
FOREIGN KEY (PMT_ID) REFERENCES PAYMENT(PMT_ID)
);


INSERT INTO STUDENT(STU_ID, STU_FNAME, STU_LNAME, STU_ADDRESS, STU_PHONE, STU_EMAIL) VALUES (02789012, "Afeeni", "Phillips", "13769 THURSTON ST", "3472647357", "afeeniphillips@gmail.com");
INSERT INTO STUDENT(STU_ID, STU_FNAME, STU_LNAME, STU_ADDRESS, STU_PHONE, STU_EMAIL) VALUES (02789012, "Afeeni", "Phillips", "13769 THURSTON ST", "3472647357", "afeeniphillips@gmail.com");
INSERT INTO STUDENT(STU_ID, STU_FNAME, STU_LNAME, STU_ADDRESS, STU_PHONE, STU_EMAIL) VALUES (02789012, "Afeeni", "Phillips", "13769 THURSTON ST", "3472647357", "afeeniphillips@gmail.com");
INSERT INTO STUDENT(STU_ID, STU_FNAME, STU_LNAME, STU_ADDRESS, STU_PHONE, STU_EMAIL) VALUES (02789012, "Afeeni", "Phillips", "13769 THURSTON ST", "3472647357", "afeeniphillips@gmail.com");
INSERT INTO STUDENT(STU_ID, STU_FNAME, STU_LNAME, STU_ADDRESS, STU_PHONE, STU_EMAIL) VALUES (02789012, "Afeeni", "Phillips", "13769 THURSTON ST", "3472647357", "afeeniphillips@gmail.com");


INSERT INTO AID(AID_ID, AID_NAME, AID_DONORNAME, AID_AMNT, STU_ID) VALUES (11111, "Legacy Scholarship", "Howard University", 27000.90, 02789012);
INSERT INTO AID(AID_ID, AID_NAME, AID_DONORNAME, AID_AMNT, STU_ID) VALUES (11111, "Legacy Scholarship", "Howard University", 27000.90, 02789012);
INSERT INTO AID(AID_ID, AID_NAME, AID_DONORNAME, AID_AMNT, STU_ID) VALUES (11111, "Legacy Scholarship", "Howard University", 27000.90, 02789012);
INSERT INTO AID(AID_ID, AID_NAME, AID_DONORNAME, AID_AMNT, STU_ID) VALUES (11111, "Legacy Scholarship", "Howard University", 27000.90, 02789012);
INSERT INTO AID(AID_ID, AID_NAME, AID_DONORNAME, AID_AMNT, STU_ID) VALUES (11111, "Legacy Scholarship", "Howard University", 27000.90, 02789012);
INSERT INTO AID(AID_ID, AID_NAME, AID_DONORNAME, AID_AMNT, STU_ID) VALUES (11111, "Legacy Scholarship", "Howard University", 27000.90, 02789012);