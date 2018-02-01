/*
Navicat Oracle Data Transfer
Oracle Client Version : 10.2.0.3.0

Source Server         : WJ1704
Source Server Version : 100200
Source Host           : 127.0.0.1:1521
Source Schema         : WJ1704

Target Server Type    : ORACLE
Target Server Version : 100200
File Encoding         : 65001

Date: 2018-02-01 21:12:36
*/


-- ----------------------------
-- Table structure for ANNOUNCEMENT
-- ----------------------------
DROP TABLE "WJ1704"."ANNOUNCEMENT";
CREATE TABLE "WJ1704"."ANNOUNCEMENT" (
"ATITLE" VARCHAR2(10 BYTE) NOT NULL ,
"ACONTEXT" VARCHAR2(10 BYTE) NULL ,
"ADATE" DATE NULL ,
"ASTATE" VARCHAR2(10 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for CAR
-- ----------------------------
DROP TABLE "WJ1704"."CAR";
CREATE TABLE "WJ1704"."CAR" (
"CID" VARCHAR2(10 BYTE) NOT NULL ,
"DSNAME" VARCHAR2(10 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for COACH
-- ----------------------------
DROP TABLE "WJ1704"."COACH";
CREATE TABLE "WJ1704"."COACH" (
"TID" NUMBER NOT NULL ,
"TNAME" VARCHAR2(10 BYTE) NULL ,
"TPHONE" NUMBER DEFAULT 0  NOT NULL ,
"DSNAME" VARCHAR2(10 BYTE) NOT NULL ,
"USERNAME" VARCHAR2(10 BYTE) NOT NULL ,
"CPASSWORD" VARCHAR2(10 BYTE) NOT NULL ,
"CSTATE" VARCHAR2(10 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for COACHPUNISH
-- ----------------------------
DROP TABLE "WJ1704"."COACHPUNISH";
CREATE TABLE "WJ1704"."COACHPUNISH" (
"TNAME" VARCHAR2(10 BYTE) NOT NULL ,
"PUNISH" VARCHAR2(255 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for DRIVERSCHOOL
-- ----------------------------
DROP TABLE "WJ1704"."DRIVERSCHOOL";
CREATE TABLE "WJ1704"."DRIVERSCHOOL" (
"DSID" NUMBER NOT NULL ,
"DSNAME" VARCHAR2(10 BYTE) NULL ,
"DSBELONGNAME" VARCHAR2(10 BYTE) NULL ,
"DSBELONGPHONE" NUMBER NULL ,
"DSSTATE" VARCHAR2(10 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for DSAPPLY
-- ----------------------------
DROP TABLE "WJ1704"."DSAPPLY";
CREATE TABLE "WJ1704"."DSAPPLY" (
"DSNAME" VARCHAR2(10 BYTE) NOT NULL ,
"LEGALPERSON" VARCHAR2(10 BYTE) NULL ,
"LPTELEPHONE" VARCHAR2(10 BYTE) NULL ,
"APPLYPASSWORD" VARCHAR2(10 BYTE) NULL ,
"APPLYDATE" DATE NULL ,
"REVIEWEDDATE" DATE NULL ,
"APPLYRESULT" VARCHAR2(10 BYTE) NULL ,
"APPLYREMARK" VARCHAR2(20 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for DSASSESS
-- ----------------------------
DROP TABLE "WJ1704"."DSASSESS";
CREATE TABLE "WJ1704"."DSASSESS" (
"DSNAME" VARCHAR2(10 BYTE) NOT NULL ,
"DSASSESS" VARCHAR2(255 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for DSPUNISH
-- ----------------------------
DROP TABLE "WJ1704"."DSPUNISH";
CREATE TABLE "WJ1704"."DSPUNISH" (
"DSNAME" VARCHAR2(10 BYTE) NOT NULL ,
"PUNISH" VARCHAR2(255 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for GRADUATION
-- ----------------------------
DROP TABLE "WJ1704"."GRADUATION";
CREATE TABLE "WJ1704"."GRADUATION" (
"TNAME" VARCHAR2(10 BYTE) NOT NULL ,
"MONTH" VARCHAR2(10 BYTE) NOT NULL ,
"GRADUATIONS" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for NEWS
-- ----------------------------
DROP TABLE "WJ1704"."NEWS";
CREATE TABLE "WJ1704"."NEWS" (
"NTITLE" VARCHAR2(10 BYTE) NOT NULL ,
"NCONTEXT" VARCHAR2(10 BYTE) NULL ,
"NDATE" DATE NULL ,
"NSTATE" VARCHAR2(10 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for QUESTIONS
-- ----------------------------
DROP TABLE "WJ1704"."QUESTIONS";
CREATE TABLE "WJ1704"."QUESTIONS" (
"QID" NUMBER NOT NULL ,
"QSUBJECT" VARCHAR2(255 BYTE) NOT NULL ,
"QANSWER" VARCHAR2(4 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for SCORE
-- ----------------------------
DROP TABLE "WJ1704"."SCORE";
CREATE TABLE "WJ1704"."SCORE" (
"SNAME" VARCHAR2(10 BYTE) NOT NULL ,
"SUBJECT" VARCHAR2(10 BYTE) NOT NULL ,
"SCORE" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for SIGN
-- ----------------------------
DROP TABLE "WJ1704"."SIGN";
CREATE TABLE "WJ1704"."SIGN" (
"SIGNID" NUMBER NOT NULL ,
"SIGNDATE" DATE NULL ,
"TNAME" VARCHAR2(10 BYTE) NULL ,
"SNAME" VARCHAR2(10 BYTE) NULL ,
"CID" VARCHAR2(10 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for SIGNOUT
-- ----------------------------
DROP TABLE "WJ1704"."SIGNOUT";
CREATE TABLE "WJ1704"."SIGNOUT" (
"SIGNOUTID" NUMBER NOT NULL ,
"SIGNOUTDATE" DATE NULL ,
"TNAME" VARCHAR2(10 BYTE) NULL ,
"SNAME" VARCHAR2(10 BYTE) NULL ,
"CID" VARCHAR2(10 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for STIME
-- ----------------------------
DROP TABLE "WJ1704"."STIME";
CREATE TABLE "WJ1704"."STIME" (
"SNAME" VARCHAR2(10 BYTE) NOT NULL ,
"SUBJECT" VARCHAR2(10 BYTE) NOT NULL ,
"STIME" VARCHAR2(10 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for STUDENT
-- ----------------------------
DROP TABLE "WJ1704"."STUDENT";
CREATE TABLE "WJ1704"."STUDENT" (
"SID" NUMBER NOT NULL ,
"SNAME" VARCHAR2(10 BYTE) NULL ,
"SPHONE" NUMBER NOT NULL ,
"SDATE" DATE NOT NULL ,
"TNAME" VARCHAR2(10 BYTE) NULL ,
"DSNAME" VARCHAR2(10 BYTE) NOT NULL ,
"USERNAME" VARCHAR2(10 BYTE) NOT NULL ,
"PASSWORD" VARCHAR2(10 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for STUDENTNUMBER
-- ----------------------------
DROP TABLE "WJ1704"."STUDENTNUMBER";
CREATE TABLE "WJ1704"."STUDENTNUMBER" (
"DSNAME" VARCHAR2(10 BYTE) NOT NULL ,
"SNNUMBER" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for SUBJECTNUMBER
-- ----------------------------
DROP TABLE "WJ1704"."SUBJECTNUMBER";
CREATE TABLE "WJ1704"."SUBJECTNUMBER" (
"DSNAME" VARCHAR2(10 BYTE) NOT NULL ,
"SUBJECT" VARCHAR2(10 BYTE) NOT NULL ,
"SUNNUMBER" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for TASSESS
-- ----------------------------
DROP TABLE "WJ1704"."TASSESS";
CREATE TABLE "WJ1704"."TASSESS" (
"TNAME" VARCHAR2(2 BYTE) NOT NULL ,
"TASSESS" VARCHAR2(255 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Table structure for TEST
-- ----------------------------
DROP TABLE "WJ1704"."TEST";
CREATE TABLE "WJ1704"."TEST" (
"TESTID" NUMBER NOT NULL ,
"SNAME" VARCHAR2(255 BYTE) NULL ,
"TTIME" DATE NULL ,
"SUBJECT" VARCHAR2(10 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Indexes structure for table ANNOUNCEMENT
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table ANNOUNCEMENT
-- ----------------------------
ALTER TABLE "WJ1704"."ANNOUNCEMENT" ADD PRIMARY KEY ("ATITLE");

-- ----------------------------
-- Indexes structure for table CAR
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table CAR
-- ----------------------------
ALTER TABLE "WJ1704"."CAR" ADD PRIMARY KEY ("CID");

-- ----------------------------
-- Indexes structure for table COACH
-- ----------------------------

-- ----------------------------
-- Uniques structure for table COACH
-- ----------------------------
ALTER TABLE "WJ1704"."COACH" ADD UNIQUE ("TNAME");

-- ----------------------------
-- Checks structure for table COACH
-- ----------------------------
ALTER TABLE "WJ1704"."COACH" ADD CHECK ("TPHONE" IS NOT NULL);
ALTER TABLE "WJ1704"."COACH" ADD CHECK ("DSNAME" IS NOT NULL);
ALTER TABLE "WJ1704"."COACH" ADD CHECK ("USERNAME" IS NOT NULL);
ALTER TABLE "WJ1704"."COACH" ADD CHECK ("CPASSWORD" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table COACH
-- ----------------------------
ALTER TABLE "WJ1704"."COACH" ADD PRIMARY KEY ("TID");

-- ----------------------------
-- Indexes structure for table COACHPUNISH
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table COACHPUNISH
-- ----------------------------
ALTER TABLE "WJ1704"."COACHPUNISH" ADD PRIMARY KEY ("TNAME", "PUNISH");

-- ----------------------------
-- Indexes structure for table DRIVERSCHOOL
-- ----------------------------

-- ----------------------------
-- Uniques structure for table DRIVERSCHOOL
-- ----------------------------
ALTER TABLE "WJ1704"."DRIVERSCHOOL" ADD UNIQUE ("DSNAME");

-- ----------------------------
-- Primary Key structure for table DRIVERSCHOOL
-- ----------------------------
ALTER TABLE "WJ1704"."DRIVERSCHOOL" ADD PRIMARY KEY ("DSID");

-- ----------------------------
-- Indexes structure for table DSAPPLY
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table DSAPPLY
-- ----------------------------
ALTER TABLE "WJ1704"."DSAPPLY" ADD PRIMARY KEY ("DSNAME");

-- ----------------------------
-- Indexes structure for table DSASSESS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table DSASSESS
-- ----------------------------
ALTER TABLE "WJ1704"."DSASSESS" ADD PRIMARY KEY ("DSNAME", "DSASSESS");

-- ----------------------------
-- Indexes structure for table DSPUNISH
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table DSPUNISH
-- ----------------------------
ALTER TABLE "WJ1704"."DSPUNISH" ADD PRIMARY KEY ("DSNAME");

-- ----------------------------
-- Indexes structure for table GRADUATION
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table GRADUATION
-- ----------------------------
ALTER TABLE "WJ1704"."GRADUATION" ADD PRIMARY KEY ("TNAME", "MONTH");

-- ----------------------------
-- Indexes structure for table NEWS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table NEWS
-- ----------------------------
ALTER TABLE "WJ1704"."NEWS" ADD PRIMARY KEY ("NTITLE");

-- ----------------------------
-- Indexes structure for table QUESTIONS
-- ----------------------------

-- ----------------------------
-- Checks structure for table QUESTIONS
-- ----------------------------
ALTER TABLE "WJ1704"."QUESTIONS" ADD CHECK ("QSUBJECT" IS NOT NULL);
ALTER TABLE "WJ1704"."QUESTIONS" ADD CHECK ("QANSWER" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table QUESTIONS
-- ----------------------------
ALTER TABLE "WJ1704"."QUESTIONS" ADD PRIMARY KEY ("QID");

-- ----------------------------
-- Indexes structure for table SCORE
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SCORE
-- ----------------------------
ALTER TABLE "WJ1704"."SCORE" ADD PRIMARY KEY ("SNAME", "SUBJECT", "SCORE");

-- ----------------------------
-- Indexes structure for table SIGN
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SIGN
-- ----------------------------
ALTER TABLE "WJ1704"."SIGN" ADD PRIMARY KEY ("SIGNID");

-- ----------------------------
-- Indexes structure for table SIGNOUT
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SIGNOUT
-- ----------------------------
ALTER TABLE "WJ1704"."SIGNOUT" ADD PRIMARY KEY ("SIGNOUTID");

-- ----------------------------
-- Indexes structure for table STIME
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table STIME
-- ----------------------------
ALTER TABLE "WJ1704"."STIME" ADD PRIMARY KEY ("SNAME", "SUBJECT", "STIME");

-- ----------------------------
-- Indexes structure for table STUDENT
-- ----------------------------

-- ----------------------------
-- Uniques structure for table STUDENT
-- ----------------------------
ALTER TABLE "WJ1704"."STUDENT" ADD UNIQUE ("SNAME");

-- ----------------------------
-- Checks structure for table STUDENT
-- ----------------------------
ALTER TABLE "WJ1704"."STUDENT" ADD CHECK ("SPHONE" IS NOT NULL);
ALTER TABLE "WJ1704"."STUDENT" ADD CHECK ("SDATE" IS NOT NULL);
ALTER TABLE "WJ1704"."STUDENT" ADD CHECK ("DSNAME" IS NOT NULL);
ALTER TABLE "WJ1704"."STUDENT" ADD CHECK ("USERNAME" IS NOT NULL);
ALTER TABLE "WJ1704"."STUDENT" ADD CHECK ("PASSWORD" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table STUDENT
-- ----------------------------
ALTER TABLE "WJ1704"."STUDENT" ADD PRIMARY KEY ("SID");

-- ----------------------------
-- Indexes structure for table STUDENTNUMBER
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table STUDENTNUMBER
-- ----------------------------
ALTER TABLE "WJ1704"."STUDENTNUMBER" ADD PRIMARY KEY ("DSNAME", "SNNUMBER");

-- ----------------------------
-- Indexes structure for table SUBJECTNUMBER
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table SUBJECTNUMBER
-- ----------------------------
ALTER TABLE "WJ1704"."SUBJECTNUMBER" ADD PRIMARY KEY ("DSNAME", "SUBJECT", "SUNNUMBER");

-- ----------------------------
-- Indexes structure for table TASSESS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table TASSESS
-- ----------------------------
ALTER TABLE "WJ1704"."TASSESS" ADD PRIMARY KEY ("TNAME", "TASSESS");

-- ----------------------------
-- Indexes structure for table TEST
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table TEST
-- ----------------------------
ALTER TABLE "WJ1704"."TEST" ADD PRIMARY KEY ("TESTID");

-- ----------------------------
-- Foreign Key structure for table "WJ1704"."CAR"
-- ----------------------------
ALTER TABLE "WJ1704"."CAR" ADD FOREIGN KEY ("DSNAME") REFERENCES "WJ1704"."DRIVERSCHOOL" ("DSNAME");

-- ----------------------------
-- Foreign Key structure for table "WJ1704"."COACH"
-- ----------------------------
ALTER TABLE "WJ1704"."COACH" ADD FOREIGN KEY ("DSNAME") REFERENCES "WJ1704"."DRIVERSCHOOL" ("DSNAME");

-- ----------------------------
-- Foreign Key structure for table "WJ1704"."COACHPUNISH"
-- ----------------------------
ALTER TABLE "WJ1704"."COACHPUNISH" ADD FOREIGN KEY ("TNAME") REFERENCES "WJ1704"."COACH" ("TNAME");

-- ----------------------------
-- Foreign Key structure for table "WJ1704"."DSAPPLY"
-- ----------------------------
ALTER TABLE "WJ1704"."DSAPPLY" ADD FOREIGN KEY ("DSNAME") REFERENCES "WJ1704"."DRIVERSCHOOL" ("DSNAME");

-- ----------------------------
-- Foreign Key structure for table "WJ1704"."DSASSESS"
-- ----------------------------
ALTER TABLE "WJ1704"."DSASSESS" ADD FOREIGN KEY ("DSNAME") REFERENCES "WJ1704"."DRIVERSCHOOL" ("DSNAME");

-- ----------------------------
-- Foreign Key structure for table "WJ1704"."DSPUNISH"
-- ----------------------------
ALTER TABLE "WJ1704"."DSPUNISH" ADD FOREIGN KEY ("DSNAME") REFERENCES "WJ1704"."DRIVERSCHOOL" ("DSNAME");

-- ----------------------------
-- Foreign Key structure for table "WJ1704"."GRADUATION"
-- ----------------------------
ALTER TABLE "WJ1704"."GRADUATION" ADD FOREIGN KEY ("TNAME") REFERENCES "WJ1704"."COACH" ("TNAME");

-- ----------------------------
-- Foreign Key structure for table "WJ1704"."SCORE"
-- ----------------------------
ALTER TABLE "WJ1704"."SCORE" ADD FOREIGN KEY ("SNAME") REFERENCES "WJ1704"."STUDENT" ("SNAME");

-- ----------------------------
-- Foreign Key structure for table "WJ1704"."SIGN"
-- ----------------------------
ALTER TABLE "WJ1704"."SIGN" ADD FOREIGN KEY ("TNAME") REFERENCES "WJ1704"."COACH" ("TNAME");
ALTER TABLE "WJ1704"."SIGN" ADD FOREIGN KEY ("SNAME") REFERENCES "WJ1704"."STUDENT" ("SNAME");
ALTER TABLE "WJ1704"."SIGN" ADD FOREIGN KEY ("CID") REFERENCES "WJ1704"."CAR" ("CID");

-- ----------------------------
-- Foreign Key structure for table "WJ1704"."SIGNOUT"
-- ----------------------------
ALTER TABLE "WJ1704"."SIGNOUT" ADD FOREIGN KEY ("TNAME") REFERENCES "WJ1704"."COACH" ("TNAME");
ALTER TABLE "WJ1704"."SIGNOUT" ADD FOREIGN KEY ("SNAME") REFERENCES "WJ1704"."STUDENT" ("SNAME");
ALTER TABLE "WJ1704"."SIGNOUT" ADD FOREIGN KEY ("CID") REFERENCES "WJ1704"."CAR" ("CID");

-- ----------------------------
-- Foreign Key structure for table "WJ1704"."STIME"
-- ----------------------------
ALTER TABLE "WJ1704"."STIME" ADD FOREIGN KEY ("SNAME") REFERENCES "WJ1704"."STUDENT" ("SNAME");

-- ----------------------------
-- Foreign Key structure for table "WJ1704"."STUDENT"
-- ----------------------------
ALTER TABLE "WJ1704"."STUDENT" ADD FOREIGN KEY ("TNAME") REFERENCES "WJ1704"."COACH" ("TNAME");
ALTER TABLE "WJ1704"."STUDENT" ADD FOREIGN KEY ("DSNAME") REFERENCES "WJ1704"."DRIVERSCHOOL" ("DSNAME");

-- ----------------------------
-- Foreign Key structure for table "WJ1704"."STUDENTNUMBER"
-- ----------------------------
ALTER TABLE "WJ1704"."STUDENTNUMBER" ADD FOREIGN KEY ("DSNAME") REFERENCES "WJ1704"."DRIVERSCHOOL" ("DSNAME");

-- ----------------------------
-- Foreign Key structure for table "WJ1704"."SUBJECTNUMBER"
-- ----------------------------
ALTER TABLE "WJ1704"."SUBJECTNUMBER" ADD FOREIGN KEY ("DSNAME") REFERENCES "WJ1704"."DRIVERSCHOOL" ("DSNAME");

-- ----------------------------
-- Foreign Key structure for table "WJ1704"."TASSESS"
-- ----------------------------
ALTER TABLE "WJ1704"."TASSESS" ADD FOREIGN KEY ("TNAME") REFERENCES "WJ1704"."COACH" ("TNAME");

-- ----------------------------
-- Foreign Key structure for table "WJ1704"."TEST"
-- ----------------------------
ALTER TABLE "WJ1704"."TEST" ADD FOREIGN KEY ("SNAME") REFERENCES "WJ1704"."STUDENT" ("SNAME");
