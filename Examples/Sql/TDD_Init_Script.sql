-- Active: 1668187026354@@localhost@3306@ufr_asso

DELETE FROM `ufr_asso`.`aso_has_evt`;
DELETE FROM `ufr_asso`.`usr_has_aso_and_rol`;
DELETE FROM  `ufr_asso`.`rol`;
DELETE FROM  `ufr_asso`.`aso`;
DELETE FROM  `ufr_asso`.`usr`;


-- ------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Users
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Unique Key

-- First, Name, Email
-- Student number

-- ALTER TABLE `ufr_asso`.`usr` MODIFY COLUMN TMP_PWD	BOOLEAN	NOT NULL	COMMENT "True if the Password set in PWS is tempory and need to be changed at the next connection";
-- ALTER TABLE `ufr_asso`.`usr` MODIFY COLUMN NTF		BOOLEAN	NOT NULL	COMMENT "True if the user accepts the notifications";
-- ALTER TABLE `ufr_asso`.`usr` MODIFY COLUMN PHN_BOK	BOOLEAN	NOT NULL	COMMENT "True if the user accepts to appear in the facebook";

-- ALTER TABLE `ufr_asso`.`usr` ADD CONSTRAINT `CHK_USR_EML` CHECK (`EML` REGEXP "^[a-zA-Z0-9][a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]*?[a-zA-Z0-9._-]?@[a-zA-Z0-9][a-zA-Z0-9._-]*?[a-zA-Z0-9]?\\.[a-zA-Z]{2,63}$");

