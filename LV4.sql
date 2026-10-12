-- Zadatak 1.

SELECT SUBSTRING(ime, 1, 1) + '.' + SUBSTRING(prezime, 1, 1) as "Incijali studenta", YEAR(datRod) as "Godina rodenja" FROM student;
SELECT * FROM student ORDER BY datRod ASC;
SELECT ime, prezime FROM student WHERE spol = 'F' AND datRod = (SELECT MIN(datRod) FROM student WHERE spol = 'F');

-- Zadatak 2.

SELECT COUNT(*) as "Broj studenata" FROM student;
SELECT COUNT(DISTINCT nazivMjesta) as "Broj mjesta" FROM mjesto;

-- Zadatak 3.

SELECT AVG(ocjena) as "Prosjecna ocjena" FROM ispit WHERE ocjena > 1;

-- Zadatak 4.

SELECT s.ime, s.prezime, AVG(i.ocjena) AS prosjecnaOcjena FROM student s JOIN ispit i ON s.mbr = i.mbrStud WHERE i.ocjena > 1 GROUP BY s.ime, s.prezime
ORDER BY prosjecnaOcjena DESC;

SELECT s.mbr FROM student s JOIN ispit i ON s.mbr = i.mbrStud WHERE i.ocjena > 1 GROUP BY s.mbr HAVING AVG(i.ocjena) > 2.5;

-- Zadatak 5.

CREATE VIEW pogled_ispit AS
SELECT s.ime AS imeStudenta, s.prezime AS prezimeStudenta, p.naziv, i.ocjena, i.datIspita
FROM ispit i JOIN student s ON i.mbrStud = s.mbr JOIN predmet p ON i.sifPredmeta = p.sifra;

SELECT * FROM [pogled_ispit]