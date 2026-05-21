CREATE OR REPLACE PROCEDURE maas_artir (
    p_vetendas_id IN NUMBER, 
    p_artim_faizi IN NUMBER
) 
IS
BEGIN
    UPDATE is_melumati
    SET maas=maas+(maas*p_artim_faizi/100)
    WHERE is_id=(SELECT is_id_fk FROM vetendas WHERE vetendas_id=p_vetendas_id);
    DBMS_OUTPUT.PUT_LINE('Maas ugurla artirildi!');
    COMMIT;
END;

EXEC maas_artir(2001, 10);

CREATE OR REPLACE PROCEDURE yeni_vetendas_elave_et (
    p_id NUMBER, 
    p_ad VARCHAR2, 
    p_soyad VARCHAR2,
    p_fin CHAR

) IS
BEGIN
    INSERT INTO vetendas (vetendas_id, ad, soyad, fin) 
    VALUES (p_id, p_ad, p_soyad, p_fin);
    COMMIT;
END;

EXEC yeni_vetendas_elave_et(106, 'Orxan', 'Veliyev', '7654321');