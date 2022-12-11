-- Active: 1668187026354@@localhost@3306@ufr_asso

DELETE FROM `ufr_asso`.`aso_has_evt`;
DELETE FROM `ufr_asso`.`usr_has_aso_and_rol`;
DELETE FROM  `ufr_asso`.`rol`;
DELETE FROM  `ufr_asso`.`aso`;
DELETE FROM  `ufr_asso`.`usr`;
DELETE FROM `ufr_asso`.`evt`;

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

INSERT INTO `ufr_asso`.`usr`		(PSD, LST_NAM, FST_NAM, STU_NBR, GDR, EML, PHN_NBR, PHN_BOK, PWD, TMP_PWD, NTF, PRF_PIC, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES

-- Happy flow
-- ~~~~~~~~~~~~

-- NOT A STUDENT
-- =============

-- Minimal User 01 : Not a Student / No Gender / Email 1 / No Phone Number / Not in facebook / Password / Temporary password / Refuse notification / No Picture
	(CONV(generateId_User(), 10, 36), 'MU01-NS', 'NO_PIC'	, null,	null	, 'email_01@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', TRUE	, FALSE	, null	, 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 02 : Not a Student / Female / Email 1 / No Phone Number / Not in facebook / Password / Temporary password / Refuse notification / No Picture
,	(CONV(generateId_User(), 10, 36),'MU02-NS', 'NO_PIC'	, null,	'F'	, 'email_01@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', TRUE	, FALSE	, null	, 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 03 : Not a Student / Male / Email 1 / No Phone Number / Not in facebook / Password / Temporary password / Refuse notification / Picture
,	(CONV(generateId_User(), 10, 36),'MU03-NS', 'WITH_PIC'	, null,	'M'	, 'email_01@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', TRUE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 04 : Not a Student / Other / Email 1 / No Phone Number / Not in facebook / Password / Permament password / Refuse notification / Picture
,	(CONV(generateId_User(), 10, 36),'MU04-NS', 'WITH_PIC'	, null,	'O'	, 'email_01@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 05 : Not a Student / Male / Email 2 / No Phone Number / Not in facebook / Password / Permament password / Refuse notification / Picture
,	(CONV(generateId_User(), 10, 36),'MU05-NS', 'WITH_PIC'	, null,	'M'	, 'email_02@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Users with the same Last Name : Not a Student / Male / (variable) / No Phone Number / Not in facebook / Password / Permament password / (variable) notification / No Picture
-- Same family, First Name A - Email 01 
,	(CONV(generateId_User(), 10, 36),'SAME-NS', 'First Name - A'	, null,	'M'	, 'email_same_01@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, TRUE	, null	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
-- Same family, First Name B - Email 01 
,	(CONV(generateId_User(), 10, 36),'SAME-NS', 'First Name - B'	, null,	'M'	, 'email_same_01@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, TRUE	, null	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
-- Same family, First Name B - Email 02
,	(CONV(generateId_User(), 10, 36),'SAME-NS', 'First Name - B'	, null,	'M'	, 'email_same_02@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, null	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 40 : Not a Student / Other / Email 90 / '+330102030405' / In facebook / Accept notification / Password / Temporary password / Accept notification / Picture
,	(CONV(generateId_User(), 10, 36),'FU40-NS', 'FULL USER'	, null, 'O'	, 'email_FU40@gmail.com', '+330102030405', TRUE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', TRUE	, TRUE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- STUDENT
-- =============

-- Minimal User 51 : Student nbr 001 / No Gender / Email 51 / No Phone Number / Not in facebook / Password / Temporary Password / Refuse notification / No Picture
,	(CONV(generateId_User(), 10, 36),'MU51-S', 'NO_PIC'	, '001', null	, 'email_51@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', TRUE	, FALSE	, null	, 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 52 : Student nbr 002 / Female / Email 51 / No Phone Number / Not in facebook / Password / Temporary Password / Accept notification / No Picture
,	(CONV(generateId_User(), 10, 36),'MU52-S', 'NO_PIC'	, '002', 'F'	, 'email_51@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', TRUE	, TRUE	, null	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 53 : Student nbr 003 / Male / Email 51 / No Phone Number / Not in facebook / Password / Temporary Password / Refuse notification / Picture
,	(CONV(generateId_User(), 10, 36),'MU53-S', 'WITH_PIC'	, '003', 'M'	, 'email_51@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', TRUE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 54 : Student nbr 004 / Other / Email 51 / No Phone Number / Not in facebook / Password / Permament Password / Refuse notification / Picture
,	(CONV(generateId_User(), 10, 36),'MU54-S', 'WITH_PIC'	, '004', 'O'	, 'email_51@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 55 : Student nbr 005 / Male / Email 52 / No Phone Number / Not in facebook / Password / Permament Password / Refuse notification / Picture
,	(CONV(generateId_User(), 10, 36),'MU55-S', 'WITH_PIC'	, '005', 'M'	, 'email_52@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 56 : Student nbr 005 / Male / Email 56 / No Phone Number / Not in facebook / Password / Permament Password / Refuse notification / Picture
,	(CONV(generateId_User(), 10, 36),'MU56-S', 'WITH_PIC'	, '006', 'M'	, 'email_56@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Minimal User 57 : Student nbr 005 / Male / Email 57 / No Phone Number / Not in facebook / Password / Permament Password / Refuse notification / Picture
,	(CONV(generateId_User(), 10, 36),'MU57-S', 'WITH_PIC'	, '007', 'M'	, 'email_57@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- Full User 90 : Student nbr 005 / Other / Email 90 / '+330102030405' / In facebook / Accept notification / Password / Temporary password / Refuse notification / Picture
,	(CONV(generateId_User(), 10, 36),'FU90-S', 'FULL USER'	, '999', 'O'	, 'email_90@gmail.com', '+330102030405', TRUE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', TRUE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
;
-- Full User TEST : Student nbr 005 / Other / Email 90 / '+330102030405' / In facebook / Accept notification / Password / Temporary password / Refuse notification / Picture
INSERT INTO `ufr_asso`.`usr` (PSD, LST_NAM, FST_NAM, STU_NBR, GDR, EML, PHN_NBR, PHN_BOK, PWD, TMP_PWD, NTF, PRF_PIC, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES ('TEST','FU90-S', 'FULL USER', '987659', 'O', 'test@gmail.com', '+330102030405', TRUE, 'test', TRUE, FALSE, NULL,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW());


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


-- TEST DATA SET : Users from UFR_ASSO_Tests.xlsx
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

INSERT INTO `ufr_asso`.`usr` (PSD, LST_NAM, FST_NAM, STU_NBR, GDR, EML, PHN_NBR, PHN_BOK, PWD, TMP_PWD, NTF, PRF_PIC, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES
     ('Z0001', 'TST01-NS', 'Visiteur'  , null, 'M', 'visiteur.user@gmail.com'      , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0002', 'TST02-NS', 'Zeus'      , null, 'M', 'zeus.user@gmail.com'          , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0003', 'TST03-NS', 'Thor'      , null, 'M', 'thor.user@gmail.com'          , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0004', 'TST04-NS', 'Galis'     , null, 'M', 'galis.user@gmail.com'         , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0005', 'TST05-NS', 'Bboy'      , null, 'M', 'bboy.user@gmail.com'          , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0006', 'TST06-NS', 'Frigiel'   , null, 'M', 'frigiel.user@gmail.com'       , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0007', 'TST07-NS', 'Siphano'   , null, 'M', 'siphano.user@gmail.com'       , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0008', 'TST08-NS', 'Fuze'      , null, 'M', 'fuze.user@gmail.com'          , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0009', 'TST09-NS', 'Farine'    , null, 'M', 'farine.user@gmail.com'        , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000A', 'TST10-NS', 'Miroredge' , null, 'M', 'miroredge.user@gmail.com'     , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000B', 'TST11-NS', 'Corsair'   , null, 'M', 'corsair.user@gmail.com'       , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000C', 'TST12-NS', 'Nvidia'    , null, 'M', 'nvidia.user@gmail.com'        , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000D', 'TST13-NS', 'Ubuntu'    , null, 'M', 'ubuntu.user@gmail.com'        , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000E', 'TST14-NS', 'Windows'   , null, 'M', 'windows.user@gmail.com'       , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000F', 'TST15-NS', 'Unix'      , null, 'M', 'unix.user@gmail.com'          , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000G', 'TST16-NS', 'Android'   , null, 'M', 'android.user@gmail.com'       , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000H', 'TST17-NS', 'Ios'       , null, 'M', 'ios.user@gmail.com'           , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000I', 'TST18-NS', 'Samsung'   , null, 'M', 'samsung.user@gmail.com'       , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000J', 'TST19-NS', 'Apple'     , null, 'M', 'apple.user@gmail.com'         , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000K', 'TST20-NS', 'Wiko'      , null, 'M', 'wiko.user@gmail.com'          , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000L', 'TST21-NS', 'Xiomi'     , null, 'M', 'xiomi.user@gmail.com'         , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000M', 'TST22-S' , 'Yanis'     , null, 'M', 'yanis.user@gmail.com'         , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000N', 'TST23-S' , 'Oscar'     , null, 'M', 'oscar.user@gmail.com'         , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000O', 'TST24-S' , 'Valentin'  , null, 'M', 'valentin.user@gmail.com'      , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000P', 'TST25-S' , 'Nikola'    , null, 'M', 'nikola.user@gmail.com'        , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000Q', 'TST26-S' , 'Maximilien', null, 'M', 'maximilien.user@gmail.com'    , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000R', 'TST27-S' , 'Morgan'    , null, 'M', 'morgan.user@gmail.com'        , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000S', 'TST28-S' , 'Max'       , null, 'M', 'max.user@gmail.com'           , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000T', 'TST29-S' , 'Romuald'   , null, 'M', 'romuald.user@gmail.com'       , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000U', 'TST30-S' , 'Nicolas'   , null, 'M', 'nicolas.user@gmail.com'       , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000V', 'TST31-S' , 'Ryan'      , null, 'M', 'ryan.user@gmail.com'          , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000W', 'TST32-S' , 'Michel'    , null, 'M', 'michel.user@gmail.com'        , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000X', 'TST33-S' , 'Aureane'   , null, 'M', 'aureane.user@gmail.com'       , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000Y', 'TST34-S' , 'Camille'   , null, 'M', 'camille.user@gmail.com'       , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z000Z', 'TST35-S' , 'Sandrine'  , null, 'M', 'sandrine.user@gmail.com'      , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0010', 'TST36-S' , 'Aurelie'   , null, 'M', 'aurelie.user@gmail.com'       , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0011', 'TST37-S' , 'Michael'   , null, 'M', 'michael.user@gmail.com'       , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0012', 'TST38-S' , 'Chloe'     , null, 'M', 'chloe.user@gmail.com'         , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0013', 'TST39-S' , 'Jb'        , null, 'M', 'jb.user@gmail.com'            , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0014', 'TST40-S' , 'Jean'      , null, 'M', 'jean.user@gmail.com'          , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0015', 'TST41-S' , 'Paul'      , null, 'M', 'paul.user@gmail.com'          , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0016', 'TST42-S' , 'Estaban'   , null, 'M', 'estaban.user@gmail.com'       , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0017', 'TST43-NS', 'Joe'       , null, 'M', 'several_org.joe@gmail.com'    , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0018', 'TST44-S' , 'Jack'      , null, 'M', 'several_org.jack@gmail.com'   , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0019', 'TST45-NS', 'Avrel'     , null, 'M', 'several_org.avrel@gmail.com'  , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z001A', 'TST46-S' , 'William'   , null, 'M', 'several_org.william@gmail.com', null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z001B', 'TST47-NS', 'Luke'      , null, 'M', 'several_org.luke@gmail.com'   , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z001C', 'TST48-S' , 'Ma'        , null, 'M', 'several_org.ma@gmail.com'     , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z001D', 'TST49-NS', 'Gollum'    , null, 'M', 'several_org.gollum@gmail.com' , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z001E', 'TST50-S' , 'Bilbon'    , null, 'M', 'several_org.bilbon@gmail.com' , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z001F', 'TST51-NS', 'Sauron'    , null, 'M', 'several_org.sauron@gmail.com' , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z001G', 'TST52-S' , 'Aragon'    , null, 'M', 'several_org.aragon@gmail.com' , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z001H', 'TST53-NS', 'Frodon'    , null, 'M', 'several_org.frodon@gmail.com' , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z001I', 'TST54-S' , 'Sam'       , null, 'M', 'several_org.sam@gmail.com'    , null, FALSE, '0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF', FALSE	, FALSE	, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Not_Student_Default.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

;



-- ------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Organisation
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Unique Key

-- SIRET number

-- Happy flow
-- ~~~~~~~~~~~~

INSERT INTO `ufr_asso`.`aso` (NAM, MBR_PCE, SIR_NBR, LOC, LGO, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES

	('ASSO_00'	, 0		     , '123456789'		, null, null												,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_01'	, 1		     , '12345678901230'	, null, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_01.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_02'	, 1.5		, '12345678901231'	, null, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_02.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_03'	, 3		     , '12345678901232'	, null, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_03.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_04'	, 52		     , '12345678901233'	, null, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_04.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_05'	, 16.5		, '12345678901234'	, null, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_05.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_06'	, 0.5		, '12345678901235'	, null, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_06.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_07'	, 12.5		, '12345678901236'	, null, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_07.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_08'	, 8.1		, '12345678901237'	, null, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_08.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_09'	, 10.51		, '12345678901238'	, null, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_02.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

,	('ASSO_SAME_NAME', 1		, '00000000000001'	, null, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_05.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_SAME_NAME', 110		, '00000000000002'	, null, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_05.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,	('ASSO_SAME_NAME', 9.5		, '00000000000003'	, null, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_06.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

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


-- TEST DATA SET : Organisations from UFR_ASSO_Tests.xlsx
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

INSERT INTO `ufr_asso`.`aso` (SIR_NBR, NAM, LOC, MBR_PCE, LGO, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES
     ('73282932000074'         , 'ASSO_TST01', 'Blois'  ,3.12, LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_01.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('MONACOCONFO001'         , 'ASSO_TST02', 'Monaco' ,1   , LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_01.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('ANOTHER_ASSO'           , 'ASSO_TST03', 'Lorient',2   , LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_01.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('1_MIX_S_AND_NS', 'ASSO_TST04', 'Nantes' ,5   , LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_01.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('2_MIX_S_AND_NS', 'ASSO_TST05', 'Nice'   ,15  , LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\logos\\logo_01.png')	,'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

;


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

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'SAME-NS' AND FST_NAM = 'First Name - B' AND EML = 'email_same_02@gmail.com'), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_01')	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'CANDIDATE'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )

-- MEMBER role set to a 'Not student' user and an organisation

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'SAME-NS' AND FST_NAM = 'First Name - A' ), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_01')	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )


-- CANDIDATE role set to a 'Student' user and an organisation

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU56-S'	), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_02')	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'CANDIDATE'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )

-- MEMBER role set to a 'Student' user and an organisation

, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU57-S'	), (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE NAM = 'ASSO_02')	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )
;





-- Failing flow
-- ~~~~~~~~~~~~

-- APP_ADMIN role set several times to a user
INSERT INTO `ufr_asso`.`usr_has_aso_and_rol` (USR_ROW_IDT, ASO_ROW_IDT, ROL_ROW_IDT, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES
  ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU57-S'	), null	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )
, ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE LST_NAM = 'MU57-S'	), null	, (SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'		), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW() )
;

-- APP_ADMIN role set to a 'Student' user AND an organisation !

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




-- TEST DATA SET : Link User-Organisations-Roles from UFR_ASSO_Tests.xlsx
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

INSERT INTO `ufr_asso`.`usr_has_aso_and_rol` (USR_ROW_IDT, ASO_ROW_IDT, ROL_ROW_IDT, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES

     ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0002'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0003'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0003'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0004'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0004'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0004'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0005'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0005'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0005'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0005'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'PRESIDENT'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0006'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0006'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0006'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0006'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'VICE-PRESIDENT'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0007'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0007'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0007'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0007'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'SECRETARY'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0008'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0008'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0008'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0008'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'TREASURER'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0009'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000A'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000A'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000B'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000B'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000B'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'PRESIDENT'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000C'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000C'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000C'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'VICE-PRESIDENT'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000D'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000D'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000D'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'SECRETARY'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000E'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000E'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000E'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'TREASURER'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000F'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000G'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000G'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'PRESIDENT'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000H'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000H'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'VICE-PRESIDENT'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000I'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000I'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'SECRETARY'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000J'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000J'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'TREASURER'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000K'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'CANDIDATE'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000L'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'REFUSED'  ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000N'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000O'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000O'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000P'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000P'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000P'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000Q'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000Q'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000Q'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000Q'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'PRESIDENT'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000R'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000R'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000R'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000R'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'VICE-PRESIDENT'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000S'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000S'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000S'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000S'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'SECRETARY'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000T'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000T'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000T'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000T'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'TREASURER'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000U'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000V'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000V'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000W'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000W'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000W'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'PRESIDENT'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000X'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000X'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000X'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'VICE-PRESIDENT'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000Y'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000Y'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000Y'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'SECRETARY'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000Z'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000Z'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z000Z'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'TREASURER'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0010'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0011'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0011'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'PRESIDENT'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0012'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0012'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'VICE-PRESIDENT'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0013'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0013'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'SECRETARY'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0014'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0014'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'TREASURER'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0015'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'CANDIDATE'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0016'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'         ),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'REFUSED'  ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0017'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0017'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '1_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0017'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0018'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0018'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '1_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0018'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0018'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0019'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0019'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '1_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0019'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0019'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0019'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'PRESIDENT'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001A'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001A'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '1_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001A'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001A'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001A'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'PRESIDENT'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001B'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001B'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '1_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001B'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001B'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001B'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'PRESIDENT'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001C'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001C'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '1_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001C'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001C'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001C'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'PRESIDENT'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001D'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001D'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '1_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001D'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001D'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001D'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'PRESIDENT'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001E'),null                                                                            ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001E'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '1_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001E'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001E'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001E'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'VICE-PRESIDENT'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001F'),null                                                                            ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001F'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '1_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001F'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001F'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001F'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'SECRETARY'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001G'),null                                                                            ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001G'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '1_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001G'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001G'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'MEMBER'   ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001G'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'TREASURER'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001H'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001H'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '1_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001H'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'CANDIDATE'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001I'),null                                                                       ,(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'APP_ADMIN'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001I'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '1_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'ADMIN'    ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z001I'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '2_MIX_STUD_AND_NOT_STUD'),(SELECT ROW_IDT FROM `ufr_asso`.`rol` WHERE NAM = 'REFUSED'  ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
;


-- ------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Event
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Unique Key

-- Creator organisation, Name, Location, Start time 

-- ~~~~~~~~~~~~
-- Happy flow
-- ~~~~~~~~~~~~

-- Event created by an Organisation and no Partner

-- Event created by an Organisation and 1 Partner

-- Event created by an Organisation and 2 Partner

-- INSERT INTO `ufr_asso`.`evt` (UNQ_ID, NAM,  STT_DAT_TIM,  END_DAT_TIM,  PLC,  PCE,  DSC,  CRE_ASO_ROW_IDT, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES
--      (CONV(generateId_Event(), 10, 36), 'Bowling'        , '2022-10-16 19:00:00', '2022-10-16 23:30:00', 'Blois', 50  , null     , (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
-- ,    (CONV(generateId_Event(), 10, 36), 'Z Event'        , '2022-12-12 13:40:00', '2022-12-14 13:40:00', 'Blois', 50  , 'Event 1', (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
-- ,    (CONV(generateId_Event(), 10, 36), 'Bal de Promo'   , '2023-05-01 20:00:00', '2022-05-02 05:00:00', 'Blois', 16.2, null     , (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
-- ,    (CONV(generateId_Event(), 10, 36), 'Brocante Sep-22', '2022-09-05 07:00:00', '2022-09-05 22:00:00', null   , 2.3 , null     , (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
-- ;

-- ~~~~~~~~~~~~
-- Failing flow
-- ~~~~~~~~~~~~

-- Event with no Creator


-- TEST DATA SET : Event from UFR_ASSO_Tests.xlsx
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

INSERT INTO `ufr_asso`.`evt` (UNQ_ID, NAM,  STT_DAT_TIM,  END_DAT_TIM,  PLC,  PCE,  DSC,  CRE_ASO_ROW_IDT, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES
     ('Z0001','Z Event'        , '2022-12-12 13:40:00', '2022-12-14 13:40:00', 'Blois', 50  , 'Event 1', (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0002','Bal de Promo'   , '2023-05-01 20:00:00', '2022-05-02 05:00:00', 'Blois', 16.2, null     , (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0003','Brocante Sep-22', '2022-09-05 07:00:00', '2022-09-05 22:00:00', null   , 2.3 , null     , (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ('Z0004','Bowling'        , '2022-10-16 19:00:00', '2022-10-16 23:30:00', 'Blois', 50  , null     , (SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'), 'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
;

INSERT INTO `ufr_asso`.`aso_has_evt` (ASO_ROW_IDT,  EVT_ROW_IDT, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES
     ((SELECT ROW_IDT FROM `ufr_asso`.`evt` WHERE UNQ_ID = 'Z0001'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`evt` WHERE UNQ_ID = 'Z0002'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`evt` WHERE UNQ_ID = 'Z0002'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`evt` WHERE UNQ_ID = 'Z0003'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`evt` WHERE UNQ_ID = 'Z0003'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`evt` WHERE UNQ_ID = 'Z0004'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = '73282932000074'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`evt` WHERE UNQ_ID = 'Z0004'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'MONACOCONFO001'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`evt` WHERE UNQ_ID = 'Z0004'),(SELECT ROW_IDT FROM `ufr_asso`.`aso` WHERE SIR_NBR = 'ANOTHER_ASSO'  ),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
;

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------
-- User / Event
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Unique Key

-- User, Event

-- Happy flow
-- ~~~~~~~~~~~~

/*
INSERT INTO `ufr_asso`.`usr_has_evt` (USR_ROW_IDT, EVT_ROW_IDT, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES

-- User with a role into an organisation is taking part to an Event created by this organisation
     ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0001'),(SELECT ROW_IDT FROM `ufr_asso`.`evt` WHERE UNQ_ID = 'Z0001'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- User with a role into an organisation is taking part to an Event where this organisation is a partner
     ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0001'),(SELECT ROW_IDT FROM `ufr_asso`.`evt` WHERE UNQ_ID = 'Z0001'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- User with NO role into an organisation is taking part to an Event where this organisation is neither the creator or a partner 
     ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0001'),(SELECT ROW_IDT FROM `ufr_asso`.`evt` WHERE UNQ_ID = 'Z0001'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

-- User linked with NO organisation is taking part to an Event
     ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0001'),(SELECT ROW_IDT FROM `ufr_asso`.`evt` WHERE UNQ_ID = 'Z0001'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
;
*/

-- Failing flow
-- ~~~~~~~~~~~~

-- TEST DATA SET : Link User-Event from UFR_ASSO_Tests.xlsx
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
INSERT INTO `ufr_asso`.`usr_has_evt` (USR_ROW_IDT, EVT_ROW_IDT, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES
     ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0001'),(SELECT ROW_IDT FROM `ufr_asso`.`evt` WHERE UNQ_ID = 'Z0001'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0002'),(SELECT ROW_IDT FROM `ufr_asso`.`evt` WHERE UNQ_ID = 'Z0002'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0003'),(SELECT ROW_IDT FROM `ufr_asso`.`evt` WHERE UNQ_ID = 'Z0003'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())
,    ((SELECT ROW_IDT FROM `ufr_asso`.`usr` WHERE PSD = 'Z0004'),(SELECT ROW_IDT FROM `ufr_asso`.`evt` WHERE UNQ_ID = 'Z0004'),'INIT_SCRIPT', NOW(), 'INIT_SCRIPT', NOW())

;

COMMIT;