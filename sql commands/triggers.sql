CREATE OR REPLACE TRIGGER maas_yoxla
BEFORE INSERT OR UPDATE ON is_melumati
FOR EACH ROW
BEGIN
    IF :NEW.maas < 1000 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Xeta: Maas 1000 AZN-den asagi ola bilmez!');
    END IF;
END;
/
UPDATE is_melumati SET maas = 500 WHERE is_id = 901;


CREATE TABLE silinen_vetendaslar (ad_soyad VARCHAR2(100), silinme_tarixi DATE);

CREATE OR REPLACE TRIGGER silinme_izle
AFTER DELETE ON vetendas
FOR EACH ROW
BEGIN
    INSERT INTO silinen_vetendaslar VALUES (:OLD.ad || ' ' || :OLD.soyad, SYSDATE);
END;
/

SELECT trigger_name, status FROM user_triggers;