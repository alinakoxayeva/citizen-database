ALTER TABLE is_melumati ADD sigorta_haqqi NUMBER(10, 2);
ALTER TABLE is_melumati RENAME COLUMN is_stat TO is_veziyyeti;
UPDATE is_melumati
SET maas = maas * 1.1
WHERE maas > 2000;
UPDATE is_melumati 
SET sigorta_haqqi = maas * 0.05;
COMMIT;
DELETE FROM is_melumati WHERE is_id = 903;
ROLLBACK;

SELECT muessise_adi, vezife, maas 
FROM is_melumati 
WHERE maas > 2500;
SELECT ad, soyad, dogum_t 
FROM vetendas 
ORDER BY dogum_t ASC;

SELECT SUM(maas) as Toplam_Maas, AVG(maas) as Orta_Maas 
FROM is_melumati;

SELECT ad, soyad, dogum_y 
FROM vetendas 
WHERE (soyad LIKE '%ov' OR soyad LIKE '%ev') 
AND dogum_y = 'Baku';

SELECT muessise_adi, vezife, maas 
FROM is_melumati 
WHERE maas BETWEEN 1500 AND 3000 
AND herbi_m = 'Var';

SELECT UPPER(ad) as AD, LOWER(soyad) as soyad 
FROM vetendas;

SELECT ad, soyad 
FROM vetendas 
WHERE is_id_fk IN (
    SELECT is_id 
    FROM is_melumati 
    WHERE maas > (SELECT AVG(maas) FROM is_melumati)
);