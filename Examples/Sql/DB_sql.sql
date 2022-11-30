-- Active: 1668639301205@@localhost@3306@ufr_asso
INSERT INTO `ufr_asso`.`usr`
(`USR_ID`,`FST_NAM`,`LST_NAM`,`EML`,`PHN_BOK`,`NTF`,`PWD`,`TMP_PWD`,`CRE_ID`,`CRE_DAT`,`UPD_ID`,`UPD_DAT`)
VALUES
(generateid_user(),"FST04","LST","EML","1","1","PASSWD","0","CREID",now(),"UPDID",now());

SELECT * FROM usr;

SELECT * FROM seq_usr;


INSERT INTO `ufr_asso`.`seq_usr` (NAM, SEQ_NUM) SELECT 'USR', MAX(SEQ_NUM) AS seq_num FROM seq_usr ON DUPLICATE KEY UPDATE seq_num = LAST_INSERT_ID(seq_num + 1);


