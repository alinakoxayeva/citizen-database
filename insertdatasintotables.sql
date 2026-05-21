DROP TABLE is_melumati;
ALTER TABLE vetendas ADD is_id_fk INT;
ALTER TABLE vetendas 
ADD CONSTRAINT fk_vetendas_is 
FOREIGN KEY (is_id_fk) REFERENCES is_melumati(is_id);

TRUNCATE TABLE elaqe;

INSERT INTO elaqe VALUES (1,'Baku,Nizami st.','0501112233');
INSERT INTO elaqe VALUES (2,'Ganja,Heydar Aliyev ave.','0552223344');
INSERT INTO elaqe VALUES (3,'Sumqayit,10-cu mkr','0703334455');
INSERT INTO elaqe VALUES (4,'Baku,Yasamal dist.','0514445566');
INSERT INTO elaqe VALUES (5,'Lankaran,Cavad v.','0995556677');
SELECT * FROM elaqe

INSERT INTO aile VALUES (501,'Evli', 'Ali', 'Aliyev', 'Leyla', 'Aliyeva');
INSERT INTO aile VALUES (502,'Subay', 'Veli', 'Valiyev', 'Gunel', 'Valiyeva');
INSERT INTO aile VALUES (503,'Evli', 'Hasan', 'Hasanov', 'Aygul', 'Hasanova');
INSERT INTO aile VALUES (504,'Subay', 'Murad', 'Muradov', 'Nigar', 'Muradova');
INSERT INTO aile VALUES (505,'Evli', 'Zaur', 'Zaurov', 'Fidan', 'Zaurova');
SELECT * FROM aile

INSERT INTO is_melumati VALUES (901, 'Aktiv', 'SOCAR','Muhendis', TO_DATE('2002-01-01', 'YYYY-MM-DD'),TO_DATE('2025-01-06', 'YYYY-MM-DD'),2500.00,'Var');
INSERT INTO is_melumati VALUES (902, 'Aktiv', 'PASHA Bank', 'Data Analitik', TO_DATE('2010-01-02', 'YYYY-MM-DD'),TO_DATE('2025-01-06', 'YYYY-MM-DD'),1800.00,'Yox');
INSERT INTO is_melumati VALUES (903, 'Passiv', 'Kapital Bank', 'Kassir', TO_DATE('2020-07-01', 'YYYY-MM-DD'), TO_DATE('2025-01-06', 'YYYY-MM-DD'), 900.00,'Var');
INSERT INTO is_melumati VALUES (904, 'Aktiv', 'Azercell', 'Proqramci', TO_DATE('2020-01-01', 'YYYY-MM-DD'),TO_DATE('2025-01-06', 'YYYY-MM-DD'),3200.00/'Yox');
INSERT INTO is_melumati VALUES (905, 'Aktiv', 'Tebib', 'Hekim', TO_DATE('2020-01-01', 'YYYY-MM-DD'),TO_DATE('2025-01-06', 'YYYY-MM-DD'), 1500.00,'Var');
UPDATE is_melumati SET maas = 4000 WHERE is_id = 904;
SELECT * FROM is_melumati

INSERT INTO vetendas VALUES (101, '11AAAA1', 'AZE123456', 'Anar', 'Aliyev', TO_DATE('1990-05-15', 'YYYY-MM-DD'), 'Baku', 'K', 501,1,901);
INSERT INTO vetendas VALUES (102, '22BBBB2', 'AZE654321', 'Aysel', 'Mammadova', TO_DATE('1995-10-20', 'YYYY-MM-DD'), 'Ganja', 'Q', 502,2,902);
INSERT INTO vetendas VALUES (103, '33CCCC3', 'AZE112233', 'Orxan', 'Huseynov', TO_DATE('1988-02-10', 'YYYY-MM-DD'), 'Sumqayit', 'K', 503,3,903);
INSERT INTO vetendas VALUES (104, '44DDDD4', 'AZE445566', 'Nermin', 'Quliyeva', TO_DATE('2000-12-05', 'YYYY-MM-DD'), 'Baku', 'Q', 504,4,904);
INSERT INTO vetendas VALUES (105, '55EEEE5', 'AZE778899', 'Elnur', 'Pasayev', TO_DATE('1992-07-30', 'YYYY-MM-DD'), 'Lankaran', 'K', 505,5,905);
SELECT * FROM vetendas

INSERT INTO tibbi_melumat VALUES (201, 'A+', 'yoxdur', 'Yoxdur', 'Var', 101);
INSERT INTO tibbi_melumat VALUES (202, 'B-', '2-ci', 'Goz problemi', 'Var', 102);
INSERT INTO tibbi_melumat VALUES (204, 'AB+', 'yoxdur', 'Allergiya', 'Var', 104);
INSERT INTO tibbi_melumat VALUES (205, 'A-', 'yoxdur', 'Yoxdur', 'Var', 105);
SELECT * FROM tibbi_melumat

INSERT INTO emlak VALUES (701, 'Menzil', 'dasinmaz', 150000, TO_DATE('2020-01-01', 'YYYY-MM-DD'), 88001, '3 otaqli', 101);
INSERT INTO emlak VALUES (702, 'Avtomobil', 'dasinar', 25000, TO_DATE('2022-05-10', 'YYYY-MM-DD'), 88002, 'Toyota', 101);
SELECT * FROM emlak

INSERT INTO biometrik VALUES (401, EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), 101);
INSERT INTO biometrik VALUES (402, EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), EMPTY_BLOB(), 102);
SELECT * FROM biometrik

INSERT INTO tehsil VALUES (601, 'Baki Dovlet Universiteti', 'Bakalavr', 'Azerbaycan', 2008, 2012, 101);
INSERT INTO tehsil VALUES (602, 'ADA Universiteti', 'Magistr', 'Ingilis', 2013, 2015, 101);
INSERT INTO tehsil VALUES (603, 'Azerbaycan Dovlet Neft ve Senaye Universiteti', 'Bakalavr', 'Rus', 2012, 2016, 102);
INSERT INTO tehsil VALUES (604, 'Azerbaycan Texniki Universiteti', 'Bakalavr', 'Azerbaycan', 2005, 2009, 103);
INSERT INTO tehsil VALUES (605, 'Baki Muhendislik Universiteti', 'Magistr', 'Ingilis', 2018, 2020, 105);
DELETE FROM tehsil WHERE tehsil_id = 601;
ROLLBACK
SELECT * FROM tehsil
COMMIT