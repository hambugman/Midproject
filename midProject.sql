--------------------------------------------------------
--  ������ ������ - ȭ����-4��-26-2022   
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
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (167,'����.png',38,'�ݵ�');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (185,'����.jpg',62,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (173,'�����.jpg',41,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (187,'����3.jpg',62,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (189,'���2.jpg',62,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (191,'�عٶ��.jpg',62,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (193,'ȣ����2.jpg',62,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (195,'����.jpg',102,'����');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (142,'�����.jpg',21,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (85,'orp10.jfif',2,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (86,'orp1.jpg',3,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (87,'orp12.jfif',3,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (88,'orp13.jfif',3,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (90,'orp7.jpg',4,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (92,'orp13.jfif',4,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (145,'�κ�.jpg',22,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (84,'orp4.jpg',2,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (155,'��.jpg',26,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (168,'����.jfif',39,'�ݵ�');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (170,'����.jfif',41,'�ݵ�');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (175,'����.jpg',44,'�ݵ�');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (132,'cup.jpg',95,'����');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (133,'aircase.jpg',96,'����');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (134,'�Ź��.jpg',97,'����');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (136,'��.jpeg',99,'����');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (137,'��Ʈ.png',100,'����');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (129,'pencase.jpg',89,'����');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (130,'ball.jpg',93,'����');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (148,'�����.jpg',23,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (150,'�䳢2.jpg',24,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (151,'�䳢3.jpg',24,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (153,'�䳢.jpg',25,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (154,'coffee1.jpg',26,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (156,'����.jpg',27,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (157,'�κ�.jpg',27,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (176,'�л�.jpg',45,'�ݵ�');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (149,'����2.jpg',23,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (171,'����1.jpg',42,'�ݵ�');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (190,'���3.jpg',62,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (91,'orp8.jpg',4,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (143,'�ٶ���.jpg',21,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (146,'������.jpg',22,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (172,'��ǻ��.jpg',43,'�ݵ�');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (89,'orp4.jpg',4,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (186,'����2.jpg',62,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (188,'���.jpg',62,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (192,'ȣ����.jpg',62,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (194,'��ǰ2.jpg',101,'����');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (141,'�����.jpg',21,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (144,'����.jpg',22,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (152,'����3.jpg',25,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (196,'�����.jpg',62,'�ݵ�');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (174,'�ٶ���.jpg',41,'������');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (131,'ĳ����4.gif',94,'����');
Insert into TEAM2_202109M.ADDFILE (FILENO,FILEPATH,BOARD_NO,BOARD_DIV) values (135,'coffee.jfif',98,'����');
REM INSERTING into TEAM2_202109M.ADMIN
SET DEFINE OFF;
Insert into TEAM2_202109M.ADMIN (ADMIN_ID,ADMIN_PASS,TYPE) values ('admin','1234',0);
REM INSERTING into TEAM2_202109M.ASK
SET DEFINE OFF;
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (21,'common1','���� ���ؿ�','�� ���� ���ϼ���',to_date('2021-12-23','YYYY-MM-DD'),'a0007');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (61,'common1','��������','���̷� ',to_date('2021-12-27','YYYY-MM-DD'),'a0028');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (2,'common1','����Ȱ�� ��¥','������',to_date('2021-12-22','YYYY-MM-DD'),'a0007');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (62,'common1','������','������������',to_date('2021-12-27','YYYY-MM-DD'),'a0014');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (63,'common1','dd','ddd',to_date('2021-12-27','YYYY-MM-DD'),'a0021');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (65,'common1','������','������ �ȳ������ּ���
����  ',to_date('2021-12-27','YYYY-MM-DD'),'a0026');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (101,'asdasd','����Ȱ��','dd',to_date('2021-12-29','YYYY-MM-DD'),'a0028');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (41,'common1','���ϸ�','��ǥ�ϴ°� �³���?? ',to_date('2021-12-27','YYYY-MM-DD'),'a0007');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (64,'common1','dfa','dafda',to_date('2021-12-27','YYYY-MM-DD'),'a0011');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (81,'common1','�Ͽ�','���ƾƾƾ�`~
�׾ƾƾƾ�  ',to_date('2021-12-28','YYYY-MM-DD'),'a0028');
Insert into TEAM2_202109M.ASK (ASK_NO,GEN_ID,ASK_TITLE,ASK_CONT,ASK_DATE,ORP_NO) values (102,'asdasd','���� ���ؿ�','����� !',to_date('2021-12-29','YYYY-MM-DD'),'a0028');
REM INSERTING into TEAM2_202109M.COMMON
SET DEFINE OFF;
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('common1','asdasd','123','����','Ŀ��',to_date('2021-12-07','YYYY-MM-DD'),'123',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('ny1067','ny0713','01021714067','õ�Ƚ� ���ϱ�','������',to_date('1999-07-13','YYYY-MM-DD'),'ny1067@naver.com',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('asdsdsd','asd','123','����','����',to_date('2021-12-01','YYYY-MM-DD'),'123',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('common2','asdasd','123','����','asd',to_date('2021-12-02','YYYY-MM-DD'),'123',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('common12322','asdasdaasd@@^^2313','123','����','Ŀ��',to_date('2021-12-03','YYYY-MM-DD'),'123',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('asdasdasd','asdasdasd^^123','01012345678','����','�Ƴ���',to_date('2021-12-02','YYYY-MM-DD'),'klzxjca@gmaicl.com',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('qweqweqwe','rkskekfk123^^','0010','����','����',to_date('2021-12-02','YYYY-MM-DD'),'zxcasc',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('member222','asdasd123!@#','01012345678','����','�����ٶ�',to_date('2021-12-01','YYYY-MM-DD'),'kcscasd@gmacin.dom',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('asdasd','asdasd1!','01022225555','����','�ƾƾ�',to_date('2021-12-29','YYYY-MM-DD'),'ny1067@nave',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('common','asdasd','asdasd','����','asdasd',to_date('2021-12-02','YYYY-MM-DD'),'asdasd',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('common2323','asdasd','123','����','Ŀ��',to_date('2021-12-01','YYYY-MM-DD'),'123',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('common222','asdasdasd1231%%','123','����','Ŀ��',to_date('2021-11-30','YYYY-MM-DD'),'123',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('member','asdasd','123','����','azxczx',to_date('2021-12-02','YYYY-MM-DD'),'123',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('kyh1212','asdasd','123','����','azxczx',to_date('2021-12-02','YYYY-MM-DD'),'123',0,0,1);
Insert into TEAM2_202109M.COMMON (GEN_ID,GEN_PASS,GEN_TEL,GEN_ADDR,GEN_NAME,GEN_BIR,GEN_MAIL,GEN_FCNT,GEN_FTOTAL,TYPE) values ('admin','djemals123!@#','123','����','������',to_date('2021-12-02','YYYY-MM-DD'),'123',0,0,1);
REM INSERTING into TEAM2_202109M.COMMUNITY
SET DEFINE OFF;
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (15,'kyh1212','���ۼ�',to_date('2021-12-17','YYYY-MM-DD'),'�մϴ�.','����',200);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (16,'eowjs','���̸���',to_date('2021-12-17','YYYY-MM-DD'),'�����','����',200);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (17,'eowjs','���̸���',to_date('2021-12-17','YYYY-MM-DD'),'Ž��, �ڳ�����.','����',200);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (18,'eowjs','�̱ۺ��� ����ڻ���',to_date('2021-12-17','YYYY-MM-DD'),'�̾��ϴ� �̰ź����ַ��� ��׷� ������.','����',200);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (19,'eowjs','���� 9�� ��� ������',to_date('2021-12-17','YYYY-MM-DD'),'�̰� ���� ��ȭ��?','����',200);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (20,'eowjs','��Ӹ��� �������� ��� �۵��ұ�.jpg',to_date('2021-12-17','YYYY-MM-DD'),'���� �ô�� �ָ��� �����ΰ��� �����ϴ� �Ϳ� Ưȭ�ǰ� �ִ�. �׷��� ������ �� ��ȣ�� �̿��Ͽ� �ۿ��ϴ� ����Ʈ ��Ʈ�� , �� �������� �ָ����� ����� ������...','����',200);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (162,'nnnnn','ff',to_date('2021-12-29','YYYY-MM-DD'),'ff','����',0);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (46,'ny1067','�ȳ�',to_date('2021-12-20','YYYY-MM-DD'),'���� ������ �����̾�','����',4);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (101,'nnnnn','�ϱ�',to_date('2021-12-23','YYYY-MM-DD'),'�ʹ� �ϱ� �ȴ�
������ ũ���������̺��̴�','����',12);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (81,'jhm1234','������ �ϱ� 1��',to_date('2021-12-21','YYYY-MM-DD'),'���� Ȩ����������µ� ����¡ȣ���� �����ߴ� ������ ������ ��������� ���ڴ�.','����',3);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (161,'nnnnn','�� ������',to_date('2021-12-29','YYYY-MM-DD'),'��ħ�� ����� ','����',6);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (122,'kyh1212','�迵���� ��',to_date('2021-12-27','YYYY-MM-DD'),'�Դϴ�.','����',20);
Insert into TEAM2_202109M.COMMUNITY (COMMU_NO,STD_ID,COMMU_TITLE,COMMU_DATE,COMMU_CONT,STD_LOCATION,COMMU_HIT) values (141,'kyh1212','���ͱ�',to_date('2021-12-28','YYYY-MM-DD'),'������','����',3);
REM INSERTING into TEAM2_202109M.FUNDING
SET DEFINE OFF;
Insert into TEAM2_202109M.FUNDING (FUN_NO,ORP_NO,FUN_NAME,FUN_GOAL,FUN_DUE,FUN_DATE,FUN_CONT) values (38,'a0001','����� ǥ���ϴ� ������, �ڵ彺��ũ ��Ƽ��Ʈ�� ���� ����',2000000,to_date('2022-01-13','YYYY-MM-DD'),to_date('2021-12-28','YYYY-MM-DD'),'2016�� 8�� 4�� ���ѱ���ȭ������ ����Ǿ� ����� ���� �Ǿ������� �ұ��ϰ�, ���� û�� ���������� �׵��� â�� ��
 ���� ������ ������ ��ǰ ��ǥ ��ȸ�� ������ ȯ�濡�� Ȱ���ؿԽ��ϴ�. 
��ֿ����� �ϴ� ���� �ƴ϶� �츮 ��ȭ�� ���� �������� ����� �������Դϴ�.
�� ���� ���� ��ġ�� ���� û�� ���������� ������ ����� �󿹼��� �����Ų �������� ������ε鸸�ǡ� 
��ȭ���� Ȱ���� �Ѿ ��ȭ�� ���縦 �˸���, �������� �������� �ùε�� �����ϰ� �Բ� ���� ���θ� ������ �� �ֵ��� 
����ü���� ���� �ΰ����� ������ �����ϰ� �νİ����� ���� ��ȸ�� ���ظ� �����ϴ�.

���� ��Ƽ���鿡�� ������ ���� �����Ӱ� ǥ���� �� �ֵ��� �������� ���� ��ȸ�� ȯ���� �Բ� ����� �شٸ�,
���� ���� �� ���� �� ���ư� �� �ִ� ��ȸ�� �� ���Դϴ�.');
Insert into TEAM2_202109M.FUNDING (FUN_NO,ORP_NO,FUN_NAME,FUN_GOAL,FUN_DUE,FUN_DATE,FUN_CONT) values (41,'a0010','�ߴ�������� ���� ���븶���� ''AAC''�� �ູ�� ���ؿ�!',5000000,to_date('2022-01-31','YYYY-MM-DD'),to_date('2021-12-28','YYYY-MM-DD'),'������ ǥ���ϴ� 4���� ���
�츮�� ���� ������ ���������� ǥ���� �� ��κ� ������ ���ڸ� �������� ǥ���� 
�ൿ �� �� ���� ����� ������ ������ �ϸ� ������ ������ ������ �ֽ��ϴ�.

�����ϴ� �� �־ �� ���� �ϳ��� �����ϸ� ������� ���� �ٵ�, �ߴ�����ΰ� ��������
����� �е��� ��� ������ ���� �ٸ������� �ǻ� ǥ���� ���� �� �Ͻðų�, 
ǥ���� �ൿ �����θ� ǥ���� �Ͽ� ������ �����ϴ� ������ ����� �ð��� �ɸ��ϴ�.
���δ� ���� �����̼� �Բ��ϴ� ���������� �������� ���ϴ� ��찡 ���� �ֽ��ϴ�.

���븶���� AAC(���ϴ�ü�ǻ���뵵��)�� �������ּ���!
Ư���� �ߴ�����ΰ� ������λ��̿� ������ָ� �ذ����� ���� ģ���� �츮�翡 �ٰ��Խ��ϴ�.
 �� �̸��� �ٷ� "���ϴ�ü �ǻ���뵵����� �Ҹ���� AAC"�Դϴ�.

AAC��� �Ҹ���� ���븶����� ��� ǥ���� ���ؿ� ������� �ִ� �����
(�����, �ѱ�� ���� �ܱ���, ��� ��)���� ���� �����ϰų�
 ��ü�ϴ� ����� �����Ͽ� ���� ������ ������ ��ȸ�� �ְ� �ֽ��ϴ�.');
Insert into TEAM2_202109M.FUNDING (FUN_NO,ORP_NO,FUN_NAME,FUN_GOAL,FUN_DUE,FUN_DATE,FUN_CONT) values (44,'a0010',' (�̺�Ʈ)��ȣ�� ��ϰ� Ư���� �Ϸ縦 �����մϴ�.',2000000,to_date('2022-01-29','YYYY-MM-DD'),to_date('2021-12-28','YYYY-MM-DD'),'�����̸� �������� ���� ���̴� ����� �ֽ��ϴ�. �ٷ� ������ �� �ٷ��� �� ��Ÿ�� �������� �湮�ϴ� ����Դϴ�. 
�츮 ��ȸ�� ������ ���̵鿡�� ���� ������ ������ ������, �������� ���� �� ������ � ���� �� ���� ���մϴ�.
�Ұ� 1������ ���� ���� 2021�� 11�� ��� ��, ����ȣ�� �ҳ�ô� ���, ������ � �ȿ���, �ڰ��� ķ���̳ʰ�
���ο� ü����� �ƴ� Ư���� ü������� �Բ� �մϴ�.

������ֽô� ���е��� ���ڸ��� �ʴ��� ���� ������ �� �ִ� ���� �Ǿ����� �մϴ�.');
Insert into TEAM2_202109M.FUNDING (FUN_NO,ORP_NO,FUN_NAME,FUN_GOAL,FUN_DUE,FUN_DATE,FUN_CONT) values (39,'a0005','������ ���� �� ����, �ڷγ�19�� ���� �ҿܹ޴� �̵�...',10000000,to_date('2022-01-21','YYYY-MM-DD'),to_date('2021-12-28','YYYY-MM-DD'),'"ģ������ �ڷγ��� �����ٰ� �����ϴ� �ϴµ�... �ڷγ� ������ ���� �׷� ģ���� ������..."

������ ����, ���� ����� �� ���������� �ڷγ����̷��� ������-19(���� ''�ڷγ�19)�� ���� ������ ��Ȯ�� �Ǹ鼭

�࿩�� ����ϴ� û����� �󱼿��� �̼Һ��� ������ �ٽ��� �帮�������ϴ�.

������ �ִ� �����԰� ���� ������� �̹� �� �߾��� �Ǿ���Ƚ��ϴ�. 

�̿� �Բ� �ٰ��� �� ������ ������ �� �� �ִ� ��� ����� �ް�ͽ��ϴ�.');
Insert into TEAM2_202109M.FUNDING (FUN_NO,ORP_NO,FUN_NAME,FUN_GOAL,FUN_DUE,FUN_DATE,FUN_CONT) values (45,'a0010','�������� �����ϰ� �ִ� û�ҳ���� ����� �ɾ��ּ���',2200000,to_date('2022-01-26','YYYY-MM-DD'),to_date('2021-12-28','YYYY-MM-DD'),'û�ҳ��ȸ���ͽü� ''���''�� ���� ����� ������ �����
20�� �ʹ��� û�� 000 ���� �ູ�� ��ο� �����ֽ��ϴ�. ���� ����� �������� ���� ù ����� �ϰ� �Ǿ��� 
��ĥ �� ù ������ �޾ұ� �����Դϴ�. �׵��� �ڽ��� �ϰ� ��ٷ��ֽ� �θ�Բ� � ������ �帱��? �ູ�� ����� �ϰ� �ִ�ϴ�.

����б��� �������� 000���� �ڽ��� �������� ���� ���� �Ҹ���� �ʹ��� ���� ��ϴ�. �б� �¶��� ������ �����ϱ� ��ư�,
 ��� ������ ������ ��ƽ��ϴ�. ������ ����� �ٴϱ� �����ϸ鼭���� ���� ����� ������ϴ�.
 �ٽ� �б��� ���ư� ���� �޲ٸ� �ڽ��� �������ִ� ģ����� �Բ� �� ������� �̰ܳ��� ���� Ű��� �ֽ��ϴ�.

���� ������ û�ҳ� Ưȭ ������Ȱ�ü�
�������� 10�� �Ĺݿ��� 20�� �ʹ��� û�ҳ�, �ʱ� û�� �ñ⿡ �ߺ��ϴ� ������ȯ�Դϴ�. 
������ �ñ��� �ߺ� �� 5�� �̳��� ����� �� ġ��� ��Ȱ �Ʒ��� ���� ������ ����� �ݺ��ϸ� ����ȭ�� ��� ������ �˴ϴ�
 �̵��� ������ȯ�� �ߺ��� �ߺ� �� ������ �������� ���� �о��� �ߴ��ϴ� ��찡 ����
 ���ΰ��迡 �̼��Ͽ� �������� ���ΰ��踦 ������ ��ȸ�� �����ϴ�.

û�ҳ��ȸ���ͽü� ����� ������ȯ�� �ΰ� �ִ� û�ҳ� û��鿡�� �������� ġ�Ḧ �޵��� �����ϰ� �Ƿ� ���� �ȿ��� 
�������� ���ΰ��踦 ������ ��ȸ�� �����մϴ�. 15������ 29�� ������ Ưȭ�Ͽ� ����������ȯ�ڿʹ� ������ ���񽺷�
 ������ݽ�õ�� ������� û�ҳ���� ������ ������ �߰��ϰ� ������ ��ȭ�Ͽ� ������ȯ�� �ΰ� �ִ� û�ҳ���� 
��ü������ ���� �ް� �ǹ̸� ã�� �� �ֵ��� ���� �ֽ��ϴ�.


��ȸ��������� ������ ����� ������ ������ �� ������ ������ȯ�� �����ϰ� �ִ� û�ҳ� û����� 
�� �� �� ���� ���񽺸� �����ޱ����ؼ��� �������� ȯ���� �켱������ �����Ǿ�� �մϴ�. 
����� �� �����ǰ� ������ �� �ֵ��� ���� ������ �ʿ��ϳ� ���� �Ӵ�� �ذ� ������ ����� ����� ������ �ֽ��ϴ�.
 �Ŀ������ �����ϰ� ������ �ڷγ�19�� ȫ���� ���� ��ҵǾ� �Ŀ� ����� �������� ���ߵǰ� �ֽ��ϴ�.

�Ŀ����� �Ӵ��� ���� �����Դϴ�.
�ʹ��� �����ϰԵ� 2020�� ���̰�ġ�� ���� �Ӵ�� �Ŀ����� �����Ͽ�
��ǥ �ݾ��� �� �޺��� �Ӵ�� 2,200,000���� ��� ��ݵǾ����ϴ�.

���ص� ����ϰ��� �ϴ� �ݾ��� �� �޺��� �Ӵ���Դϴ�. ���� �Ӵ��� ����� ��ȹ�Դϴ�. 
����� �Ӵ�� ���� ���� û�ҳ��� �Բ� ����� �� �ֵ��� �Ŀ��ڴԵ��� ������ �ձ� ��ٸ��� �ְڽ��ϴ�.');
Insert into TEAM2_202109M.FUNDING (FUN_NO,ORP_NO,FUN_NAME,FUN_GOAL,FUN_DUE,FUN_DATE,FUN_CONT) values (42,'a0026','(�ؿ��ݵ�) ��۶󵥽� �̸�Ǫ�� ������ ���� ����',500000,to_date('2022-01-19','YYYY-MM-DD'),to_date('2021-12-28','YYYY-MM-DD'),'ī�꿡 �ɾ� å�� ���� ���̵��� ����� �繵 �����ϴ�. å �ӿ� ǫ ������ �� �����ӵ� ����. 
������ å �ѱ�� �Ҹ��� �� ��. ��۶󵥽� ��ī�� �ִ� �̸�Ǫ�� ������ ���̵��� å �д� ����̴�.

���̵鿡�� å�� ������ ���踦 Ž���ϰ� �ϰ�, �̷��� �޲ٰԵ� �Ѵ�. 
å�� ������ ��� ��ҿ� �ֵ� ũ�� ���� ���踦 ������ ���� �Ƹ��ٿ� ����� ���� ������ ���ƴٴ� ���� �ִ�.
 �پ��� ������ ������ ��� ���� �����̴�.

VLOG�� �������� ������ �ʿ��� ���̶��, ������ ������ �� �� ������� �����ֱ� ���� ����Ѵ�
. �� ����� ���� �̵��� �ٽ� �޲ٰ� �Ѵٴ� ���� �ϱ⿡.');
Insert into TEAM2_202109M.FUNDING (FUN_NO,ORP_NO,FUN_NAME,FUN_GOAL,FUN_DUE,FUN_DATE,FUN_CONT) values (43,'a0007','2000���� �Ը� PC 1õ�� ���� �ݵ�',20000000,to_date('2022-01-29','YYYY-MM-DD'),to_date('2021-12-28','YYYY-MM-DD'),'�¶��� ������ �����ϴ� �� �־� ���̵��� ��Ȱ�ϴ� ���� ������� ������ ��ǻ�Ͱ� ����
 ���������� ������ ��ư� ���� �ұ������� �̾����� �ִ١��� ���ҿܰ����� ���� �� �����
 ���� ���̵��� �¶��� ������ ���� �̷��� ���� Ű���������� PC ������ �ñ��ϴٰ� �Ǵ��Ͽ� ����� ��û�մϴ�.');
Insert into TEAM2_202109M.FUNDING (FUN_NO,ORP_NO,FUN_NAME,FUN_GOAL,FUN_DUE,FUN_DATE,FUN_CONT) values (62,'ss','ss',4,to_date('2021-12-31','YYYY-MM-DD'),to_date('2021-12-29','YYYY-MM-DD'),'ss');
REM INSERTING into TEAM2_202109M.FUNDINGDETAIL
SET DEFINE OFF;
REM INSERTING into TEAM2_202109M.FUNDINGOFFER
SET DEFINE OFF;
Insert into TEAM2_202109M.FUNDINGOFFER (FO_NO,STD_ID,FO_TITLE,FO_RPROD,FO_CONT,FO_DATE,FO_CHECK) values (121,'sonyt','������ �ܿ��� ���Ͽ�','�ĸ�����Ʈ �Һ��� �� 1000��','��û������ : ���� �ÿ� ������

��� ����� 100�����Դϴ�. 
��ǥ ��¥�� 2022�� 1�� 1�Դϴ�. 1�⵿�� ��� ������ ����� ���ڶ�
��û�ϰ� �Ǿ����ϴ�. ������ ���� ������ ��÷�Ͽ� �����ϴ�.
�����մϴ�.

',to_date('2021-12-29','YYYY-MM-DD'),'no');
Insert into TEAM2_202109M.FUNDINGOFFER (FO_NO,STD_ID,FO_TITLE,FO_RPROD,FO_CONT,FO_DATE,FO_CHECK) values (126,'ny1067','123123','123123','3�� ����� ���� ���� �������� �ɰ� ���� ����� ����� �µ��� ������ ���� �淯 �ɴ� ���� �������� ����̴�.
 ���� ���Ƴ��� ������ ���� ����� ���ܳ��� ȯ�⸦ ��Ű�� �㿡�� �ٽ� �����ش�. ����� �ö󰡸� ������ 
����� ������ ������ �⸥��. 
',to_date('2021-12-29','YYYY-MM-DD'),'no');
Insert into TEAM2_202109M.FUNDINGOFFER (FO_NO,STD_ID,FO_TITLE,FO_RPROD,FO_CONT,FO_DATE,FO_CHECK) values (125,'ny1067','123123','����������','�������ƤӤ��Ť��¶�ӤÇ�í�Ť����e��̤�����
��������̤�����Ǥ�������
����ǻ���������Ǥ�����"����������Ф�����
�շ����ä����٤ô���
�����Ф�����G��������',to_date('2021-12-29','YYYY-MM-DD'),'no');
Insert into TEAM2_202109M.FUNDINGOFFER (FO_NO,STD_ID,FO_TITLE,FO_RPROD,FO_CONT,FO_DATE,FO_CHECK) values (124,'nnnnn','�ų��� �����Ͽ� ���� �ܼ�Ʈ','100����','��û ����� �����������Դϴ�.

�ų��� �����Ͽ� ���� ������� ���� �ܼ�Ʈ�� �������մϴ�.

�ݵ� ��ǰ�� ���� ������ ������� 100�����Դϴ�.

',to_date('2021-12-29','YYYY-MM-DD'),'no');
REM INSERTING into TEAM2_202109M.GALLERY
SET DEFINE OFF;
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (4,'a0028','õ���',to_date('2021-12-21','YYYY-MM-DD'),'õ����Դϴ�');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (2,'a0007','�������Դϴ�',to_date('2021-12-21','YYYY-MM-DD'),'������ ���� �������Դϴ�');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (27,'a0007','��',to_date('2021-12-27','YYYY-MM-DD'),'����
�� ����');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (3,'a0016','���� ������ ���Դϴ�',to_date('2021-12-21','YYYY-MM-DD'),'�������������Դϴ�');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (26,'a0007','����',to_date('2021-12-27','YYYY-MM-DD'),'�������Ʈ�̾�');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (23,'a0028','dfadf',to_date('2021-12-27','YYYY-MM-DD'),'�ȳ��ϼ�');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (25,'a0007','�̷���',to_date('2021-12-27','YYYY-MM-DD'),'�̷���');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (21,'a0007','dkjfakldf',to_date('2021-12-27','YYYY-MM-DD'),'adfgvak
dfjai
ddfa
dfsd');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (24,'a0028','�� �̹���',to_date('2021-12-27','YYYY-MM-DD'),'�ɰ��ΰ�?
�αٵα�
����');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (22,'a0007','gngk',to_date('2021-12-27','YYYY-MM-DD'),'��
��
��
');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (41,'a0028','12-26�����³���ǳ��',to_date('2021-12-28','YYYY-MM-DD'),'���̵��� �� ���� �� ���� �ູ�ϰ� ��ҽ��ϴ�.
������� ����� ���ο� �ϰ�^^');
Insert into TEAM2_202109M.GALLERY (GALLERY_NO,ORP_NO,GALLERY_TITLE,GALLERY_DATE,GALLERY_CONT) values (62,'a0028','����������',to_date('2021-12-29','YYYY-MM-DD'),'�ֱ� ���̵��� ü���н� ���� �ݵ��� 100% �޼��߽��ϴ�.

�������� ���� �ʹٴ� ���̵��� ���� ����������� ü���н� ��Ҹ� ���ߴµ���^^
���� ���̱ⱸ�� Ÿ�� ������ ���� �پ��� ������ �Ĺ��� ���� �Խ��ϴ�.

���ڿ� ȣ���̸� ���� ��Ϳ��~! �ϴ� ���̵��� ��� �Ϳ�����..

�� �� �ƴ϶� �Ŀ��� ���� ��� ȸ���Ե鿡�Ե� �츮 ���̵��� �������� ���� �� ���̿����� ���ڽ��ϴ�.

�Ŀ��� �ֽð�, ���̵��� ���� �츮 ���� �湮���ֽô� ��� ȸ���Ե鲲 �ٽ� �� �� ������ ���� �ø��ϴ�.

�����մϴ�^^

-õ��� ���� �ø�-');
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
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (100,'��������',to_date('2021-12-23','YYYY-MM-DD'),'�� ������ �ʿ��Ͻź��� ������ �ּ��� !!!','ny1067',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (101,'�ȳ�',to_date('2021-12-29','YYYY-MM-DD'),'������û','asdasd',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (93,'�౸�� ���� ',to_date('2021-12-23','YYYY-MM-DD'),'�౸�� �����ϴ� �л��� �ִٸ� �� �౸���� �����޾� ������ ! 
����  �౸������ �Ǳ� �����մϴ�. ','common',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (96,'������ ���̽� ',to_date('2021-12-23','YYYY-MM-DD'),'���� �߿� �ܿ��� �ٰ��Խ��ϴ�. 
�߿� �ܿ�, �����и� ������������ ���� 
�����̵� �����ϰ� ���ּ��� 
�� ���̽��� �������� ��ٸ��ϴ�~~~: )','common',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (94,'�̸�Ƽ�� ���� ',to_date('2021-12-23','YYYY-MM-DD'),'�Ϳ��� �̸�Ƽ�� �����մϴ� 
�ò����� ������ �ɽ����� ���ִµ� ������ �˴ϴ�. ','common',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (97,'���������մϴ�',to_date('2021-12-23','YYYY-MM-DD'),'�������� �� �ֳ��� ~~~','common',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (98,'Ŀ�� ����',to_date('2021-12-23','YYYY-MM-DD'),'Ŀ�Ǹ� �� ������ �ʾƼ� 
��� Ŀ�Ǹ� �����ϴ� �л��� 
�����޾����� ���ڽ��ϴ� ! ','common',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (99,'�� ���� ',to_date('2021-12-23','YYYY-MM-DD'),'�ֳ����� ��ϰ� �ִµ� �̹��� ��Ȯ�� ���� �ϰ� �Ǿ� 
�ʿ��� �л��е鿡�� ������ �Ϸ��� �մϴ�. 
������ �� ���� ���־�� ~~~','common',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (89,'�� ������ �����ϰ� �ͽ��ϴ�.',to_date('2021-12-23','YYYY-MM-DD'),'���� ������ �ʹ� ���Ƽ� �� ������ ���󵵼��� ���� ������ �����߽��ϴ�. 
Ȥ�ó� ������ �ʿ��� �л��� �ִٸ� �����޾ư�����!','common',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (95,'�������� ',to_date('2021-12-23','YYYY-MM-DD'),'�Һ� �����մϴ�. 
����ǰ�̶� ���� �����ϰ� ������ �ߵǾ��־����ϴ�. 
','common',null);
Insert into TEAM2_202109M.NANUM (SHARE_NO,SHARE_TITLE,SHARE_DATE,SHARE_CONT,GEN_ID,SHARE_LUCKY) values (102,'����',to_date('2021-12-29','YYYY-MM-DD'),'����','asdasd',null);
REM INSERTING into TEAM2_202109M.NOTICE
SET DEFINE OFF;
REM INSERTING into TEAM2_202109M.ORPHANAGE
SET DEFINE OFF;
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0001','1234','�ÿº�����','���� ���� ���ַ�267���� 8','042-246-6542','sion@sion.com','����',3,36.33422918041125,127.37894782693323);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0002','1234','����������','���� ���� �̷��� 16 ����������','042-898-4578','jahye@jahye.com','����',3,36.33242075558904,127.44100238460449);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0004','1234','�û���Ƶ�����','�߱� �а���34���� 33 (���赿)','042-634-0061','neul@nuel.com','����',3,36.297498066207936,127.45191301345618);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0005','1234','��ȭ�� ���� �Ƶ���������','���� ����� 85 (���絿)','042-672-1418','pyung@pyung.com','����',3,36.34428279011438,127.44190104229254);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0006','1234','���ɿ�','���� �곻��386���� 8-26 (�ϼҵ�)','042-273-4249',null,'����',3,36.22324499920546,127.44143045395813);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0007','1234','����������������','���� ����4�� 61 (������)','042-582-0215',null,'����',3,36.30890393965093,127.37806411345636);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0008','1234','������','���� ��������30���� 15 (������)','042-583-3679',null,'����',3,36.30457845735548,127.36970014229163);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0009','1234','���� ������','����� ��ź���� 101 (���ൿ)','042-627-6800',null,'����',3,36.389932750778115,127.42024552695214);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0010','1234','������������','���� ������ 458-1 (������)','042-583-3946',null,'����',3,36.30023858651266,127.37041128462074);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0011','1234','��ȣġ��ü� ȿ����','���� �곻��1305���� 48 (������)','042-271-7053',null,'����',3,36.280553082794704,127.46509477297353);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0012','1234','�ξ��ڸ���Ȱ��','������ �ż����� 97 (�ż���)','042-861-8691',null,'����',3,36.38954178418265,127.35252892695223);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0013','1234','�� ������','���� ������ 74 (�ھ絿)','042-676-7780',null,'����',3,36.34196382059665,127.4521498404452);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0014','1234','�Ҹ��� ��','���� ������409���� 33 (ȫ����)','042-627-0691',null,'����',3,36.34839280632612,127.42989046928086);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0015','1234','���︶������','���� ������450���� 35 (������)','042-345-3232',null,'����',3,36.35201006199243,127.43458327112805);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0016','1234','���������� ��','����� ������1033���� 64-5 (������)','042-582- 7179',null,'����',3,36.34531387149587,127.41429239811592);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0017','1234','��������Ȩ','�߱� ������� 1388 (��)','042-522-1191',null,'����',3,36.33162209147765,127.41259304178755);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0018','1234','Ǫ����','�߱� ����1603���� 50-8 (��õ��)','070-8828-1592',null,'����',3,36.321059854959124,127.3978737846213);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0019','1234','�游�� ���̵��� ��','�߱� ������� 209-19 (��ȭ��)','042-256-0194',null,'����',3,36.3069207279772,127.40341866927992);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0020','1234','�̻��� �� ����','������ �����160���� 31-9 (������)','042-584-9393',null,'����',3,36.30280471471293,127.32009478462085);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0021','1234','�̻��� �� ����','������ �����124���� 5-10 (������)','042-584-9393',null,'����',3,36.302712722120965,127.31625724044441);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0022','1234','���Ÿ����� ��','������ ������?416 (������)','070-8738-8875',null,'����',3,36.39017185022017,127.33024207112877);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0023','1234','�޻찡���� ��','������ �����106���� 5-12 (������)','042-933-0188',null,'����',3,36.30164093101291,127.31563294044439);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0024','1234','�ֶ�','������ ���2�� 24 (����)','042-321-9093',null,'����',3,36.42133544460191,127.38563542510572);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0025','1234','�������ʴ� ��','���� ����4�� 66 (������)','070-4065-4012',null,'����',3,36.31050358145403,127.3696551999624);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0026','1234','��̰� �ູ�� ��','�߱� ����õ���� 401 (���ﵿ)','042-585-4298',null,'����',3,36.32516279449046,127.43197408277427);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0027','1234','�ູ�� �츮��','�߱� ��л��350���� 102-3(������)','042-585-0191',null,'����',3,36.29705256128544,127.38635334229147);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0028','1234','õ���','������ ������� 473(��뵿)','042-822-0227',null,'����',3,36.36024254005838,127.32359604044571);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0029','1234','�����Ͽ콺','���� �ű�� 100 (������)','��������',null,'����',3,36.30981554632172,127.4570393404445);
Insert into TEAM2_202109M.ORPHANAGE (ORP_NO,ORP_PASS,ORP_NAME,ORP_ADDR,ORP_TEL,ORP_MAIL,ORP_LOCATION,TYPE,ORP_LAT,ORP_LNG) values ('a0003','1234','�Ļ��п�','���� ���� ��������138���� 65-5','042-583-2667','huseng@huseng.com','����',3,36.298201917681844,127.36721504227506);
REM INSERTING into TEAM2_202109M.ORPNOTICE
SET DEFINE OFF;
Insert into TEAM2_202109M.ORPNOTICE (ONOTICE_NO,ORP_NO,ONOTICE_TITLE,ONOTICE_DATE,ONOTICE_CONT) values (1,'a0007','�������Դϴ�',to_date('2021-12-22','YYYY-MM-DD'),'����!!!!');
Insert into TEAM2_202109M.ORPNOTICE (ONOTICE_NO,ORP_NO,ONOTICE_TITLE,ONOTICE_DATE,ONOTICE_CONT) values (7,'a0028','õ����Դϴ�',to_date('2021-12-22','YYYY-MM-DD'),'����');
Insert into TEAM2_202109M.ORPNOTICE (ONOTICE_NO,ORP_NO,ONOTICE_TITLE,ONOTICE_DATE,ONOTICE_CONT) values (5,'a0008','�������Դϴ�',to_date('2021-12-22','YYYY-MM-DD'),'����');
Insert into TEAM2_202109M.ORPNOTICE (ONOTICE_NO,ORP_NO,ONOTICE_TITLE,ONOTICE_DATE,ONOTICE_CONT) values (41,'a0028','12�� 31�� ����� ����� ��ȸ ��������',to_date('2021-12-27','YYYY-MM-DD'),'�ȳ��ϼ���. õ����Դϴ�.

NY VOLUNTEERS�� ����� ����� ��ȸ�� 12/31(��) �����մϴ�.

����� ����� ��ȸ�� �� ���ѽð� ���� ���� ���� ����� ����� �� ��ȸ �Ⱓ ���� ���� ū ����� ����� �� ���ο� ��ȸ �� ������� �ø����� ���� ����� �����Դϴ�.

����� ����� ��ȸ�� ���� �ð��� ���� 10�ú��� ���� 4�ñ��� ����˴ϴ�.

���ѽð� ���� ���� ���� ����� ����� : ���� 2�ú��� 1�ð� ���� ����
��ȸ �Ⱓ ���� ���� ū ����� ����� : ���� 10�ú��� ���� 3�ñ��� ����
���ο� ��ȸ : ���� 11�ú��� ��ʸ�Ʈ �������� ����
������� �ø����� : ���� 10�ú��� ���� 4�ñ��� ����

���ο� ��ȸ ��û�� ���� ���������� Ȯ���� �ֽñ� �ٶ��ϴ�.
 

�����ϴ�.');
Insert into TEAM2_202109M.ORPNOTICE (ONOTICE_NO,ORP_NO,ONOTICE_TITLE,ONOTICE_DATE,ONOTICE_CONT) values (42,'a0028','���ο� ��ȸ ��û ��������',to_date('2021-12-27','YYYY-MM-DD'),'�ȳ��ϼ���. õ����Դϴ�.

12�� 31�� ����Ǵ� ����� ����� ��ȸ�� ���ο� ��⿡ ������ ���� �����մϴ�.

���� �����ο�  : 5��
��� ���� : ���ƺ�, û�ҳ��, ���κη� ������ ����˴ϴ�.

��û��� : 010-4363-4211 �� ����� �Բ� ��� �ο� ������ ���� �ۼ��ؼ� ���� ������

���� ���� �ٶ��ϴ�.');
Insert into TEAM2_202109M.ORPNOTICE (ONOTICE_NO,ORP_NO,ONOTICE_TITLE,ONOTICE_DATE,ONOTICE_CONT) values (21,'a0007','����Ȱ�� ����',to_date('2021-12-23','YYYY-MM-DD'),'����Ȱ�������ؼ������帳�ϴ�
�ƹ��� ������
�ͼ� �����Ͻø� �˴ϴ�.
rhrh ');
REM INSERTING into TEAM2_202109M.REPLYASK
SET DEFINE OFF;
Insert into TEAM2_202109M.REPLYASK (RA_NO,ASK_NO,ORP_NO,RA_DATE,RA_CONT) values (2,2,'a0007',to_date('2021-12-23','YYYY-MM-DD'),'����?');
Insert into TEAM2_202109M.REPLYASK (RA_NO,ASK_NO,ORP_NO,RA_DATE,RA_CONT) values (3,21,'a0007',to_date('2021-12-23','YYYY-MM-DD'),'�ȳ��ϼ�
���� ');
Insert into TEAM2_202109M.REPLYASK (RA_NO,ASK_NO,ORP_NO,RA_DATE,RA_CONT) values (61,81,'a0028',to_date('2021-12-28','YYYY-MM-DD'),'���� ������^^');
Insert into TEAM2_202109M.REPLYASK (RA_NO,ASK_NO,ORP_NO,RA_DATE,RA_CONT) values (81,101,'a0028',to_date('2021-12-29','YYYY-MM-DD'),'����');
Insert into TEAM2_202109M.REPLYASK (RA_NO,ASK_NO,ORP_NO,RA_DATE,RA_CONT) values (21,41,'a0007',to_date('2021-12-27','YYYY-MM-DD'),'�� �½��ϴ�. 
�ƴϿ� ��� �ƴմϴ�.');
Insert into TEAM2_202109M.REPLYASK (RA_NO,ASK_NO,ORP_NO,RA_DATE,RA_CONT) values (41,61,'a0028',to_date('2021-12-27','YYYY-MM-DD'),'�ߺ�Ź��  ');
Insert into TEAM2_202109M.REPLYASK (RA_NO,ASK_NO,ORP_NO,RA_DATE,RA_CONT) values (1,21,'a0007',to_date('2021-12-23','YYYY-MM-DD'),'�����մϴ�');
Insert into TEAM2_202109M.REPLYASK (RA_NO,ASK_NO,ORP_NO,RA_DATE,RA_CONT) values (82,102,'a0028',to_date('2021-12-29','YYYY-MM-DD'),'aa');
REM INSERTING into TEAM2_202109M.REPLYCOM
SET DEFINE OFF;
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (44,19,'�͸�',to_date('2021-12-21','YYYY-MM-DD'),'��ۼ���');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (122,101,'�͸�',to_date('2021-12-27','YYYY-MM-DD'),'�ȳ�');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (141,141,'�۾���',to_date('2021-12-29','YYYY-MM-DD'),'�ȳ�
');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (11,45,'�͸�',to_date('2021-12-20','YYYY-MM-DD'),'asdasd');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (12,45,'�͸�',to_date('2021-12-20','YYYY-MM-DD'),'�ȳ�');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (13,45,'�͸�',to_date('2021-12-20','YYYY-MM-DD'),'�ȳ�');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (16,46,'�͸�',to_date('2021-12-20','YYYY-MM-DD'),'������������');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (143,161,'�۾���',to_date('2021-12-29','YYYY-MM-DD'),'���');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (14,46,'�͸�',to_date('2021-12-20','YYYY-MM-DD'),'g����');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (15,46,'�͸�',to_date('2021-12-20','YYYY-MM-DD'),'g����');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (17,46,'�͸�',to_date('2021-12-20','YYYY-MM-DD'),'������������');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (105,104,'�͸�',to_date('2021-12-23','YYYY-MM-DD'),'��ۼ���');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (64,46,'�͸�',to_date('2021-12-21','YYYY-MM-DD'),'�ȳ� �� �����̾� �����״� ���� �Ȱɾ������� ���ھ� ��');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (142,161,'�۾���',to_date('2021-12-29','YYYY-MM-DD'),'gg');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (133,101,'�۾���',to_date('2021-12-27','YYYY-MM-DD'),'qkqh');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (101,2,'�͸�',to_date('2021-12-23','YYYY-MM-DD'),'��ۼ���');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (127,122,'�۾���',to_date('2021-12-27','YYYY-MM-DD'),'���� �迵��');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (63,46,'�͸�',to_date('2021-12-21','YYYY-MM-DD'),'�߶�� �ҷ��� ��^^');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (1,45,'asdasd',to_date('2012-12-12','YYYY-MM-DD'),'asdasd');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (2,45,'ss',to_date('2012-12-12','YYYY-MM-DD'),'asvasczxvasvczxv');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (81,81,'�͸�',to_date('2021-12-22','YYYY-MM-DD'),'����¡ ȣ�� ����ؿ� ����?');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (54,46,'�͸�',to_date('2021-12-21','YYYY-MM-DD'),'������ �ȳ�');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (42,46,'�͸�',to_date('2021-12-21','YYYY-MM-DD'),'��ۼ���');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (43,46,'�͸�',to_date('2021-12-21','YYYY-MM-DD'),'��ۼ���');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (82,78,'�͸�',to_date('2021-12-22','YYYY-MM-DD'),'��ۼ���');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (80,21,'�͸�',to_date('2021-12-22','YYYY-MM-DD'),'��ۼ���');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (134,123,'�͸�',to_date('2021-12-27','YYYY-MM-DD'),'������');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (132,101,'�͸�',to_date('2021-12-27','YYYY-MM-DD'),'���� ');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (103,46,'�͸�',to_date('2021-12-23','YYYY-MM-DD'),'����ۼ��ǳ�');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (61,46,'�͸�',to_date('2021-12-21','YYYY-MM-DD'),'�ȳ� ���� ťƼ��¦ �տ��¾�^0^ ģ�ϰ� ������!');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (71,45,'�͸�',to_date('2021-12-22','YYYY-MM-DD'),'asdasd');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (86,46,'�͸�',to_date('2021-12-22','YYYY-MM-DD'),'��ä�� �ٺ�!!!!!!!!!');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (72,45,'�͸�',to_date('2021-12-22','YYYY-MM-DD'),'�͸���');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (130,122,'�͸�',to_date('2021-12-27','YYYY-MM-DD'),'���ӿ��̹ٺ�');
Insert into TEAM2_202109M.REPLYCOM (RC_NO,COMMU_NO,STD_ID,RC_DATE,RC_CONT) values (131,122,'�͸�',to_date('2021-12-27','YYYY-MM-DD'),'����� �ٺ�');
REM INSERTING into TEAM2_202109M.REPLYVOL
SET DEFINE OFF;
Insert into TEAM2_202109M.REPLYVOL (RV_NO,VBOARD_NO,GEN_ID,RV_DATE,RV_CONT) values (3,5,'kyh1212',to_date('2021-12-21','YYYY-MM-DD'),'����');
Insert into TEAM2_202109M.REPLYVOL (RV_NO,VBOARD_NO,GEN_ID,RV_DATE,RV_CONT) values (4,5,'kyh1212',to_date('2021-12-21','YYYY-MM-DD'),'�Ϸ�
');
Insert into TEAM2_202109M.REPLYVOL (RV_NO,VBOARD_NO,GEN_ID,RV_DATE,RV_CONT) values (6,7,'kyh1212',to_date('2021-12-22','YYYY-MM-DD'),'asdasd');
Insert into TEAM2_202109M.REPLYVOL (RV_NO,VBOARD_NO,GEN_ID,RV_DATE,RV_CONT) values (61,41,'kyh1212',to_date('2021-12-28','YYYY-MM-DD'),'�Ƹ��ٿ� �� �����մϴ�. ');
Insert into TEAM2_202109M.REPLYVOL (RV_NO,VBOARD_NO,GEN_ID,RV_DATE,RV_CONT) values (81,8,'asdasd',to_date('2021-12-29','YYYY-MM-DD'),'��');
Insert into TEAM2_202109M.REPLYVOL (RV_NO,VBOARD_NO,GEN_ID,RV_DATE,RV_CONT) values (82,8,'asdasd',to_date('2021-12-29','YYYY-MM-DD'),'����');
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
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('ny1067','����','nayoung0713','nayoung0713','01021714067',to_date('1999-07-13','YYYY-MM-DD'),'ny1067@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('eowjs','����','asdasd','������','123123123123',to_date('2021-12-03','YYYY-MM-DD'),'kcs12312@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('id','addr','pass','name','tel',to_date('2021-12-02','YYYY-MM-DD'),'mail',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('��2','������','1234','�̸�','01010101010',to_date('2021-12-22','YYYY-MM-DD'),'����������',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('nnnnn','����','asdasd','��','015621231512',to_date('2021-12-02','YYYY-MM-DD'),'asd@anver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('jhm1234','����','1234asdf','������','010-1111-2222',to_date('2021-12-20','YYYY-MM-DD'),'jhm1234@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('hambugman','����','haubugman','�迵��','01026980488',to_date('1987-04-18','YYYY-MM-DD'),'hambugman@gmail.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('bnmbnm','����','asdasd123!@#','���̿�����','01012345678',to_date('2021-12-02','YYYY-MM-DD'),'kcs212@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('zxczxc2','����','asdasd','asdasd','01012345678',to_date('2021-12-02','YYYY-MM-DD'),'kcs12312@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('zxvqfxvc','����','asdasd123!@#','���̸�','01012345678',to_date('2021-12-02','YYYY-MM-DD'),'kcs12312@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('qweqwe','����','asdasd123!@#','����','01012345678',to_date('2021-12-01','YYYY-MM-DD'),'kcs12312@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('kcs0111','����','assda','���̿�����','01012345678',to_date('2021-12-01','YYYY-MM-DD'),'kcs12312@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('sonyt','����','1234','�տ���','010-1111-1111',to_date('2021-12-01','YYYY-MM-DD'),'sonyt@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('student','����','student1!','������','01021714067',to_date('2021-12-04','YYYY-MM-DD'),'ny1067@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('kyh1212','����','asdasd','�迵��','123123123123',to_date('2021-12-06','YYYY-MM-DD'),'kcs112@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('zxczxc','������ ����','asdasd','������','015625135124',to_date('2021-12-10','YYYY-MM-DD'),'kcs212@naver.com',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('rntjddnjs','������','asdasd','���ο�','132����1��5��',to_date('2021-12-01','YYYY-MM-DD'),'������',2);
Insert into TEAM2_202109M.STUDENT (STD_ID,STD_LOCATION,STD_PASS,STD_NAME,STD_TEL,STD_BIR,STD_MAIL,TYPE) values ('admin','����','djemals123!@#','������','12345678910',to_date('2021-12-01','YYYY-MM-DD'),'admin@gmail.com',2);
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
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (8,'kyh1212','�迵��','����»',to_date('2021-12-22','YYYY-MM-DD'),7);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (10,'kyh1212','1','1',to_date('2021-12-22','YYYY-MM-DD'),0);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (12,'kyh1212','3','3',to_date('2021-12-22','YYYY-MM-DD'),0);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (14,'kyh1212','5','5',to_date('2021-12-22','YYYY-MM-DD'),2);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (61,'common1','õ�����..','���� �о����ϴ�',to_date('2021-12-29','YYYY-MM-DD'),6);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (13,'kyh1212','4','4',to_date('2021-12-22','YYYY-MM-DD'),0);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (9,'kyh1212','����ȫ','��ü',to_date('2021-12-22','YYYY-MM-DD'),2);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (11,'kyh1212','2','2',to_date('2021-12-22','YYYY-MM-DD'),0);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (62,'asdasd','�����ı�','��վ����ϴ�.!',to_date('2021-12-29','YYYY-MM-DD'),3);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (22,'common','common�� �� 2','����
������
������
������
',to_date('2021-12-27','YYYY-MM-DD'),11);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (41,'kyh1212','�ܿ��� �״����..','��ȸ�� ������ �����ϸ� ������ ������ ���� �츮�� ���մϴ�.
������ �� �߿��� ��ŵ��� ���� �� ��ȸ�� �������ӿ� ������ �� �ִ� ��ȸ�� ������ϴ�.
�� ������ ��� ��ġ�� ���� ���� ���� ��ó�� ���������� ������ ���� �� �ϳ��� ��ġ�� �˰� �Ǿ����ϴ�.
�װ��� �ٷ� ���Դϴ�. 
�����մϴ�.',to_date('2021-12-28','YYYY-MM-DD'),9);
Insert into TEAM2_202109M.VOLUNTEERBOARD (VBOARD_NO,GEN_ID,VBOARD_TITLE,VBOARD_CONT,VBOARD_DATE,VBOARD_HIT) values (21,'common','common�� ��','�Ԥ���.',to_date('2021-12-27','YYYY-MM-DD'),11);
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
