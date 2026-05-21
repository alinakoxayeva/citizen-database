SELECT v.ad, v.soyad, i.muessise_adi 
FROM vetendas v
INNER JOIN is_melumati i ON v.is_id_fk = i.is_id;

SELECT v.ad, v.soyad, e.adi
FROM vetendas v
LEFT JOIN emlak e ON v.vetendas_id = e.vetendas_id_em;

SELECT ad FROM vetendas WHERE dogum_y = 'Baku'
UNION
SELECT v.ad FROM vetendas v 
JOIN elaqe e ON v.elaqe_id_fk = e.elaqe_id 
WHERE e.yasayis_yeri LIKE '%Baku%';

SELECT vetendas_id_em FROM emlak
INTERSECT
SELECT vetendas_id_fk FROM tehsil;

SELECT vetendas_id FROM vetendas
MINUS
SELECT vetendas_id_em FROM emlak;

SELECT v.ad, v.soyad, 'Socar Isçisi' as qeyd
FROM vetendas v
JOIN is_melumati i ON v.is_id_fk = i.is_id
WHERE i.muessise_adi = 'SOCAR'

SELECT v.ad, v.soyad, 'Bakalavr Mezunu' as qeyd
FROM vetendas v
JOIN tehsil t ON v.vetendas_id = t.vetendas_id_fk
WHERE t.seviyye = 'Bakalavr';