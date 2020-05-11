--------------------------------------------------------
--  File created - poniedziałek-maja-11-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CEL_I_DATA_PODROZY
--------------------------------------------------------

  CREATE TABLE "C##FILIP"."CEL_I_DATA_PODROZY" 
   (	"ID_CEL" NUMBER, 
	"KRAJ" VARCHAR2(30 BYTE), 
	"MIASTO" VARCHAR2(30 BYTE), 
	"ADRES" VARCHAR2(30 BYTE), 
	"DATA_WYJAZDU" DATE, 
	"DATA_POWROTU" DATE, 
	"ID_PRZEWOZ" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CENY
--------------------------------------------------------

  CREATE TABLE "C##FILIP"."CENY" 
   (	"ID_CENY" NUMBER, 
	"ILOSC_OSOB" FLOAT(126), 
	"ROZMIAR" FLOAT(126), 
	"WAGA" FLOAT(126), 
	"TYP" FLOAT(126), 
	"UBEZPIECZENIE" FLOAT(126), 
	"DZIEN" FLOAT(126)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FUNKCJA
--------------------------------------------------------

  CREATE TABLE "C##FILIP"."FUNKCJA" 
   (	"ID_FUNKCJA" NUMBER, 
	"FUNKCJA" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ODBIORCA
--------------------------------------------------------

  CREATE TABLE "C##FILIP"."ODBIORCA" 
   (	"ID_ODBIORCA" NUMBER, 
	"IMIE" VARCHAR2(30 BYTE), 
	"NAZWISKO" VARCHAR2(30 BYTE), 
	"PESEL" NUMBER, 
	"KRAJ" VARCHAR2(30 BYTE), 
	"MIASTO" VARCHAR2(30 BYTE), 
	"ADRES" VARCHAR2(30 BYTE), 
	"NR_TEL" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table POJAZDY
--------------------------------------------------------

  CREATE TABLE "C##FILIP"."POJAZDY" 
   (	"ID_POJAZD" NUMBER, 
	"MARKA" VARCHAR2(30 BYTE), 
	"TYP" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRZESYLKA
--------------------------------------------------------

  CREATE TABLE "C##FILIP"."PRZESYLKA" 
   (	"ID_PRZESYLKA" NUMBER, 
	"ID_ODBIORCA" NUMBER, 
	"ID_KLIENT" NUMBER, 
	"ID_TRANSPORT" NUMBER, 
	"NAZWA_PRZESYLKI" VARCHAR2(30 BYTE), 
	"STATUS" VARCHAR2(30 BYTE), 
	"KOSZT" FLOAT(126), 
	"ID_PRACOWNIK" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRZESYLKI_INFO
--------------------------------------------------------

  CREATE TABLE "C##FILIP"."PRZESYLKI_INFO" 
   (	"ID_TRANSPORT" NUMBER, 
	"TYP_PRZESYLKI" VARCHAR2(30 BYTE), 
	"ROZMIAR" VARCHAR2(30 BYTE), 
	"WAGA" FLOAT(126), 
	"UBEZPIECZENIE" CHAR(1 BYTE), 
	"ID_POJAZD" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRZEWOZ_INFO
--------------------------------------------------------

  CREATE TABLE "C##FILIP"."PRZEWOZ_INFO" 
   (	"ID_PRZEWOZ" NUMBER, 
	"ILOSC_OSOB" NUMBER, 
	"UBEZPIECZENIE" CHAR(1 BYTE), 
	"ID_POJAZD" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRZEWOZ_OSOB
--------------------------------------------------------

  CREATE TABLE "C##FILIP"."PRZEWOZ_OSOB" 
   (	"ID_PRZEWOZ_OSOB" NUMBER, 
	"ID_CEL" NUMBER, 
	"ID_KLIENT" NUMBER, 
	"KOSZT" FLOAT(126), 
	"ID_PRACOWNIK" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table UZYTKOWNICY
--------------------------------------------------------

  CREATE TABLE "C##FILIP"."UZYTKOWNICY" 
   (	"ID_UZYTKOWNIK" NUMBER, 
	"LOGIN" VARCHAR2(100 BYTE), 
	"HASLO" VARCHAR2(100 BYTE), 
	"ID_FUNKCJA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table UZYTKOWNIK_KLIENT
--------------------------------------------------------

  CREATE TABLE "C##FILIP"."UZYTKOWNIK_KLIENT" 
   (	"ID_KLIENT" NUMBER, 
	"IMIE" VARCHAR2(20 BYTE), 
	"NAZWISKO" VARCHAR2(20 BYTE), 
	"PESEL" VARCHAR2(20 BYTE), 
	"NR_TEL" NUMBER, 
	"ADRES" VARCHAR2(100 BYTE), 
	"ID_UZYTKOWNIK" NUMBER, 
	"MIASTO" VARCHAR2(20 BYTE), 
	"KRAJ" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table UZYTKOWNIK_PRACOWNIK
--------------------------------------------------------

  CREATE TABLE "C##FILIP"."UZYTKOWNIK_PRACOWNIK" 
   (	"ID_PRACOWNIK" NUMBER, 
	"IMIE" VARCHAR2(20 BYTE), 
	"NAZWISKO" VARCHAR2(20 BYTE), 
	"PESEL" VARCHAR2(20 BYTE), 
	"NR_TEL" NUMBER, 
	"ID_UZYTKOWNIK" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into C##FILIP.CEL_I_DATA_PODROZY
SET DEFINE OFF;
REM INSERTING into C##FILIP.CENY
SET DEFINE OFF;
REM INSERTING into C##FILIP.FUNKCJA
SET DEFINE OFF;
Insert into C##FILIP.FUNKCJA (ID_FUNKCJA,FUNKCJA) values ('1','Obluga paczek');
REM INSERTING into C##FILIP.ODBIORCA
SET DEFINE OFF;
REM INSERTING into C##FILIP.POJAZDY
SET DEFINE OFF;
REM INSERTING into C##FILIP.PRZESYLKA
SET DEFINE OFF;
REM INSERTING into C##FILIP.PRZESYLKI_INFO
SET DEFINE OFF;
REM INSERTING into C##FILIP.PRZEWOZ_INFO
SET DEFINE OFF;
REM INSERTING into C##FILIP.PRZEWOZ_OSOB
SET DEFINE OFF;
REM INSERTING into C##FILIP.UZYTKOWNICY
SET DEFINE OFF;
Insert into C##FILIP.UZYTKOWNICY (ID_UZYTKOWNIK,LOGIN,HASLO,ID_FUNKCJA) values ('1','Filip','Papiernik','1');
REM INSERTING into C##FILIP.UZYTKOWNIK_KLIENT
SET DEFINE OFF;
REM INSERTING into C##FILIP.UZYTKOWNIK_PRACOWNIK
SET DEFINE OFF;
Insert into C##FILIP.UZYTKOWNIK_PRACOWNIK (ID_PRACOWNIK,IMIE,NAZWISKO,PESEL,NR_TEL,ID_UZYTKOWNIK) values ('1','F','P','9','1','1');
--------------------------------------------------------
--  DDL for Index CEL_I_DATA_PODROZY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##FILIP"."CEL_I_DATA_PODROZY_PK" ON "C##FILIP"."CEL_I_DATA_PODROZY" ("ID_CEL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CEL_I_DATA_PODROZY_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##FILIP"."CEL_I_DATA_PODROZY_UK1" ON "C##FILIP"."CEL_I_DATA_PODROZY" ("ID_PRZEWOZ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CENY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##FILIP"."CENY_PK" ON "C##FILIP"."CENY" ("ID_CENY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FINAL_PRZESYLKA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##FILIP"."FINAL_PRZESYLKA_PK" ON "C##FILIP"."PRZESYLKA" ("ID_PRZESYLKA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FUNKCJA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##FILIP"."FUNKCJA_PK" ON "C##FILIP"."FUNKCJA" ("ID_FUNKCJA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ODBIORCA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##FILIP"."ODBIORCA_PK" ON "C##FILIP"."ODBIORCA" ("ID_ODBIORCA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index POJAZDY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##FILIP"."POJAZDY_PK" ON "C##FILIP"."POJAZDY" ("ID_POJAZD") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRZESYLKA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##FILIP"."PRZESYLKA_PK" ON "C##FILIP"."PRZESYLKI_INFO" ("ID_TRANSPORT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRZESYLKA_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##FILIP"."PRZESYLKA_UK1" ON "C##FILIP"."PRZESYLKA" ("ID_TRANSPORT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRZEWOZ_OSOB_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##FILIP"."PRZEWOZ_OSOB_PK" ON "C##FILIP"."PRZEWOZ_OSOB" ("ID_PRZEWOZ_OSOB") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRZEWOZ_OSOB_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##FILIP"."PRZEWOZ_OSOB_UK1" ON "C##FILIP"."PRZEWOZ_OSOB" ("ID_CEL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TYP_PRZEWOZU_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##FILIP"."TYP_PRZEWOZU_PK" ON "C##FILIP"."PRZEWOZ_INFO" ("ID_PRZEWOZ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UZYTKOWNICY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##FILIP"."UZYTKOWNICY_PK" ON "C##FILIP"."UZYTKOWNICY" ("ID_UZYTKOWNIK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UZYTKOWNICY_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##FILIP"."UZYTKOWNICY_UK1" ON "C##FILIP"."UZYTKOWNICY" ("LOGIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UZYTKOWNIK_KLIENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##FILIP"."UZYTKOWNIK_KLIENT_PK" ON "C##FILIP"."UZYTKOWNIK_KLIENT" ("ID_KLIENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UZYTKOWNIK_KLIENT_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##FILIP"."UZYTKOWNIK_KLIENT_UK1" ON "C##FILIP"."UZYTKOWNIK_KLIENT" ("ID_UZYTKOWNIK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UZYTKOWNIK_PRACOWNIK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##FILIP"."UZYTKOWNIK_PRACOWNIK_PK" ON "C##FILIP"."UZYTKOWNIK_PRACOWNIK" ("ID_PRACOWNIK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UZYTKOWNIK_PRACOWNIK_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "C##FILIP"."UZYTKOWNIK_PRACOWNIK_UK1" ON "C##FILIP"."UZYTKOWNIK_PRACOWNIK" ("ID_UZYTKOWNIK") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Procedure ASZUKAJ_PRACOWNIK
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "C##FILIP"."ASZUKAJ_PRACOWNIK" AS 
BEGIN
  NULL;
END ASZUKAJ_PRACOWNIK;

/
--------------------------------------------------------
--  DDL for Function ADODAJ_PRACOWNIK
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "C##FILIP"."ADODAJ_PRACOWNIK" 
(
  IMIE IN VARCHAR2 
, NAZWISKO IN VARCHAR2 
, PESEL IN VARCHAR2 
, NR_TEL IN NUMBER 
) RETURN VARCHAR2 AS 
BEGIN
 INSERT INTO UZYTKOWNIK_PRACOWNIK VALUES (IMIE,NAZWISKO,PESEL,NR_TEL)
  RETURN 'WYNIK'
END ADODAJ_PRACOWNIK;

/
--------------------------------------------------------
--  DDL for Function LOGOWANIE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "C##FILIP"."LOGOWANIE" 
(
  LOGIN IN VARCHAR2 
, HASLO IN VARCHAR2 
) RETURN VARCHAR2 AS 
BEGIN

  RETURN NULL;
END LOGOWANIE;

/
--------------------------------------------------------
--  DDL for Function REJESTRACJA
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "C##FILIP"."REJESTRACJA" 
(
  imie IN VARCHAR2,
  nazwisko IN VARCHAR2, 
  pesel IN VARCHAR2,
  nr_tel IN NUMBER
) 
RETURN VARCHAR2 -- co zwraca funkcja
IS
--zmienne lokalne funkcji
ilosc NUMBER;
BEGIN -- co chcemy aby funkcja wykonywala
IF(length(imie)>0 and length(nazwisko)>0 and length(pesel)>0 and nr_tel>0) THEN
    RETURN 'TRUE';
ELSE
    RETURN 'FALSE';
END IF;
END;

/
--------------------------------------------------------
--  Constraints for Table ODBIORCA
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."ODBIORCA" MODIFY ("ID_ODBIORCA" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."ODBIORCA" MODIFY ("IMIE" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."ODBIORCA" MODIFY ("NAZWISKO" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."ODBIORCA" MODIFY ("PESEL" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."ODBIORCA" MODIFY ("KRAJ" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."ODBIORCA" MODIFY ("MIASTO" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."ODBIORCA" MODIFY ("ADRES" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."ODBIORCA" MODIFY ("NR_TEL" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."ODBIORCA" ADD CONSTRAINT "ODBIORCA_PK" PRIMARY KEY ("ID_ODBIORCA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FUNKCJA
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."FUNKCJA" MODIFY ("ID_FUNKCJA" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."FUNKCJA" MODIFY ("FUNKCJA" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."FUNKCJA" ADD CONSTRAINT "FUNKCJA_PK" PRIMARY KEY ("ID_FUNKCJA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRZEWOZ_OSOB
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."PRZEWOZ_OSOB" MODIFY ("ID_PRZEWOZ_OSOB" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZEWOZ_OSOB" MODIFY ("ID_CEL" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZEWOZ_OSOB" MODIFY ("ID_KLIENT" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZEWOZ_OSOB" ADD CONSTRAINT "PRZEWOZ_OSOB_PK" PRIMARY KEY ("ID_PRZEWOZ_OSOB")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##FILIP"."PRZEWOZ_OSOB" MODIFY ("KOSZT" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZEWOZ_OSOB" ADD CONSTRAINT "PRZEWOZ_OSOB_UK1" UNIQUE ("ID_CEL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##FILIP"."PRZEWOZ_OSOB" MODIFY ("ID_PRACOWNIK" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table UZYTKOWNIK_PRACOWNIK
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."UZYTKOWNIK_PRACOWNIK" MODIFY ("ID_PRACOWNIK" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."UZYTKOWNIK_PRACOWNIK" MODIFY ("IMIE" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."UZYTKOWNIK_PRACOWNIK" MODIFY ("NAZWISKO" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."UZYTKOWNIK_PRACOWNIK" MODIFY ("PESEL" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."UZYTKOWNIK_PRACOWNIK" MODIFY ("NR_TEL" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."UZYTKOWNIK_PRACOWNIK" ADD CONSTRAINT "UZYTKOWNIK_PRACOWNIK_PK" PRIMARY KEY ("ID_PRACOWNIK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##FILIP"."UZYTKOWNIK_PRACOWNIK" ADD CONSTRAINT "UZYTKOWNIK_PRACOWNIK_UK1" UNIQUE ("ID_UZYTKOWNIK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##FILIP"."UZYTKOWNIK_PRACOWNIK" MODIFY ("ID_UZYTKOWNIK" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CEL_I_DATA_PODROZY
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."CEL_I_DATA_PODROZY" MODIFY ("ID_CEL" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."CEL_I_DATA_PODROZY" MODIFY ("KRAJ" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."CEL_I_DATA_PODROZY" MODIFY ("MIASTO" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."CEL_I_DATA_PODROZY" MODIFY ("ADRES" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."CEL_I_DATA_PODROZY" MODIFY ("DATA_WYJAZDU" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."CEL_I_DATA_PODROZY" MODIFY ("DATA_POWROTU" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."CEL_I_DATA_PODROZY" MODIFY ("ID_PRZEWOZ" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."CEL_I_DATA_PODROZY" ADD CONSTRAINT "CEL_I_DATA_PODROZY_PK" PRIMARY KEY ("ID_CEL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##FILIP"."CEL_I_DATA_PODROZY" ADD CONSTRAINT "CEL_I_DATA_PODROZY_UK1" UNIQUE ("ID_PRZEWOZ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRZESYLKA
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."PRZESYLKA" MODIFY ("ID_PRZESYLKA" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZESYLKA" ADD CONSTRAINT "FINAL_PRZESYLKA_PK" PRIMARY KEY ("ID_PRZESYLKA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##FILIP"."PRZESYLKA" MODIFY ("ID_ODBIORCA" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZESYLKA" MODIFY ("ID_TRANSPORT" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZESYLKA" MODIFY ("ID_KLIENT" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZESYLKA" MODIFY ("NAZWA_PRZESYLKI" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZESYLKA" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZESYLKA" MODIFY ("KOSZT" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZESYLKA" MODIFY ("ID_PRACOWNIK" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZESYLKA" ADD CONSTRAINT "PRZESYLKA_UK1" UNIQUE ("ID_TRANSPORT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table UZYTKOWNICY
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."UZYTKOWNICY" MODIFY ("ID_UZYTKOWNIK" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."UZYTKOWNICY" ADD CONSTRAINT "UZYTKOWNICY_PK" PRIMARY KEY ("ID_UZYTKOWNIK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##FILIP"."UZYTKOWNICY" MODIFY ("ID_FUNKCJA" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."UZYTKOWNICY" MODIFY ("LOGIN" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."UZYTKOWNICY" MODIFY ("HASLO" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."UZYTKOWNICY" ADD CONSTRAINT "UZYTKOWNICY_UK1" UNIQUE ("LOGIN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRZEWOZ_INFO
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."PRZEWOZ_INFO" MODIFY ("ID_PRZEWOZ" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZEWOZ_INFO" MODIFY ("ILOSC_OSOB" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZEWOZ_INFO" MODIFY ("UBEZPIECZENIE" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZEWOZ_INFO" ADD CONSTRAINT "TYP_PRZEWOZU_PK" PRIMARY KEY ("ID_PRZEWOZ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##FILIP"."PRZEWOZ_INFO" MODIFY ("ID_POJAZD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRZESYLKI_INFO
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."PRZESYLKI_INFO" MODIFY ("ID_TRANSPORT" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZESYLKI_INFO" ADD CONSTRAINT "PRZESYLKA_PK" PRIMARY KEY ("ID_TRANSPORT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##FILIP"."PRZESYLKI_INFO" MODIFY ("UBEZPIECZENIE" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZESYLKI_INFO" MODIFY ("TYP_PRZESYLKI" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZESYLKI_INFO" MODIFY ("ROZMIAR" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZESYLKI_INFO" MODIFY ("WAGA" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."PRZESYLKI_INFO" MODIFY ("ID_POJAZD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CENY
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."CENY" MODIFY ("ID_CENY" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."CENY" MODIFY ("ILOSC_OSOB" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."CENY" MODIFY ("ROZMIAR" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."CENY" MODIFY ("WAGA" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."CENY" MODIFY ("TYP" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."CENY" MODIFY ("UBEZPIECZENIE" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."CENY" MODIFY ("DZIEN" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."CENY" ADD CONSTRAINT "CENY_PK" PRIMARY KEY ("ID_CENY")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table UZYTKOWNIK_KLIENT
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."UZYTKOWNIK_KLIENT" MODIFY ("ID_KLIENT" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."UZYTKOWNIK_KLIENT" ADD CONSTRAINT "UZYTKOWNIK_KLIENT_PK" PRIMARY KEY ("ID_KLIENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##FILIP"."UZYTKOWNIK_KLIENT" MODIFY ("IMIE" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."UZYTKOWNIK_KLIENT" MODIFY ("NAZWISKO" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."UZYTKOWNIK_KLIENT" MODIFY ("PESEL" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."UZYTKOWNIK_KLIENT" MODIFY ("NR_TEL" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."UZYTKOWNIK_KLIENT" MODIFY ("ADRES" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."UZYTKOWNIK_KLIENT" ADD CONSTRAINT "UZYTKOWNIK_KLIENT_UK1" UNIQUE ("ID_UZYTKOWNIK")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "C##FILIP"."UZYTKOWNIK_KLIENT" MODIFY ("MIASTO" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."UZYTKOWNIK_KLIENT" MODIFY ("KRAJ" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."UZYTKOWNIK_KLIENT" MODIFY ("ID_UZYTKOWNIK" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POJAZDY
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."POJAZDY" MODIFY ("ID_POJAZD" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."POJAZDY" MODIFY ("MARKA" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."POJAZDY" MODIFY ("TYP" NOT NULL ENABLE);
  ALTER TABLE "C##FILIP"."POJAZDY" ADD CONSTRAINT "POJAZDY_PK" PRIMARY KEY ("ID_POJAZD")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CEL_I_DATA_PODROZY
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."CEL_I_DATA_PODROZY" ADD CONSTRAINT "CEL_I_DATA_PODROZY_FK1" FOREIGN KEY ("ID_PRZEWOZ")
	  REFERENCES "C##FILIP"."PRZEWOZ_INFO" ("ID_PRZEWOZ") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRZESYLKA
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."PRZESYLKA" ADD CONSTRAINT "PRZESYLKA_FK1" FOREIGN KEY ("ID_TRANSPORT")
	  REFERENCES "C##FILIP"."PRZESYLKI_INFO" ("ID_TRANSPORT") ENABLE;
  ALTER TABLE "C##FILIP"."PRZESYLKA" ADD CONSTRAINT "PRZESYLKA_FK2" FOREIGN KEY ("ID_ODBIORCA")
	  REFERENCES "C##FILIP"."ODBIORCA" ("ID_ODBIORCA") ENABLE;
  ALTER TABLE "C##FILIP"."PRZESYLKA" ADD CONSTRAINT "PRZESYLKA_FK3" FOREIGN KEY ("ID_KLIENT")
	  REFERENCES "C##FILIP"."UZYTKOWNIK_KLIENT" ("ID_KLIENT") ENABLE;
  ALTER TABLE "C##FILIP"."PRZESYLKA" ADD CONSTRAINT "PRZESYLKA_FK4" FOREIGN KEY ("ID_PRACOWNIK")
	  REFERENCES "C##FILIP"."UZYTKOWNIK_PRACOWNIK" ("ID_PRACOWNIK") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRZESYLKI_INFO
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."PRZESYLKI_INFO" ADD CONSTRAINT "PRZESYLKI_INFO_FK1" FOREIGN KEY ("ID_POJAZD")
	  REFERENCES "C##FILIP"."POJAZDY" ("ID_POJAZD") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRZEWOZ_INFO
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."PRZEWOZ_INFO" ADD CONSTRAINT "PRZEWOZ_INFO_FK1" FOREIGN KEY ("ID_POJAZD")
	  REFERENCES "C##FILIP"."POJAZDY" ("ID_POJAZD") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRZEWOZ_OSOB
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."PRZEWOZ_OSOB" ADD CONSTRAINT "PRZEWOZ_OSOB_FK1" FOREIGN KEY ("ID_CEL")
	  REFERENCES "C##FILIP"."CEL_I_DATA_PODROZY" ("ID_CEL") ENABLE;
  ALTER TABLE "C##FILIP"."PRZEWOZ_OSOB" ADD CONSTRAINT "PRZEWOZ_OSOB_FK2" FOREIGN KEY ("ID_KLIENT")
	  REFERENCES "C##FILIP"."UZYTKOWNIK_KLIENT" ("ID_KLIENT") ENABLE;
  ALTER TABLE "C##FILIP"."PRZEWOZ_OSOB" ADD CONSTRAINT "PRZEWOZ_OSOB_FK3" FOREIGN KEY ("ID_PRACOWNIK")
	  REFERENCES "C##FILIP"."UZYTKOWNIK_PRACOWNIK" ("ID_PRACOWNIK") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table UZYTKOWNICY
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."UZYTKOWNICY" ADD CONSTRAINT "UZYTKOWNICY_FK1" FOREIGN KEY ("ID_FUNKCJA")
	  REFERENCES "C##FILIP"."FUNKCJA" ("ID_FUNKCJA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table UZYTKOWNIK_KLIENT
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."UZYTKOWNIK_KLIENT" ADD CONSTRAINT "UZYTKOWNIK_KLIENT_FK1" FOREIGN KEY ("ID_UZYTKOWNIK")
	  REFERENCES "C##FILIP"."UZYTKOWNICY" ("ID_UZYTKOWNIK") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table UZYTKOWNIK_PRACOWNIK
--------------------------------------------------------

  ALTER TABLE "C##FILIP"."UZYTKOWNIK_PRACOWNIK" ADD CONSTRAINT "UZYTKOWNIK_PRACOWNIK_FK1" FOREIGN KEY ("ID_UZYTKOWNIK")
	  REFERENCES "C##FILIP"."UZYTKOWNICY" ("ID_UZYTKOWNIK") ENABLE;
