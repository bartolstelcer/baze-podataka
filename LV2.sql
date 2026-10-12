-- Zadatak 1.

CREATE TABLE grupe (
  id_grupe INT PRIMARY KEY,
  oznaka_grupe INT UNIQUE,
  smjer VARCHAR(50),
  broj_studenata INT
);

-- Zadatak 2.

CREATE TABLE student (
  br_indeksa INT PRIMARY KEY,
  ime VARCHAR(50) NOT NULL,
  prezime VARCHAR(50) NOT NULL,
  grupa INT,
  godina_upisa INT,
  godina_studija INT,
  id_grupe INT,
  CONSTRAINT id_grupe_fk FOREIGN KEY (id_grupe) REFERENCES grupe(id_grupe)
);

-- Zadatak 3.

ALTER TABLE student ADD prosjek DECIMAL(4,2);
ALTER TABLE student ADD CONSTRAINT chk_prosjek CHECK(prosjek >= 1);
ALTER TABLE student DROP COLUMN godina_studija;

-- Zadatak 4.

CREATE TABLE tel_imenik (
  broj_telefona VARCHAR(50),
  ime VARCHAR(50) NOT NULL,
  prezime VARCHAR(50) NOT NULL,
  email_adresa VARCHAR(50),
  datum_unosa SMALLDATETIME,
  CONSTRAINT pk_tel_imenik PRIMARY KEY(broj_telefona, prezime),
  CONSTRAINT u_tel_imenik UNIQUE(email_adresa)
);

-- Zadatak 5.

CREATE INDEX idx_prosjek ON student (prosjek DESC);
CREATE UNIQUE INDEX idx_tel_imenik ON tel_imenik (broj_telefona, datum_unosa);