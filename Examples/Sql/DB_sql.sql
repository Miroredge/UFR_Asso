-- Active: 1668639301205@@localhost@3306@ufr_asso
-- INSERT INTO `ufr_asso`.`usr`
-- (`USR_ID`,`FST_NAM`,`LST_NAM`,`EML`,`PHN_BOK`,`NTF`,`PWD`,`TMP_PWD`,`CRE_ID`,`CRE_DAT`,`UPD_ID`,`UPD_DAT`)
-- VALUES
-- (generateid_user(),"FST04","LST","EML","1","1","PASSWD","0","CREID",now(),"UPDID",now());

SELECT * FROM usr;

-- SELECT * FROM seq_usr; -- DEPRECATED


-- INSERT INTO `ufr_asso`.`seq_usr` (NAM, SEQ_NUM) SELECT 'USR', MAX(SEQ_NUM) AS seq_num FROM seq_usr ON DUPLICATE KEY UPDATE seq_num = LAST_INSERT_ID(seq_num + 1); -- DEPRECATED


-- requete pour avoir toutes les associations de l'utilisateur 'root'
SELECT usr.`PSD`, usr.`EML`, aso.`NAM` FROM usr INNER JOIN usr_has_aso_and_rol on USR_ROW_IDT = usr.ROW_IDT INNER JOIN aso ON ASO_ROW_IDT = aso.ROW_IDT WHERE usr.`EML` = "nikola.user@gmail.com"; 


-- Requete pour créer une association avec le nom 'essai_asso'
INSERT INTO ufr_asso.aso (SIR_NBR, NAM, LOC, LGO, MBR_PCE, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES ('A_SIR_NBR', 'Association_TEST', 'Blois 41000', null, '2', 'CREATION ASSO', Now(), 'CREATION ASSO', Now());
INSERT INTO ufr_asso.usr_has_aso_and_rol (USR_ROW_IDT, ASO_ROW_IDT, ROL_ROW_IDT, CRE_ID, CRE_DAT, UPD_ID, UPD_DAT) VALUES ((SELECT ROW_IDT FROM USR WHERE usr.`EML` = 'nikola.user@gmail.com'), (SELECT ROW_IDT FROM ASO WHERE aso.`NAM` = 'Association_TEST'), (SELECT ROW_IDT FROM ROL WHERE NAM = 'ADMIN'), 'CREATION ASSO by User', Now(), 'CREATION ASSO by User', Now());

SELECT ROW_IDT FROM USR WHERE usr.`EML` = 'nikola.user@gmail.com';
SELECT * FROM ASO WHERE aso.`NAM` = 'Association_TEST';



UPDATE usr SET `PRF_PIC` = LOAD_FILE('C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\images\\profiles\\Student_Default.png') WHERE PSD = 'NIKOK0';