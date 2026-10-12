-- Zadatak 2.

CREATE TABLE racunalo (
  tip VARCHAR(20),
  ram SMALLINT,
  hdd SMALLINT,
  monitor SMALLINT,
  mis VARCHAR(20),
  tipkovnica VARCHAR(20),
  mreza CHAR(2) DEFAULT 'DA',
  modem CHAR(2) DEFAULT 'DA',
  grafika VARCHAR(20)
);

-- Zadatak 3.

CREATE TABLE smartphone (
  serijski_broj INT PRIMARY KEY,
  naziv_proizvodaca VARCHAR(50),
  naziv_modela VARCHAR(50),
  kolicina_memorije INT,
  brzina_procesora INT,
  velicina_ekrana INT,
  operacijski_sustav VARCHAR(50),
  datum_zadnje_nadogradnje SMALLDATETIME,
  ime_korisnika VARCHAR(50) NOT NULL,
  prezime_korisnika VARCHAR(50) NOT NULL
);

-- Zadatak 4.

CREATE TABLE oglasnik (
ime_proizvodaca VARCHAR(50) NOT NULL,
ime_modela VARCHAR(50) NOT NULL,
godina_proizvodnje INT,
kilometraza INT,
snaga_motora INT,
boja_auta VARCHAR(50),
broj_sjedala INT,
broj_vrata INT,
vrsta_goriva VARCHAR(50),
stanje_vozila VARCHAR(50),
cijena INT
);

-- Zadatak 5.

CREATE TABLE djelatnik (
  matbr VARCHAR(50) PRIMARY KEY,
  ime VARCHAR(50) NOT NULL,
  prezime VARCHAR(50) NOT NULL
);

CREATE TABLE projekt (
  oznaka INT PRIMARY KEY,
  naziv VARCHAR(50)
);

CREATE TABLE radi_na (
  broj_dana INT,
  matbr VARCHAR(50),
  oznaka INT,
  CONSTRAINT matbr_fk FOREIGN KEY (matbr) REFERENCES djelatnik(matbr),
  CONSTRAINT oznaka_fk FOREIGN KEY (oznaka) REFERENCES projekt(oznaka)
);