INSERT INTO `ufr_asso`.`usr` (LST_NAM, FST_NAM, STU_NBR, GDR, EML, PHN_NBR, PHN_BOK, PWD, TMP_PWD, NTF, PRF_PIC, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES

-- Happy flow
-- ~~~~~~~~~~~~

-- NOT A STUDENT
-- =============

-- Minimal User 01 : Not a Student / No Gender / Email 1 / No Phone Number / Not in Facebook / Password / Temporary password / Refuse notification / No Picture
	('MU01-NS', 'NO_PIC'	, null,	null	, 'email_01@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', TRUE	, FALSE	, null	, 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 02 : Not a Student / Female / Email 1 / No Phone Number / Not in Facebook / Password / Temporary password / Refuse notification / No Picture
,	('MU02-NS', 'NO_PIC'	, null,	'F'	, 'email_01@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', TRUE	, FALSE	, null	, 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 03 : Not a Student / Male / Email 1 / No Phone Number / Not in Facebook / Password / Temporary password / Refuse notification / Picture
,	('MU03-NS', 'WITH_PIC'	, null,	'M'	, 'email_01@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', TRUE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 04 : Not a Student / Other / Email 1 / No Phone Number / Not in Facebook / Password / Permament password / Refuse notification / Picture
,	('MU04-NS', 'WITH_PIC'	, null,	'O'	, 'email_01@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 05 : Not a Student / Male / Email 2 / No Phone Number / Not in Facebook / Password / Permament password / Refuse notification / Picture
,	('MU05-NS', 'WITH_PIC'	, null,	'M'	, 'email_02@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 06 : : Not a Student / Male / (variable) / No Phone Number / Not in Facebook / Password / Permament password / (variable) notification / No Picture
-- Same family, First Name A - Email 3 
,	('MU06-NS', 'First Name - A'	, null,	'M'	, 'email_03@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, TRUE	, null	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
-- Same family, First Name B - Email 3 
,	('MU06-NS', 'First Name - B'	, null,	'M'	, 'email_03@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, TRUE	, null	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
-- Same family, First Name B - Email 4 
,	('MU06-NS', 'First Name - B'	, null,	'M'	, 'email_04@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, null	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 40 : Not a Student / Other / Email 90 / '+330102030405' / In Facebook / Accept notification / Password / Temporary password / Accept notification / Picture
,	('FU40-NS', 'FULL USER'	, null, 'O'	, 'email_40@gmail.com', '+330102030405', TRUE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', TRUE	, TRUE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 07 - 14 : Not a Student / Male / Email 7 / No Phone Number / Not in Facebook / Password / Permament password / Refuse notification / Picture
,	('MU07-NS', 'WITH_PIC'	, null,	'M'	, 'email_07@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('MU08-NS', 'WITH_PIC'	, null,	'M'	, 'email_08@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('MU09-NS', 'WITH_PIC'	, null,	'M'	, 'email_09@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('MU10-NS', 'WITH_PIC'	, null,	'M'	, 'email_10@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('MU11-NS', 'WITH_PIC'	, null,	'M'	, 'email_11@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('MU12-NS', 'WITH_PIC'	, null,	'M'	, 'email_12@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('MU13-NS', 'WITH_PIC'	, null,	'M'	, 'email_13@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('MU14-NS', 'WITH_PIC'	, null,	'M'	, 'email_14@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
;

-- STUDENT
-- =============

-- Minimal User 51 : Student nbr 001 / No Gender / Email 51 / No Phone Number / Not in Facebook / Password / Temporary Password / Refuse notification / No Picture
,	('MU51-S', 'NO_PIC'	, '001', null	, 'email_51@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', TRUE	, FALSE	, null	, 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 52 : Student nbr 002 / Female / Email 51 / No Phone Number / Not in Facebook / Password / Temporary Password / Accept notification / No Picture
,	('MU52-S', 'NO_PIC'	, '002', 'F'	, 'email_51@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', TRUE	, TRUE	, null	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 53 : Student nbr 003 / Male / Email 51 / No Phone Number / Not in Facebook / Password / Temporary Password / Refuse notification / Picture
,	('MU53-S', 'WITH_PIC'	, '003', 'M'	, 'email_51@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', TRUE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 54 : Student nbr 004 / Other / Email 51 / No Phone Number / Not in Facebook / Password / Permament Password / Refuse notification / Picture
,	('MU54-S', 'WITH_PIC'	, '004', 'O'	, 'email_51@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 55 : Student nbr 005 / Male / Email 52 / No Phone Number / Not in Facebook / Password / Permament Password / Refuse notification / Picture
,	('MU55-S', 'WITH_PIC'	, '005', 'M'	, 'email_52@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Full User 90 : Student nbr 005 / Other / Email 90 / '+330102030405' / In Facebook / Accept notification / Password / Temporary password / Refuse notification / Picture
,	('FU90-S', 'FULL USER'	, '999', 'O'	, 'email_90@gmail.com', '+330102030405', TRUE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', TRUE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

;

-- Failing flow
-- ~~~~~~~~~~~~

-- First name or Last Name or email with 0 characters

-- Email is not well formatted

-- Student number already used

-- Student + (First Name, Last Name, Email) already used

-- Not Student + (First Name, Last Name, Email) already used

-- Gender not in the ENUM ('M','F','O', null)

-- Field null while NOT NULL

-- Field length exceeded

-- Wrong field type




-- ------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Organisation
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Unique Key

-- SIRET number

-- Happy flow
-- ~~~~~~~~~~~~

INSERT INTO `ufr_asso`.`aso` (NAM, MBR_PCE, SIR_NBR, LGO, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES

	('ASSO_00'	, 0		, '123456789'		, null												,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_01'	, 1		, '12345678901230'	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_01.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_02'	, 1.5		, '12345678901231'	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_02.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_03'	, 3		, '12345678901232'	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_03.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_04'	, 52		, '12345678901233'	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_04.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_05'	, 16.5		, '12345678901234'	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_05.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_06'	, 0.5		, '12345678901235'	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_06.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_07'	, 12.5		, '12345678901236'	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_07.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_08'	, 8.1		, '12345678901237'	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_08.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_09'	, 10.51		, '12345678901238'	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_02.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

,	('ASSO_SAME_NAME', 1		, '00000000000001'	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_05.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_SAME_NAME', 110		, '00000000000002'	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_05.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_SAME_NAME', 9.5		, '00000000000003'	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_06.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
;

-- Failing flow
-- ~~~~~~~~~~~~

-- Organisation name with 0 characters

-- SIRET/SIREN already used

-- SIRET/SIREN is not a number

-- Field null while NOT NULL

-- Field length exceeded

-- Wrong field type

-- Price : Value negative

-- SIRET/SIREN : Field length less than 9 or longer than l4

-- SIRET/SIREN : With alpha characters




-- ------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Roles
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE `ufr_asso`.`rol` MODIFY COLUMN NAM	VARCHAR(25) NOT NULL COMMENT 'List of roles among [ADMIN , MEMBER, CANDIDATE, PRESIDENT, VICE-PRESIDENT, TREASURER, SECRETARY]. All roles but ADMIN required the user to be associated with an organisation';

INSERT INTO `ufr_asso`.`rol` (NAM, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES

-- Happy flow
-- ~~~~~~~~~~~~

-- Not related to an 'Organisation' (table 'ASO')
	('APP_ADMIN'      , 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Related to an 'Organisation' (table ASO')
,	('ADMIN'         	, 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('MEMBER'        	, 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('CANDIDATE'     	, 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('REFUSED'     		, 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('PRESIDENT'     	, 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('TREASURER'     	, 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('SECRETARY'     	, 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('VICE-PRESIDENT'	, 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
;

-- Failing flow
-- ~~~~~~~~~~~~

-- Insert 'null' in NAM
-- INSERT INTO `ufr_asso`.`rol` (NAM, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES (null	, 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() );



-- ------------------------------------------------------------------------------------------------------------------------------------------------------------
-- User / Organisation / Role
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------

-- NOTE : 'Admin' without an Organisation is restricted to the Global product Admins

-- 'Organisation' creation workflow (followed but for the 'Admin' role):
-- 1) User creates an account on the Application
-- 2) User creates an Organisation
-- 3) He'll be the 'Admin' (and a 'Member' ???) of the Organisation



-- Subscription workflow (followed but for the 'Admin' role):
-- 1) User creates an account on the Application
-- 2) User search the Organisation he wants to subscribe to
-- 3) User ask for a subscription. It will be a 'Candidate'
-- 4) 'Admin', 'President', 'Vice-President', 'Treasurer' or 'Secretary' will validate or reject the Subscription
-- 5) If validated the user is now an 'Admin', and/or a 'Member'

-- 6) Option : Others roles like 'Admin', 'President', ... can be set at the same time or after, but only with the 'Member' role together


-- Unique Key

-- User, Organisation (nullable), Role

-- Happy flow
-- ~~~~~~~~~~~~

INSERT INTO `ufr_asso`.`usr_has_aso_and_rol` (USR_ROW_IDT, ASO_ROW_IDT, ROL_ROW_IDT, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES

-- APP_ADMIN role set to a 'Not student' user (GLOBAL ADMIN role cannot be linked to an organisation)

  ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU01-NS'	), null							, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )

-- APP_ADMIN role set to a 'Student' user (GLOBAL ADMIN role cannot be linked to an organisation)

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU51-S'	), null							, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )



-- ADMIN role set to a 'Not student' user on ASSO_01

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU01-NS'	), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_01') , (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )

-- ADMIN role set to a 'Student' user on ASSO_02, and has no other role

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'FU90-S'	), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_02') , (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )


-- PRESIDENT role set to a 'Not student' user and an organisation

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU02-NS'	), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_01')	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'PRESIDENT'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )

-- VICE-PRESIDENT role set to a 'Not student' user and an organisation

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU03-NS'	), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_01')	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'VICE-PRESIDENT'	), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )

-- TREASURER role set to a 'Not student' user and an organisation

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU04-NS'	), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_01')	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'TREASURER'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )

-- SECRETARY role set to a 'Not student' user and an organisation

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU05-NS'	), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_01')	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'SECRETARY'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )



-- PRESIDENT role set to a 'Student' user and an organisation

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU52-S'	), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_02')	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'PRESIDENT'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )

-- VICE-PRESIDENT role set to a 'Student' user and an organisation

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU53-S'	), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_02')	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'VICE-PRESIDENT'	), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )

-- TREASURER role set to a 'Student' user and an organisation

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU54-S'	), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_02')	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'TREASURER'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )

-- SECRETARY role set to a 'Student' user and an organisation

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU55-S'	), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_02')	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'SECRETARY'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )

-- CANDIDATE role set to a 'Not student' user and an organisation

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU06-NS' AND FST_NAM = 'First Name - B' AND EML = 'email_03@gmail.com'), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_01')	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'CANDIDATE'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )

-- MEMBER role set to a 'Not student' user and an organisation

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU07-NS' ), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_01')	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )



-- CANDIDATE role set to a 'Student' user and an organisation

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU56-S'	), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_02')	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'CANDIDATE'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )

-- MEMBER role set to a 'Student' user and an organisation

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU57-S'	), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_02')	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )
;








-- Failing flow
-- ~~~~~~~~~~~~

-- ADMIN role set to a 'Student' user AND an organisation !

-- , ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU52-S'), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_01')	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )

-- Several PRESIDENT role set into the same organisation

-- Several VICE-PRESIDENT role set into the same organisation

-- Several TREASURER role set into the same organisation

-- Several SECRETARY role set into the same organisation

-- PRESIDENT or Staff members not MEMBER (only ADMIN can be NOT MEMBER)

-- PRESIDENT role set to a user but no organisation

-- VICE-PRESIDENT role set to a user but no organisation

-- TREASURER role set to a user but no organisation

-- SECRETARY role set to a user but no organisation

-- CANDIDATE role set to a user but no organisation

-- MEMBER role set to a user but no organisation


-- Could a 'Not Student' be 'President', etc ?


-- MEMBER + CANDIDATE to the same user in the same organisation






COMMIT;