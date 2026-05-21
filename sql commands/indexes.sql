CREATE INDEX idx_vetendas_soyad ON vetendas(soyad);
CREATE INDEX idx_ad_soyad ON vetendas(ad, soyad);
CREATE INDEX idx_upper_ad ON vetendas(UPPER(ad));

DROP INDEX idx_vetendas_soyad;

SELECT index_name, table_name, column_name 
FROM user_ind_columns 
WHERE table_name = 'VETENDAS';

CREATE INDEX idx_muessise_adi ON is_melumati(muessise_adi);

SELECT index_name, table_name, column_name
FROM USER_IND_COLUMNS
WHERE table_name = 'IS_MELUMATI';

UPDATE vetendas SET ad = 'Test' WHERE fin = 'Sizin_Daxil_Etdiyiniz_Bir_FIN';
COMMIT;
SELECT * FROM vetendas;