-- Zadatak 1.

CREATE TABLE osobe (
  ime VARCHAR(50) NOT NULL,
  prezime VARCHAR(50) NOT NULL,
  jmbg VARCHAR(50) PRIMARY KEY,
  datum_rodenja SMALLDATETIME,
  spol CHAR(1) DEFAULT 'M',
  visina INT,
  slika IMAGE,
  broj_cipela INT
);

INSERT INTO osobe(ime, prezime, jmbg, datum_rodenja, spol, visina, broj_cipela) VALUES
('Bartol', 'Bartolović', 111, '01.01.2001', 'M', 201, 41);
('Filip', 'Filipović', 222, '02.02.2002', 'M', 202, 42);
('Josip', 'Josipović', 333, '03.03.2003', 'M', 203, 43);
('Marko', 'Marković', 444, '04.04.2004', 'M', 204, 44);
('Petar', 'Petrović', 555, '05.05.2005', 'M', 205, 45);

SELECT * FROM osobe;

-- Zadatak 2.

UPDATE osobe SET ime = 'Ivan', prezime = 'Ivanović' WHERE jmbg = 222;
UPDATE osobe SET broj_cipela = broj_cipela + 1;
DELETE FROM osobe WHERE jmbg = 333;

SELECT * FROM osobe;

-- Zadatak 3.

SELECT * FROM student ORDER BY datUpis ASC;
SELECT ime, prezime, datRod FROM student WHERE datRod < '01.01.1994' ORDER BY datRod ASC;

-- Zadatak 4.

SELECT ime, prezime, naziv, ocjena FROM ispit, predmet, student WHERE sifPredmeta = sifra AND mbrStud = mbr AND ocjena >= 4;

-- Zadatak 5.

SELECT * FROM mjesto ORDER BY pbr ASC;