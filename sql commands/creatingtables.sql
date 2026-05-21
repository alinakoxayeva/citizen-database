CREATE TABLE elaqe(
    elaqe_id INT PRIMARY KEY,
    yasayis_yeri VARCHAR(100) NOT NULL,
    tel_nom VARCHAR(15) NOT NULL
);

CREATE TABLE aile(
    aile_id INT PRIMARY KEY,
    aile_status VARCHAR(10) CHECK(aile_status IN ('Evli', 'Subay')),
    ata_adi VARCHAR(30) NOT NULL,
    ata_soyadi VARCHAR(30) NOT NULL,
    ana_adi VARCHAR(30) NOT NULL,
    ana_soyadi VARCHAR(30) NOT NULL
);

CREATE TABLE vetendas(
    vetendas_id INT PRIMARY KEY,
    fin CHAR(7) UNIQUE NOT NULL,
    seriya_nom VARCHAR(18) NOT NULL,
    ad VARCHAR(30) NOT NULL,
    soyad VARCHAR(30) NOT NULL,
    dogum_t DATE,
    dogum_y VARCHAR(100),
    cins CHAR(1) CHECK(cins IN('K','Q')),
    aile_id_fk INT NOT NULL,
    elaqe_id_fk INT,
    FOREIGN KEY (aile_id_fk) REFERENCES aile(aile_id),
    FOREIGN KEY (elaqe_id_fk) REFERENCES elaqe(elaqe_id)
);
CREATE TABLE is_melumati(
    is_id INT PRIMARY KEY,
    is_stat VARCHAR(20),
    muessise_adi VARCHAR(100),
    vezife VARCHAR(100),
    baslangic_t DATE,
    bitis_t DATE,
    maas DECIMAL(10, 2),
    herbi_m CHAR(3) CHECK(herbi_m IN ('Var', 'Yox')),
    vetendas_id_is INT UNIQUE NOT NULL, 
    FOREIGN KEY (vetendas_id_is) REFERENCES vetendas(vetendas_id)
);

CREATE TABLE tehsil(
    tehsil_id INT PRIMARY KEY,
    muessise_adi VARCHAR(100),
    seviyye VARCHAR(50) NOT NULL,
    tedris_dili VARCHAR(10) NOT NULL,
    baslangic_il INT,
    bitis_il INT,
    vetendas_id_fk INT,
    FOREIGN KEY (vetendas_id_fk) REFERENCES vetendas(vetendas_id)
);

CREATE TABLE emlak(
    emlak_id INT PRIMARY KEY,
    adi VARCHAR(30),
    novu VARCHAR(10) CHECK(novu IN ('dasinar','dasinmaz')),
    deyeri INT,
    qeydiyyat DATE,
    nomresi INT UNIQUE,
    diger_info TEXT,
    vetendas_id_em INT,
    FOREIGN KEY (vetendas_id_em) REFERENCES vetendas(vetendas_id)
);

CREATE TABLE biometrik(
    bio_id INT PRIMARY KEY,
    imza BLOB NOT NULL,
    barmaq_izi BLOB NOT NULL,
    uz_sekil BLOB NOT NULL,
    goz BLOB,
    vetendas_id_bio INT UNIQUE NOT NULL,
    FOREIGN KEY (vetendas_id_bio) REFERENCES vetendas(vetendas_id)
);

CREATE TABLE tibbi_melumat(
    tibbi_id INT PRIMARY KEY,
    qan_qrup VARCHAR(4) NOT NULL,
    elillik VARCHAR(10) CHECK(elillik IN('1-ci', '2-ci','3-cü','yoxdur')),
    xestelik VARCHAR(200),
    sigorta CHAR(3) CHECK(sigorta IN('Var', 'Yox')),
    vetendas_idtibb INT UNIQUE NOT NULL,
    FOREIGN KEY (vetendas_idtibb) REFERENCES vetendas(vetendas_id)
);