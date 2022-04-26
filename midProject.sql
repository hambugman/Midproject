--------------------------------------------------------
--  파일이 생성됨 - 화요일-4월-26-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CBOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2_202109M"."CBOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 181 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CREPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2_202109M"."CREPLY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FBOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2_202109M"."FBOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 82 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FILEADD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2_202109M"."FILEADD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 201 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FUNDOFFER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2_202109M"."FUNDOFFER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MESSAGE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2_202109M"."MESSAGE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NBOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2_202109M"."NBOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2_202109M"."NOTICE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ORPGAL_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2_202109M"."ORPGAL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ORPNOTICE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2_202109M"."ORPNOTICE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ORPQREPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2_202109M"."ORPQREPLY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ORPQUES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2_202109M"."ORPQUES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence VABOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2_202109M"."VABOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence VAREPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2_202109M"."VAREPLY_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence VBOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TEAM2_202109M"."VBOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ADDFILE
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."ADDFILE" 
   (	"FILENO" NUMBER, 
	"FILEPATH" VARCHAR2(500 BYTE), 
	"BOARD_NO" NUMBER, 
	"BOARD_DIV" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."ADMIN" 
   (	"ADMIN_ID" VARCHAR2(20 BYTE), 
	"ADMIN_PASS" VARCHAR2(30 BYTE), 
	"TYPE" NUMBER DEFAULT 4
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table ASK
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."ASK" 
   (	"ASK_NO" NUMBER, 
	"GEN_ID" VARCHAR2(20 BYTE), 
	"ASK_TITLE" VARCHAR2(30 BYTE), 
	"ASK_CONT" VARCHAR2(4000 BYTE), 
	"ASK_DATE" DATE, 
	"ORP_NO" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table COMMON
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."COMMON" 
   (	"GEN_ID" VARCHAR2(20 BYTE), 
	"GEN_PASS" VARCHAR2(30 BYTE), 
	"GEN_TEL" VARCHAR2(20 BYTE), 
	"GEN_ADDR" VARCHAR2(50 BYTE), 
	"GEN_NAME" VARCHAR2(20 BYTE), 
	"GEN_BIR" DATE, 
	"GEN_MAIL" VARCHAR2(50 BYTE), 
	"GEN_FCNT" NUMBER(10,0), 
	"GEN_FTOTAL" NUMBER(30,0), 
	"TYPE" NUMBER DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table COMMUNITY
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."COMMUNITY" 
   (	"COMMU_NO" NUMBER, 
	"STD_ID" VARCHAR2(20 BYTE), 
	"COMMU_TITLE" VARCHAR2(100 BYTE), 
	"COMMU_DATE" DATE, 
	"COMMU_CONT" VARCHAR2(4000 BYTE), 
	"STD_LOCATION" VARCHAR2(200 BYTE), 
	"COMMU_HIT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table FUNDING
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."FUNDING" 
   (	"FUN_NO" NUMBER(10,0), 
	"ORP_NO" VARCHAR2(10 BYTE), 
	"FUN_NAME" VARCHAR2(100 BYTE), 
	"FUN_GOAL" NUMBER(10,0), 
	"FUN_DUE" DATE, 
	"FUN_DATE" DATE, 
	"FUN_CONT" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table FUNDINGDETAIL
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."FUNDINGDETAIL" 
   (	"FUN_NO" NUMBER(10,0), 
	"GEN_ID" VARCHAR2(20 BYTE), 
	"FDETAIL_MONEY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table FUNDINGOFFER
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."FUNDINGOFFER" 
   (	"FO_NO" NUMBER, 
	"STD_ID" VARCHAR2(20 BYTE), 
	"FO_TITLE" VARCHAR2(100 BYTE), 
	"FO_RPROD" VARCHAR2(100 BYTE), 
	"FO_CONT" VARCHAR2(4000 BYTE), 
	"FO_DATE" DATE, 
	"FO_CHECK" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table GALLERY
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."GALLERY" 
   (	"GALLERY_NO" NUMBER, 
	"ORP_NO" VARCHAR2(10 BYTE), 
	"GALLERY_TITLE" VARCHAR2(50 BYTE), 
	"GALLERY_DATE" DATE, 
	"GALLERY_CONT" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table LIKEORP
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."LIKEORP" 
   (	"GEN_ID" VARCHAR2(20 BYTE), 
	"ORP_NO" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table MESSAGE
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."MESSAGE" 
   (	"MSG_NO" NUMBER, 
	"STD_ID_SEND" VARCHAR2(20 BYTE), 
	"STD_ID_RECEIVE" VARCHAR2(20 BYTE), 
	"MSG_DATE" DATE, 
	"MSG_CONT" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table NANUM
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."NANUM" 
   (	"SHARE_NO" NUMBER(10,0), 
	"SHARE_TITLE" VARCHAR2(100 BYTE), 
	"SHARE_DATE" DATE, 
	"SHARE_CONT" VARCHAR2(4000 BYTE), 
	"GEN_ID" VARCHAR2(20 BYTE), 
	"SHARE_LUCKY" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."NOTICE" 
   (	"NOTICE_NO" NUMBER(10,0), 
	"ADMIN_ID" VARCHAR2(20 BYTE), 
	"NOTICE_TITLE" VARCHAR2(20 BYTE), 
	"NOTICE_CONT" VARCHAR2(4000 BYTE), 
	"NOTICE_RDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table ORPHANAGE
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."ORPHANAGE" 
   (	"ORP_NO" VARCHAR2(10 BYTE), 
	"ORP_PASS" VARCHAR2(30 BYTE), 
	"ORP_NAME" VARCHAR2(100 BYTE), 
	"ORP_ADDR" VARCHAR2(50 BYTE), 
	"ORP_TEL" VARCHAR2(20 BYTE), 
	"ORP_MAIL" VARCHAR2(30 BYTE), 
	"ORP_LOCATION" VARCHAR2(100 BYTE), 
	"TYPE" NUMBER DEFAULT 3, 
	"ORP_LAT" NUMBER, 
	"ORP_LNG" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table ORPNOTICE
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."ORPNOTICE" 
   (	"ONOTICE_NO" NUMBER, 
	"ORP_NO" VARCHAR2(10 BYTE), 
	"ONOTICE_TITLE" VARCHAR2(100 BYTE), 
	"ONOTICE_DATE" DATE, 
	"ONOTICE_CONT" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table REPLYASK
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."REPLYASK" 
   (	"RA_NO" NUMBER, 
	"ASK_NO" NUMBER, 
	"ORP_NO" VARCHAR2(10 BYTE), 
	"RA_DATE" DATE, 
	"RA_CONT" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table REPLYCOM
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."REPLYCOM" 
   (	"RC_NO" NUMBER, 
	"COMMU_NO" NUMBER, 
	"STD_ID" VARCHAR2(20 BYTE), 
	"RC_DATE" DATE, 
	"RC_CONT" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table REPLYVOL
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."REPLYVOL" 
   (	"RV_NO" NUMBER, 
	"VBOARD_NO" NUMBER(10,0), 
	"GEN_ID" VARCHAR2(20 BYTE), 
	"RV_DATE" DATE, 
	"RV_CONT" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table SHAREJOIN
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."SHAREJOIN" 
   (	"SHARE_NO" NUMBER(10,0), 
	"STD_ID" VARCHAR2(20 BYTE), 
	"JOIN_TIME" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."STUDENT" 
   (	"STD_ID" VARCHAR2(20 BYTE), 
	"STD_LOCATION" VARCHAR2(200 BYTE), 
	"STD_PASS" VARCHAR2(30 BYTE), 
	"STD_NAME" VARCHAR2(20 BYTE), 
	"STD_TEL" VARCHAR2(20 BYTE), 
	"STD_BIR" DATE, 
	"STD_MAIL" VARCHAR2(30 BYTE), 
	"TYPE" NUMBER DEFAULT 2
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table VOLUNTEER
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."VOLUNTEER" 
   (	"VOLUN_NO" NUMBER, 
	"ORP_NO" VARCHAR2(10 BYTE), 
	"GEN_ID" VARCHAR2(20 BYTE), 
	"VOLUN_DATE" DATE, 
	"VOLUN_PUSH" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Table VOLUNTEERBOARD
--------------------------------------------------------

  CREATE TABLE "TEAM2_202109M"."VOLUNTEERBOARD" 
   (	"VBOARD_NO" NUMBER(10,0), 
	"GEN_ID" VARCHAR2(50 BYTE), 
	"VBOARD_TITLE" VARCHAR2(200 BYTE), 
	"VBOARD_CONT" VARCHAR2(4000 BYTE), 
	"VBOARD_DATE" DATE, 
	"VBOARD_HIT" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
REM INSERTING into TEAM2_202109M.ADDFILE
SET DEFINE OFF;
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (167,'봉사.png',38,'펀딩');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (185,'사자.jpg',62,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (173,'눈사람.jpg',41,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (187,'사자3.jpg',62,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (189,'펭귄2.jpg',62,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (191,'해바라기.jpg',62,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (193,'호랑이2.jpg',62,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (195,'라쿤.jpg',102,'나눔');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (142,'눈사람.jpg',21,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (85,'orp10.jfif',2,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (86,'orp1.jpg',3,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (87,'orp12.jfif',3,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (88,'orp13.jfif',3,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (90,'orp7.jpg',4,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (92,'orp13.jfif',4,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (145,'로빈.jpg',22,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (84,'orp4.jpg',2,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (155,'곰.jpg',26,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (168,'성금.jfif',39,'펀딩');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (170,'교육.jfif',41,'펀딩');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (175,'같이.jpg',44,'펀딩');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (132,'cup.jpg',95,'나눔');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (133,'aircase.jpg',96,'나눔');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (134,'거배라.jpg',97,'나눔');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (136,'귤.jpeg',99,'나눔');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (137,'하트.png',100,'나눔');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (129,'pencase.jpg',89,'나눔');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (130,'ball.jpg',93,'나눔');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (148,'눈사람.jpg',23,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (150,'토끼2.jpg',24,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (151,'토끼3.jpg',24,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (153,'토끼.jpg',25,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (154,'coffee1.jpg',26,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (156,'레아.jpg',27,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (157,'로빈.jpg',27,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (176,'학생.jpg',45,'펀딩');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (149,'라쿤2.jpg',23,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (171,'기증1.jpg',42,'펀딩');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (190,'펭귄3.jpg',62,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (91,'orp8.jpg',4,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (143,'다람쥐.jpg',21,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (146,'마법사.jpg',22,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (172,'컴퓨터.jpg',43,'펀딩');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (89,'orp4.jpg',4,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (186,'사자2.jpg',62,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (188,'펭귄.jpg',62,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (192,'호랑이.jpg',62,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (194,'식품2.jpg',101,'나눔');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (141,'고양이.jpg',21,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (144,'레아.jpg',22,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (152,'절미3.jpg',25,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (196,'고양이.jpg',62,'펀딩');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (174,'다람쥐.jpg',41,'갤러리');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (131,'캐릭터4.gif',94,'나눔');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (135,'coffee.jfif',98,'나눔');
REM INSERTING into TEAM2_202109M.ADMIN
SET DEFINE OFF;
Insert into TEAM2_202109M.ADMIN (ADMIN_ID,ADMIN_PASS,TYPE) values ('admin','1234',0);
REM INSERTING into TEAM2_202109M.ASK
SET DEFINE OFF;
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (21,'common1','내일 뭐해요','ㅎ 내일 뭐하세요',to_date('2021-12-23','YYYY-MM-DD'),'a0007');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (61,'common1','ㅎㅇㅎㅇ','하이룽 ',to_date('2021-12-27','YYYY-MM-DD'),'a0028');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (2,'common1','봉사활동 날짜','ㅈㄱㄴ',to_date('2021-12-22','YYYY-MM-DD'),'a0007');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (62,'common1','ㅇㄻㅇ','ㅇㄻㅇㄻㅇㄹ',to_date('2021-12-27','YYYY-MM-DD'),'a0014');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (63,'common1','dd','ddd',to_date('2021-12-27','YYYY-MM-DD'),'a0021');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (65,'common1','이제는','오류가 안나게해주세요
ㅈㅂ  ',to_date('2021-12-27','YYYY-MM-DD'),'a0026');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (101,'asdasd','봉사활동','dd',to_date('2021-12-29','YYYY-MM-DD'),'a0028');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (41,'common1','내일모레','발표하는거 맞나요?? ',to_date('2021-12-27','YYYY-MM-DD'),'a0007');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (64,'common1','dfa','dafda',to_date('2021-12-27','YYYY-MM-DD'),'a0011');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (81,'common1','하여','가아아아아`~
그아아아악  ',to_date('2021-12-28','YYYY-MM-DD'),'a0028');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (102,'asdasd','내일 뭐해요','몰라요 !',to_date('2021-12-29','YYYY-MM-DD'),'a0028');
REM INSERTING into TEAM2_202109M.COMMON
SET DEFINE OFF;
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('common1','asdasd','123','대전','커먼',to_date('2021-12-07','YYYY-MM-DD'),'123',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('ny1067','ny0713','01021714067','천안시 서북구','강나영',to_date('1999-07-13','YYYY-MM-DD'),'ny1067@naver.com',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('asdsdsd','asd','123','대전','아인',to_date('2021-12-01','YYYY-MM-DD'),'123',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('common2','asdasd','123','대전','asd',to_date('2021-12-02','YYYY-MM-DD'),'123',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('common12322','asdasdaasd@@^^2313','123','대전','커먼',to_date('2021-12-03','YYYY-MM-DD'),'123',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('asdasdasd','asdasdasd^^123','01012345678','대전','아나나',to_date('2021-12-02','YYYY-MM-DD'),'klzxjca@gmaicl.com',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('qweqweqwe','rkskekfk123^^','0010','대전','에렌',to_date('2021-12-02','YYYY-MM-DD'),'zxcasc',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('member222','asdasd123!@#','01012345678','대전','가나다라마',to_date('2021-12-01','YYYY-MM-DD'),'kcscasd@gmacin.dom',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('asdasd','asdasd1!','01022225555','대전','아아아',to_date('2021-12-29','YYYY-MM-DD'),'ny1067@nave',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('common','asdasd','asdasd','대전','asdasd',to_date('2021-12-02','YYYY-MM-DD'),'asdasd',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('common2323','asdasd','123','대전','커먼',to_date('2021-12-01','YYYY-MM-DD'),'123',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('common222','asdasdasd1231%%','123','대전','커먼',to_date('2021-11-30','YYYY-MM-DD'),'123',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('member','asdasd','123','대전','azxczx',to_date('2021-12-02','YYYY-MM-DD'),'123',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('kyh1212','asdasd','123','대전','azxczx',to_date('2021-12-02','YYYY-MM-DD'),'123',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('admin','djemals123!@#','123','대전','관리자',to_date('2021-12-02','YYYY-MM-DD'),'123',0,0,1);
REM INSERTING into TEAM2_202109M.COMMUNITY
SET DEFINE OFF;
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (15,'kyh1212','글작성',to_date('2021-12-17','YYYY-MM-DD'),'합니다.','대전',200);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (16,'eowjs','내이름은',to_date('2021-12-17','YYYY-MM-DD'),'김대전','대전',200);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (17,'eowjs','내이름은',to_date('2021-12-17','YYYY-MM-DD'),'탐정, 코난이죠.','대전',200);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (18,'eowjs','싱글벙글 동방박사의',to_date('2021-12-17','YYYY-MM-DD'),'미안하다 이거보여주려고 어그로 끌었따.','대전',200);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (19,'eowjs','정부 9시 통금 검토중',to_date('2021-12-17','YYYY-MM-DD'),'이거 ㄹㅇ 실화냐?','대전',200);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (20,'eowjs','대머리에 리모콘을 쏘면 작동할까.jpg',to_date('2021-12-17','YYYY-MM-DD'),'요즘 시대는 멀리서 무엇인가를 조작하는 것에 특화되고 있다. 그렇기 때문에 빛 신호를 이용하여 작용하는 리모트 컨트롤 , 즉 리모콘은 멀리서도 사용이 가능하...','대전',200);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (162,'nnnnn','ff',to_date('2021-12-29','YYYY-MM-DD'),'ff','대전',0);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (46,'ny1067','안녕',to_date('2021-12-20','YYYY-MM-DD'),'나는 세젤귀 나영이야','대전',4);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (101,'nnnnn','일기',to_date('2021-12-23','YYYY-MM-DD'),'너무 하기 싫다
내일은 크리스마스이브이다','대전',12);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (81,'jhm1234','오늘의 일기 1팀',to_date('2021-12-21','YYYY-MM-DD'),'오늘 홈페이지만드는데 페이징호출을 성공했다 누구든 나에게 물어봤으면 좋겠다.','대전',3);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (161,'nnnnn','아 졸리다',to_date('2021-12-29','YYYY-MM-DD'),'아침이 힘들다 ','대전',6);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (122,'kyh1212','김영훤의 글',to_date('2021-12-27','YYYY-MM-DD'),'입니다.','대전',20);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (141,'kyh1212','영훤글',to_date('2021-12-28','YYYY-MM-DD'),'ㅁㄴㅇ','대전',3);
REM INSERTING into TEAM2_202109M.FUNDING
SET DEFINE OFF;
Insert into TEAM2_202109M.FUNDING (FUN_NO,ORP_NO,FUN_NAME,FUN_GOAL,FUN_DUE,FUN_DATE,FUN_CONT) values (38,'a0001','수어로 표현하는 예술가, 핸드스피크 아티스트의 힙한 예술',2000000,to_date('2022-01-13','YYYY-MM-DD'),to_date('2021-12-28','YYYY-MM-DD'),'2016년 8월 4일 ‘한국수화언어법’ 시행되어 수어는 공용어가 되었음에도 불구하고, 농인 청년 예술가들은 그동안 창작 및
 연습 공간의 부족과 작품 발표 기회가 부족한 환경에서 활동해왔습니다. 
장애예술을 하는 것이 아니라 우리 문화를 담은 콘텐츠를 만드는 예술가입니다.
끼 많고 열정 넘치는 농인 청년 예술가들이 만들어내는 수어와 농예술을 접목시킨 콘텐츠는 ‘장애인들만의’ 
문화예술 활동을 넘어서 농문화의 존재를 알리고, 대중적인 관점에서 시민들과 소통하고 함께 즐기며 서로를 이해할 수 있도록 
농정체성에 대한 인간적인 경험을 제공하고 인식개선을 통해 사회적 이해를 돕습니다.

농인 아티스들에게 예술을 통해 자유롭게 표현할 수 있도록 콘텐츠를 만들 기회와 환경을 함께 만들어 준다면,
꿈을 향해 한 걸음 더 나아갈 수 있는 기회가 될 것입니다.');
Insert into TEAM2_202109M.FUNDING (FUN_NO,ORP_NO,FUN_NAME,FUN_GOAL,FUN_DUE,FUN_DATE,FUN_CONT) values (41,'a0010','발달장애인을 위한 소통마법사 ''AAC''로 행복을 전해요!',5000000,to_date('2022-01-31','YYYY-MM-DD'),to_date('2021-12-28','YYYY-MM-DD'),'마음을 표현하는 4가지 방법
우리는 나의 마음을 누군가에게 표현할 때 대부분 음성과 문자를 바탕으로 표정과 
행동 등 네 가지 방법을 가지고 소통을 하며 생각과 마음을 나누고 있습니다.

소통하는 데 있어서 이 중의 하나라도 부족하면 어려움이 있을 텐데, 발달장애인과 뇌성마비
장애인 분들은 장애 정도에 따라 다르겠지만 의사 표현을 전혀 못 하시거나, 
표정과 행동 등으로만 표현을 하여 마음을 이해하는 데까지 상당한 시간이 걸립니다.
때로는 가장 가까이서 함께하는 가족조차도 이해하지 못하는 경우가 종종 있습니다.

소통마법사 AAC(보완대체의사소통도구)를 선물해주세요!
특별히 발달장애인과 비장애인사이에 소통장애를 해결해줄 멋진 친구가 우리곁에 다가왔습니다.
 그 이름은 바로 "보완대체 의사소통도구라고 불리우는 AAC"입니다.

AAC라고 불리우는 소통마법사는 언어 표현과 이해에 어려움이 있는 사람들
(장애인, 한국어가 서툰 외국인, 어린이 등)에게 말을 보완하거나
 대체하는 방법을 제공하여 많은 사람들과 소통의 기회를 주고 있습니다.');
Insert into TEAM2_202109M.FUNDING (FUN_NO,ORP_NO,FUN_NAME,FUN_GOAL,FUN_DUE,FUN_DATE,FUN_CONT) values (44,'a0010',' (이벤트)진호와 써니가 특별한 하루를 선물합니다.',2000000,to_date('2022-01-29','YYYY-MM-DD'),to_date('2021-12-28','YYYY-MM-DD'),'연말이면 뉴스에서 많이 보이는 장면이 있습니다. 바로 선물을 한 꾸러미 든 산타가 보육원을 방문하는 모습입니다. 
우리 사회는 보육원 아이들에게 많은 관심을 가지고 있지만, 보육원을 나온 그 이후의 삶에 대해 잘 알지 못합니다.
불과 1개월도 남지 않은 2021년 11월 어느 날, 용진호와 소녀시대 써니, 열여덟 어른 안연주, 박강빈 캠페이너가
괴로운 체험단이 아닌 특별한 체험단으로 함께 합니다.

기부해주시는 모든분들을 이자리에 초대해 같이 봉사할 수 있는 장이 되었으면 합니다.');
Insert into TEAM2_202109M.FUNDING (FUN_NO,ORP_NO,FUN_NAME,FUN_GOAL,FUN_DUE,FUN_DATE,FUN_CONT) values (39,'a0005','한해의 시작 설 명절, 코로나19로 더욱 소외받는 이들...',10000000,to_date('2022-01-21','YYYY-MM-DD'),to_date('2021-12-28','YYYY-MM-DD'),'"친구들은 코로나에 못본다고 허전하다 하는데... 코로나 때문에 나는 그런 친구도 못만나..."

한해의 시작, 민족 대명절 설 명절이지만 코로나바이러스 감염증-19(이하 ''코로나19)의 지역 감염이 재확산 되면서

행여나 기대하던 청년들의 얼굴에는 미소보다 걱정과 근심이 드리워졌습니다.

가족이 주는 따뜻함과 명절 분위기는 이미 옛 추억이 되어버렸습니다. 

이에 함께 다같이 모여 따뜻한 공연을 할 수 있는 모금 기금을 받고싶습니다.');
Insert into TEAM2_202109M.FUNDING (FUN_NO,ORP_NO,FUN_NAME,FUN_GOAL,FUN_DUE,FUN_DATE,FUN_CONT) values (45,'a0010','정신증을 경험하고 있는 청소년들의 희망을 심어주세요',2200000,to_date('2022-01-26','YYYY-MM-DD'),to_date('2021-12-28','YYYY-MM-DD'),'청소년사회복귀시설 ''비상''을 통해 희망을 가지는 사람들
20대 초반의 청년 000 님은 행복한 고민에 빠져있습니다. 올해 비상의 지원으로 생애 첫 취업을 하게 되었고 
며칠 전 첫 월급을 받았기 때문입니다. 그동안 자신을 믿고 기다려주신 부모님께 어떤 선물을 드릴까? 행복한 고민을 하고 있답니다.

고등학교에 재학중인 000님은 자신을 괴롭히는 여러 가지 소리들로 너무나 힘이 듭니다. 학교 온라인 수업은 집중하기 어렵고,
 대면 수업은 더더욱 어렵습니다. 하지만 비상을 다니기 시작하면서부터 작은 희망이 생겼습니다.
 다시 학교로 돌아갈 날을 꿈꾸며 자신을 이해해주는 친구들과 함께 그 어려움을 이겨내는 힘을 키우고 있습니다.

전국 유일의 청소년 특화 정신재활시설
조현병은 10대 후반에서 20대 초반의 청소년, 초기 청년 시기에 발병하는 정신질환입니다. 
결정적 시기인 발병 후 5년 이내에 제대로 된 치료와 재활 훈련을 받지 않으면 재발을 반복하며 만성화의 길로 접어들게 됩니다
 이들은 정신질환의 발병과 발병 전 전구기 증상으로 인해 학업을 중단하는 경우가 많고
 대인관계에 미숙하여 긍정적인 대인관계를 경험할 기회가 적습니다.

청소년사회복귀시설 비상은 정신질환을 앓고 있는 청소년 청년들에게 지속적인 치료를 받도록 지원하고 또래 관계 안에서 
긍정적인 대인관계를 경험할 기회를 제공합니다. 15세에서 29세 연령을 특화하여 만성정신질환자와는 차별된 서비스로
 강점기반실천을 기반으로 청소년들의 개인적 강점을 발견하고 역량을 강화하여 정신질환을 앓고 있는 청소년들이 
주체적으로 삶의 꿈과 의미를 찾을 수 있도록 돕고 있습니다.


사회복지사업을 개인의 사명감만 가지고 유지할 수 없으며 정신질환을 경험하고 있는 청소년 청년들이 
좀 더 질 높은 서비스를 제공받기위해서는 안정적인 환경이 우선적으로 제공되어야 합니다. 
기관이 잘 유지되고 발전될 수 있도록 여러 지원이 필요하나 그중 임대료 해결 문제는 기관의 존폐와 관련이 있습니다.
 후원사업을 진행하고 있지만 코로나19로 홍보의 장이 축소되어 후원 사업에 여러움이 가중되고 있습니다.

후원금은 임대료로 사용될 예정입니다.
너무나 감사하게도 2020년 같이가치를 통해 임대료 후원금을 모집하여
목표 금액인 한 달분의 임대료 2,200,000원이 모두 모금되었습니다.

올해도 모금하고자 하는 금액은 한 달분의 임대료입니다. 전액 임대료로 사용할 계획입니다. 
비상이 임대료 걱정 없이 청소년들과 함께 비상할 수 있도록 후원자님들의 따뜻한 손길 기다리고 있겠습니다.');
Insert into TEAM2_202109M.FUNDING (FUN_NO,ORP_NO,FUN_NAME,FUN_GOAL,FUN_DUE,FUN_DATE,FUN_CONT) values (42,'a0026','(해외펀딩) 방글라데시 미르푸르 보육원 도서 기증',500000,to_date('2022-01-19','YYYY-MM-DD'),to_date('2021-12-28','YYYY-MM-DD'),'카펫에 앉아 책을 보는 아이들의 모습이 사뭇 진지하다. 책 속에 푹 빠져든 듯 움직임도 없다. 
간간이 책 넘기는 소리만 날 뿐. 방글라데시 다카에 있는 미르푸르 보육원 아이들의 책 읽는 모습이다.

아이들에게 책은 미지의 세계를 탐험하게 하고, 미래를 꿈꾸게도 한다. 
책을 읽으면 어느 장소에 있든 크고 넓은 세계를 경험할 수도 아름다운 상상의 나라를 마음껏 날아다닐 수도 있다.
 다양한 정보와 지식을 얻는 것은 물론이다.

VLOG는 지속적인 도움이 필요한 곳이라면, 꾸준한 관심을 둬 그 어려움을 덜어주기 위해 노력한다
. 그 노력이 많은 이들을 다시 꿈꾸게 한다는 것을 믿기에.');
Insert into TEAM2_202109M.FUNDING (FUN_NO,ORP_NO,FUN_NAME,FUN_GOAL,FUN_DUE,FUN_DATE,FUN_CONT) values (43,'a0007','2000만원 규모 PC 1천대 기증 펀딩',20000000,to_date('2022-01-29','YYYY-MM-DD'),to_date('2021-12-28','YYYY-MM-DD'),'온라인 교육을 지원하는 데 있어 아이들이 생활하는 많은 기관에서 여전히 컴퓨터가 없어
 기초지식의 습득이 어렵고 교육 불균형으로 이어지고 있다”며 “소외계층의 삶의 질 향상은
 물론 아이들이 온라인 교육을 통해 미래의 꿈을 키워나가려면 PC 마련이 시급하다고 판단하여 모금을 신청합니다.');
Insert into TEAM2_202109M.FUNDING (FUN_NO,ORP_NO,FUN_NAME,FUN_GOAL,FUN_DUE,FUN_DATE,FUN_CONT) values (62,'ss','ss',4,to_date('2021-12-31','YYYY-MM-DD'),to_date('2021-12-29','YYYY-MM-DD'),'ss');
REM INSERTING into TEAM2_202109M.FUNDINGDETAIL
SET DEFINE OFF;
REM INSERTING into TEAM2_202109M.FUNDINGOFFER
SET DEFINE OFF;
Insert into TEAM2_202109M.FUNDINGOFFER (FO_NO,STD_ID,FO_TITLE,FO_RPROD,FO_CONT,FO_DATE,FO_CHECK) values (121,'sonyt','따뜻한 겨울을 위하여','파리바케트 소보로 빵 1000개','신청보육원 : 대전 시온 보육원

모금 기금은 100만원입니다. 
목표 날짜는 2022년 1월 1입니다. 1년동안 운영할 보육원 기금이 모자라
신청하게 되었습니다. 다음과 같은 파일은 별첨하여 보냅니다.
감사합니다.

',to_date('2021-12-29','YYYY-MM-DD'),'no');
Insert into TEAM2_202109M.FUNDINGOFFER (FO_NO,STD_ID,FO_TITLE,FO_RPROD,FO_CONT,FO_DATE,FO_CHECK) values (126,'ny1067','123123','123123','3월 상순에 싹이 돋은 씨고구마를 심고 위에 비닐을 씌우고 온도를 높여서 싹을 길러 심는 것이 전통적인 방법이다.
 싹이 돋아나면 낮에는 위의 비닐을 벗겨내어 환기를 시키고 밤에는 다시 덮어준다. 기온이 올라가면 덮었던 
비닐을 제거해 모종을 기른다. 
',to_date('2021-12-29','YYYY-MM-DD'),'no');
Insert into TEAM2_202109M.FUNDINGOFFER (FO_NO,STD_ID,FO_TITLE,FO_RPROD,FO_CONT,FO_DATE,FO_CHECK) values (125,'ny1067','123123','ㅇㅇㅇㅇㅇ','ㅇㅇㅇ아ㅣㅏㅕㅂ뮤라ㅣㅓ눝챠ㅕㅁㅈ뷷라ㅜㄴㅇㄹ
ㅁ랴명츄ㅜㅐ녀ㅑㅗㅊㅍㅁㄹ
ㄴ어퓨ㅑ너유ㅑㅗㅂㄷㄹ"ㄴㅇㅊㅍ노ㅠㅇ란ㅇ
넝류내ㅓㅏ우퍄ㅓ눙ㄹ
ㅇ려ㅠㅁㄴ어ㅏ풤ㄴㅇㅍㅊ',to_date('2021-12-29','YYYY-MM-DD'),'no');
Insert into TEAM2_202109M.FUNDINGOFFER (FO_NO,STD_ID,FO_TITLE,FO_RPROD,FO_CONT,FO_DATE,FO_CHECK) values (124,'nnnnn','신년을 맞이하여 작은 콘서트','100만원','신청 기관은 대전자혜원입니다.

신년을 맞이하여 저희 기관에서 작은 콘서트를 열고자합니다.

펀딩 물품은 저희 팀원들 지원비용 100만원입니다.

',to_date('2021-12-29','YYYY-MM-DD'),'no');
REM INSERTING into TEAM2_202109M.GALLERY
SET DEFINE OFF;
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (4,'a0028','천양원',to_date('2021-12-21','YYYY-MM-DD'),'천양원입니다');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (2,'a0007','혜생원입니다',to_date('2021-12-21','YYYY-MM-DD'),'구세군 대전 혜생원입니다');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (27,'a0007','갤',to_date('2021-12-27','YYYY-MM-DD'),'러리
글 쓰기');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (3,'a0016','밝은 내일의 집입니다',to_date('2021-12-21','YYYY-MM-DD'),'밝은내일의집입니다');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (26,'a0007','버즈',to_date('2021-12-27','YYYY-MM-DD'),'버즈라이트이어');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (23,'a0028','dfadf',to_date('2021-12-27','YYYY-MM-DD'),'안녕하셔');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (25,'a0007','이러면',to_date('2021-12-27','YYYY-MM-DD'),'이러면');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (21,'a0007','dkjfakldf',to_date('2021-12-27','YYYY-MM-DD'),'adfgvak
dfjai
ddfa
dfsd');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (24,'a0028','자 이번엔',to_date('2021-12-27','YYYY-MM-DD'),'될것인가?
두근두근
제발');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (22,'a0007','gngk',to_date('2021-12-27','YYYY-MM-DD'),'줄
바
꿈
');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (41,'a0028','12-26눈오는날의풍경',to_date('2021-12-28','YYYY-MM-DD'),'아이들이 눈 오는 날 아주 행복하게 놀았습니다.
눈사람도 만들고 눈싸움도 하고^^');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (62,'a0028','대전오월드',to_date('2021-12-29','YYYY-MM-DD'),'최근 아이들의 체험학습 관련 펀딩을 100% 달성했습니다.

동물원에 가고 싶다는 아이들의 말의 대전오월드로 체험학습 장소를 정했는데요^^
가서 놀이기구도 타고 동물도 보고 다양한 공연과 식물도 보고 왔습니다.

사자와 호랑이를 보고 우와우와~! 하던 아이들이 어찌나 귀엽던지..

저 뿐 아니라 후원을 해준 모든 회원님들에게도 우리 아이들이 마음으로 낳은 제 아이였으면 좋겠습니다.

후원해 주시고, 아이들을 위해 우리 집에 방문해주시는 모든 회원님들께 다시 한 번 감사의 말씀 올립니다.

감사합니다^^

-천양원 원장 올림-');
REM INSERTING into TEAM2_202109M.LIKEORP
SET DEFINE OFF;
Insert into TEAM2_202109M.LIKEORP (GEN_ID,ORP_NO) values ('asdasd','a0009');
Insert into TEAM2_202109M.LIKEORP (GEN_ID,ORP_NO) values ('asdasd','a0010');
Insert into TEAM2_202109M.LIKEORP (GEN_ID,ORP_NO) values ('common1','a0002');
Insert into TEAM2_202109M.LIKEORP (GEN_ID,ORP_NO) values ('common1','a0005');
Insert into TEAM2_202109M.LIKEORP (GEN_ID,ORP_NO) values ('common1','a0020');
Insert into TEAM2_202109M.LIKEORP (GEN_ID,ORP_NO) values ('common1','a0023');
REM INSERTING into TEAM2_202109M.MESSAGE
SET DEFINE OFF;
REM INSERTING into TEAM2_202109M.NANUM
SET DEFINE OFF;
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (100,'나눔나눔',to_date('2021-12-23','YYYY-MM-DD'),'제 마음이 필요하신분은 가져가 주세요 !!!','ny1067',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (101,'안녕',to_date('2021-12-29','YYYY-MM-DD'),'나눔신청','asdasd',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (93,'축구공 나눔 ',to_date('2021-12-23','YYYY-MM-DD'),'축구를 좋아하는 학생이 있다면 이 축구공을 나눔받아 가세요 ! 
멋진  축구선수가 되길 응원합니다. ','common',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (96,'에어팟 케이스 ',to_date('2021-12-23','YYYY-MM-DD'),'이제 추운 겨울이 다가왔습니다. 
추운 겨울, 여러분만 따듯해지시지 말고 
에어팟도 따듯하게 해주세용 
이 케이스가 여러분을 기다립니다~~~: )','common',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (94,'이모티콘 나눔 ',to_date('2021-12-23','YYYY-MM-DD'),'귀여운 이모티콘 나눔합니당 
시끄럽긴 하지만 심심함은 없애는데 도움이 됩니다. ','common',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (97,'나눔참여합니당',to_date('2021-12-23','YYYY-MM-DD'),'가져가실 분 있나요 ~~~','common',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (98,'커피 나눔',to_date('2021-12-23','YYYY-MM-DD'),'커피를 잘 마시지 않아서 
평소 커피를 좋아하는 학생이 
나눔받았으면 좋겠습니다 ! ','common',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (99,'귤 나눔 ',to_date('2021-12-23','YYYY-MM-DD'),'귤농장을 운영하고 있는데 이번에 수확을 많이 하게 되어 
필요한 학생분들에게 나눔을 하려고 합니다. 
저희집 귤 정말 맛있어요 ~~~','common',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (89,'제 필통을 나눔하고 싶습니다.',to_date('2021-12-23','YYYY-MM-DD'),'집에 필통이 너무 많아서 이 필통은 사용빈도수가 낮아 나눔에 참여했습니다. 
혹시나 필통이 필요한 학생이 있다면 나눔받아가세요!','common',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (95,'나눔참여 ',to_date('2021-12-23','YYYY-MM-DD'),'텀블러 나눔합니다. 
새상품이라서 아주 깨끗하고 보관도 잘되어있었습니다. 
','common',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (102,'나눔',to_date('2021-12-29','YYYY-MM-DD'),'나눔','asdasd',null);
REM INSERTING into TEAM2_202109M.NOTICE
SET DEFINE OFF;
REM INSERTING into TEAM2_202109M.ORPHANAGE
SET DEFINE OFF;
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0001','1234','시온보육원','대전 서구 도솔로267번길 8','042-246-6542','sion@sion.com','대전',3,36.33422918041125,127.37894782693323);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0002','1234','대전자혜원','대전 동구 미래길 16 대전자혜원','042-898-4578','jahye@jahye.com','대전',3,36.33242075558904,127.44100238460449);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0004','1234','늘사랑아동센터','중구 학고개로34번길 33 (옥계동)','042-634-0061','neul@nuel.com','대전',3,36.297498066207936,127.45191301345618);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0005','1234','평화의 마을 아동복지센터','동구 가양로 85 (가양동)','042-672-1418','pyung@pyung.com','대전',3,36.34428279011438,127.44190104229254);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0006','1234','성심원','동구 산내로386번길 8-26 (하소동)','042-273-4249',null,'대전',3,36.22324499920546,127.44143045395813);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0007','1234','구세군대전혜생원','서구 오량4길 61 (복수동)','042-582-0215',null,'대전',3,36.30890393965093,127.37806411345636);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0008','1234','정림원','서구 정림동로30번길 15 (정림동)','042-583-3679',null,'대전',3,36.30457845735548,127.36970014229163);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0009','1234','성우 보육원','대덕구 신탄진로 101 (연축동)','042-627-6800',null,'대전',3,36.389932750778115,127.42024552695214);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0010','1234','돈보스코의집','서구 구봉로 458-1 (정림동)','042-583-3946',null,'대전',3,36.30023858651266,127.37041128462074);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0011','1234','보호치료시설 효광원','동구 산내로1305번길 48 (낭월동)','042-271-7053',null,'대전',3,36.280553082794704,127.46509477297353);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0012','1234','인애자립생활관','유성구 신성남로 97 (신성동)','042-861-8691',null,'대전',3,36.38954178418265,127.35252892695223);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0013','1234','참 좋은집','동구 성동로 74 (자양동)','042-676-7780',null,'대전',3,36.34196382059665,127.4521498404452);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0014','1234','소망의 집','동구 계족로409번길 33 (홍도동)','042-627-0691',null,'대전',3,36.34839280632612,127.42989046928086);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0015','1234','신흥마을의집','동구 계족로450번길 35 (용전동)','042-345-3232',null,'대전',3,36.35201006199243,127.43458327112805);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0016','1234','밝은내일의 집','대덕구 대전로1033번길 64-5 (오정동)','042-582- 7179',null,'대전',3,36.34531387149587,127.41429239811592);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0017','1234','대전해피홈','중구 동서대로 1388 (목동)','042-522-1191',null,'대전',3,36.33162209147765,127.41259304178755);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0018','1234','푸마네','중구 계백로1603번길 50-8 (유천동)','070-8828-1592',null,'대전',3,36.321059854959124,127.3978737846213);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0019','1234','충만한 아이들의 집','중구 보문산로 209-19 (문화동)','042-256-0194',null,'대전',3,36.3069207279772,127.40341866927992);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0020','1234','이삭의 집 남자','유성구 진잠로160번길 31-9 (원내동)','042-584-9393',null,'대전',3,36.30280471471293,127.32009478462085);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0021','1234','이삭의 집 여자','유성구 진잠로124번길 5-10 (원내동)','042-584-9393',null,'대전',3,36.302712722120965,127.31625724044441);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0022','1234','열매마을의 집','유성구 노은로?416 (지족동)','070-8738-8875',null,'대전',3,36.39017185022017,127.33024207112877);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0023','1234','햇살가득한 집','유성구 진잠로106번길 5-12 (원내동)','042-933-0188',null,'대전',3,36.30164093101291,127.31563294044439);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0024','1234','애뜰','유성구 배울2로 24 (관평동)','042-321-9093',null,'대전',3,36.42133544460191,127.38563542510572);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0025','1234','마르지않는 샘','서구 도림4길 66 (도마동)','070-4065-4012',null,'대전',3,36.31050358145403,127.3696551999624);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0026','1234','즐겁고 행복한 집','중구 대전천서로 401 (대흥동)','042-585-4298',null,'대전',3,36.32516279449046,127.43197408277427);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0027','1234','행복한 우리집','중구 대둔산로350번길 102-3(사정동)','042-585-0191',null,'대전',3,36.29705256128544,127.38635334229147);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0028','1234','천양원','유성구 현충원로 473(장대동)','042-822-0227',null,'대전',3,36.36024254005838,127.32359604044571);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0029','1234','샤인하우스','동구 신기로 100 (가오동)','정보없음',null,'대전',3,36.30981554632172,127.4570393404445);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0003','1234','후생학원','대전 서구 정림서로138번길 65-5','042-583-2667','huseng@huseng.com','대전',3,36.298201917681844,127.36721504227506);
REM INSERTING into TEAM2_202109M.ORPNOTICE
SET DEFINE OFF;
Insert into TEAM2_202109M.ORPNOTICE (ONOTICE_NO,ORP_NO,ONOTICE_TITLE,ONOTICE_DATE,ONOTICE_CONT) values (1,'a0007','혜생원입니다',to_date('2021-12-22','YYYY-MM-DD'),'제발!!!!');
Insert into TEAM2_202109M.ORPNOTICE (ONOTICE_NO,ORP_NO,ONOTICE_TITLE,ONOTICE_DATE,ONOTICE_CONT) values (7,'a0028','천양원입니다',to_date('2021-12-22','YYYY-MM-DD'),'공지');
Insert into TEAM2_202109M.ORPNOTICE (ONOTICE_NO,ORP_NO,ONOTICE_TITLE,ONOTICE_DATE,ONOTICE_CONT) values (5,'a0008','정림원입니다',to_date('2021-12-22','YYYY-MM-DD'),'공지');
Insert into TEAM2_202109M.ORPNOTICE (ONOTICE_NO,ORP_NO,ONOTICE_TITLE,ONOTICE_DATE,ONOTICE_CONT) values (41,'a0028','12월 31일 눈사람 만들기 대회 공지사항',to_date('2021-12-27','YYYY-MM-DD'),'안녕하세요. 천양원입니다.

NY VOLUNTEERS배 눈사람 만들기 대회를 12/31(금) 진행합니다.

눈사람 만들기 대회는 ▲ 제한시간 내에 가장 멋진 눈사람 만들기 ▲ 대회 기간 내에 가장 큰 눈사람 만들기 ▲ 눈싸움 대회 ▲ 눈사람의 플리마켓 등이 진행될 예정입니다.

눈사람 만들기 대회의 진행 시간은 오전 10시부터 오후 4시까지 진행됩니다.

제한시간 내에 가장 멋진 눈사람 만들기 : 오후 2시부터 1시간 동안 진행
대회 기간 내에 가장 큰 눈사람 만들기 : 오전 10시부터 오후 3시까지 진행
눈싸움 대회 : 오전 11시부터 토너먼트 형식으로 진행
눈사람의 플리마켓 : 오전 10시부터 오후 4시까지 진행

눈싸움 대회 신청은 다음 공지사항을 확인해 주시기 바랍니다.
 

고맙습니다.');
Insert into TEAM2_202109M.ORPNOTICE (ONOTICE_NO,ORP_NO,ONOTICE_TITLE,ONOTICE_DATE,ONOTICE_CONT) values (42,'a0028','눈싸움 대회 신청 공지사항',to_date('2021-12-27','YYYY-MM-DD'),'안녕하세요. 천양원입니다.

12월 31일 진행되는 눈사람 만들기 대회의 눈싸움 경기에 참여할 팀을 모집합니다.

팀별 참가인원  : 5명
경기 진행 : 유아부, 청소년부, 성인부로 나누어 진행됩니다.

신청방법 : 010-4363-4211 로 팀명과 함께 어느 부에 참여할 건지 작성해서 문자 보내기

많은 참여 바랍니다.');
Insert into TEAM2_202109M.ORPNOTICE (ONOTICE_NO,ORP_NO,ONOTICE_TITLE,ONOTICE_DATE,ONOTICE_CONT) values (21,'a0007','봉사활동 관련',to_date('2021-12-23','YYYY-MM-DD'),'봉사활동관련해서말씀드립니다
아무나 오세요
와서 열일하시면 됩니다.
rhrh ');
REM INSERTING into TEAM2_202109M.REPLYASK
SET DEFINE OFF;
Insert into TEAM2_202109M.REPLYASK (RA_NO,ASK_NO,ORP_NO,RA_DATE,RA_CONT) values (2,2,'a0007',to_date('2021-12-23','YYYY-MM-DD'),'뭐죠?');
Insert into TEAM2_202109M.REPLYASK (RA_NO,ASK_NO,ORP_NO,RA_DATE,RA_CONT) values (3,21,'a0007',to_date('2021-12-23','YYYY-MM-DD'),'안녕하쇼
하이 ');
Insert into TEAM2_202109M.REPLYASK (RA_NO,ASK_NO,ORP_NO,RA_DATE,RA_CONT) values (61,81,'a0028',to_date('2021-12-28','YYYY-MM-DD'),'집에 가세요^^');
Insert into TEAM2_202109M.REPLYASK (RA_NO,ASK_NO,ORP_NO,RA_DATE,RA_CONT) values (81,101,'a0028',to_date('2021-12-29','YYYY-MM-DD'),'ㅎㅎ');
Insert into TEAM2_202109M.REPLYASK (RA_NO,ASK_NO,ORP_NO,RA_DATE,RA_CONT) values (21,41,'a0007',to_date('2021-12-27','YYYY-MM-DD'),'예 맞습니다. 
아니오 사실 아닙니다.');
Insert into TEAM2_202109M.REPLYASK (RA_NO,ASK_NO,ORP_NO,RA_DATE,RA_CONT) values (41,61,'a0028',to_date('2021-12-27','YYYY-MM-DD'),'잘부탁옇  ');
Insert into TEAM2_202109M.REPLYASK (RA_NO,ASK_NO,ORP_NO,RA_DATE,RA_CONT) values (1,21,'a0007',to_date('2021-12-23','YYYY-MM-DD'),'강퇴합니다');
Insert into TEAM2_202109M.REPLYASK (RA_NO,ASK_NO,ORP_NO,RA_DATE,RA_CONT) values (82,102,'a0028',to_date('2021-12-29','YYYY-MM-DD'),'aa');
REM INSERTING into TEAM2_202109M.REPLYCOM
SET DEFINE OFF;
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (44,19,'익명',to_date('2021-12-21','YYYY-MM-DD'),'댓글수정');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (122,101,'익명',to_date('2021-12-27','YYYY-MM-DD'),'안녕');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (141,141,'글쓴이',to_date('2021-12-29','YYYY-MM-DD'),'안녕
');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (11,45,'익명',to_date('2021-12-20','YYYY-MM-DD'),'asdasd');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (12,45,'익명',to_date('2021-12-20','YYYY-MM-DD'),'안녕');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (13,45,'익명',to_date('2021-12-20','YYYY-MM-DD'),'안녕');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (16,46,'익명',to_date('2021-12-20','YYYY-MM-DD'),'ㅁㄴㅇㅁㄴㅇ');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (143,161,'글쓴이',to_date('2021-12-29','YYYY-MM-DD'),'댓글');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (14,46,'익명',to_date('2021-12-20','YYYY-MM-DD'),'gㅇㅇ');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (15,46,'익명',to_date('2021-12-20','YYYY-MM-DD'),'gㅇㅇ');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (17,46,'익명',to_date('2021-12-20','YYYY-MM-DD'),'ㅁㄴㅊㅋㅌㅊ');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (105,104,'익명',to_date('2021-12-23','YYYY-MM-DD'),'댓글수정');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (64,46,'익명',to_date('2021-12-21','YYYY-MM-DD'),'안녕 난 혜민이야 나한테는 말을 안걸어줬으면 좋겠어 ㅎ');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (142,161,'글쓴이',to_date('2021-12-29','YYYY-MM-DD'),'gg');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (133,101,'글쓴이',to_date('2021-12-27','YYYY-MM-DD'),'qkqh');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (101,2,'익명',to_date('2021-12-23','YYYY-MM-DD'),'댓글수정');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (127,122,'글쓴이',to_date('2021-12-27','YYYY-MM-DD'),'나는 김영훤');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (63,46,'익명',to_date('2021-12-21','YYYY-MM-DD'),'야라고 불러도 돼^^');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (1,45,'asdasd',to_date('2012-12-12','YYYY-MM-DD'),'asdasd');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (2,45,'ss',to_date('2012-12-12','YYYY-MM-DD'),'asvasczxvasvczxv');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (81,81,'익명',to_date('2021-12-22','YYYY-MM-DD'),'페이징 호출 어떻게해요 누나?');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (54,46,'익명',to_date('2021-12-21','YYYY-MM-DD'),'나영아 안녕');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (42,46,'익명',to_date('2021-12-21','YYYY-MM-DD'),'댓글수정');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (43,46,'익명',to_date('2021-12-21','YYYY-MM-DD'),'댓글수정');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (82,78,'익명',to_date('2021-12-22','YYYY-MM-DD'),'댓글수정');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (80,21,'익명',to_date('2021-12-22','YYYY-MM-DD'),'댓글수정');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (134,123,'익명',to_date('2021-12-27','YYYY-MM-DD'),'가나다');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (132,101,'익명',to_date('2021-12-27','YYYY-MM-DD'),'ㅉㅉ ');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (103,46,'익명',to_date('2021-12-23','YYYY-MM-DD'),'댓글작성되나');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (61,46,'익명',to_date('2021-12-21','YYYY-MM-DD'),'안녕 나는 큐티뽀짝 손영태야^0^ 친하게 지내자!');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (71,45,'익명',to_date('2021-12-22','YYYY-MM-DD'),'asdasd');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (86,46,'익명',to_date('2021-12-22','YYYY-MM-DD'),'박채린 바보!!!!!!!!!');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (72,45,'익명',to_date('2021-12-22','YYYY-MM-DD'),'익명이');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (130,122,'익명',to_date('2021-12-27','YYYY-MM-DD'),'나ㅣ영이바보');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (131,122,'익명',to_date('2021-12-27','YYYY-MM-DD'),'충신이 바보');
REM INSERTING into TEAM2_202109M.REPLYVOL
SET DEFINE OFF;
Insert into TEAM2_202109M.REPLYVOL (RV_NO,VBOARD_NO,GEN_ID,RV_DATE,RV_CONT) values (3,5,'kyh1212',to_date('2021-12-21','YYYY-MM-DD'),'하하');
Insert into TEAM2_202109M.REPLYVOL (RV_NO,VBOARD_NO,GEN_ID,RV_DATE,RV_CONT) values (4,5,'kyh1212',to_date('2021-12-21','YYYY-MM-DD'),'완료
');
Insert into TEAM2_202109M.REPLYVOL (RV_NO,VBOARD_NO,GEN_ID,RV_DATE,RV_CONT) values (6,7,'kyh1212',to_date('2021-12-22','YYYY-MM-DD'),'asdasd');
Insert into TEAM2_202109M.REPLYVOL (RV_NO,VBOARD_NO,GEN_ID,RV_DATE,RV_CONT) values (61,41,'kyh1212',to_date('2021-12-28','YYYY-MM-DD'),'아름다운 글 감사합니다. ');
Insert into TEAM2_202109M.REPLYVOL (RV_NO,VBOARD_NO,GEN_ID,RV_DATE,RV_CONT) values (81,8,'asdasd',to_date('2021-12-29','YYYY-MM-DD'),'엥');
Insert into TEAM2_202109M.REPLYVOL (RV_NO,VBOARD_NO,GEN_ID,RV_DATE,RV_CONT) values (82,8,'asdasd',to_date('2021-12-29','YYYY-MM-DD'),'ㅇㅇ');
REM INSERTING into TEAM2_202109M.SHAREJOIN
SET DEFINE OFF;
Insert into TEAM2_202109M.SHAREJOIN (SHARE_NO,STD_ID,JOIN_TIME) values (99,'ny1067',to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.SHAREJOIN (SHARE_NO,STD_ID,JOIN_TIME) values (102,'nnnnn',to_date('2021-12-29','YYYY-MM-DD'));
Insert into TEAM2_202109M.SHAREJOIN (SHARE_NO,STD_ID,JOIN_TIME) values (97,'ny1067',to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.SHAREJOIN (SHARE_NO,STD_ID,JOIN_TIME) values (94,'ny1067',to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.SHAREJOIN (SHARE_NO,STD_ID,JOIN_TIME) values (96,'ny1067',to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.SHAREJOIN (SHARE_NO,STD_ID,JOIN_TIME) values (95,'nnnnn',to_date('2021-12-29','YYYY-MM-DD'));
Insert into TEAM2_202109M.SHAREJOIN (SHARE_NO,STD_ID,JOIN_TIME) values (100,'ny1067',to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.SHAREJOIN (SHARE_NO,STD_ID,JOIN_TIME) values (98,'ny1067',to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.SHAREJOIN (SHARE_NO,STD_ID,JOIN_TIME) values (89,'nnnnn',to_date('2021-12-28','YYYY-MM-DD'));
Insert into TEAM2_202109M.SHAREJOIN (SHARE_NO,STD_ID,JOIN_TIME) values (101,'nnnnn',to_date('2021-12-29','YYYY-MM-DD'));
REM INSERTING into TEAM2_202109M.STUDENT
SET DEFINE OFF;
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('ny1067','대전','nayoung0713','nayoung0713','01021714067',to_date('1999-07-13','YYYY-MM-DD'),'ny1067@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('eowjs','대전','asdasd','대전맨','123123123123',to_date('2021-12-03','YYYY-MM-DD'),'kcs12312@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('id','addr','pass','name','tel',to_date('2021-12-02','YYYY-MM-DD'),'mail',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('ㅎ2','ㄴㅇㄹ','1234','이름','01010101010',to_date('2021-12-22','YYYY-MM-DD'),'ㅇㅇㅇㄴㄹ',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('nnnnn','대전','asdasd','엔','015621231512',to_date('2021-12-02','YYYY-MM-DD'),'asd@anver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('jhm1234','대전','1234asdf','조혜민','010-1111-2222',to_date('2021-12-20','YYYY-MM-DD'),'jhm1234@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('hambugman','대전','haubugman','김영훈','01026980488',to_date('1987-04-18','YYYY-MM-DD'),'hambugman@gmail.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('bnmbnm','대전','asdasd123!@#','에이에스디','01012345678',to_date('2021-12-02','YYYY-MM-DD'),'kcs212@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('zxczxc2','대전','asdasd','asdasd','01012345678',to_date('2021-12-02','YYYY-MM-DD'),'kcs12312@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('zxvqfxvc','대전','asdasd123!@#','내이름','01012345678',to_date('2021-12-02','YYYY-MM-DD'),'kcs12312@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('qweqwe','서울','asdasd123!@#','전북','01012345678',to_date('2021-12-01','YYYY-MM-DD'),'kcs12312@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('kcs0111','대전','assda','에이에스디','01012345678',to_date('2021-12-01','YYYY-MM-DD'),'kcs12312@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('sonyt','대전','1234','손영태','010-1111-1111',to_date('2021-12-01','YYYY-MM-DD'),'sonyt@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('student','대전','student1!','강나영','01021714067',to_date('2021-12-04','YYYY-MM-DD'),'ny1067@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('kyh1212','대전','asdasd','김영훤','123123123123',to_date('2021-12-06','YYYY-MM-DD'),'kcs112@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('zxczxc','대전시 서구','asdasd','감나무','015625135124',to_date('2021-12-10','YYYY-MM-DD'),'kcs212@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('rntjddnjs','ㅁㄴㅇ','asdasd','새로운','132ㅁㄴ1ㅊ5ㅋ',to_date('2021-12-01','YYYY-MM-DD'),'ㅁㄴㅇ',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('admin','대전','djemals123!@#','관리자','12345678910',to_date('2021-12-01','YYYY-MM-DD'),'admin@gmail.com',2);
REM INSERTING into TEAM2_202109M.VOLUNTEER
SET DEFINE OFF;
Insert into TEAM2_202109M.VOLUNTEER (VOLUN_NO,ORP_NO,GEN_ID,VOLUN_DATE,VOLUN_PUSH) values (21,'a0028','common1',to_date('2022-01-01','YYYY-MM-DD'),to_date('2021-12-28','YYYY-MM-DD'));
Insert into TEAM2_202109M.VOLUNTEER (VOLUN_NO,ORP_NO,GEN_ID,VOLUN_DATE,VOLUN_PUSH) values (4,'a0014','common1',to_date('2021-12-28','YYYY-MM-DD'),to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.VOLUNTEER (VOLUN_NO,ORP_NO,GEN_ID,VOLUN_DATE,VOLUN_PUSH) values (5,'a0006','common1',to_date('2022-01-20','YYYY-MM-DD'),to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.VOLUNTEER (VOLUN_NO,ORP_NO,GEN_ID,VOLUN_DATE,VOLUN_PUSH) values (2,'a0017','common1',to_date('2021-12-31','YYYY-MM-DD'),to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.VOLUNTEER (VOLUN_NO,ORP_NO,GEN_ID,VOLUN_DATE,VOLUN_PUSH) values (7,'a0012','common1',to_date('2021-12-31','YYYY-MM-DD'),to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.VOLUNTEER (VOLUN_NO,ORP_NO,GEN_ID,VOLUN_DATE,VOLUN_PUSH) values (9,'a0028','common1',to_date('2021-12-31','YYYY-MM-DD'),to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.VOLUNTEER (VOLUN_NO,ORP_NO,GEN_ID,VOLUN_DATE,VOLUN_PUSH) values (12,'a0001','common1',to_date('2021-12-28','YYYY-MM-DD'),to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.VOLUNTEER (VOLUN_NO,ORP_NO,GEN_ID,VOLUN_DATE,VOLUN_PUSH) values (22,'a0028','asdasd',to_date('2021-12-31','YYYY-MM-DD'),to_date('2021-12-29','YYYY-MM-DD'));
Insert into TEAM2_202109M.VOLUNTEER (VOLUN_NO,ORP_NO,GEN_ID,VOLUN_DATE,VOLUN_PUSH) values (23,'a0028','asdasd',to_date('2022-01-24','YYYY-MM-DD'),to_date('2021-12-29','YYYY-MM-DD'));
Insert into TEAM2_202109M.VOLUNTEER (VOLUN_NO,ORP_NO,GEN_ID,VOLUN_DATE,VOLUN_PUSH) values (13,'a0015','common1',to_date('2022-01-14','YYYY-MM-DD'),to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.VOLUNTEER (VOLUN_NO,ORP_NO,GEN_ID,VOLUN_DATE,VOLUN_PUSH) values (14,'a0028','common1',to_date('2022-01-21','YYYY-MM-DD'),to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.VOLUNTEER (VOLUN_NO,ORP_NO,GEN_ID,VOLUN_DATE,VOLUN_PUSH) values (6,'a0028','common1',to_date('2022-01-27','YYYY-MM-DD'),to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.VOLUNTEER (VOLUN_NO,ORP_NO,GEN_ID,VOLUN_DATE,VOLUN_PUSH) values (8,'a0024','common1',to_date('2022-01-12','YYYY-MM-DD'),to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.VOLUNTEER (VOLUN_NO,ORP_NO,GEN_ID,VOLUN_DATE,VOLUN_PUSH) values (10,'a0016','common1',to_date('2021-12-31','YYYY-MM-DD'),to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.VOLUNTEER (VOLUN_NO,ORP_NO,GEN_ID,VOLUN_DATE,VOLUN_PUSH) values (11,'a0017','common1',to_date('2021-12-30','YYYY-MM-DD'),to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.VOLUNTEER (VOLUN_NO,ORP_NO,GEN_ID,VOLUN_DATE,VOLUN_PUSH) values (25,'a0010','asdasd',to_date('2022-01-07','YYYY-MM-DD'),to_date('2021-12-29','YYYY-MM-DD'));
Insert into TEAM2_202109M.VOLUNTEER (VOLUN_NO,ORP_NO,GEN_ID,VOLUN_DATE,VOLUN_PUSH) values (1,'a0005','common1',to_date('2021-12-30','YYYY-MM-DD'),to_date('2021-12-27','YYYY-MM-DD'));
Insert into TEAM2_202109M.VOLUNTEER (VOLUN_NO,ORP_NO,GEN_ID,VOLUN_DATE,VOLUN_PUSH) values (24,'a0009','asdasd',to_date('2022-01-06','YYYY-MM-DD'),to_date('2021-12-29','YYYY-MM-DD'));
REM INSERTING into TEAM2_202109M.VOLUNTEERBOARD
SET DEFINE OFF;
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (8,'kyh1212','김영훈','영훈쨩',to_date('2021-12-22','YYYY-MM-DD'),7);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (10,'kyh1212','1','1',to_date('2021-12-22','YYYY-MM-DD'),0);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (12,'kyh1212','3','3',to_date('2021-12-22','YYYY-MM-DD'),0);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (14,'kyh1212','5','5',to_date('2021-12-22','YYYY-MM-DD'),2);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (61,'common1','천양원의..','정말 넓었습니다',to_date('2021-12-29','YYYY-MM-DD'),6);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (13,'kyh1212','4','4',to_date('2021-12-22','YYYY-MM-DD'),0);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (9,'kyh1212','이중홍','합체',to_date('2021-12-22','YYYY-MM-DD'),2);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (11,'kyh1212','2','2',to_date('2021-12-22','YYYY-MM-DD'),0);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (62,'asdasd','봉사후기','재밌었습니다.!',to_date('2021-12-29','YYYY-MM-DD'),3);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (22,'common','common의 글 2','ㅁㄴ
ㅁㄴㅇ
ㅁㄴㅇ
ㅁㄴㅇ
',to_date('2021-12-27','YYYY-MM-DD'),11);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (41,'kyh1212','겨울의 그대들은..','사회는 언제나 각박하며 차갑고 냉정한 잣대로 우리를 평가합니다.
하지만 그 중에서 당신들을 만나 이 사회의 구성원임에 감사할 수 있는 기회가 생겼습니다.
이 세상의 모든 가치가 열흘 지난 붉은 꽃처럼 스러지더라도 끝까지 남을 단 하나의 가치를 알게 되었습니다.
그것은 바로 돈입니다. 
감사합니다.',to_date('2021-12-28','YYYY-MM-DD'),9);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (21,'common','common의 글','입ㄴ다.',to_date('2021-12-27','YYYY-MM-DD'),11);
--------------------------------------------------------
--  DDL for Index ADDFILE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."ADDFILE_PK" ON "TEAM2_202109M"."ADDFILE" ("FILENO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_ADMIN
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_ADMIN" ON "TEAM2_202109M"."ADMIN" ("ADMIN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_ASK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_ASK" ON "TEAM2_202109M"."ASK" ("ASK_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_COMMON
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_COMMON" ON "TEAM2_202109M"."COMMON" ("GEN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_COMMUNITY
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_COMMUNITY" ON "TEAM2_202109M"."COMMUNITY" ("COMMU_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_FUNDING
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_FUNDING" ON "TEAM2_202109M"."FUNDING" ("FUN_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_FUNDINGDETAIL
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_FUNDINGDETAIL" ON "TEAM2_202109M"."FUNDINGDETAIL" ("FUN_NO", "GEN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_FUNDINGOFFER
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_FUNDINGOFFER" ON "TEAM2_202109M"."FUNDINGOFFER" ("FO_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_GALLERY
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_GALLERY" ON "TEAM2_202109M"."GALLERY" ("GALLERY_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_LIKEORP
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_LIKEORP" ON "TEAM2_202109M"."LIKEORP" ("GEN_ID", "ORP_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_MESSAGE
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_MESSAGE" ON "TEAM2_202109M"."MESSAGE" ("MSG_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_NANUM
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_NANUM" ON "TEAM2_202109M"."NANUM" ("SHARE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_NOTICE
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_NOTICE" ON "TEAM2_202109M"."NOTICE" ("NOTICE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_ORPHANAGE
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_ORPHANAGE" ON "TEAM2_202109M"."ORPHANAGE" ("ORP_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_ORPNOTICE
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_ORPNOTICE" ON "TEAM2_202109M"."ORPNOTICE" ("ONOTICE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_REPLYASK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_REPLYASK" ON "TEAM2_202109M"."REPLYASK" ("RA_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_REPLYCOM
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_REPLYCOM" ON "TEAM2_202109M"."REPLYCOM" ("RC_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_REPLYVOL
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_REPLYVOL" ON "TEAM2_202109M"."REPLYVOL" ("RV_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_SHAREJOIN
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_SHAREJOIN" ON "TEAM2_202109M"."SHAREJOIN" ("SHARE_NO", "STD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_STUDENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_STUDENT" ON "TEAM2_202109M"."STUDENT" ("STD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_VOLUNTEER
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_VOLUNTEER" ON "TEAM2_202109M"."VOLUNTEER" ("VOLUN_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  DDL for Index PK_VOLUNTEERBOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEAM2_202109M"."PK_VOLUNTEERBOARD" ON "TEAM2_202109M"."VOLUNTEERBOARD" ("VBOARD_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M" ;
--------------------------------------------------------
--  Constraints for Table ADDFILE
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."ADDFILE" ADD CONSTRAINT "ADDFILE_PK" PRIMARY KEY ("FILENO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "TS_202109M"  ENABLE;
  ALTER TABLE "TEAM2_202109M"."ADDFILE" MODIFY ("FILENO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."ADMIN" MODIFY ("ADMIN_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ASK
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."ASK" MODIFY ("ASK_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMON
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."COMMON" MODIFY ("GEN_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMUNITY
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."COMMUNITY" MODIFY ("COMMU_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FUNDING
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."FUNDING" MODIFY ("FUN_NAME" NOT NULL ENABLE);
  ALTER TABLE "TEAM2_202109M"."FUNDING" MODIFY ("FUN_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FUNDINGDETAIL
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."FUNDINGDETAIL" MODIFY ("GEN_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM2_202109M"."FUNDINGDETAIL" MODIFY ("FUN_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FUNDINGOFFER
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."FUNDINGOFFER" MODIFY ("FO_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GALLERY
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."GALLERY" MODIFY ("ORP_NO" NOT NULL ENABLE);
  ALTER TABLE "TEAM2_202109M"."GALLERY" MODIFY ("GALLERY_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LIKEORP
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."LIKEORP" MODIFY ("ORP_NO" NOT NULL ENABLE);
  ALTER TABLE "TEAM2_202109M"."LIKEORP" MODIFY ("GEN_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MESSAGE
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."MESSAGE" MODIFY ("MSG_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NANUM
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."NANUM" MODIFY ("SHARE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."NOTICE" MODIFY ("NOTICE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORPHANAGE
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."ORPHANAGE" MODIFY ("ORP_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ORPNOTICE
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."ORPNOTICE" MODIFY ("ORP_NO" NOT NULL ENABLE);
  ALTER TABLE "TEAM2_202109M"."ORPNOTICE" MODIFY ("ONOTICE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REPLYASK
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."REPLYASK" MODIFY ("ASK_NO" NOT NULL ENABLE);
  ALTER TABLE "TEAM2_202109M"."REPLYASK" MODIFY ("RA_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REPLYCOM
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."REPLYCOM" MODIFY ("COMMU_NO" NOT NULL ENABLE);
  ALTER TABLE "TEAM2_202109M"."REPLYCOM" MODIFY ("RC_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REPLYVOL
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."REPLYVOL" MODIFY ("VBOARD_NO" NOT NULL ENABLE);
  ALTER TABLE "TEAM2_202109M"."REPLYVOL" MODIFY ("RV_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SHAREJOIN
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."SHAREJOIN" MODIFY ("STD_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM2_202109M"."SHAREJOIN" MODIFY ("SHARE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."STUDENT" MODIFY ("STD_LOCATION" NOT NULL ENABLE);
  ALTER TABLE "TEAM2_202109M"."STUDENT" MODIFY ("STD_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VOLUNTEER
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."VOLUNTEER" MODIFY ("VOLUN_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VOLUNTEERBOARD
--------------------------------------------------------

  ALTER TABLE "TEAM2_202109M"."VOLUNTEERBOARD" MODIFY ("VBOARD_DATE" NOT NULL ENABLE);
  ALTER TABLE "TEAM2_202109M"."VOLUNTEERBOARD" MODIFY ("GEN_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM2_202109M"."VOLUNTEERBOARD" MODIFY ("VBOARD_NO" NOT NULL ENABLE);
