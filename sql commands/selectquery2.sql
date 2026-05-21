SELECT ad, soyad 
FROM vetendas 
WHERE is_id_fk IN (
    SELECT is_id 
    FROM is_melumati 
    WHERE maas > (SELECT AVG(maas) FROM is_melumati)
);

SELECT ad, soyad 
FROM vetendas 
WHERE vetendas_id IN (
    SELECT vetendas_id_fk 
    FROM tehsil 
    WHERE muessise_adi = 'Baki Dovlet Universiteti' 
);
SELECT ad, soyad, is_id_fk 
FROM vetendas v
WHERE (SELECT maas FROM is_melumati i WHERE i.is_id = v.is_id_fk);

SELECT v.ad, v.soyad, temp_is.maas
FROM vetendas v, 
     (SELECT is_id, maas FROM is_melumati WHERE maas > 1000) temp_is
WHERE v.is_id_fk = temp_is.is_id;

SELECT ad, soyad 
FROM vetendas 
WHERE vetendas_id NOT IN (SELECT vetendas_id_em FROM emlak);